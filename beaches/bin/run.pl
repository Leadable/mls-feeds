use strict; 
use lib "../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;
use Mojo::UserAgent;
use Net::Amazon::S3;
use MLS::Monitor;

use MLS::Util;

# Property
use MLS::Property::Config;
use MLS::Property::Mutation;
use MLS::Property::Row;
use MLS::Property::Purge;
use MLS::Property::Photo;
use MLS::Property::Geo;
use MLS::Property::Publish;

my $dbh = $MLS::Util::DBH->($MLS::Property::Config::MLS_DB_SHARD, $MLS::Property::Config::MLS) or die $DBI::errstr;
my $rets = $MLS::Property::Config::RETS->();
$rets->SetHttpLogName("$MLS::Property::Config::LOG_DIR/rets.log");
my $s3_client = $MLS::Util::S3_CLIENT->();
my $ua = Mojo::UserAgent->new();
my $monitor = MLS::Monitor->new({ dbh => $dbh, log_dir => $MLS::Property::Config::LOG_DIR });

eval {
    $monitor->start();

    # Property
    MLS::Property::Mutation->new({ dbh => $dbh, rets => $rets, monitor => $monitor, })->go();
    MLS::Property::Row->new({ dbh => $dbh, rets => $rets, monitor => $monitor, rets_search_limit => 100 })->go();
    MLS::Property::Purge->new({ dbh => $dbh, monitor => $monitor, })->go();
    MLS::Property::Photo->new({ dbh => $dbh, rets => $rets, monitor => $monitor, s3_client => $s3_client })->go();
    MLS::Property::Geo->new({ dbh => $dbh, monitor => $monitor, ua => $ua })->go();
    MLS::Property::Publish->new({ dbh => $dbh, monitor => $monitor, })->go();
};

if ($@) {
    print "Caught error: $@";
    $monitor->finish({error => 1});
    exit(1);
}

$monitor->finish();
$dbh->disconnect;

exit(0);
