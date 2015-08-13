#!/usr/bin/perl
use strict;

use FindBin;
use lib "$FindBin::Bin/../lib";

use MLS::Database;
use MLS::Resource::Utils;
use Data::Dumper;

my $dbh_feeds = MLS::Database->new({db => 'feeds'});
my $dbh_tools = MLS::Database->new({db => 'tools'});

# needed for the raw psql command
my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
my $port = $ENV{POSTGRES_PORT_5432_TCP_PORT};
my $user = $ENV{POSTGRES_FEEDS_USER};
my $pass = $ENV{PGPASSWORD} = $ENV{POSTGRES_FEEDS_PASS};
my $dbname = 'mls-db-owner';

my %INDEXABLE_COLUMNS;

map {$INDEXABLE_COLUMNS{$_} = 1}
qw(
    __removed_at
    __active
    age
    __inserted_at
    __modified_at
    last_transaction_completed_at
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
my $force = $ARGV[1] eq '-f';

# check if MLS is running
my $sql = 'SELECT status FROM monitor_feeds where mls = ' . $dbh_tools->quote($MLS);
my $status = $dbh_tools->selectcol_arrayref($sql, { Slice => {} })->[0];
die "[$MLS] is running. Run this script with the -f option if you really want to replace the views\n" if ($status eq 'RUNNING' && !$force);

# rebuild view_property and area views
my $view_property = "$FindBin::Bin/$MLS/property/view_property.sql";
die "Could not find [$view_property]" if (! -e $view_property);

my $cmd = qq{cat $FindBin::Bin/$MLS/property/view_property.sql $FindBin::Bin/$MLS/views/* | psql -v ON_ERROR_STOP=1 -q -h $host -p $port -U $user $dbname -1 -f -};
print "$cmd\n";
system($cmd) == 0 or
  die "There was a problem with the command: [" . ($? >> 8) . "]";

# rebuild the materialized views
my $area_folder = "$FindBin::Bin/$MLS/views";
opendir (my $DH, $area_folder) or
    die "Could not opendir [$area_folder]";

my @areas = grep {!/^\./} readdir($DH);

foreach my $area (@areas) {
  $area =~ s/\.sql$//;

  next if ($area eq 'view_office' || $area eq 'view_openhouse' || $area eq 'view_activeagent');

  print "Building [$area]\n";

  my $table_sql = generate_table_sql($area);
  my $index_sql = generate_index_sql($area);

  $dbh_feeds->do(qq|
      BEGIN;
      $table_sql
      $index_sql
      END;
  |);
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

sub generate_table_sql {
    my $area = shift;

    my $schema = get_table_schema($area);

    my $cols = join ',',
               map {$dbh_feeds->quote_identifier($_->{col_name}) . ' ' . $_->{col_type}} @$schema;

    my $sql =
        qq|DROP TABLE IF EXISTS $MLS.${area}_mv;\n| .
        qq|CREATE TABLE $MLS.${area}_mv AS SELECT * FROM $MLS.${area};\n| .
        qq|CREATE MATERIALIZED VIEW $MLS.${area}_mv_active AS SELECT * FROM $MLS.${area} as v WHERE \n| .
        MLS::Resource::Utils::get_mv_active_def('v') . ';';

    return $sql;
}

sub generate_index_sql {
  my $area = shift;

  my @indexes;
  my $id = 1;

  my $schema = get_table_schema($area);

  # create indexes
  my @tables = ("$MLS.${area}_mv", "$MLS.${area}_mv_active");

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

        my $index_name = $dbh_feeds->quote_identifier(
          join '_', ('idx', $area, $col->{col_name}, $id++)
        );

        my $col_name = $dbh_feeds->quote_identifier($col->{col_name});

        my $unique = ($col->{col_name} eq 'listing_id') ? 'UNIQUE' : '';

        my $index = qq|CREATE $unique INDEX $index_name ON $table USING $idx_type ($col_name);|;
        push @indexes, $index;
      }
    }

  my $sql = join "\n", @indexes;
  return $sql;
}

1;
