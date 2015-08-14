#!/usr/bin/perl

use strict;

use FindBin;
use File::Temp qw(tempfile);
use lib "$FindBin::Bin/../../lib";
use MLS::Storage;

die "BACKUP_FILE must be specified" if (!$ENV{BACKUP_FILE});
die "MLS must be specified"         if (!$ENV{MLS_NAME});

my $storage_client = MLS::Storage->new({ use_s3 => 0, bucket => 'db-backup'});

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
while (read($fh, $buffer, 10000000)) {

    my ($part_fh, $part_filename) = tempfile(
        TEMPLATE => "XXXXXXXXXXXXXXX",
        DIR      => '/tmp',
        SUFFIX   => '.gz',
        UNLINK   => 1,
    );

    # store buffer in file
    print $part_fh $buffer;
    close $part_fh;

    my $url = $storage_client->store_file({
      source_filename => $part_filename,
      dest_filename   => "$mls/$time/$i.gz",
      content_type    => 'text/plain',
    });

    print "uploaded to [$url]\n";
    $i++;
}
