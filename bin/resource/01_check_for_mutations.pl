use strict; 

use FindBin;
use lib "blib/lib", "blib/arch", "$FindBin::Bin/../../lib";

use librets;

use MLS::Database;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Mutation;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = MLS::Database->new({db => 'feeds'});
my $rets = $MLS::Config::RETS->();

$rets->SetHttpLogName("$MLS::Config::LOG_DIR/check_for_mutations.log");

MLS::Resource::Mutation->new({
  dbh => $dbh,
  rets => $rets,
})->go();

exit(0);
