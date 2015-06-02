use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;

use MLS::Util;
use MLS::Property::Config;
use MLS::Property::Publish;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;

MLS::Property::Publish->new({
  dbh => $dbh,
})->go();

$dbh->disconnect;

exit(0);
