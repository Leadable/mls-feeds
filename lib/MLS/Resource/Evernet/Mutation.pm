package MLS::Resource::Evernet::Mutation;

use strict;
use base 'MLS::Resource::Mutation';

use Mojo::UserAgent;
use Mojo::JSON qw(j);

use Data::Dumper;

sub remote_search {
  my ($self, $class_id) = @_;

  my $api_host = $ENV{NWMLS_API_PORT_8800_TCP_ADDR};
  my $api_port = $ENV{NWMLS_API_PORT_8800_TCP_PORT};

  die "Could not find NWMLS_API environment variables (is the nwmls-api container linked?)" if (!$api_host || !$api_port);

  my $remote = $self->{remote};
  my $endpoint;
  
  if ($MLS::Config::PEAK_TIME) {
    $endpoint = 'get_recent_listings';
  }
  else {
    $endpoint = 'get_all_listings';
  }

  my $ua = Mojo::UserAgent->new();
  $ua->inactivity_timeout(0);

  my $tx = $ua->get("http://$api_host:$api_port/$endpoint?class_name=$class_id");

  if (!$tx->success) {
    my ($err, $code) = $tx->error;
    if ($err) { 
      print "\n\nHTTP USER AGENT ERROR: ";
      print $code ? "$code response: $err" : "Connection error: $err"; 
    }
    
    die "Error accessing NWMLS api container";
  }

  my $results = $tx->res->json or
    die "Response is not JSON!";

  my $record_count = scalar @$results;
  print "Results found: [" . $record_count . "]\n";

  foreach my $result (@$results) {
    my $row_mod_ts = $result->{ $MLS::Config::ROW_MOD_TS_COLUMN{SystemName} } ;
    my $img_mod_ts = %MLS::Config::IMG_MOD_TS_COLUMN ? $result->{ $MLS::Config::IMG_MOD_TS_COLUMN{SystemName} } : '';

    my %data = (
      remote_row_mod_ts => $row_mod_ts,
      remote_img_mod_ts => $img_mod_ts,
      class => $class_id
    );

    $remote->{ $result->{ $MLS::Config::PRIMARY_KEY{SystemName} } } = \%data;
  }
}

1;
