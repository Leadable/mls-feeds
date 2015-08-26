#!/usr/bin/perl

use strict;

use FindBin;
use lib "$FindBin::Bin/../../lib";

use MLS::Resource::Utils;
use MLS::Database;

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

my $sql = qq|
    WITH json_places as (
        SELECT
            "$id_col",
            json_build_object(
              places.area_id, json_build_object (
                places.category, array_agg(places.label)
              )
            )::jsonb as __geo_places
          FROM
            $mls.$resource p JOIN (select * from $mls.places) as places ON ST_Contains(ST_SETSRID(places.way, 4326), p.__geo_geom)
          GROUP BY
            p."$id_col", places.area_id, places.category
    )
    UPDATE 
        $mls.$resource as p
    SET
        __geo_places = j.__geo_places
    FROM 
        json_places j
    WHERE 
        p."$id_col" = j."$id_col";
|;

print "Regenerating __geo_places for [$mls]\n";
print "$sql\n";

$dbh->do($sql);

print "[DONE]\n";

1;
