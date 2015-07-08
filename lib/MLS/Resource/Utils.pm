package MLS::Resource::Utils;

use strict;

sub find_vendor {
    my ($board_name, $vendor_dir) = @_;

    opendir(my $dh, $vendor_dir) or
        die "Could not opendir [$vendor_dir]\n";

    my @vendors = grep { $_ !~ /^\./ && -d "$vendor_dir/$_" } readdir($dh);

    foreach my $vendor (@vendors) {
        return $vendor if (-d "$vendor_dir/$vendor/$board_name");
    }

    die "Did not find [$board_name] in [$vendor_dir]";
}

1;
