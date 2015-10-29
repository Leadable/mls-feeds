#!/usr/bin/perl

use strict;

use FindBin;
use lib "$FindBin::Bin/../../lib";
use MLS::Storage;
use MLS::Database;
use Data::Dumper;

my $dbh = MLS::Database->new({db => 'tools'});

sub clean_backup {
    print "Clean Backup\n";

    my $storage_client = MLS::Storage->new({ use_s3 => 0, bucket => 'db-backup'});

    my $sql = q|SELECT * FROM backup where error IS NULL order by ts desc;|;
    my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });
    return if (!$rs || ! scalar @$rs);

    my %backups;

    # put the rows into a hash based on mls
    foreach my $row (@$rs) {
        my $mls = $row->{mls};
        push @{$backups{$mls}}, $row;
    }

    # splice off the 3 most recent backups, the rest will be purged
    foreach my $mls (keys %backups) {
        print "MLS: [$mls]\n";
        splice $backups{$mls}, 0, 3;

        # for each remaining row, purge the files
        foreach my $row (@{$backups{$mls}}) {
            my $ts    = $row->{ts};
            my $file_list = $row->{file_list};

            foreach my $file (@$file_list) {
                $file =~ s{.*db-backup\/}{};
                print "Deleting: [$file]\n";
                $storage_client->delete_file($file);
            }

            $sql = qq|DELETE FROM backup WHERE mls = '$mls' AND ts = '$ts'|;
            print "delete row\n";
            $dbh->do($sql);
        }
    }
}

sub clean_monitor_journal {
    print "Clean Monitor Journal\n";

    my $sql = q|DELETE FROM monitor_feeds_journal WHERE started_at < NOW() - '7 days'::interval;|;

    $dbh->do($sql);
}

sub clean_geocode_log {
    print "Clean Geocode Log\n";

    my $sql = q|DELETE FROM geocode_log where "timestamp" < (NOW() - '2 days'::interval);|;

    $dbh->do($sql);
}

# Main:
clean_geocode_log();
clean_backup();
clean_monitor_journal();

1;
