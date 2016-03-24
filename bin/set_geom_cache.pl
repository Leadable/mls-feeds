#!/usr/bin/perl

use strict;
use warnings;
use FindBin;

use lib "$FindBin::Bin/../lib";

use DBI;
use Data::Dumper;
use MLS::Database;

my $MLS  = $ENV{MLS_NAME};
my $VIEW = $ENV{MLS_VIEW};

my $dbh = MLS::Database->new({db => 'feeds', no_print_error => 1});

sub get_geo_columns {
    my $sql = qq|
        SELECT a.attname As column_name
        FROM pg_class As c
            INNER JOIN pg_attribute As a ON c.oid = a.attrelid
            LEFT JOIN pg_namespace n ON n.oid = c.relnamespace
            LEFT JOIN pg_tablespace t ON t.oid = c.reltablespace
            LEFT JOIN pg_description As d ON (d.objoid = c.oid AND d.objsubid = a.attnum)
        WHERE c.relkind IN('t', 'v') AND  n.nspname = '$MLS' AND c.relname = '$VIEW'
              AND description like '%"location": true%'
        ORDER BY n.nspname, c.relname, a.attname
    ;|;

    my $rs = $dbh->selectcol_arrayref($sql);
    return $rs;
}

# Ignore all areas created in the last day
sub get_ignore_geoms {
    my $sql = qq|
        SELECT area_name, view_col FROM $MLS.geom_cache
        WHERE ts > NOW() - '1 day'::interval
    ;|;

    my $rs = $dbh->selectall_arrayref($sql, {Slice => {}});
    return $rs;
}

my %ignore;
my $ignore_geoms = get_ignore_geoms();
foreach my $geom (@$ignore_geoms) {
    my $col  = $geom->{view_col};
    my $area = $geom->{area_name};

    $ignore{$col}{$area}++;
}

my $geo_cols = get_geo_columns();

foreach my $geo_col (@$geo_cols) {
    my $select_sql;

    if ($geo_col eq '__geo_neigh') {
        $select_sql = q|unnest("__geo_neigh")|;
    }
    else {
        $select_sql = qq|"$geo_col"|;
    }

    my $sql = qq|SELECT distinct $select_sql FROM mtrmls.view_move_in_nashville_mv_active;|;
    my $rs = $dbh->selectcol_arrayref($sql);

    foreach my $area (@$rs) {
        next if (!$area || $ignore{$geo_col}{$area});

        print "[$geo_col/$area]\n";

        my $q_area     = $dbh->quote($area);
        my $q_geo_col  = $dbh->quote($geo_col);
        my $qi_geo_col = $dbh->quote_identifier($geo_col);

        my $where_sql;
        if ($geo_col eq '__geo_neigh') {
            $where_sql = qq|$q_area = ANY ($qi_geo_col)|;
        }
        else {
            $where_sql = qq|$qi_geo_col = $q_area|;
        }

        my $area_sql = qq|SELECT __geo_geom as geom FROM mtrmls.view_move_in_nashville_mv WHERE $where_sql AND __geo_geom IS NOT NULL;|;
        my $area_rs = $dbh->selectcol_arrayref($area_sql, {Slice => {}});

        next if (! scalar @$area_rs);

        # Use ST_Centroid here to account for outliers (due to bad geocoding data)
        my $geom_str = join(',', map {$dbh->quote($_)} @$area_rs);
        my $way_str = qq|
            ST_Centroid(
                ST_Collect(ARRAY[$geom_str])
            )|;

        my $geom_sql = qq|
            INSERT INTO mtrmls.geom_cache (area_name, view_col, way) VALUES
            ($q_area, $q_geo_col, $way_str);
        ;|;

        eval {
            $dbh->do($geom_sql);
        };

        if ($@) {
            $geom_sql = qq|
                UPDATE mtrmls.geom_cache SET way = $way_str WHERE area_name = $q_area AND view_col = $q_geo_col;
            ;|;

            $dbh->do($geom_sql);
        }
    }
}

1;
