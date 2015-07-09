package MLS::Resource::Matrix::cmls2::Photo;

use strict;
use base 'MLS::Resource::Matrix::Photo';

sub search_remote {
  my ($self, $row) = @_;

  my $rets = $self->{rets};
  my $storage_client = $self->{storage_client};

  my $objectKey = $row->{remote_id} . '';
  my $path = substr($objectKey, -3, 3) . '/' . $objectKey;
  my $dir = "/tmp/$MLS::Config::MLS/" . $path;

  system("mkdir -p $dir") unless (-e $dir);

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

    my $ext = $MLS::Resource::Photo::extensions{$contentType};

    my $outputFilename = $dir . "/" . $objectId . "." . $ext;

    open(OUT, ">", $outputFilename) || die ("Couldn't open output file");
    binmode(OUT);

    my $resultdata = $objectDescriptor->GetDataAsString();
    syswrite(OUT, $resultdata);
    close(OUT);

    my $dest_filename = "$MLS::Config::MLS/$MLS::Config::RESOURCE/$path/$objectId/" . time . ".$ext";

    my $url = $storage_client->store_file({
      source_filename => $outputFilename,
      dest_filename   => $dest_filename,
      content_type    => $contentType,
    });
    push @urls, $url;

    unlink($outputFilename) or die "Could not unlink $outputFilename: $!";

    $objectDescriptor = $response->NextObject();
  }

  rmdir $dir or die "Could not remove $dir: $!";

  return \@urls;
}

1;
