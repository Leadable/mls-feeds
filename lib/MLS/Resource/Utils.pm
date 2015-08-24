package MLS::Resource::Utils;

use strict;
use DateTime;
use File::Path qw(mkpath);
use Geo::StreetAddress::US;

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
    return 0 if (!$ENV{MLS_DB_HOST} || $ENV{FORCE_OFFPEAK});

    my $dt = DateTime->now;
    my $hour = $dt->hour;

    # off peak hours are 12am-6am
    if ($ENV{MLS_DB_HOST} =~ /^east/) {
        # 4am-10am utc
        if ($hour >= 4 && $hour < 10) {
            $MLS::Config::PEAK_TIME = 0;
            return;
        }
    }
    elsif ($ENV{MLS_DB_HOST} =~ /^west/) {
        # 7am-1pm utc
        if ($hour >= 7 && $hour < 13) {
            $MLS::Config::PEAK_TIME = 0;
            return;
        }
    }

    $MLS::Config::PEAK_TIME = 1;
    return 1;
}

# returns a timestamp suitable for running a rets query with
sub get_search_interval {
    my $peak = is_peak_time;
    my $search;

    if ($peak) {
      print "Peak Hours\n";

      # during peak hours, get from last 24hrs
      my $dt = DateTime->from_epoch( epoch => time - 86400);
      $search = "$dt+";
    }
    else {
      print "Off-Peak Hours\n";
      $search = '1900-01-01T00:00:00+';
    }
}

sub check_transaction_complete {
    my ($dbh, $conditions) = @_;

    my $sql = "SELECT * FROM $MLS::Config::MLS.mutation WHERE " . join(' AND ', @$conditions);
    my $row = $dbh->selectrow_hashref($sql);
    die "Could not get row with [$sql]\n" if (!$row);

    my $transaction_complete = 1;

    # row is still out of sync
    $transaction_complete = 0 if ($row->{remote_row_mod_ts} ne $row->{local_row_mod_ts});

    # photos still need to be synced
    $transaction_complete = 0 if (($row->{remote_img_mod_ts} ne $row->{local_img_mod_ts}) && %MLS::Config::IMG_MOD_TS_COLUMN);

    # geocoding still needs to be performed
    $transaction_complete = 0 if (($row->{remote_address} ne $row->{local_address}) && %MLS::Config::ADDR_COLUMNS);

    # if there are no more differences between remote and local in the mutation table then set the last_transaction_completed at = NOW() so that the row can be published
    # The publisher job will detect the change and publish the row to the materialized (live) tables
    if ($transaction_complete) {
      my $sql = "UPDATE $MLS::Config::MLS.mutation SET last_transaction_completed_at = NOW() WHERE " . join(' AND ', @$conditions);
      $dbh->do($sql);
    }
}

# Format the listing address from the raw RETS row
sub parse_address {
    my ($remote_row, $class) = @_;

    # MLS boards may override this method
    return $MLS::Config::ADDRESS->($remote_row, $class) if ($MLS::Config::ADDRESS);

    my %address;
    while (my ($col_name, $col_mapping) = each %MLS::Config::ADDR_COLUMNS) {

      if (ref $col_mapping eq 'HASH') {
        $col_mapping = defined $col_mapping->{$class} ? $col_mapping->{$class} : $col_mapping->{default};
      }

      $address{$col_name} = $remote_row->GetString($col_mapping) if ($col_mapping);
    }

    my (@line1, @full);

    push(@line1, $address{number}) if $address{number};
    push(@line1, $address{prefix}) if $address{prefix};
    push(@line1, $address{street}) if $address{street};
    push(@line1, $address{suffix}) if $address{suffix};
    push(@line1, $address{post_dir}) if $address{post_dir};

    $address{line1} = join(' ', @line1);

    $address{line2} = sprintf('%s, %s %s', $address{city}, $address{state}, $address{zip})  if ($address{city} && $address{state} && $address{zip});
    $address{line2} = sprintf('%s, %s', $address{city}, $address{state})                    if ($address{city} && $address{state} && !($address{zip}));

    push(@full, $address{line1}) if $address{line1};
    push(@full, $address{line2}) if $address{line2};
    $address{full} = join(', ', @full);

    my $spec = Geo::StreetAddress::US->parse_address($address{full});

    @line1 = ();
    my @line2 = ();

    push(@line1, $spec->{number}) if $spec->{number};
    push(@line1, $spec->{prefix}) if $spec->{prefix};
    push(@line1, $spec->{street}) if $spec->{street};
    push(@line1, $spec->{type}) if $spec->{type};
    push(@line1, $spec->{suffix}) if $spec->{suffix};

    push(@line2, $spec->{city} . ', ' . $spec->{state}) if ($spec->{city} && $spec->{state});
    push(@line2, $spec->{zip}) if $spec->{zip};

    return 'INVALID' unless (scalar(@line1) && scalar(@line2));

    return join(' ', @line1) . ', ' . join(' ', @line2);
}

sub get_log_dir {
    my $log_dir = "/tmp/log/$MLS::Config::MLS";

    if (! -d $log_dir) {
        mkpath($log_dir);
    }

    return $log_dir;
}

1;
