use strict;
use lib "../../lib", "blib/lib", "blib/arch";

use DBI;

use MLS::Util;
use MLS::Resource::Publish;
use Net::Amazon::S3;

my $resource = $ARGV[0] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->() or die $DBI::errstr;
my $live_dbh = $MLS::Util::LIVE_DBH->() or die $DBI::errstr;

MLS::Resource::Publish->new({
  dbh => $dbh,
  live_dbh => $live_dbh,
  s3_client => $MLS::Util::S3_CLIENT->()
})->go();

$dbh->disconnect;

exit(0);
