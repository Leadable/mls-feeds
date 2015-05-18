use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;

use MLS::Util;
use MLS::Property::Config;
use MLS::Property::Mutation;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;
my $rets = $MLS::Property::Config::RETS->();
my $log = "/tmp/$MLS::Property::Config::MLS/check_for_mutations.log";

$rets->SetHttpLogName($log);

MLS::Property::Mutation->new({
  dbh => $dbh,
  rets => $rets
})->go();

$dbh->disconnect;
#$rets->Logout();

exit(0);
