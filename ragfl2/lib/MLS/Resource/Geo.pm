package MLS::Resource::Geo;
use strict;

use Mojo::Util qw(url_escape);
use Data::Dumper qw(Dumper);
use Text::LevenshteinXS qw(distance);
use Geo::StreetAddress::US;
use Mojo::JSON qw(j);
use File::Path qw(mkpath);

$| = 1;

sub new {
  my ($class, $opts) = @_;

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  print "----Geocoding----\n\n";
  $self->{totals} = {
    pass    => 0,
    fail    => 0,
    invalid => 0,
    total   => 0,

    mapbox => {
      pass  => 0,
      fail  => 0,
      total => 0,
    },

    bing => {
      pass  => 0,
      fail  => 0,
      total => 0,
    },

    google => {
      pass  => 0,
      fail  => 0,
      total => 0,
    },
  };

  my $mutated = $self->mutated();
  return $self->finish() unless $mutated;

  if (! -d $MLS::Config::LOG_DIR) {
    mkpath($MLS::Config::LOG_DIR);
  }

  open(my $fh, '>', "$MLS::Config::LOG_DIR/bad_addresses.txt") or
    die "Could not open [$MLS::Config::LOG_DIR/bad_addresses.txt]: $!";

  my $i = 0;
  foreach my $remote_row (@$mutated) {
    $self->{totals}{total}++;
    print '.';
    if (++$i % 100 == 0) {
      $self->monitor('totals', $self->{totals});
      print "[$i]\n";
    }

    if ($remote_row->{remote_address} eq 'INVALID') {
      $self->{totals}{invalid}++;
      
      $self->update_local_row($remote_row);
      $self->update_mutation_row($remote_row->{remote_id});
      
      next; 
    }

    eval {
      next if $self->geocode_mapbox($remote_row);
      next if $self->geocode_bing($remote_row);

      # write this address out to a file
      print $fh $remote_row->{remote_address} . "\n";

      next if $self->geocode_google($remote_row);
    };
    next if ($@);

    # if we got here none of the geocoders found an address
    $self->update_local_row($remote_row);
    $self->update_mutation_row($remote_row->{remote_id});
  }

  close $fh;
  $self->finish();
}

sub finish {
  my $self = shift;

  # TODO: Periodic updates
  $self->monitor('totals', $self->{totals});

  print "\nReport:\n";
  print Dumper $self->{totals};
  print "\n[DONE]\n\n";
}

sub monitor {
  my($self, $key, $value) = @_;

  my $monitor = $self->{monitor} or return;

  my @class = split(/::/, ref($self));

  shift @class; # remove MLS

  $monitor->status({ namespace => \@class, key => $key, value => $value });
}


sub mutated {
  my ($self) = @_;

  my $dbh = $self->{dbh};

  my @conditions = (
    'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
    "remote_address IS NOT NULL",
    "remote_address <> COALESCE(local_address, '')",
    "remote_removed_at IS NULL"
  );

  my $sql = "SELECT remote_id, remote_address, local_address FROM $MLS::Config::MLS.mutation WHERE " . join(' AND ', @conditions) . " ORDER BY remote_id DESC";
  $self->{temp_error} = "$sql\n";

  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  print "Geocoding [" . scalar(@$rs) . "] records\n";
  return @$rs ? $rs : 0;
}

sub http_fail {
  my ($self, $tx) = @_;

  my ($err, $code) = $tx->error;
  if ($err) { 
    print "HTTP USER AGENT ERROR:";
    print $code ? "$code response: $err" : "Connection error: $err"; 
  }

  print "\nREQUEST:";
  print $tx->req->to_string;
  print "\nRESPONSE:";
  print $tx->res->to_string;
  print "\n";

  exit(1);
}

sub request {
  my ($self, $service, $url) = @_;

  my $ua = $self->{ua};
  my $dbh = $self->{dbh};

  my @conditions = (
    'service = ' . $dbh->quote($service),
    'query = ' . $dbh->quote($url)
  );

  my $sql = "SELECT *, ts + expires::interval <= NOW() as expired FROM $MLS::Config::MLS.geocoder_cache WHERE " . join(' AND ', @conditions);
  my $row = $dbh->selectrow_hashref($sql);

  return j($row->{response}) if ($row && !($row->{expired}));

  my $attempts = 0;
  my $tx;

  while (1) {
    $tx = $ua->get($url);
   
    last unless $tx->error;
 
    my ($err, $code) = $tx->error;
    
    print "HTTP USER AGENT ERROR:";
    print $code ? "$code response: $err" : "Connection error: $err\n"; 
    print "HTTP Error. Attempt #" . ($attempts + 1) . "\n";

    $attempts++;

    die if ($attempts == 10);


    $ua = $self->{ua} = Mojo::UserAgent->new(); # try to get a different server process from the remote resource

    sleep(10);
  }

  my $res = $tx->success;

  http_fail($tx) unless $res;

  my $json = $res->json;
  die "Response is not JSON!" unless $json;

  if ($row) {
    $sql = "UPDATE $MLS::Config::MLS.geocoder_cache SET ts = NOW(), response = " . $dbh->quote(j($json)) . ' WHERE ' . join(' AND ', @conditions);
  } else {
    $sql = "INSERT INTO $MLS::Config::MLS.geocoder_cache(service, query, response) VALUES(" . $dbh->quote($service) .', ' . $dbh->quote($url) . ', ' . $dbh->quote(j($json)) . ')';
  }

  $self->{temp_error} = "$sql\n";

  $dbh->do($sql);

  return $json;
}

sub does_request_equal_response {
  my $request = lc($_[0]);
  my $response = lc($_[1]);

  my $a = Geo::StreetAddress::US->parse_address($request);
  my $b = Geo::StreetAddress::US->parse_address($response);

  my $ok = 1;
 
  foreach (qw(number street type suffix city state zip)) { 
    if (lc($a->{$_}) ne lc($b->{$_})) {
      next if ($_ eq 'street' and (distance($a->{$_}, $b->{$_}) <= 2)); # 10th without th is ok

      next if ($_ eq 'type' and ($a->{$_} eq '')); # it's ok if the address from the mls is missing a type

      next if ($_ eq 'zip' and (length($a->{$_}) == 5) and (distance($a->{$_}, $b->{$_}) <= 1)); # ok if one digit off

      $ok = 0;
    }
  }

  return $ok;
}

sub geocode_mapbox {
  my ($self, $remote_row) = @_;

  $self->{totals}{mapbox}{total}++;

  my $url = sprintf('http://api.tiles.mapbox.com/v4/geocode/mapbox.places/%s.json?access_token=%s'
    , url_escape($remote_row->{remote_address})
    , $MLS::Config::MAPBOX_ACCESS_TOKEN
  );

  $self->{temp_error} = "$url\n";

  my $json = $self->request('mapbox', $url);

  my $feature = $json->{features}->[0];

  my @place = split(', ', $json->{features}->[0]->{place_name});
  my $place = $place[0] . ', ' . $place[1] . ', ' . $place[3] . ' '  . $place[2];

  my $matches = does_request_equal_response($remote_row->{remote_address}, $place);

  if ($matches and $feature->{relevance} > .8) {
    $self->{totals}{pass}++;
    $self->{totals}{mapbox}{pass}++;

    my %data = (
      lat => $feature->{geometry}->{coordinates}->[1],
      lon => $feature->{geometry}->{coordinates}->[0],
      service => 'mapbox',
      confidence => $feature->{relevance}
    );

    $self->update_local_row($remote_row, \%data);
    $self->update_mutation_row($remote_row->{remote_id});

    return 1;
  }

  $self->{totals}{fail}++;
  $self->{totals}{mapbox}{fail}++;

  return 0;
}

sub geocode_bing {
  my ($self, $remote_row) = @_;

  $self->{totals}{bing}{total}++;

  my $url = sprintf('http://dev.virtualearth.net/REST/v1/Locations?query=%s&key=%s'
    , url_escape($remote_row->{remote_address})
    , $MLS::Config::BING_ACCESS_TOKEN
  );

  $self->{temp_error} = "$url\n";

  my $json = $self->request('bing', $url);

  if ($json->{statusCode} ne '200') {
    warn Dumper($json);
    die;
  }

  unless (@{ $json->{resourceSets}->[0]->{resources} }) {
    $self->{totals}{fail}++;
    $self->{totals}{bing}{fail}++;

    return 0;
  }

  my $result = $json->{resourceSets}->[0]->{resources}->[0];
  my @codes = @{ $result->{matchCodes} };
  
  # https://msdn.microsoft.com/en-us/library/ff701725.aspx
  if ($result->{confidence} eq 'High' && (scalar(@codes) == 1 and $codes[0] eq 'Good')) {
    $self->{totals}{pass}++;
    $self->{totals}{bing}{pass}++;

    
    my %data = (
      lat => $result->{point}->{coordinates}->[0],
      lon => $result->{point}->{coordinates}->[1],
      service => 'bing',
      confidence => $result->{confidence}
    );

    $self->update_local_row($remote_row, \%data);
    $self->update_mutation_row($remote_row->{remote_id});

    return 1;
  }

  $self->{totals}{fail}++;
  $self->{totals}{bing}{fail}++;

  return 0;
}

sub geocode_google {
  my ($self, $remote_row) = @_;

  $self->{totals}{google}{total}++;

  my $url = sprintf('https://maps.googleapis.com/maps/api/geocode/json?address=%s&key=%s'
    , url_escape($remote_row->{remote_address})
    , $MLS::Config::GOOGLE_ACCESS_TOKEN
  );

  $self->{temp_error} = "$url\n";

  my $json = $self->request('google', $url);

  if ($json->{status} eq 'ZERO_RESULTS') {
    $self->{totals}{fail}++;
    $self->{totals}{google}{fail}++;

    return 0;
  }

  if ($json->{status} ne 'OK') {
    warn Dumper($json);
    die;
  }

  my $result = $json->{results}->[0];

  unless ($result) {
    $self->{totals}{fail}++;
    $self->{totals}{google}{fail}++;

    return 0;
  }

  my @types = @{ $result->{types} };
  my @place = split(', ', $result->{formatted_address});
  pop(@place); # get rid of country
  my $place = join(', ', @place);

  my $matches = does_request_equal_response($remote_row->{remote_address}, $place);
  
  if (($result->{geometry}->{location_type} eq 'ROOFTOP' or $result->{geometry}->{location_type} eq 'RANGE_INTERPOLATED') && (scalar(@types) == 1 and $types[0] eq 'street_address')) {
    $self->{totals}{pass}++;
    $self->{totals}{google}{pass}++;

    my %data = (
      lat => $result->{geometry}->{location}->{lat},
      lon => $result->{geometry}->{location}->{lng},
      service => 'google',
      confidence => $result->{geometry}->{location_type}
    );

    $self->update_local_row($remote_row, \%data);
    $self->update_mutation_row($remote_row->{remote_id});

    return 1;
  }

  $self->{totals}{fail}++;
  $self->{totals}{google}{fail}++;

  #sleep(2);
  return 0;
}

sub update_local_row {
  my ($self, $remote_row, $data) = @_;

  my $dbh = $self->{dbh};

  my @vals;

  if ($data) {
    @vals = (
      '__geo_latitude = ' . $dbh->quote($data->{lat}),
      '__geo_longitude = ' . $dbh->quote($data->{lon}),
      '__geo_name = ' .  $dbh->quote($data->{service}),
      '__geo_modified_at = NOW()',
      '__modified_at = NOW()',
      '__geo_geom = ST_SetSRID(ST_MakePoint(' . $dbh->quote($data->{lon}) . '::numeric, ' . $dbh->quote($data->{lat}) . '::numeric), 4326)',
      '__geo_confidence = ' . $dbh->quote($data->{confidence})
    );
  } else {
    @vals = (
      '__geo_latitude = NULL',
      '__geo_longitude = NULL',
      '__geo_name = NULL',
      '__geo_modified_at = NOW()',
      '__modified_at = NOW()',
      '__geo_geom = NULL',
      '__geo_confidence = NULL'
    );
  }

  my $sql = "UPDATE $MLS::Config::MLS.\"$MLS::Config::RESOURCE\" SET " . join(', ', @vals) . " WHERE " . $dbh->quote_identifier($MLS::Config::PRIMARY_KEY{SystemName}) . " = " . $dbh->quote($remote_row->{remote_id});
  $self->{temp_error} = "$sql\n";
  $dbh->do($sql);
}

sub update_mutation_row {
  my ($self, $remote_id) = @_;

  my $dbh = $self->{dbh};

  $dbh->set_autocommit(0);

  eval {
    # update local_img_mod_ts in mutation row
    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );
    my $sql = "UPDATE $MLS::Config::MLS.mutation SET local_address = remote_address WHERE " . join(' AND ', @conditions);
    $self->{temp_error} = "$sql\n";
    $dbh->do($sql);

    my $sql = "SELECT * FROM $MLS::Config::MLS.mutation WHERE " . join(' AND ', @conditions);
    $self->{temp_error} = "$sql\n";
    my $row = $dbh->selectrow_hashref($sql);

    my $transaction_complete = 1;

    # row is still out of sync
    $transaction_complete = 0 if ($row->{remote_row_mod_ts} ne $row->{local_row_mod_ts});

    # photos still need to be synced
    $transaction_complete = 0 if ($row->{remote_img_mod_ts} ne $row->{local_img_mod_ts});

    # if there are no more differences between remote and local in the mutation table then set the last_transaction_completed at = NOW() so that the row can be published
    # The publisher job will detect the change and publish the row to the materialized (live) tables
    if ($transaction_complete) {
      my $sql = "UPDATE $MLS::Config::MLS.mutation SET last_transaction_completed_at = NOW() WHERE " . join(' AND ', @conditions);
      $self->{temp_error} = "$sql\n";
      $dbh->do($sql);
    }
  };

  if ($@) {
    $dbh->do('ROLLBACK');
    die $@;
  }

  $dbh->do('COMMIT');
  $dbh->set_autocommit(1);
}

1;
