use strict; 

use FindBin;
use lib "blib/lib", "blib/arch", "$FindBin::Bin/../../lib";

use librets;
use Mojo::UserAgent;

use MLS::Database;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Geo;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = MLS::Database->new({db => 'feeds'});
my $tools_dbh = MLS::Database->new({db => 'tools'});

MLS::Resource::Geo->new({
  dbh => $dbh,
  dbh_tools => $tools_dbh,
})->go();

exit(0);
