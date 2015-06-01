use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;

use MLS::Util;
use MLS::Property::Config;
use MLS::Property::Row;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;
my $rets = $MLS::Property::Config::RETS->();

$rets->SetHttpLogName("$MLS::Property::Config::LOG_DIR/sync_rows.log");

MLS::Property::Row->new({
  dbh => $dbh,
  rets => $rets,
  rets_search_limit => 1000
})->go();

$dbh->disconnect;

exit(0);
