package MLS::Resource::Evernet::Photo;
use strict;

use base 'MLS::Resource::Photo';

use File::Temp qw(tempfile);
use File::Path qw(mkpath);
use Mojo::UserAgent;
use Mojo::JSON qw(j);
use MIME::Base64 qw(decode_base64);

# remove mojo download limit
$ENV{MOJO_MAX_MESSAGE_SIZE} = 0;

sub search_remote {
  my ($self, $row) = @_;

    my $api_host = $ENV{NWMLS_API_PORT_8800_TCP_ADDR};
    my $api_port = $ENV{NWMLS_API_PORT_8800_TCP_PORT};

    die "Could not find NWMLS_API environment variables (is the nwmls-api container linked?)" if (!$api_host || !$api_port);

    my $storage_client = $self->{storage_client};
    my $remote_id = $row->{remote_id};

    my $ua = Mojo::UserAgent->new();
    $ua->inactivity_timeout(120);
    my $tx = $ua->get("http://$api_host:$api_port/get_photos?listing_id=$remote_id");

    if (!$tx->success) {
        my ($err, $code) = $tx->error;
        if ($err) {
            print "\n\nHTTP USER AGENT ERROR:";
            print $code ? "$code response: $err" : "Connection error: $err";
        }

        die "Error accessing NWMLS api container";
    }

    my $results = $tx->res->json or
        die "Response is not JSON!";

    $results = [sort {$a->{ImageOrder} <=> $b->{ImageOrder}} @$results];

    my $objectKey = $row->{remote_id} . '';
    my $path = substr($objectKey, -3, 3) . '/' . $objectKey;

    my $tmpdir_root = "/tmp/$MLS::Config::MLS/";
    mkpath ($tmpdir_root) if (! -d $tmpdir_root);

    # create a temp dir for all our files
    my $dir = File::Temp->newdir(
        "img-$path-XXXXXXXXXX",
        DIR     => $tmpdir_root,
    );

    my @urls;

    foreach my $result (@$results) {
        my $objectId = $result->{ImageId};
        my $resultdata = decode_base64($result->{BLOB});

        my ($fh, $filename) = tempfile(
            TEMPLATE => "$objectId-XXXXXXXXXXXX",
            DIR      => $dir,
            UNLINK   => 1,
        );

        binmode($fh);
        syswrite($fh, $resultdata);
        close($fh);

        my $dest_filename = "$MLS::Config::MLS/$MLS::Config::RESOURCE/$path/$objectId/" . time . ".jpg";

        my $url = $storage_client->store_file({
            source_filename => $filename,
            dest_filename   => $dest_filename,
            content_type    => 'image/jpeg',
        });
        push @urls, $url;
    }

  return \@urls;
}

1;
