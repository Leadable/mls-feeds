package MLS::Resource::RealTracs::Photo;
use strict;

use base 'MLS::Resource::Photo';

use File::Temp qw(tempfile);
use File::Path qw(mkpath);

sub search_remote {
  my ($self, $row) = @_;

  my $rets = $self->{rets};
  my $storage_client = $self->{storage_client};

  my $objectKey = $row->{remote_id} . '';
  my $path = substr($objectKey, -3, 3) . '/' . $objectKey;

  my $tmpdir_root = "/tmp/$MLS::Config::MLS/";
  mkpath ($tmpdir_root) if (! -d $tmpdir_root);

  # create a temp dir for all our files
  my $dir = File::Temp->newdir(
    "img-$path-XXXXXXXXXX",
    DIR     => $tmpdir_root,
  );

  my $request = new librets::GetObjectRequest($MLS::Config::RESOURCE, "Photo");

  $request->AddAllObjects($objectKey);

  my $response = $rets->GetObject($request);

  my $objectDescriptor = $response->NextObject();

  my @urls;
      
  while ($objectDescriptor) {
    my $objectKey = $objectDescriptor->GetObjectKey();
    my $objectId = $objectDescriptor->GetObjectId();
    my $contentType = $objectDescriptor->GetContentType();
    my $description = $objectDescriptor->GetDescription();
    my $resultdata = $objectDescriptor->GetDataAsString();
    my $ext = $MLS::Resource::Photo::extensions{$contentType};

    my ($fh, $filename) = tempfile(
      TEMPLATE => "$objectId-XXXXXXXXXXXX",
      DIR      => $dir,
      UNLINK   => 1,
    );

    binmode($fh);
    syswrite($fh, $resultdata);
    close($fh);

    my $dest_filename = "$MLS::Config::MLS/$MLS::Config::RESOURCE/$path/$objectId/" . time . ".$ext";

    my $url = $storage_client->store_file({
      source_filename => $filename,
      dest_filename   => $dest_filename,
      content_type    => $contentType,
    });
    push @urls, $url;

    $objectDescriptor = $response->NextObject();
  }

  return \@urls;
}

1;
