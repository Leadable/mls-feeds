use strict;

use Getopt::Long;

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

my @wget = (
  'cd /tmp',
  '&&',
  "wget",
  "https://s3.amazonaws.com/leadableinc/mls-feeds/dumps/$schema/$schema.tar"
);

my $wget = join(' ', @wget);
print "$wget\n";

my @tar = (
  "cd /tmp",
  "&&",
  "tar xvf $schema.tar"
);

my $tar = join(' ', @tar);
print "$tar\n";

# pg_restore --verbose --dbname=postgres --create --exit-on-error --no-owner --no-privileges -h $POSTGRES_PORT_5432_TCP_ADDR -U postgres /opt/mls-feeds/dumps/mls/
my @pg_restore = (
  'pg_restore',
  "--host $host",
  "--port $port",
  "--username $username",
  "--no-privileges",
  "--no-owner",
  "--exit-on-error",
  "--clean",
  "--verbose",
  "--dbname=mls",
  "--table Property",
  "--table mutation",
  "--if-exists",
  "/tmp/$schema"
);

my $pg_restore = join(' ', @pg_restore);

print "$pg_restore\n";
system($pg_restore);
