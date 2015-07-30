package MLS::Resource::Utils;

use strict;
use DateTime;

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

# Modifies $MLS::Config::PEAK_TIME
sub is_peak_time {
    return 0 if (!$ENV{MLS_DB_HOST});

    my $dt = DateTime->now;
    my $hour = $dt->hour;

    # the VMs have no sense of timezone, so calculate it ourself
    if ($ENV{MLS_DB_HOST} =~ /^east/) {
        $dt->set_time_zone('America/New_York');
    }
    elsif ($ENV{MLS_DB_HOST} =~ /^west/) {
        $dt->set_time_zone('America/Los_Angeles');
    }

    # offset() comes in seconds with an operator in the front (when in america)
    my $offset_hour = $dt->offset / 3600;
    $offset_hour =~ s/^-//;

    my $local_hour = $hour - $offset_hour;

    # consider peak hours between 6am and 8pm
    if ($local_hour > 6 and $local_hour < 20) {
        $MLS::Config::PEAK_TIME = 1;
        return 1;
    }
    else {
        $MLS::Config::PEAK_TIME = 0;
        return 0;
    }
}

# returns a timestamp suitable for running a rets query with
sub get_search_interval {
    my $peak = is_peak_time;
    my $search;

    if ($peak) {
      print "Peak Hours\n";

      # during peak hours, get from last 24hrs
      # TODO: change to 24hrs (3 days for testing this patch)
      my $dt = DateTime->from_epoch( epoch => time - (3 * 86400));
      $search = "$dt+";
    }
    else {
      print "Off-Peak Hours\n";
      $search = '1900-01-01T00:00:00+';
    }
}

1;
