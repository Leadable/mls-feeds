use strict;

use FindBin;
use lib "$FindBin::Bin/../../lib";

use MLS::Database;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "$FindBin::Bin/../../$mls/lib";

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = MLS::Database->new({db => 'feeds'});
my $rets = $MLS::Config::RETS;

$rets->SetHttpLogName("$MLS::Config::LOG_DIR/check_for_mutations.log");

require MLS::Resource::Mutation;

MLS::Resource::Mutation->new({
  dbh => $dbh,
  rets => $rets,
})->go();

exit(0);
