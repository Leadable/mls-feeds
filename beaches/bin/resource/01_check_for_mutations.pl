use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;

use MLS::Util;
use MLS::Resource::Mutation;

my $resource = $ARGV[0] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->() or die $DBI::errstr;
my $rets = $MLS::Config::RETS->();

$rets->SetHttpLogName("$MLS::Config::LOG_DIR/check_for_mutations.log");

MLS::Resource::Mutation->new({
  dbh => $dbh,
  rets => $rets,
})->go();

$dbh->disconnect;
#$rets->Logout();

exit(0);
