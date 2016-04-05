#!/usr/bin/perl

use strict;
use warnings;
use FindBin;

use lib "$FindBin::Bin/../lib";

use DBI;
use Data::Dumper;

use Mojo::JSON qw(j);
use Mojo::UserAgent;
use Scalar::Util qw(looks_like_number);
use MLS::Database;

$| = 1;

my $MLS        = $ENV{MLS_NAME};
my $VIEW       = $ENV{MLS_VIEW};
my $AREA_ID    = $ENV{AREA_ID};
my $API_KEY    = $ENV{API_KEY};
my $DOMAIN_URL = $ENV{DOMAIN_URL};

die "Missing parameters" if (!$MLS || !$VIEW || !$AREA_ID || !$API_KEY || !$DOMAIN_URL);

my $MV_ACTIVE = $VIEW . '_mv_active';

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
        WITH hash_circles AS (
            SELECT
                hash_sql, array_agg(c.id) as circle_list,
                max(conditions_sql) as conditions_sql, max(values_sql) as values_sql, max(query) as query
            FROM
                "search" s, member m, circle c, identity i
            WHERE
                hash_sql ~ '^[A-f0-9]{32}\$' AND
                s.member_id = m.id AND
                m.circle_id = c.id AND
                i.user_id = m.user_id AND
                c.buyer_last_request_at > NOW() - '90 days'::interval AND
                c.area_id = '$AREA_ID' AND
                NOT c.anonymous
            GROUP BY
                hash_sql
        )
        SELECT
            hash_sql, json_agg(row_to_json(row(i.email, i.first_name, i.last_name, m.circle_id))) as contact,
            max(conditions_sql) as conditions_sql, max(values_sql) as values_sql, max(query) as query
        FROM
            member m, "user" u, identity i, hash_circles hc
        WHERE
            m.circle_id = ANY("circle_list") AND
            m.user_id = u.id AND
            u.role = 'buyer' AND
            i.user_id = u.id
        GROUP BY
            hash_sql
    ;|;

    my $rs = $lp_dbh->selectall_arrayref($sql, {Slice => {}});
    return $rs;
}

sub run_search_sql {
    my $opts = shift;

    my $conditions   = $opts->{conditions};
    my $values       = $opts->{values};
    my $query_params = $opts->{query_params};
    my $hash         = $opts->{hash};

    $conditions = join(' AND ', @$conditions);
    $conditions =~ s/p\.//g;
    $conditions =~ s/\$(\d+)/'$values->[$1 - 1]'/g;

    my $q_hash = $area_dbh->quote($hash);

    # Find out when we last synced this search (if ever)
    my $last_synced_sql = qq|SELECT last_synced_at FROM $MLS.sync_search_listings WHERE search_hash = $q_hash;|;
    my $last_synced_rs = $area_dbh->selectcol_arrayref($last_synced_sql);

    my $ts;
    if (scalar @$last_synced_rs) {
        $ts = $area_dbh->quote($last_synced_rs->[0]) . '::timestamp without time zone';
    }
    else {
        $hash = $area_dbh->quote($hash);
        my $sql = qq|INSERT INTO $MLS.sync_search_listings VALUES ($hash, NOW());|;
        $area_dbh->do($sql);
        return;
    }

    my $new_sql = qq|
        SELECT * FROM $MLS.$MV_ACTIVE
        WHERE $conditions AND __inserted_at > $ts
        ORDER BY __inserted_at DESC
    ;|;

    my $reduced_sql = qq|
        SELECT * FROM $MLS.$MV_ACTIVE
        WHERE $conditions AND __inserted_at > $ts AND __percent_reduced > 0
        ORDER BY __price_updated_at DESC
    ;|;

    my $all_exact_sql = qq|
        SELECT mlsnum FROM $MLS.$MV_ACTIVE
        WHERE $conditions
    ;|;

    my $relevant_sql = get_relevant_sql($query_params, $all_exact_sql, $ts);

    my ($start_ts, $new_rs, $reduced_rs, $relevant_rs);
    eval {
        $area_dbh->begin_work or die "Could not begin work: [$@]\n";
        $start_ts   = $area_dbh->selectcol_arrayref("SELECT transaction_timestamp()::timestamp without time zone")->[0];

        $new_rs      = $area_dbh->selectall_arrayref($new_sql, {Slice => {}});
        $reduced_rs  = $area_dbh->selectall_arrayref($reduced_sql, {Slice => {}});

        if ($relevant_sql) {
            $relevant_rs = $area_dbh->selectall_arrayref($relevant_sql, {Slice => {}});
        }
        else {
            # Can happen when no location is specified in search, return empty set
            $relevant_rs = [];
        }

        $area_dbh->commit;
    };

    if ($@) {
        print "Error running searches for [$hash], skipping\n";
        $area_dbh->rollback;
        return;
    }

    return {
        new       => $new_rs,
        reduced   => $reduced_rs,
        relevant  => $relevant_rs,
        ts        => $start_ts,
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

sub get_relevant_sql {
    my ($query_params, $all_exact_sql, $last_sync_ts) = @_;

    # Compute the geom that makes up the location of this search
    my $search_geom = get_search_geom($query_params, $COLS->{location});
    return if (!$search_geom);

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
        qq|__inserted_at > $last_sync_ts|,
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
            $SELECT_SQL, $dist as distance, __inserted_at as ts, *
        FROM 
            $MLS.$MV_ACTIVE
        WHERE
            $where_sql
    ;|;

    return $sql;
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
    my ($listings_rs, $query_params) = @_;

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
            relevance => $relevance,
            details   => \@details,
            listing   => $listing,
        };
    }

    my @sorted = sort {$b->{relevance} <=> $a->{relevance}} @result;
    my @return = splice(@sorted, 0, 100);

    return \@return;
}

sub create_event {
    my $opts = shift;

    my $type         = $opts->{type};
    my $listing_data = $opts->{listing_data};
    my $contact_list = $opts->{contact_list};
    my $search_hash  = $opts->{search_hash};

    my $ua = Mojo::UserAgent->new;

    foreach my $listing (@$listing_data) {

        # Only applies to similar listings (listing_data structured a bit differently)
        my $relevance = $listing->{relevance};
        my $details   = $listing->{details};

        if ($type eq 'SIMILAR_LISTING') {
            $listing = $listing->{listing};
        }

        my %seen_circles;
        foreach my $contact (@$contact_list) {
            my $circle_num = $contact->{circle_id};

            # Do not post multiple events for the same circle/mlsnum
            next if ($seen_circles{$circle_num}++);

            my $event = {
                api_key => $API_KEY,
                type    => $type,
                hash    => $search_hash,
                contact => {
                    email      => $contact->{email},
                    first_name => $contact->{first_name},
                    last_name  => $contact->{last_name},
                },
                listing => {
                    url     => qq|http://$DOMAIN_URL/circle/$circle_num/property/search/$AREA_ID/$listing->{mlsnum}|,
                    api_url => qq|https://api.leadable.com/mls/area/$AREA_ID/mlsnum/$listing->{mlsnum}|,
                    baths => $listing->{baths_total},
                    primary_photo => $listing->{__photo_urls}->[0],
                    property_type => $listing->{type},
                },
            };

            my @listing_cols = qw(
                mls
                beds
                acres
                price
                state
                mlsnum
                status
                latitude
                longitude
                sold_date
                list_date
                listing_id
                sold_price
                year_built
                image_count
                square_feet
                listing_type
                address_line1
                address_line2
            );

            foreach my $col (@listing_cols) {
                $event->{listing}{$col} = $listing->{$col};
            }

            if ($type eq 'SIMILAR_LISTING') {
                $event->{listing}{relevance} = {
                    value   => $relevance,
                    details => $details,
                };
            }

            # print Dumper $event;

            my $url = q|https://api.leadable.com/event_queue|;
            my $tx = $ua->post($url => json => $event);
            if (!$tx->success) {
                print Dumper $tx->error;
            }
        }
    }
}

sub update_ts {
    my ($hash, $ts) = @_;

    $hash = $area_dbh->quote($hash);
    $ts   = $area_dbh->quote($ts) . '::timestamp without time zone';

    my $sql = qq|UPDATE $MLS.sync_search_listings SET last_synced_at = $ts WHERE search_hash = $hash;|;
    $area_dbh->do($sql);
}
 
my $searches = get_saved_searches();
print '[' . scalar @$searches . "] unique searches found for active circles\n";

my $i = 0;
foreach my $search (@$searches) {
    my $hash         = $search->{hash_sql};
    my $query_params = j($search->{query});
    my $conditions   = j($search->{conditions_sql});
    my $values       = j($search->{values_sql});
    my $contact_list = j($search->{contact});

    # fix up query params
    $query_params->{baths_total} = delete $query_params->{baths} if ($query_params->{baths});
    $query_params->{price_min} = 0        if (!$query_params->{price_min});
    $query_params->{price_max} = 99999999 if (!$query_params->{price_max});

    # Get the search SQL and run queries to find new and reduced listings
    my $res = run_search_sql({
        hash         => $hash,
        query_params => $query_params,
        conditions   => $conditions,
        values       => $values,
    });

    next if (!$res);

    my $new      = $res->{new};
    my $reduced  = $res->{reduced};
    my $relevant = get_relevant_listings($res->{relevant}, $query_params);

    print "\nHash: [$hash]\n";
    print "Timestamp: [$res->{ts}]\n";
    print scalar @$new . " new results\n";
    print scalar @$reduced . " reduced results\n";
    print scalar @$relevant . " relevant results\n";

    # fix contact key names (postgres 9.3 limitation)
    $contact_list = [
        map {
            my $contact;
            $contact->{email}      = $_->{f1};
            $contact->{first_name} = $_->{f2};
            $contact->{last_name}  = $_->{f3};
            $contact->{circle_id}  = $_->{f4};
            $_ = $contact;
        } @$contact_list
    ];

    create_event({
        type         => 'NEW_LISTING',
        search_hash  => $hash,
        listing_data => $new,
        contact_list => $contact_list,
    });

    create_event({
        type         => 'REDUCED_LISTING',
        search_hash  => $hash,
        listing_data => $reduced,
        contact_list => $contact_list,
    });

    create_event({
        type         => 'SIMILAR_LISTING',
        search_hash  => $hash,
        listing_data => $relevant,
        contact_list => $contact_list,
    });

    # Update the timestamp for this hash
    update_ts($hash, $res->{ts});

    print '.';
    print "[$i]\n" if (++$i % 100 == 0);
}

1;
