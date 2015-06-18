use strict;
use lib "blib/lib", "blib/arch", "/opt/mls-feeds/lib";

use MLS::Util;
use MLS::Storage;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Publish;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->();
my $tools_dbh = $MLS::Util::TOOLS_DBH->();
my $storage = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PUBLISH_STORAGE_BUCKET });

# Use areas array when applicable (for Property resource), otherwise
# pass the resource type instead
my @areas = @MLS::Config::AREAS ? @MLS::Config::AREAS : ($resource);

foreach my $id (@areas) {
    MLS::Resource::Publish->new({
      dbh => $dbh,
      tools_dbh => $tools_dbh,
      storage_client => $storage,
      id => $id
    })->go();
}

$dbh->disconnect;

exit(0);
