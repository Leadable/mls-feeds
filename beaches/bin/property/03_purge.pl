use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;

use MLS::Util;
use MLS::Property::Config;
use MLS::Property::Purge;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;

MLS::Property::Purge->new({
  dbh => $dbh,
})->go();

$dbh->disconnect;

exit(0);
