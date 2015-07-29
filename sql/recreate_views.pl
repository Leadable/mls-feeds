#!/usr/bin/env perl
use strict;

use Data::Dumper qw(Dumper);
use FindBin;
use DBI;

die "Missing argument [MLS]" unless $ARGV[0];
my $mls = $ARGV[0];
my $force = $ARGV[1] eq '-f';

my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
my $port = $ENV{POSTGRES_PORT_5432_TCP_PORT};
my $user = $ENV{POSTGRES_FEEDS_USER};
my $pass = $ENV{POSTGRES_FEEDS_PASS};
my $dbname = 'mls';

my $tools_host = $ENV{POSTGRES_TOOLS_TCP_ADDR};
my $tools_port = $ENV{POSTGRES_TOOLS_TCP_PORT};
my $tools_user = $ENV{POSTGRES_TOOLS_USER};
my $tools_pass = $ENV{POSTGRES_TOOLS_PASS};
my $tools_dbname = 'tools-db';

if (!$host || !$port || !$user || !$pass) {
  print "The following environment variables must be set:
    POSTGRES_PORT_5432_TCP_ADDR
    POSTGRES_PORT_5432_TCP_PORT
    POSTGRES_FEEDS_USER
    POSTGRES_FEEDS_PASS
  ";
  exit;
}

if (!$tools_host || !$tools_port || !$tools_user || !$tools_pass) {
  print "The following environment variables must be set:
    POSTGRES_TOOLS_TCP_ADDR
    POSTGRES_TOOLS_TCP_PORT
    POSTGRES_TOOLS_USER
    POSTGRES_TOOLS_PASS
  ";
  exit;
}

# Connect to tools db, determine if safe to replace view
my $connstr = "dbi:Pg:dbname=$tools_dbname;host=$tools_host;port=$tools_port";
my $tools_dbh = DBI->connect($connstr, $tools_user, $tools_pass, { AutoCommit => 1, RaiseError => 1, pg_server_prepare => 0 }) or die $DBI::errstr;

my $sql = 'SELECT status FROM monitor_feeds where mls = ' . $tools_dbh->quote($mls);
my $status = $tools_dbh->selectcol_arrayref($sql, { Slice => {} })->[0];

die "[$mls] is running. Run this script with the -f option if you really want to replace the views\n" if ($status eq 'RUNNING');

my $view_property = "$FindBin::Bin/$mls/property/view_property.sql";
die "Could not find [$view_property]" if (! -e $view_property);

$ENV{PGPASSWORD} = $pass;

my $cmd = qq{cat $FindBin::Bin/$mls/property/view_property.sql $FindBin::Bin/$mls/views/* | psql -v ON_ERROR_STOP=1 -q -h $host -p $port -U $user $dbname -1 -f -};
print "$cmd\n";
system($cmd) == 0 or
  die "There was a problem with the command: [" . ($? >> 8) . "]";

print "---Done creating views for [$mls]--\n";

1;
