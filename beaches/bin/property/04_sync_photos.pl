use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use Net::Amazon::S3;
use librets;

use MLS::Util;
use MLS::Monitor;
use MLS::Property::Config;
use MLS::Property::Photo;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;
my $rets = $MLS::Property::Config::RETS->();
my $s3_client = $MLS::Util::S3_CLIENT->();


my $monitor = MLS::Monitor->new({ dbh => $dbh, log_dir => $MLS::Property::Config::LOG_DIR });
$monitor->start();
$rets->SetHttpLogName("$MLS::Property::Config::LOG_DIR/sync_photos.log");

MLS::Property::Photo->new({
  dbh => $dbh,
  monitor => $monitor,
  rets => $rets,
  s3_client => $s3_client
})->go();

$dbh->disconnect;
#$rets->Logout();

exit(0);
