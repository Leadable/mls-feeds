use strict;
use lib "../../lib", "blib/lib", "blib/arch";

use DBI;

use MLS::Util;
use MLS::Resource::Publish;

my $resource = $ARGV[0] || 'Property';
eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

my $dbh = $MLS::Util::DBH->() or die $DBI::errstr;

MLS::Property::Publish->new({
  dbh => $dbh,
})->go();

$dbh->disconnect;

exit(0);
