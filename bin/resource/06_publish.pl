use strict;

use FindBin;
use lib "blib/lib", "blib/arch", "$FindBin::Bin/../../lib";

use MLS::Database;
use MLS::Storage;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Publish;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $force_rebuild = $ARGV[2] eq '--force-rebuild';

my $feeds_dbh = MLS::Database->new({db => 'feeds'});
my $tools_dbh = MLS::Database->new({db => 'tools'});

my $storage = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PUBLISH_STORAGE_BUCKET });

# Use areas array when applicable (for Property resource), otherwise
# pass the resource type instead
my @areas = @MLS::Config::AREAS ? @MLS::Config::AREAS : ($resource);

foreach my $id (@areas) {
    MLS::Resource::Publish->new({
      id             => $id,
      dbh            => $feeds_dbh,
      tools_dbh      => $tools_dbh,
      storage_client => $storage,
      force_rebuild  => $force_rebuild,
    })->go();
}

exit(0);
