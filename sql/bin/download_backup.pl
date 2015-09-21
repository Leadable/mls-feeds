#!/usr/bin/perl

use strict;

use FindBin;
use lib "$FindBin::Bin/../../lib";

use MLS::Database;
use Mojo::UserAgent;
use File::Temp qw(tempfile tempdir);

die "MLS must be specified" if (!$ENV{MLS_NAME});

# Remove download filesize limit
$ENV{MOJO_MAX_MESSAGE_SIZE} = 0;

my $mls = $ENV{MLS_NAME};

my $dbh = MLS::Database->new({db => 'tools'});

my $row = $dbh->selectrow_hashref(qq|select * from backup where mls = '$mls' order by ts desc;|);
die "No results found for [$mls]" if (!$row);

# create a temp dir for all our files
my $tempdir = tempdir(
  'XXXXXXXXXXX',
  DIR     => '/tmp',
  CLEANUP => 1,
);
my $ua = Mojo::UserAgent->new;

my @gz_files;

# Download each one of our gz parts
foreach my $url (@{$row->{file_list}}) {
  print "Downloading file at [$url]\n";

  my ($fh, $filename) = tempfile(
    TEMPLATE => 'XXXXXXXXXXXX',
    DIR      => $tempdir,
    SUFFIX   => '.sql.gz',
    UNLINK   => 0,
  );

  my $tx = $ua->get($url);
  if ($tx->success) {
    $tx->res->content->asset->move_to($filename);
  }
  else {
    die $tx->error;
  }

  push @gz_files, $filename;
}

print "Reconstructing full backup...\n";

# Reconstruct the full SQL diff using cat and gunzip
my $diff_path = "$tempdir/$mls-pgdump.sql";
my $cmd = "cat " . join(' ', @gz_files) . " | gunzip > /opt/recovery/$mls-pgdump.sql";
system($cmd) == 0 or
  die "There was a problem with reconstructing the full diff: " . ($? >> 8);

1;
