#!/usr/bin/perl
use strict;

use FindBin;
use lib "$FindBin::Bin/../lib";

use MLS::Database;
use MLS::Resource::Utils;
use Data::Dumper;

my $dbh_feeds = MLS::Database->new({db => 'feeds'});
my $dbh_live  = MLS::Database->new({db => 'live'});

my %INDEXABLE_COLUMNS;

map {$INDEXABLE_COLUMNS{$_} = 1}
qw(
    __removed_at
    __active
    age
    __inserted_at
    __modified_at
    __price_updated_at
    __percent_reduced
    __geo_geom
    __geo_outlier
    id
    listing_id
    mlsnum
    status
    sold_date
    sold_price
    under_contract
    price
    price_per_sqft
    beds
    type
    baths_total
    address_line1
    city
    city_st
    zip
    square_feet
    year_built
    acres
    garage
    basement
    fireplace
    fenced_yard
    waterfront
    one_story
    pool
    patio_deck_porch
    walk_in_closets
    double_vanity
    __minor_area
    __major_area
    subdivision
    elementary_school
    middle_school
    high_school
    office_name
    "feature_private_pool[]"
    feature_governing_body
    feature_pets_allowed
    "feature_restrictions[]"
    __geo_neigh
    listing_type
);

my $MLS = $ARGV[0] or die "You must supply the MLS name to build tables for\n";

my $area_folder = "$FindBin::Bin/$MLS/views";
opendir (my $DH, $area_folder) or
    die "Could not opendir [$area_folder]";

my @areas = grep {!/^\./} readdir($DH);

foreach my $area (@areas) {
    $area =~ s/\.sql$//;

    next if ($area eq 'view_office' || $area eq 'view_openhouse' || $area eq 'view_activeagent');

    # check if this area exists on live
    my $sth = $dbh_live->table_info('', $MLS, $area);
    $sth->execute;
    my $result = $sth->fetchrow_hashref;

    if ($result) {
      print "[$area] already exists on live\n";
    }
    else {
      print "Building [$area] on live\n";

      my $table_sql = generate_table_sql($area);
      my $extra_sql = get_extra_sql($area);
      my $index_sql = generate_index_sql($area);

      $dbh_live->do(qq|
          BEGIN;
          $table_sql
          $extra_sql
          $index_sql
          END;
      |);
    }

    # check if this area needs a foreign table
    my $result = eval {
      $dbh_feeds->selectall_arrayref("SELECT listing_id from $MLS.ft_$area");
    };

    if ($@) {
      print "Building [ft_$area]\n";
      $dbh_feeds->do(generate_ft_sql($area));
    }
    else {
      print "[ft_$area] already exists\n";
    }
}

print "\n[DONE]\n\n";

sub get_table_schema {
    my $area = shift;

    my $schema = $dbh_feeds->selectall_arrayref(qq|
      SELECT attname, format_type(atttypid, atttypmod)
      FROM   pg_attribute
      WHERE  attrelid = '$MLS.$area'::regclass
      AND    attnum > 0
      AND    NOT attisdropped;|
    );

    # format schema for publish later
    return [
        map {
            { col_name => $_->[0], col_type => $_->[1] }
        } @$schema
    ];
}

sub generate_ft_sql {
  my $area = shift;

  my $schema = get_table_schema($area);

  my $cols = join ',',
               map {$dbh_feeds->quote_identifier($_->{col_name}) . ' ' . $_->{col_type}} @$schema;
  my $table_sql = qq|
    CREATE FOREIGN TABLE $MLS.ft_$area ($cols)
    SERVER main
    OPTIONS (table_name '$area')
  ;|;
}

sub generate_table_sql {
    my $area = shift;

    my $schema = get_table_schema($area);

    my $cols = join ',',
               map {$dbh_live->quote_identifier($_->{col_name}) . ' ' . $_->{col_type}} @$schema;
    my $table_sql = qq|CREATE TABLE $MLS.$area ($cols);|;

    my $views_sql =
        qq|CREATE VIEW $MLS.${area}_mv AS SELECT * FROM $MLS.${area};| .
        qq|CREATE MATERIALIZED VIEW $MLS.${area}_mv_active AS SELECT * FROM $MLS.${area} as v WHERE | .
        MLS::Resource::Utils::get_mv_active_def('v') . ';';

    return qq|
        $table_sql
        $views_sql
    |;
}

sub generate_index_sql {
  my $area = shift;

  my @indexes;
  my $id = 1;

  my $schema = get_table_schema($area);

  # create indexes on the full table and the active view
  my @tables = ("$MLS.$area", "$MLS.${area}_mv_active");

  foreach my $table (@tables) {
      foreach my $col (@$schema) {
        next if (!$INDEXABLE_COLUMNS{$col->{col_name}});

        my $idx_type;
        if ($col->{col_type} eq 'geometry') {
          $idx_type = 'GIST';
        }
        elsif ($col->{col_type} =~ /\[\]/) {
          $idx_type = 'GIN'
        }
        else {
          $idx_type = 'BTREE';
        }

        my $index_name = $dbh_live->quote_identifier(
          join '_', ('idx', $area, $col->{col_name}, $id++)
        );

        my $col_name = $dbh_live->quote_identifier($col->{col_name});

        my $unique = ($col->{col_name} eq 'listing_id') ? 'UNIQUE' : '';

        my $index = qq|CREATE $unique INDEX $index_name ON $table USING $idx_type ($col_name);|;
        push @indexes, $index;
      }
    }

  my $sql = join "\n", @indexes;
  return $sql;
}

# extra sql could include comments, creation of views, etc
sub get_extra_sql {
  my $area = shift;

  my $file = "$FindBin::Bin/$MLS/extra/$area.sql";
  return '' if (! -e $file);

  open (my $fh, '<', $file) or
    die "Could not open [$file] for read: $!";

  # slurp file into $sql
  my $sql;
  {
    local $/ = undef;
    $sql = <$fh>;
  }

  return $sql;
}

1;
