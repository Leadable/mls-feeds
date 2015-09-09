use strict;

use FindBin;
use lib "$FindBin::Bin/../../lib";

use Getopt::Long;
use MLS::Database;
use MLS::Storage;
use MLS::Resource::Utils;
use Pod::Usage;

my $mls;
my $resource;
my $help;

GetOptions(
    "board=s"    => \$mls,
    "resource=s" => \$resource,
    "help"       => \$help,
) or pod2usage(1);

pod2usage(1) if ($help || !$mls);

my $vendor = MLS::Resource::Utils::find_vendor($mls, "$FindBin::Bin/../../lib/MLS/Resource");

$resource ||= 'Property';

my $board_path = "MLS::Resource::${vendor}::$mls";
my $config_path = "${board_path}::Config::$resource";
my $module_path = "${board_path}::Photo";

eval "require $config_path" or die "Could not find [$config_path]: $@\n";

my $dbh = MLS::Database->new({db => 'feeds'});
my $rets = $MLS::Config::RETS;
my $log_dir = MLS::Resource::Utils::get_log_dir();

if ($rets) {
    $rets->SetHttpLogName("$log_dir/sync_photos.log");
}

my $storage = MLS::Storage->new({ use_s3 => 0, bucket => 'dfo-photos' });

eval "require $module_path" or die "Could not find [$module_path]: $@\n";

$module_path->new({
  dbh => $dbh,
  rets => $rets,
  storage_client => $storage,
})->go();

exit(0);

__END__

=head1 04_sync_photo.pl

=head1 SYNOPSIS

04_sync_photo.pl [options]

=head1 OPTIONS

=over 8

=item B<-b, --board=>

Specify the MLS board to use

=item B<-r, --resource=Property>

Specify the resource to use. Defaults to Property.

=item B<--help>

Print a brief help message and exits.

=back

=head1 DESCRIPTION

B<This program> gets and stores photos for a board. For most boards this will
gather photo urls, but others require downloading photos and storing them.

=cut

1;
