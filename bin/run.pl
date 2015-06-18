use strict; 
use lib "blib/lib", "blib/arch", "/opt/mls-feeds/lib";

use DBI;
use librets;
use Mojo::UserAgent;

use MLS::Storage;
use MLS::Monitor;
use MLS::Util;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Mutation;
require MLS::Resource::Row;
require MLS::Resource::Purge;
require MLS::Resource::Photo;
require MLS::Resource::Geo;
require MLS::Resource::Publish;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->() or die $DBI::errstr;
my $tools_dbh = $MLS::Util::TOOLS_DBH->() or die $DBI::errstr;

my $rets = $MLS::Config::RETS->();
$rets->SetHttpLogName("$MLS::Config::LOG_DIR/rets.log");
my $ua = Mojo::UserAgent->new();

my $photo_storage   = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PHOTO_STORAGE_BUCKET });
my $publish_storage = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PUBLISH_STORAGE_BUCKET });
my $log_storage     = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::LOG_STORAGE_BUCKET });

my $monitor = MLS::Monitor->new({ dbh => $tools_dbh, log_dir => $MLS::Config::LOG_DIR, storage_client => $log_storage });

my @areas = @MLS::Config::AREAS;
push @areas, $resource if (! @areas);

eval {
    $| = 1;

    $monitor->start();

    # Property
    MLS::Resource::Mutation->new({ dbh => $dbh, rets => $rets, monitor => $monitor, })->go();
    MLS::Resource::Row->new({ dbh => $dbh, rets => $rets, monitor => $monitor, rets_search_limit => 1000 })->go();
    MLS::Resource::Purge->new({ dbh => $dbh, monitor => $monitor, })->go();
    MLS::Resource::Photo->new({ dbh => $dbh, rets => $rets, monitor => $monitor, storage_client => $photo_storage })->go();
    MLS::Resource::Geo->new({ dbh => $dbh, monitor => $monitor, ua => $ua })->go();

    my @areas = @MLS::Config::AREAS ? @MLS::Config::AREAS : ($resource);
    foreach my $id (@areas) {
        MLS::Resource::Publish->new({
            dbh => $dbh,
            tools_dbh => $tools_dbh,
            monitor => $monitor,
            storage_client => $publish_storage,
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
$tools_dbh->disconnect;

exit(0);
