use strict; 
use lib "blib/lib", "blib/arch", "/opt/mls-feeds/lib";

use librets;

use MLS::Storage;
use MLS::Util;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Photo;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->();
my $rets = $MLS::Config::RETS->();
$rets->SetHttpLogName("$MLS::Config::LOG_DIR/sync_photos.log");
my $storage = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PHOTO_STORAGE_BUCKET });

MLS::Resource::Photo->new({
  dbh => $dbh,
  rets => $rets,
  storage_client => $storage,
})->go();

$dbh->disconnect;

exit(0);
