use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;
use Mojo::UserAgent;

use MLS::Util;
use MLS::Property::Config;
use MLS::Property::Geo;

my $ua = Mojo::UserAgent->new();
my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;
my $log = "/tmp/$MLS::Property::Config::MLS/geocode.log";

MLS::Property::Geo->new({
  dbh => $dbh,
  ua => $ua
})->go();

$dbh->disconnect;

exit(0);
