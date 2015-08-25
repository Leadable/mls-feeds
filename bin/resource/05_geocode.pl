use strict; 

use FindBin;
use lib "$FindBin::Bin/../../lib";

use Getopt::Long;
use Pod::Usage;
use Mojo::UserAgent;

use MLS::Database;
use MLS::Resource::Utils;

my $mls;
my $resource;
my $partition;
my $help;

GetOptions(
    "board=s"        => \$mls,
    "resource=s"     => \$resource,
    "partition"      => \$partition,
    "help"           => \$help,
) or pod2usage(1);

pod2usage(1) if ($help || !$mls);

my $vendor = MLS::Resource::Utils::find_vendor($mls, "$FindBin::Bin/../../lib/MLS/Resource");

$resource ||= 'Property';

my $board_path = "MLS::Resource::${vendor}::$mls";
my $config_path = "${board_path}::Config::$resource";

eval "require $config_path" or die "Could not find [$config_path]: $@\n";

require MLS::Resource::Geo;

if ($partition) {
    print "Partition mode active\n";
    foreach (0..4) {

        my $pid = fork;

        if (! defined $pid) {
            die "fork failed: $!";
        }
        elsif ($pid == 0) {
            my $dbh = MLS::Database->new({db => 'feeds'});
            my $tools_dbh = MLS::Database->new({db => 'tools'});

            MLS::Resource::Geo->new({
              dbh => $dbh,
              dbh_tools => $tools_dbh,
              partition => [$_*2, $_*2+1],
            })->go();

            exit(0);
        }
    }

    my $i = 1;
    # parent, wait for children to finish
    $SIG{CHLD} = sub {
      print "Child [$i] died...\n";
      exit if ($i++ == 5);
    };

    while (1) {
        sleep 10;
    }
}
else {
    my $dbh = MLS::Database->new({db => 'feeds'});
    my $tools_dbh = MLS::Database->new({db => 'tools'});

    MLS::Resource::Geo->new({
      dbh => $dbh,
      dbh_tools => $tools_dbh,
    })->go();
}

exit(0);

__END__

=head1 05_geocode.pl

=head1 SYNOPSIS

05_geocode.pl [options]

=head1 OPTIONS

=over 8

=item B<-b, --board=>

Specify the MLS board to use

=item B<-r, --resource=Property>

Specify the resource to use. Defaults to Property.

=item B<-p, --partition>

Geocode results in parallel by forking and partitioning the result set (currently 5 processes are used)

=item B<--help>

Print a brief help message and exits.

=back

=head1 DESCRIPTION

B<This program> syncs MLS data with the specified board

=cut

1;
