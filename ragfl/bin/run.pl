use strict; 
use lib "../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;
use Mojo::UserAgent;
use Net::Amazon::S3;

use MLS::Util;

# Property
use MLS::Property::Config;
use MLS::Property::Mutation;
use MLS::Property::Row;
use MLS::Property::Purge;
use MLS::Property::Photo;
use MLS::Property::Geo;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;
my $rets = $MLS::Property::Config::RETS->();
my $s3_client = $MLS::Util::S3_CLIENT->();
my $ua = Mojo::UserAgent->new();

my $log = "/tmp/$MLS::Property::Config::MLS/all.log";

$rets->SetHttpLogName($log);

# Property
MLS::Property::Mutation->new({ dbh => $dbh, rets => $rets })->go();
MLS::Property::Row->new({ dbh => $dbh, rets => $rets, rets_search_limit => 100 })->go();
MLS::Property::Purge->new({ dbh => $dbh, })->go();
MLS::Property::Photo->new({ dbh => $dbh, rets => $rets, s3_client => $s3_client })->go();
MLS::Property::Geo->new({ dbh => $dbh, ua => $ua })->go();

$dbh->disconnect;

exit(0);
