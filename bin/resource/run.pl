use strict; 

use FindBin;
use lib "$FindBin::Bin/../../lib";

use DBI;
use Mojo::UserAgent;
use Getopt::Long;
use Pod::Usage;

use MLS::Storage;
use MLS::Monitor;
use MLS::Database;
use MLS::Resource::Utils;

my $mls;
my $resource;
my $no_publish;
my $force_rebuild;
my $help;

GetOptions(
    "board=s"        => \$mls,
    "resource=s"     => \$resource,
    "nopublish"      => \$no_publish,
    "force-rebuild"  => \$force_rebuild,
    "help"           => \$help,
) or pod2usage(1);

pod2usage(1) if ($help || !$mls);

my $vendor = MLS::Resource::Utils::find_vendor($mls, "$FindBin::Bin/../../lib/MLS/Resource");

$resource ||= 'Property';

my $board_path = "MLS::Resource::${vendor}::$mls";
my $config_path = "${board_path}::Config::$resource";

eval "require $config_path" or die "Could not find [$config_path]: $@\n";

# Should be called when requiring the MLS config anyway
# but call here just in case it is forgotten to avoid instant exits
MLS::Resource::Utils::is_peak_time();

my $dbh       = MLS::Database->new({db => 'feeds'});
my $tools_dbh = MLS::Database->new({db => 'tools'});

my $rets = $MLS::Config::RETS;
$rets->SetHttpLogName("$MLS::Config::LOG_DIR/rets.log");

my $photo_storage   = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PHOTO_STORAGE_BUCKET });
my $publish_storage = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PUBLISH_STORAGE_BUCKET });
my $log_storage     = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::LOG_STORAGE_BUCKET });

my $monitor = MLS::Monitor->new({ dbh => $tools_dbh, log_dir => $MLS::Config::LOG_DIR, storage_client => $log_storage });

my $mutation_module = "${board_path}::Mutation";
my $row_module      = "${board_path}::Row";
my $purge_module    = "${board_path}::Purge";
my $photo_module    = "${board_path}::Photo";

foreach ($mutation_module, $row_module, $purge_module, $photo_module) {
    eval "require $_" or die "Could not find [$_]: $@\n";
}

require MLS::Resource::Geo;

unless ($no_publish) {
    require MLS::Resource::Publish;
};

eval {
    $| = 1;

    $monitor->start();

    $mutation_module->new({
        dbh => $dbh,
        rets => $rets,
        monitor => $monitor,
    })->go();

    $row_module->new({
        dbh => $dbh,
        rets => $rets,
        monitor => $monitor,
    })->go();

    $purge_module->new({
        dbh => $dbh,
        monitor => $monitor,
    })->go();

    if (%MLS::Config::IMG_MOD_TS_COLUMN) {
        $photo_module->new({
            dbh => $dbh,
            rets => $rets,
            monitor => $monitor,
            storage_client => $photo_storage
        })->go();
    }

    if ($MLS::Config::ADDRESS) {
        MLS::Resource::Geo->new({
            dbh => $dbh,
            dbh_tools => $tools_dbh,
            monitor => $monitor,
        })->go();
    }

    unless ($no_publish) {
        my @areas = @MLS::Config::AREAS ? @MLS::Config::AREAS : ($resource);
        foreach my $id (@areas) {
            MLS::Resource::Publish->new({
                id             => $id,
                dbh            => $dbh,
                monitor        => $monitor,
                tools_dbh      => $tools_dbh,
                force_rebuild  => $force_rebuild,
                storage_client => $publish_storage,
            })->go();
        }
    }
};

if ($@) {
    print "Caught error: $@";
    $monitor->finish({error => 1});
    exit(1);
}

$monitor->finish();

exit(0);

__END__

=head1 run.pl

sample - Using Getopt::Long and Pod::Usage

=head1 SYNOPSIS

run.pl [options]

=head1 OPTIONS

=over 8

=item B<-b, --board=>

Specify the MLS board to use

=item B<-r, --resource=Property>

Specify the resource to use. Defaults to Property.

=item B<-n, --nopublish>

Do not publish SQL to tools database after gathering data

=item B<-f, --force-rebuild>

During the publish phase, generate a SQL diff containing the entire feeds data

=item B<--help>

Print a brief help message and exits.

=back

=head1 DESCRIPTION

B<This program> syncs MLS data with the specified board

=cut

1;
