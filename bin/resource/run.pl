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

push @INC, "$FindBin::Bin/../../$mls/lib";

$resource ||= 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh       = MLS::Database->new({db => 'feeds'});
my $tools_dbh = MLS::Database->new({db => 'tools'});

my $rets = $MLS::Config::RETS;
$rets->SetHttpLogName("$MLS::Config::LOG_DIR/rets.log");

my $photo_storage   = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PHOTO_STORAGE_BUCKET });
my $publish_storage = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::PUBLISH_STORAGE_BUCKET });
my $log_storage     = MLS::Storage->new({ use_s3 => 0, bucket => $MLS::Config::LOG_STORAGE_BUCKET });

my $monitor = MLS::Monitor->new({ dbh => $tools_dbh, log_dir => $MLS::Config::LOG_DIR, storage_client => $log_storage });

my @areas = @MLS::Config::AREAS;
push @areas, $resource if (! @areas);

require MLS::Resource::Mutation;
require MLS::Resource::Row;
require MLS::Resource::Purge;
require MLS::Resource::Photo;
require MLS::Resource::Geo;
require MLS::Resource::Publish;

eval {
    $| = 1;

    $monitor->start();

    # Property
    MLS::Resource::Mutation->new({ dbh => $dbh, rets => $rets, monitor => $monitor, })->go();
    MLS::Resource::Row->new({ dbh => $dbh, rets => $rets, monitor => $monitor, rets_search_limit => 1000 })->go();
    MLS::Resource::Purge->new({ dbh => $dbh, monitor => $monitor, })->go();
    MLS::Resource::Photo->new({ dbh => $dbh, rets => $rets, monitor => $monitor, storage_client => $photo_storage })->go();
    MLS::Resource::Geo->new({ dbh => $dbh, dbh_tools => $tools_dbh, monitor => $monitor,})->go();

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
