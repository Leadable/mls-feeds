use strict; 
use warnings;

use DBI;
use Data::Dumper;
use Mojo::JSON qw(j);
use Getopt::Long;

my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
my $port = 5432;
my $user = 'postgres';
my $password = 'password';
my $dbname = 'mls';
my $schema;
my $source_file;

GetOptions (
  "host=s"        => \$host,
  "port=i"        => \$port,
  "user=s"        => \$user,
  "password=s"    => \$password,
  "schema=s"      => \$schema,
  "source_file=s" => \$source_file
) or die "Error in command line arguments";

die "Missing required argument schema!" unless $schema && $source_file;

# Check consistency between source file and live table
open (my $fh, '<', $source_file) or
    die "Could not open file for read: [$source_file]: $!";

my $version_str = <$fh>;
close $fh;

# remove sql comment chars
$version_str =~ s/^--//;

my $diff_version = j($version_str);

# connect to db
my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";
my $dbh = DBI->connect($connstr, $user, $password, { AutoCommit => 1, RaiseError => 1, pg_server_prepare => 0 });

# get version string on live table
my $sql = qq|select description from pg_description
            join pg_class on pg_description.objoid = pg_class.oid
            join pg_namespace on pg_class.relnamespace = pg_namespace.oid
            where relname = 'test_live' and nspname='$schema'|;

my $live_version = $dbh->selectcol_arrayref($sql)->[0];

if ($diff_version->{old} eq $live_version) {
    print "Version stings match, applying diff\n";

    $ENV{PGPASSWORD} = $password;
    my $cmd = "psql -q -h $host -p $port -U $user -d $dbname -f $source_file";
    system($cmd) == 0 or
        die "Error running [$cmd] exit code: " . ($? >> 8);

    print "--[DONE]--\n";
}
else {
    print "Version strings do not match, diff will not be applied\n";
}

1;
