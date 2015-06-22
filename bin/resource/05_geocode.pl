use strict; 
use lib "blib/lib", "blib/arch", "/opt/mls-feeds/lib";

use librets;
use Mojo::UserAgent;

use MLS::Database;

my $mls = $ARGV[0] or die "You must specify an MLS board";
push @INC, "/opt/mls-feeds/$mls/lib";

require MLS::Resource::Geo;

my $resource = $ARGV[1] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $ua = Mojo::UserAgent->new();
my $dbh = MLS::Database->new({db => 'feeds'});

MLS::Resource::Geo->new({
  dbh => $dbh,
  ua => $ua
})->go();

exit(0);
