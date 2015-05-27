use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;
use Mojo::UserAgent;

use MLS::Util;
use MLS::Monitor;
use MLS::Property::Config;
use MLS::Property::Geo;

my $ua = Mojo::UserAgent->new();
my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;

my $monitor = MLS::Monitor->new({ dbh => $dbh, log_dir => $MLS::Property::Config::LOG_DIR });
$monitor->start();

MLS::Property::Geo->new({
  dbh => $dbh,
  monitor => $monitor,
  ua => $ua
})->go();

# Last process in pipeline
$monitor->finish();

$dbh->disconnect;

exit(0);
