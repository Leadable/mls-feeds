package MLS::Resource::Evernet::Photo;
use strict;

use base 'MLS::Resource::Photo';

sub search_remote {
  my ($self, $row) = @_;

  return \@urls;
}

1;
