use strict; 
use lib "blib/lib", "blib/arch", "/opt/mls-feeds/lib";

use librets;

use MLS::Util;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Mutation;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->();
my $rets = $MLS::Config::RETS->();

$rets->SetHttpLogName("$MLS::Config::LOG_DIR/check_for_mutations.log");

MLS::Resource::Mutation->new({
  dbh => $dbh,
  rets => $rets,
})->go();

$dbh->disconnect;

exit(0);
