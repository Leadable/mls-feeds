use strict; 
use lib "../lib", "blib/lib", "blib/arch"; 

use DBI;
use librets;
use Mojo::UserAgent;
use Net::Amazon::S3;
use MLS::Monitor;

use MLS::Util;

use MLS::Resource::Mutation;
use MLS::Resource::Row;
use MLS::Resource::Purge;
use MLS::Resource::Photo;
use MLS::Resource::Geo;
use MLS::Resource::Publish;

my $resource = $ARGV[0] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->() or die $DBI::errstr;
my $live_dbh = $MLS::Util::LIVE_DBH->() or die $DBI::errstr;

my $rets = $MLS::Config::RETS->();
$rets->SetHttpLogName("$MLS::Config::LOG_DIR/rets.log");
my $s3_client = $MLS::Util::S3_CLIENT->();
my $ua = Mojo::UserAgent->new();
my $monitor = MLS::Monitor->new({ dbh => $live_dbh, log_dir => $MLS::Config::LOG_DIR, s3_client => $s3_client });

my @areas = @MLS::Config::AREAS;
push @areas, $resource if (! @areas);

eval {
    $| = 1;

    $monitor->start();

    # Property
    MLS::Resource::Mutation->new({ dbh => $dbh, rets => $rets, monitor => $monitor, })->go();
    MLS::Resource::Row->new({ dbh => $dbh, rets => $rets, monitor => $monitor, rets_search_limit => 1000 })->go();
    MLS::Resource::Purge->new({ dbh => $dbh, monitor => $monitor, })->go();
    MLS::Resource::Photo->new({ dbh => $dbh, rets => $rets, monitor => $monitor, s3_client => $s3_client })->go();
    MLS::Resource::Geo->new({ dbh => $dbh, monitor => $monitor, ua => $ua })->go();

    my @areas = @MLS::Config::AREAS ? @MLS::Config::AREAS : ($resource);
    foreach my $id (@areas) {
        MLS::Resource::Publish->new({
            dbh => $dbh,
            live_dbh => $live_dbh,
            monitor => $monitor,
            s3_client => $s3_client,
            id => $id,
        })->go();
    }
};

if ($@) {
    print "Caught error: $@";
    $monitor->finish({error => 1});
    exit(1);
}

$monitor->finish();
$dbh->disconnect;

exit(0);
