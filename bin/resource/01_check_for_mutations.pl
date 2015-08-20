use strict;

use FindBin;
use lib "$FindBin::Bin/../../lib";

use Getopt::Long;
use MLS::Database;
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
my $module_path = "${board_path}::Mutation";

eval qq|require $config_path| or die "Could not find [$config_path]: $@\n";

my $dbh = MLS::Database->new({db => 'feeds'});
my $rets = $MLS::Config::RETS;

my $log_dir = MLS::Resource::Utils::get_log_dir();

$rets->SetHttpLogName("$log_dir/check_for_mutations.log");

eval "require $module_path" or die "Could not find [$module_path]: $@\n";

$module_path->new({
  dbh => $dbh,
  rets => $rets,
})->go();

exit(0);

__END__

=head1 01_check_for_mutations.pl

=head1 SYNOPSIS

01_check_for_mutations.pl [options]

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

B<This program> checks to see what MLS listings have changed since it last ran (new, removed, updated, resurrected)

=cut

1;
