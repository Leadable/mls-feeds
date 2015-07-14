package MLS::Storage;

use strict;
use warnings;

sub new {
  my ($class, $opts) = @_;

  die "Specify bucket to store file in" if (!$opts->{bucket});

  if ($opts->{use_s3}) {
    require Net::Amazon::S3;
    $opts->{s3_obj} = _make_s3_client($opts->{bucket});
  }
  else {
    require Net::Azure::StorageClient::Blob;
    $opts->{account_name} ||= 'leadablestoruseast2';
    $opts->{azure_obj} = _make_azure_client($opts->{account_name}, $opts->{bucket});
  }

  $opts->{NumRetry} ||= 3;

  bless $opts, $class;
}

# returns URL to file that is stored
sub do_store_file {
  my ($self, $opts) = @_;

  if ($self->{use_s3}) {
    my $obj = $self->{s3_obj}->object(
      key => $opts->{dest_filename},
      acl_short => 'public-read',
      content_type => $opts->{content_type}
    );

    $obj->put_filename($opts->{source_filename});

    return $obj->uri;
  }
  else {
    my $params = {filename => $opts->{source_filename}, 'content-type' => $opts->{content_type}};
    my $res = $self->{azure_obj}->put_blob($opts->{dest_filename}, $params);

    if (!$res->is_success) {
      die "Error uploading file: " . $res->status_line;
    }

    return "https://$self->{account_name}.blob.core.windows.net/$self->{bucket}/$opts->{dest_filename}";
  }
}

# helper function
sub store_file {
  my ($self, $opts) = @_;

  die "Missing arguments for storing" if (!$opts->{source_filename} || !$opts->{dest_filename});

  my $retries_left = $self->{NumRetry} + 1;

  while ($retries_left--) {
    my $url = eval {
      $self->do_store_file($opts);
    };

    if ($@) {
      print $@;

      if ($retries_left) {
        print "Retry file storage of [$opts->{source_filename}] [$retries_left] more times...\n";
        sleep 10;
      }
      else {
        die $@;
      }
    }
    else {
      return $url;
    }
  }
}

sub _make_s3_client{
  my $bucket = shift;

  my $s3 = Net::Amazon::S3->new( {
    aws_access_key_id     => 'AKIAIXF3CYSEBUR3GFTA',
    aws_secret_access_key => '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',
    retry                 => 1,
    timeout               => 120
  });

  my $s3_client = Net::Amazon::S3::Client->new( s3 => $s3 );
  return $s3_client->bucket(name => $bucket);;
};

sub _make_azure_client {
  my ($acct_name, $bucket) = @_;

  return Net::Azure::StorageClient::Blob->new(
    account_name => $acct_name,
    primary_access_key => 'DPcUfEUY219/GKo9yH2sGXY6P8Al3TGyO/1Mrj/vV16Z3Z4KTvTMQ1Oz3U1GFcyVyhsKZ0Kn2Z6g1ugKC1wL5g==',
    container_name => $bucket,
  );
}

1;
