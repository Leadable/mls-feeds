package MLS::Util;
use strict;

use DBI;

$MLS::Util::DBH = sub {
  my $dbname = 'mls';
  my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
  my $port = $ENV{POSTGRES_PORT_5432_TCP_PORT};
  my $user = $ENV{POSTGRES_FEEDS_USER};
  my $pass = $ENV{POSTGRES_FEEDS_PASS};

  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => 1, RaiseError => 1, pg_server_prepare => 0 }) or die $DBI::errstr;
};

$MLS::Util::TOOLS_DBH = sub {
  my $dbname = 'tools-db';
  my $host = $ENV{POSTGRES_TOOLS_TCP_ADDR};
  my $port = $ENV{POSTGRES_TOOLS_TCP_PORT};
  my $user = $ENV{POSTGRES_TOOLS_USER};
  my $pass = $ENV{POSTGRES_TOOLS_PASS};

  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => 1, RaiseError => 1, pg_server_prepare => 0 }) or die $DBI::errstr;
};

1;
