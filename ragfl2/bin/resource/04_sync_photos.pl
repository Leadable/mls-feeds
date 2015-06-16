use strict; 
use lib "../../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;

use MLS::Util;
use MLS::Resource::Photo;

my $resource = $ARGV[0] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->() or die $DBI::errstr;
my $rets = $MLS::Config::RETS->();
$rets->SetHttpLogName("$MLS::Config::LOG_DIR/sync_photos.log");
my $s3_client = $MLS::Util::S3_CLIENT->();

MLS::Resource::Photo->new({
  dbh => $dbh,
  rets => $rets,
  s3_client => $s3_client,
})->go();

$dbh->disconnect;
#$rets->Logout();

exit(0);
