#!/usr/bin/perl

use strict;
use warnings;
use FindBin;

use lib "$FindBin::Bin/../lib";

use DBI;
use Data::Dumper;

use Mojo::JSON qw(j);
use MLS::Database;

$| = 1;

my $MLS  = $ENV{MLS_NAME};
my $VIEW = $ENV{MLS_VIEW};

die "Missing parameters" if (!$MLS || !$VIEW);

my $lp_dbh   = MLS::Database->new({db => 'lp'});
my $area_dbh = MLS::Database->new({db => 'feeds'});

sub get_saved_searches {
    my $mls = $lp_dbh->quote($MLS);
    my $sql = qq|
        SELECT
            hash_sql, s.area_id, max(conditions_sql) as conditions_sql, max(values_sql) as values_sql
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
        SELECT mlsnum, __inserted_at as ts FROM $MLS.$VIEW
        WHERE $conditions ORDER BY __inserted_at LIMIT 100
    ;|;

    my $reduced_sql = qq|
        SELECT mlsnum, __price_updated_at as ts FROM $MLS.$VIEW
        WHERE $conditions AND __percent_reduced > 0 ORDER BY __price_updated_at LIMIT 100
    ;|;

    return {
        new     => $new_sql,
        reduced => $reduced_sql,
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

    my $values = 
        join(',', 
            map {"($hash, '$_->{mlsnum}', '$_->{ts}'::timestamp without time zone)"} @$listings
        );

    my $insert_sql = qq|INSERT INTO $MLS.$table (search_hash, mlsnum, ts) VALUES $values;|;
    
    eval {
        my $sql = qq|BEGIN; $delete_sql $insert_sql COMMIT;|;
        $area_dbh->do($sql);
    };

    if ($@) {
        print "Error adding new results\n";
    }
}

my $searches = get_saved_searches();
print '[' . scalar @$searches . "] unique searches found for active circles\n";

my $i = 0;
foreach my $search (@$searches) {
    my $hash = $search->{hash_sql};

    # Get the search SQL and run queries to find new and reduced listings
    my $queries  = get_search_sql($search);
    my $new_rs     = $area_dbh->selectall_arrayref($queries->{new}, {Slice => {}});
    my $reduced_rs = $area_dbh->selectall_arrayref($queries->{reduced}, {Slice => {}});

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

    print '.';
    print "[$i]\n" if (++$i % 100 == 0);
}

1;
