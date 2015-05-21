use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;

use MLS::Util;
use MLS::Monitor;
use MLS::Property::Config;
use MLS::Property::Mutation;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;
my $rets = $MLS::Property::Config::RETS->();

my $monitor = MLS::Monitor->new({ dbh => $dbh, log_dir => $MLS::Property::Config::LOG_DIR });
$monitor->start();
$rets->SetHttpLogName("$MLS::Property::Config::LOG_DIR/check_for_mutations.log");

MLS::Property::Mutation->new({
  dbh => $dbh,
  rets => $rets,
  monitor => $monitor
})->go();

$dbh->disconnect;
#$rets->Logout();

exit(0);
