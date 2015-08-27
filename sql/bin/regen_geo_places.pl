#!/usr/bin/perl

use strict;

use FindBin;
use lib "$FindBin::Bin/../../lib";

use MLS::Resource::Utils;
use MLS::Database;
use Mojo::JSON qw(j);
use Data::Dumper;

$| = 1;

die "MLS must be specified" if (!$ENV{MLS_NAME});

my $mls      = $ENV{MLS_NAME};
my $resource = $ENV{MLS_RESOURCE};

my $vendor = MLS::Resource::Utils::find_vendor($mls, "$FindBin::Bin/../../lib/MLS/Resource");

$resource ||= 'Property';

my $board_path = "MLS::Resource::${vendor}::$mls";
my $config_path = "${board_path}::Config::$resource";

eval "require $config_path" or die "Could not find [$config_path]: $@\n";

my $id_col = $MLS::Config::PRIMARY_KEY{($MLS::Config::Row::COLUMN_IDENTIFIER || 'SystemName')};

my $dbh = MLS::Database->new({db => 'feeds'});

$resource = $dbh->quote_identifier($resource);
$id_col   = $dbh->quote_identifier($id_col);

my $ids = $dbh->selectcol_arrayref(qq|select $id_col from $mls.$resource;|);

print "Updating __geo_places for [" . scalar(@$ids) . "] rows\n";

my $i = 0;
foreach my $id (@$ids) {
    $id = $dbh->quote($id);

    my $sql = qq|
        SELECT
            places.area_id, places.category, array_agg(places.label) as labels
        FROM
            $mls.$resource p JOIN (select * from $mls.places) as places ON ST_Contains(ST_SETSRID(places.way, 4326), p.__geo_geom)
        WHERE
            p.$id_col = $id
        GROUP BY
            p.$id_col, places.area_id, places.category;
    |;

    my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

    my %obj;
    foreach my $row (@$rs) {
        $obj{$row->{area_id}}{$row->{category}} = $row->{labels};
    }

    my $json = j(\%obj);

    $sql = qq|
        UPDATE
          $mls.$resource
        SET
          __geo_places = '$json'::jsonb
        WHERE
          $id_col = $id;
    |;

    $dbh->do($sql);

    print '.';
    print "[$i]\n" if (++$i % 100 == 0);
}

print "\n[DONE]\n";

1;
