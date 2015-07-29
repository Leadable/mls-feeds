package MLS::Resource::Utils;

use strict;

sub find_vendor {
    my ($board_name, $vendor_dir) = @_;

    opendir(my $dh, $vendor_dir) or
        die "Could not opendir [$vendor_dir]\n";

    my @vendors = grep { $_ !~ /^\./ && -d "$vendor_dir/$_" } readdir($dh);

    foreach my $vendor (@vendors) {
        return $vendor if (-d "$vendor_dir/$vendor/$board_name");
    }

    die "Did not find [$board_name] in [$vendor_dir]";
}

sub get_mv_active_def {
    my $table = shift;

    return qq|
        $table.__active AND (
            ($table.listing_type = ANY (ARRAY['for_sale'::text, 'for_rent'::text])) OR

            (($table.listing_type = ANY (ARRAY['sold'::text, 'leased'::text])) AND
            $table.sold_date::timestamp without time zone >= (now() - '6 mons'::interval))
        )
    |;
}

# returns SQL that will gather a column of listings (named listing_id) that would go in mv_active
sub get_mv_active_select_sql {
    my $mv_active_def = get_mv_active_def('l');

    return qq|
        SELECT listing_id FROM ($MLS::Config::MV_ACTIVE_COLS) as l WHERE $mv_active_def
    |;
}

1;
