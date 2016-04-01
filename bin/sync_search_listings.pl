#!/usr/bin/perl

use strict;
use warnings;
use FindBin;

use lib "$FindBin::Bin/../lib";

use DBI;
use Data::Dumper;

use Mojo::JSON qw(j);
use Scalar::Util qw(looks_like_number);
use MLS::Database;

$| = 1;

my $MLS  = $ENV{MLS_NAME};
my $VIEW = $ENV{MLS_VIEW};
my $MV_ACTIVE = $VIEW . '_mv_active';

die "Missing parameters" if (!$MLS || !$VIEW);

my $lp_dbh   = MLS::Database->new({db => 'lp'});
my $area_dbh = MLS::Database->new({db => 'feeds'});

my $COLS = get_view_columns();
push @{$COLS->{other}}, qw(price listing_type type beds baths_total acres square_feet __geo_geom mlsnum);

my @SELECT;
foreach my $col (@{$COLS->{location}}, @{$COLS->{other}}) {
    my $str = $area_dbh->quote_identifier($col);
    if ($col =~ /\[\]$/) {
        $col =~ s/\[\]$//;
        $str .= " as $col";
    }

    push @SELECT, $str;
}

my $SELECT_SQL = join(',', @SELECT);

my %IGNORE = (
    has_images   => 1,
    sort         => 1,
    listing_type => 1,
    price_max    => 1,
    price_min    => 1,
    type         => 1,
);

# add location columns to ignore also, treated differently
map {$IGNORE{$_} = 1} @{$COLS->{location}};

sub get_saved_searches {
    my $mls = $lp_dbh->quote($MLS);
    my $sql = qq|
        SELECT
            hash_sql, s.area_id, max(conditions_sql) as conditions_sql, max(values_sql) as values_sql, max(query) as query
        FROM
            "search" s, member m, circle c, area a
        WHERE
            s.hash_sql IS NOT NULL AND
            s.member_id = m.id AND
            m.circle_id = c.id AND
            c.buyer_last_request_at > NOW() - '90 days'::interval AND
            a.id = s.area_id AND
            a.mls = $mls
        GROUP BY
            s.hash_sql, s.area_id
    ;|;

    my $rs = $lp_dbh->selectall_arrayref($sql, {Slice => {}});
    return $rs;
}

sub get_search_sql {
    my $search = shift;

    my $conditions = j($search->{conditions_sql});
    my $values     = j($search->{values_sql});

    $conditions = join(' AND ', @$conditions);
    $conditions =~ s/p\.//g;
    $conditions =~ s/\$(\d+)/'$values->[$1 - 1]'/g;

    my $new_sql = qq|
        SELECT mlsnum, __inserted_at as ts FROM $MLS.$MV_ACTIVE
        WHERE $conditions ORDER BY __inserted_at DESC LIMIT 100
    ;|;

    my $reduced_sql = qq|
        SELECT mlsnum, __price_updated_at as ts FROM $MLS.$MV_ACTIVE
        WHERE $conditions AND __percent_reduced > 0 ORDER BY __price_updated_at DESC LIMIT 100
    ;|;

    my $all_exact_sql = qq|
        SELECT mlsnum FROM $MLS.$MV_ACTIVE
        WHERE $conditions
    |;

    return {
        new       => $new_sql,
        reduced   => $reduced_sql,
        all_exact => $all_exact_sql,
    };
}

sub populate_table {
    my $opts = shift;

    my $listings = $opts->{listings};

    return if (! scalar @$listings);

    my $table = $area_dbh->quote_identifier($opts->{table});
    my $hash  = $area_dbh->quote($opts->{hash});

    # clear out old results
    my $delete_sql = qq|DELETE FROM $MLS.$table WHERE search_hash = $hash;|;

    my $insert_sql;
    if ($opts->{table} eq 'similar_listings') {
        my $values = 
            join(',', 
                map {"($hash, '$_->{mlsnum}', '$_->{ts}'::timestamp without time zone, '$_->{relevance}', '$_->{details}')"} @$listings
            );
        $insert_sql = qq|INSERT INTO $MLS.$table (search_hash, mlsnum, ts, relevancy, details) VALUES $values;|;
    }
    else {
        my $values = 
            join(',', 
                map {"($hash, '$_->{mlsnum}', '$_->{ts}'::timestamp without time zone)"} @$listings
            );
        $insert_sql = qq|INSERT INTO $MLS.$table (search_hash, mlsnum, ts) VALUES $values;|;
    }

    eval {
        my $sql = qq|BEGIN; $delete_sql $insert_sql COMMIT;|;
        $area_dbh->do($sql);
    };

    if ($@) {
        print "Error adding new results\n";
    }
}

sub get_view_columns {
    my $sql = qq|
        SELECT a.attname As column_name, description
        FROM pg_class As c
            INNER JOIN pg_attribute As a ON c.oid = a.attrelid
            LEFT JOIN pg_namespace n ON n.oid = c.relnamespace
            LEFT JOIN pg_tablespace t ON t.oid = c.reltablespace
            LEFT JOIN pg_description As d ON (d.objoid = c.oid AND d.objsubid = a.attnum)
        WHERE c.relkind IN('t', 'v') AND  n.nspname = '$MLS' AND c.relname = '$VIEW' AND
              description IS NOT NULL
        ORDER BY n.nspname, c.relname, a.attname
    ;|;

    my $rs = $area_dbh->selectall_arrayref($sql, {Slice => {}});

    my (@location, @other);

    foreach my $col (@$rs) {
        my $desc = j($col->{description});
        my $name = $col->{column_name};

        if ($desc->{location}) {
            push @location, $name;
        }
        else {
            push @other, $name;
        }
    }

    return {
        location => \@location,
        other    => \@other,
    };
}

sub get_search_geom {
    my ($query_params, $cols) = @_;

    my @geoms;

    foreach my $col (@$cols) {
        next if (!$query_params->{$col});

        my $vals = join(',', map {$area_dbh->quote($_)} @{$query_params->{$col}});
        my $q_col = $area_dbh->quote($col);

        my $sql = qq|
            SELECT way FROM $MLS.geom_cache WHERE
            area_name IN ($vals) AND view_col = $q_col
        ;|;
        my $rs = $area_dbh->selectcol_arrayref($sql, {Slice => {}});
        push @geoms, @$rs;
    }

    if (! scalar @geoms) {
        return;
    }
    else {
        my $geom_ar = join(',', map {$area_dbh->quote($_)} @geoms);
        my $sql = qq|SELECT ST_Collect(ARRAY[$geom_ar]);|;
        return $area_dbh->selectcol_arrayref($sql, {Slice => {}})->[0];
    }
}

# Only used for debugging
sub get_geo_json {
    my $way = shift;

    $way = $area_dbh->quote($way) . '::geometry';
    my $sql = qq|SELECT ST_AsGeoJSON($way);|;
    return $area_dbh->selectcol_arrayref($sql)->[0];
}

sub search_close_listings {
    my ($query_params, $all_exact_sql) = @_;

    # Compute the geom that makes up the location of this search
    my $search_geom = get_search_geom($query_params, $COLS->{location});
    return [] if (!$search_geom);

    $search_geom = $area_dbh->quote($search_geom) . '::geometry';
    my $dist = qq|ST_Length(ST_Transform(ST_ShortestLine($search_geom, __geo_geom), 2877))/5280|;

    # Restrict price range of search to double the requested price range
    my $min_price = $query_params->{price_min};
    my $max_price = $query_params->{price_max};
    my $upper_price = $max_price + ($max_price - $min_price);
    my $lower_price = $min_price - ($max_price - $min_price);

    my @conditions = (
        qq|mlsnum NOT IN ($all_exact_sql)|,
        q|NOT under_contract|,
        q|image_count > 0|,
        q|price IS NOT NULL|,
        q|__geo_geom IS NOT NULL|,
        qq|$dist <= 50|,
        qq|price BETWEEN $lower_price AND $upper_price|,
    );

    if ($query_params->{type}) {
        my $type_sql = join(',', map {$area_dbh->quote($_)} @{$query_params->{type}});
        push @conditions, qq|type IN ($type_sql)|;
    }

    if ($query_params->{listing_type}) {
        my $listing_type_sql = join(',', map {$area_dbh->quote($_)} @{$query_params->{listing_type}});
        push @conditions, qq|listing_type IN ($listing_type_sql)|;
    }

    my $where_sql = join(' AND ', @conditions);
    my $sql = qq|
        SELECT
            $SELECT_SQL, $dist as distance, __inserted_at as ts
        FROM 
            $MLS.$MV_ACTIVE
        WHERE
            $where_sql
    ;|;

    my $rs = $area_dbh->selectall_arrayref($sql, {Slice => {}});
    return $rs;
}

sub create_geojsonio_struct {
    my $geom_list = shift;

    my $json = {
        type => 'FeatureCollection',
        features => [],
    };

    foreach my $geom (@$geom_list) {
        my $geometry   = j($geom);
        my $type       = $geometry->{type};
        my $properties = {};

        if ($type eq 'MultiPoint') {
            $properties = {
                'marker-color'  => '#0000FF',
                'marker-name'   => 'search',
                "marker-size"   => "medium",
                "marker-symbol" => "",
            };
        }
        elsif ($type eq 'Point') {
            $properties = {
                'marker-color'  => '#FF0000',
                'marker-name'   => 'listing',
                "marker-size"   => "medium",
                "marker-symbol" => "",
            };
        }

        push @{$json->{features}}, {
            geometry   => $geometry,
            type       => 'Feature',
            properties => $properties,
        };
    }

    print j($json) . "\n\n";
}

# Compare two values
# If both are numbers, return 1 - the difference between them
# If both are strings simply return 1 if the same or 0 if different
sub compare {
    my ($v1, $v2) = @_;

    return 0 if (!$v1 || !$v2);

    my $ret;

    if (looks_like_number($v1) && looks_like_number($v2)) {
        my $diff = abs(abs($v1 - $v2) / (($v1 + $v2)/2));
        $ret = abs(1 - $diff);
    }
    else {
        $ret = ($v1 eq $v2) || 0;
    }

    return $ret;
}

sub get_relevant_listings {
    my ($query_params, $all_exact_sql) = @_;

    # fix up query params
    $query_params->{baths_total} = delete $query_params->{baths} if ($query_params->{baths});
    $query_params->{price_min} = 0        if (!$query_params->{price_min});
    $query_params->{price_max} = 99999999 if (!$query_params->{price_max});

    my $listings_rs = search_close_listings($query_params, $all_exact_sql);

    # Iterate through all listings and score each according to saved search query
    my $i = 0;
    my @result;

    foreach my $listing (@$listings_rs) {
        my @details;
        my $pts = 0;
        my $poss_pts = 0;

        # Distance
        my $dist = $listing->{distance};
        my $dist_factor = 10;
        my $dist_pts = (1-($dist/50)) * $dist_factor;
        $pts      += $dist_pts;
        $poss_pts += $dist_factor;

        push @details, {
            name => 'distance',
            poss_pts => $dist_factor,
            value => $dist,
            pts => $dist_pts,
        };

        # Price
        my $price = $listing->{price};
        my $min_price = $query_params->{price_min};
        my $max_price = $query_params->{price_max};
        my $price_pts;
        my $price_factor = 10;
        $poss_pts += $price_factor;

        if ($price <= $max_price && $price >= $min_price) {
            $price_pts += 10;
        }
        elsif ($price > $max_price) {
            my $upper = $max_price + ($max_price - $min_price);
            my $diff  = abs($price - $max_price);

            $price_pts = (1-($diff / ($upper-$max_price))) * $price_factor;
            $price_pts = 0 if ($price_pts < 0);
        }
        elsif ($price < $min_price) {
            my $lower = $min_price - ($max_price - $min_price);
            my $diff  = abs($price - $min_price);

            $price_pts = (1-($diff / ($min_price-$lower))) * $price_factor;
            $price_pts = 0 if ($price_pts < 0);
        }

        $pts += $price_pts;

        push @details, {
            name => 'price',
            poss_pts => $price_factor,
            min_req_value => $min_price,
            max_req_value => $max_price,
            listing_value => $price,
            pts => $price_pts,
        };

        while (my ($key, $val) = each %$query_params) {
            next if ($IGNORE{$key});

            my $req_val_array = ref $val eq 'ARRAY';

            # Determine factor for key here
            my $factor = 1;
            my $feature_pts = 0;
            my $feature_poss_pts;

            # The potential points can vary depending on how many
            # elements are in the array for the field
            if ($req_val_array) {
                $feature_poss_pts = $factor * scalar @$val;
            }
            else {
                $feature_poss_pts = $factor;
            }

            my $listing_val = $listing->{$key};
            if ($listing_val) {
                my $listing_val_array = ref $listing_val eq 'ARRAY';

                if (!$req_val_array && !$listing_val_array) {
                    # Compare two scalars
                    $feature_pts += compare($val, $listing_val) * $factor;
                }
                elsif ($req_val_array && !$listing_val_array) {
                    # Compare each value in the requested array to the listing value
                    foreach my $req_val (@$val) {
                        $feature_pts += compare($req_val, $listing_val) * $factor;
                    }
                }
                elsif (!$req_val_array && $listing_val_array) {
                    # Compare each value in the listing array to the requested value
                    foreach my $ls_val (@$listing_val) {
                        $feature_pts += compare($val, $ls_val) * $factor;
                    }
                }
                else {
                    # Compare two arrays
                    foreach my $req_val (@$val) {
                        foreach my $ls_val (@$listing_val) {
                            $feature_pts += compare($req_val, $ls_val) * $factor;
                        }
                    }
                }
            }

            $pts      += $feature_pts;
            $poss_pts += $feature_poss_pts;

            push @details, {
                name          => $key,
                poss_pts      => $feature_poss_pts,
                req_value     => $val,
                listing_value => $listing_val || '',
                pts           => $feature_pts,
            };
        }

        push @details, {
            name          => 'TOTAL',
            poss_pts      => $poss_pts,
            pts           => $pts,
            relevance     => int(($pts/$poss_pts)*100),
        };

        my $relevance = int(($pts/$poss_pts)*100);
        push @result, {
            mlsnum    => $listing->{mlsnum},
            ts        => $listing->{ts},
            relevance => $relevance,
            details   => j(\@details),
        };
    }

    my @sorted = sort {$b->{relevance} <=> $a->{relevance}} @result;
    my @return = splice(@sorted, 0, 100);

    return \@return;
}
 
my $searches = get_saved_searches();
print '[' . scalar @$searches . "] unique searches found for active circles\n";

my $i = 0;
foreach my $search (@$searches) {
    my $hash         = $search->{hash_sql};
    my $query_params = j($search->{query});

    # Get the search SQL and run queries to find new and reduced listings
    my $queries = get_search_sql($search);
    my $new_rs;
    my $reduced_rs;

    eval {
        $new_rs     = $area_dbh->selectall_arrayref($queries->{new}, {Slice => {}});
        $reduced_rs = $area_dbh->selectall_arrayref($queries->{reduced}, {Slice => {}});
    };

    if ($@) {
        print "Error running searches, skipping\n";
        print Dumper $search;
        next;
    }

    # Populate tables with the results for each query
    populate_table({
        table    => 'new_listings',
        listings => $new_rs,
        hash     => $hash,
    });

    populate_table({
        table    => 'reduced_listings',
        listings => $reduced_rs,
        hash     => $hash,
    });

    my $relevant = get_relevant_listings($query_params, $queries->{all_exact});
    
    populate_table({
        table    => 'similar_listings',
        listings => $relevant,
        hash     => $hash,
    });

    print '.';
    print "[$i]\n" if (++$i % 100 == 0);
}

1;
