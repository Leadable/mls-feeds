package MLS::Property::Photo;
use strict;

use Data::Dumper qw(Dumper);

my %extentions = (
 'image/jpeg' => "jpg",
 'image/gif' => "gif",
 'text/xml' => "xml"
);

sub new {
  my ($class, $opts) = @_;

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  my $mutated = $self->mutated();
  return unless $mutated;

  foreach my $remote_row (@$mutated) {
    $self->fetch_remote($remote_row);
  }
}

sub mutated {
  my ($self) = @_;
  
  my $dbh = $self->{dbh};

  my @conditions = (
    'resource = ' . $dbh->quote($MLS::Property::Config::RESOURCE),
    "remote_img_mod_ts <> COALESCE(local_img_mod_ts, '')",
    "remote_removed_at IS NULL"
  );

  my $sql = "SELECT remote_id, remote_img_mod_ts, local_img_mod_ts FROM $MLS::Property::Config::MLS.mutation WHERE " . join(' AND ', @conditions) . " ORDER BY remote_id";
  print "$sql\n";

  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  print "found " . scalar(@$rs) . "\n";
  return @$rs ? $rs : 0;
}

sub fetch_remote {
  my ($self, $row) = @_;

  my $rets = $self->{rets};
  my $s3_client = $self->{s3_client};

  my $objectKey = $row->{remote_id} . '';
  my $path = substr($objectKey, -3, 3) . '/' . $objectKey;
  my $dir = "/tmp/$MLS::Property::Config::MLS/" . $path;

  print "dir => :$dir:\n";
  system("mkdir -p $dir") unless (-e $dir);

  my $request = new librets::GetObjectRequest($MLS::Property::Config::RESOURCE, "Photo");

  $request->AddAllObjects($objectKey);

  my $response = $rets->GetObject($request);

  #print Dumper($response);

  my $objectDescriptor = $response->NextObject();
      
  while ($objectDescriptor) {
    my $objectKey = $objectDescriptor->GetObjectKey();
    my $objectId = $objectDescriptor->GetObjectId();
    my $contentType = $objectDescriptor->GetContentType();
    my $description = $objectDescriptor->GetDescription();

    print $objectKey . " object #" . $objectId;
    if ($description ne "") {
        print ", description: " . $description;
    }
    print "\n";

    print Dumper($contentType);
    my $ext = $extentions{$contentType};

    my $outputFilename = $dir . "/" . $objectId . "." . $ext;

    open(OUT, ">", $outputFilename) || die ("Couldn't open output file");
    binmode(OUT);

    my $resultdata = $objectDescriptor->GetDataAsString();
    print length($resultdata) . "\n";
    syswrite(OUT, $resultdata);
    close(OUT);

    my $bucket = $s3_client->bucket(name => $MLS::Property::Config::S3_BUCKET);
    print "$outputFilename\n";

    my $s3_object = $bucket->object(
      key => "$MLS::Property::Config::MLS/$MLS::Property::Config::RESOURCE/" . $path . '/' . $objectId . '.' . $ext,
      acl_short => 'public-read',
      content_type => $contentType
    );

    $s3_object->put_filename($outputFilename);

    unlink($outputFilename) or die "Could not unlink $outputFilename: $!";

    $objectDescriptor = $response->NextObject();
  }

  rmdir $dir or die "Could not remove $dir: $!";
 
  $self->update_mutation_table($row->{remote_id}); 
}

sub update_mutation_table {
  my ($self, $remote_id) = @_;

  my $dbh = $self->{dbh};

  $dbh->{AutoCommit} = 0;

  eval {
    # update local_img_mod_ts in mutation row
    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Property::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );
    my $sql = "UPDATE $MLS::Property::Config::MLS.mutation SET local_img_mod_ts = remote_img_mod_ts WHERE " . join(' AND ', @conditions);
    print "$sql\n";
    $dbh->do($sql);

    my $sql = "SELECT * FROM $MLS::Property::Config::MLS.mutation WHERE " . join(' AND ', @conditions);
    print "$sql\n";
    my $row = $dbh->selectrow_hashref($sql);

    my $transaction_complete = 1;

    # row is still out of sync
    $transaction_complete = 0 if ($row->{remote_row_mod_ts} ne $row->{local_row_mod_ts});

    # address hasn't been geocoded
    $transaction_complete = 0 if ($row->{remote_address} ne $row->{local_address});

    # if there are no more differences between remote and local in the mutation table then set the last_transaction_completed at = NOW() so that the row can be published
    # The publisher job will detect the change and publish the row to the materialized (live) tables
    if ($transaction_complete) {
      my $sql = "UPDATE $MLS::Property::Config::MLS.mutation SET last_transaction_completed_at = NOW() WHERE " . join(' AND ', @conditions);
      print "$sql\n";
      $dbh->do($sql);
    }
  };

  if ($@) {
    $dbh->do('ROLLBACK');
    die $@;
  }

  $dbh->do('COMMIT');
  $dbh->{AutoCommit} = 1;
}

1;
