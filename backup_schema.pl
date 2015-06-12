use strict;

use Getopt::Long;
use Net::Amazon::S3;

my $s3 = Net::Amazon::S3->new(
  {   aws_access_key_id     => 'AKIAIXF3CYSEBUR3GFTA',
      aws_secret_access_key => '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',
      retry                 => 1,
      timeout               => 120
  }
);

my $s3_client = Net::Amazon::S3::Client->new( s3 => $s3 );
my $bucket = $s3_client->bucket(name => 'leadableinc');

my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
my $port = 5432;
my $username = 'postgres';
my $schema;

GetOptions (
  "host=s" => \$host,
  "port=i" => \$port,
  "username=s" => \$username,
  "schema=s" => \$schema
) or die "Error in command line arguments";

die "Missing required argument schema!" unless $schema;

my @pg_dump = (
  'pg_dump',
  "--host $host",
  "--port $port",
  "--username $username",
  "--format directory",
  "--no-privileges",
  "--no-owner",
  "--verbose",
  "--file /tmp/$schema",
  "--schema $schema",
  "mls"
);

my $pg_dump = join(' ', @pg_dump);

print "$pg_dump\n";
system($pg_dump);

my @tar = (
  "cd /tmp",
  "&&",
  "tar",
  "-c",
  "--verbose",
  "-f $schema.tar",
  "$schema/"
);

my $tar = join(' ', @tar);
print "$tar\n";
system($tar);

my $time = time;

my $s3_object = $bucket->object(
  key => "mls-feeds/dumps/$schema/$schema-$time.tar",
  acl_short => 'public-read',
  content_type => 'application/octet-stream'
);

$s3_object->put_filename("/tmp/$schema.tar");

exit(0);
