use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;

use MLS::Util;
use MLS::Property::Config;
use MLS::Property::Row;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;
my $rets = $MLS::Property::Config::RETS->();
my $log = "/tmp/$MLS::Property::Config::MLS/sync_rows.log";

$rets->SetHttpLogName($log);

MLS::Property::Row->new({
  dbh => $dbh,
  rets => $rets,
  rets_search_limit => 100
})->go();

$dbh->disconnect;
#$rets->Logout();

exit(0);
