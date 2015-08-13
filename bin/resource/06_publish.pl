use strict;

use FindBin;
use lib "blib/lib", "blib/arch", "$FindBin::Bin/../../lib";

use Getopt::Long;
use Pod::Usage;

use MLS::Database;
use MLS::Storage;
use MLS::Resource::Utils;

my $mls;
my $resource;
my $force_rebuild;
my $help;

GetOptions(
    "board=s"       => \$mls,
    "resource=s"    => \$resource,
    "force-rebuild" => \$force_rebuild,
    "help"          => \$help,
) or pod2usage(1);

pod2usage(1) if ($help || !$mls);

my $vendor = MLS::Resource::Utils::find_vendor($mls, "$FindBin::Bin/../../lib/MLS/Resource");

$resource ||= 'Property';

my $board_path = "MLS::Resource::${vendor}::$mls";
my $config_path = "${board_path}::Config::$resource";

eval "require $config_path" or die "Could not find [$config_path]: $@\n";

my $dbh_feeds = MLS::Database->new({db => 'feeds', AutoCommit => 0});

require MLS::Resource::Publish;

# Use areas array when applicable (for Property resource), otherwise
# pass the resource type instead
my @areas = @MLS::Config::AREAS ? @MLS::Config::AREAS : ($resource);

foreach my $id (@areas) {
    MLS::Resource::Publish->new({
      id             => $id,
      dbh_feeds      => $dbh_feeds,
    })->go();
}

exit(0);

__END__

=head1 06_publish.pl

=head1 SYNOPSIS

06_publish.pl [options]

=head1 OPTIONS

=over 8

=item B<-b, --board=>

Specify the MLS board to use

=item B<-r, --resource=Property>

Specify the resource to use. Defaults to Property.

=item B<-f, --force-rebuild>

During the publish phase, generate a SQL diff containing the entire feeds data

=item B<--help>

Print a brief help message and exits.

=back

=head1 DESCRIPTION

B<This program> syncs MLS data with the specified board

=cut

1;
