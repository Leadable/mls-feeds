use strict; 

use FindBin;
use lib "blib/lib", "blib/arch", "$FindBin::Bin/../../lib";

use librets;

use MLS::Database;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Purge;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = MLS::Database->new({db => 'feeds'});

MLS::Resource::Purge->new({
  dbh => $dbh,
})->go();

exit(0);
