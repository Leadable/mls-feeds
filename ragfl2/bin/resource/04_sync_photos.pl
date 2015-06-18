use strict; 
use lib "../../lib", "blib/lib", "blib/arch", "/opt/mls-feeds/lib";

use DBI;
use librets;

use MLS::Util;
use MLS::Resource::Photo;
use MLS::Storage;

my $resource = $ARGV[0] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->() or die $DBI::errstr;
my $rets = $MLS::Config::RETS->();
$rets->SetHttpLogName("$MLS::Config::LOG_DIR/sync_photos.log");
my $storage = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PHOTO_STORAGE_BUCKET });

MLS::Resource::Photo->new({
  dbh => $dbh,
  rets => $rets,
  storage_client => $storage,
})->go();

$dbh->disconnect;
#$rets->Logout();

exit(0);
