package MLS::Util;
use strict;

$MLS::Util::DBH = sub {
  my $dbname = 'mls';
  my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
  my $port = $ENV{POSTGRES_PORT_5432_TCP_PORT};
  my $user = 'postgres';
  my $pass = 'password';

  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => 1, RaiseError => 1, pg_server_prepare => 0 });
};

$MLS::Util::LIVE_DBH = sub {
  my $dbname = 'mls';
  my $host = $ENV{POSTGRES_LIVE_TCP_ADDR};
  my $port = $ENV{POSTGRES_LIVE_TCP_PORT};
  my $user = $ENV{POSTGRES_LIVE_USER};
  my $pass = $ENV{POSTGRES_LIVE_PASS};

  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => 1, RaiseError => 1, pg_server_prepare => 0 });
};


# AMAZON S3 client
$MLS::Util::S3_CLIENT = sub {
  my $s3 = Net::Amazon::S3->new(
    {   aws_access_key_id     => 'AKIAIXF3CYSEBUR3GFTA',
        aws_secret_access_key => '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',
        retry                 => 1,
        timeout               => 120
    }
  );

  my $s3_client = Net::Amazon::S3::Client->new( s3 => $s3 );
  return $s3_client;
};

1;
