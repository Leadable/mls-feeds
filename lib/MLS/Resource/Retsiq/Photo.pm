package MLS::Resource::Retsiq::Photo;
use strict;

use base 'MLS::Resource::Photo';

sub search_remote {
  my ($self, $row) = @_;

  my $rets = $self->{rets};

  my $objectKey = $row->{remote_id} . '';

  my $request = new librets::GetObjectRequest($MLS::Config::RESOURCE, $MLS::Config::OBJECT);

  $request->SetLocation(1);
  $request->AddAllObjects($objectKey);

  my $response = $rets->GetObject($request);

  my @urls;

  my $objectDescriptor = $response->NextObject();
      
  while ($objectDescriptor) {
    my $location = $objectDescriptor->GetLocationUrl();

    if ($location) {
      $location .= '?v=' . time;
      push @urls, $location;
    }

    $objectDescriptor = $response->NextObject();
  }

  return \@urls;
}

1;
