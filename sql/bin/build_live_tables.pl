#!/usr/bin/perl
use strict;

use FindBin;
use lib "$FindBin::Bin/../../lib";

use MLS::Database;
use MLS::Resource::Utils;
use Data::Dumper;

use Pod::Usage;
use Getopt::Long;

my $MLS;
my $area;
my $force;
my $index_only;
my $help;

GetOptions(
    "board=s" => \$MLS,
    "area=s"  => \$area,
    "force"   => \$force,
    "index-only" => \$index_only,
    "help"    => \$help,
) or pod2usage(1);

pod2usage(1) if ($help || !$MLS);

my $dbh_feeds = MLS::Database->new({db => 'feeds'});

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
    __list_date
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
    listing_type
);

# check if MLS is running
if (!$force) {
  my $dbh_tools = MLS::Database->new({db => 'tools'});

  my $sql = 'SELECT status FROM monitor_feeds where mls = ' . $dbh_tools->quote($MLS);
  my $status = $dbh_tools->selectcol_arrayref($sql, { Slice => {} })->[0];
  die "[$MLS] is running. Run this script with the --force option to proceed\n" if ($status eq 'RUNNING');
}

my @areas;

if ($area) {

  if ($area !~ /^view_/) {
    $area = "view_$area";
  }

  print "Area: [$area]\n";
  push @areas, $area;
}
else {
  @areas = @{get_areas()};

  print "Areas found:\n";
  print Dumper \@areas;
}

# views
if (!$index_only) {
  my @sql_cmds = ('BEGIN;');

  if ($area) {
    push @sql_cmds, `cat $FindBin::Bin/../$MLS/views/$area.sql`;
  }
  else {
    print "\nRecreating the views for [$MLS]\n\n";

    my $view_property = "$FindBin::Bin/../$MLS/property/view_property.sql";
    die "Could not find [$view_property]" if (! -e $view_property);

    my $replace_views = `cat $FindBin::Bin/../$MLS/property/view_property.sql $FindBin::Bin/../$MLS/views/*`;
    push @sql_cmds, $replace_views;
  }

  foreach my $area (@areas) {
    push @sql_cmds, generate_table_sql($area);
  }

  push @sql_cmds, 'END;';

  $dbh_feeds->do(join("\n",@sql_cmds));
}

# indexes
foreach my $area (@areas) {
  print "Build indexes on [$area]\n";

  # add the columns with comments to our list of indexable columns
  my $comment_cols = get_commented_cols($dbh_feeds, $MLS, $area);
  map {$INDEXABLE_COLUMNS{$_} = 1} @$comment_cols;

  $dbh_feeds->do(generate_index_sql($area));
}

print "\n[DONE]\n\n";

sub get_areas {
  my $area_folder = "$FindBin::Bin/../$MLS/views";
  opendir (my $DH, $area_folder) or
    die "Could not opendir [$area_folder]";

  my @areas = map {$_ =~ s/\.sql$//; $_}
              grep {!/^\./ && !($_ eq 'view_office.sql' || $_ eq 'view_openhouse.sql' || $_ eq 'view_activeagent.sql')} readdir($DH);

  return \@areas;
}

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

    my $sql =
        qq|DROP MATERIALIZED VIEW IF EXISTS $MLS.${area}_mv CASCADE;\n| .
        qq|CREATE MATERIALIZED VIEW $MLS.${area}_mv AS SELECT * FROM $MLS.${area};\n| .
        qq|CREATE MATERIALIZED VIEW $MLS.${area}_mv_active AS SELECT * FROM $MLS.${area}_mv as v WHERE \n| .
        MLS::Resource::Utils::get_mv_active_def('v') . ";\n" .
        qq|GRANT SELECT ON $MLS.${area}_mv TO readonly;\n| .
        qq|GRANT SELECT ON $MLS.${area}_mv_active TO readonly;\n|;

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

sub get_commented_cols {
  my ($dbh, $mls, $view) = @_;

  my $sql = qq|
    SELECT
      a.attname As column_name, d
    FROM
        pg_class As c
        INNER JOIN pg_attribute As a ON c.oid = a.attrelid
        LEFT JOIN pg_namespace n ON n.oid = c.relnamespace
            LEFT JOIN pg_tablespace t ON t.oid = c.reltablespace
        LEFT JOIN pg_description As d ON (d.objoid = c.oid AND d.objsubid = a.attnum)
    WHERE
        c.relkind IN('t', 'v') AND  n.nspname = '$mls' AND c.relname = '$view' and d is not null
    ORDER BY
        n.nspname, c.relname, a.attname;
  |;

  my $rs = $dbh->selectcol_arrayref($sql);

  return $rs;
}

1;
