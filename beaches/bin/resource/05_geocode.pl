use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;
use Mojo::UserAgent;

use MLS::Util;
use MLS::Monitor;
use MLS::Resource::Geo;

my $resource = $ARGV[0] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $ua = Mojo::UserAgent->new();
my $dbh = $MLS::Util::DBH->() or die $DBI::errstr;

MLS::Resource::Geo->new({
  dbh => $dbh,
  ua => $ua
})->go();

$dbh->disconnect;

exit(0);
