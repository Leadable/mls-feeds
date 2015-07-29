#!/usr/bin/env perl
use strict;

use Data::Dumper qw(Dumper);
use FindBin;
use DBI;

die "Missing argument [MLS]" unless $ARGV[0];
my $mls = $ARGV[0];

my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
my $port = $ENV{POSTGRES_PORT_5432_TCP_PORT};
my $user = $ENV{POSTGRES_FEEDS_USER};
my $pass = $ENV{POSTGRES_FEEDS_PASS};
my $dbname = 'mls';

if (!$host || !$port || !$user || !$pass) {
  print "The following environment variables must be set:
    POSTGRES_PORT_5432_TCP_ADDR
    POSTGRES_PORT_5432_TCP_PORT
    POSTGRES_FEEDS_USER
    POSTGRES_FEEDS_PASS
  ";
  exit;
}

my $view_property = "$FindBin::Bin/$mls/property/view_property.sql";
die "Could not find [$view_property]" if (! -e $view_property);

$ENV{PGPASSWORD} = $pass;

my $cmd = qq{cat $FindBin::Bin/$mls/property/view_property.sql $FindBin::Bin/$mls/views/* | psql -v ON_ERROR_STOP=1 -q -h $host -p $port -U $user $dbname -1 -f -};
print "$cmd\n";
system($cmd) == 0 or
  die "There was a problem with the command: [" . ($? >> 8) . "]";

print "---Done creating views for [$mls]--\n";

1;
