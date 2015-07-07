use strict; 

use FindBin;
use lib "$FindBin::Bin/../../lib";

use Getopt::Long;
use Pod::Usage;
use Mojo::UserAgent;

use MLS::Database;

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

push @INC, "$FindBin::Bin/../../$mls/lib";

$resource ||= 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

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
