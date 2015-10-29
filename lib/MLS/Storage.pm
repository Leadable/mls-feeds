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
    $opts->{azure_obj} = _make_azure_client($opts->{bucket});
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

    return "https://$self->{azure_obj}{account_name}.blob.core.windows.net/$self->{bucket}/$opts->{dest_filename}";
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

sub delete_file {
  my ($self, $path) = @_;

  die "Missing path to delete" if (!$path);

  my $res = $self->{azure_obj}->delete_blob($path);

  return $res;
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
  my $bucket = shift;

  die 'MLS_DB_HOST must be specified' if (!$ENV{MLS_DB_HOST});

  my $storage_acct;
  my $key;

  if ($ENV{MLS_DB_HOST} =~ /^west/) {
    $storage_acct = 'leadablestoruswest2';
    $key = 'oS6TSgZZm06TDrIVI6x56MBM9IEmEdtZfQgWD82CNgZPDW13hXoRSqcgiQsFl2kEBaqWob63S6fF1qsQT/jEXg==';
  }
  elsif ($ENV{MLS_DB_HOST} =~ /^east/) {
    $storage_acct = 'leadablestoruseast2';
    $key = 'DPcUfEUY219/GKo9yH2sGXY6P8Al3TGyO/1Mrj/vV16Z3Z4KTvTMQ1Oz3U1GFcyVyhsKZ0Kn2Z6g1ugKC1wL5g==';
  }
  elsif ($ENV{MLS_DB_HOST} =~ /^south/) {
    $storage_acct = 'leadabledockersouth1';
    $key = 'Q0bbOCJvHj1hEaOwieWJFbHajMfgylaZrhBW6VjoETIfRkKXolyj0wQ4AhLkw6JPSKKJKhSPhGeAcISpUwaG1w==';
  }
  else {
    die "unknown db host [$ENV{MLS_DB_HOST}]";
  }

  return Net::Azure::StorageClient::Blob->new(
    account_name => $storage_acct,
    primary_access_key => $key,
    container_name => $bucket,
  );
}

1;
