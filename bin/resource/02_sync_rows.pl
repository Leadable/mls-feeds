use strict; 
use lib "blib/lib", "blib/arch", "/opt/mls-feeds/lib";

use librets;

use MLS::Util;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Row;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->();
my $rets = $MLS::Config::RETS->();

$rets->SetHttpLogName("$MLS::Config::LOG_DIR/sync_rows.log");

MLS::Resource::Row->new({
  dbh => $dbh,
  rets => $rets,
  rets_search_limit => 1000
})->go();

$dbh->disconnect;

exit(0);
