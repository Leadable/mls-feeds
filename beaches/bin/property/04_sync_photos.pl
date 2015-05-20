use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use Net::Amazon::S3;
use librets;

use MLS::Util;
use MLS::Property::Config;
use MLS::Property::Photo;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;
my $rets = $MLS::Property::Config::RETS->();
my $s3_client = $MLS::Util::S3_CLIENT->();
my $log = "/tmp/$MLS::Property::Config::MLS/sync_photos.log";

$rets->SetHttpLogName($log);

MLS::Property::Photo->new({
  dbh => $dbh,
  rets => $rets,
  s3_client => $s3_client
})->go();

$dbh->disconnect;
#$rets->Logout();

exit(0);
