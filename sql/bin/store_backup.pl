#!/usr/bin/perl

use strict;

use FindBin;
use File::Temp qw(tempfile);
use lib "$FindBin::Bin/../../lib";
use MLS::Storage;
use MLS::Database;

die "BACKUP_FILE must be specified" if (!$ENV{BACKUP_FILE});
die "MLS must be specified"         if (!$ENV{MLS_NAME});

my $storage_client = MLS::Storage->new({ use_s3 => 0, bucket => 'db-backup'});
my $dbh      = MLS::Database->new({db => 'tools'});

my $filename = $ENV{BACKUP_FILE};
my $mls      = $ENV{MLS_NAME};
my $time     = time;

print "Storing [$filename]\n";

my $storage_client = $storage_client;
open (my $fh, '<', $filename)
    or die "Could not open file [$filename]";

# store file in 10M chunks
my $buffer;
my $i = 0;
my @urls;

while (read($fh, $buffer, 10000000)) {

    my ($part_fh, $part_filename) = tempfile(
        TEMPLATE => "XXXXXXXXXXXXXXX",
        DIR      => '/tmp',
        UNLINK   => 1,
    );

    # store buffer in file
    print $part_fh $buffer;
    close $part_fh;

    my $url = eval {
        $storage_client->store_file({
          source_filename => $part_filename,
          dest_filename   => "$mls/$time/$i.sql.gz",
          content_type    => 'text/plain',
        });
    };

    if ($@) {
        my $sql = qq|INSERT INTO backup VALUES ('$mls', NOW(), NULL, 'COULD NOT UPLOAD FILE [$mls/$time/$i.gz]');|;
        $dbh->do($sql);
        exit 1;
    }

    push @urls, $url;

    print "uploaded to [$url]\n";
    $i++;
}

my $sql;

if (scalar @urls) {
    my $sql_urls = 'ARRAY[' . join(',', map($dbh->quote($_), @urls)) . ']';
    $sql = qq|INSERT INTO backup VALUES ('$mls', NOW(), $sql_urls, NULL);|;
}
else {
    $sql = qq|INSERT INTO backup VALUES ('$mls', NOW(), NULL, 'NO FILES');|;
}

$dbh->do($sql);

1;
