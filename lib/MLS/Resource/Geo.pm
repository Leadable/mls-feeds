package MLS::Resource::Geo;
use strict;

use Mojo::Util qw(url_escape);
use Data::Dumper qw(Dumper);
use Text::LevenshteinXS qw(distance);
use Geo::StreetAddress::US;
use Mojo::JSON qw(j);
use File::Path qw(mkpath);
use Encode qw(encode_utf8);
use MLS::Resource::Utils;

$| = 1;

sub new {
  my ($class, $opts) = @_;

  $opts->{column_identifier} = $MLS::Config::Row::COLUMN_IDENTIFIER || 'SystemName';

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

  $self->{primary_key} = $MLS::Config::PRIMARY_KEY{$self->{column_identifier}};

  $self->{mapbox_api_key} = 'pk.eyJ1IjoibGlzdGluZ3AiLCJhIjoiOFVKOENBTSJ9.fcoVMMQ5M0HQDSR0owQ8OQ';
  $self->{bing_api_key}   = 'AgY1iwb6H-_GidP_6n9GaPGlOPbdeuDJguMoGVKsbGrj8lfqury1agX4UEeXjZu4';

  my $mutated = $self->mutated();
  return $self->finish() unless $mutated;

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
      next if $self->geocode_google($remote_row);
      $self->{totals}{fail}++;
    };

    if ($@) {
      $self->{totals}{fail}++;
      next;
    }

    # if we got here none of the geocoders found an address
    $self->update_local_row($remote_row);
    $self->update_mutation_row($remote_row->{remote_id});
  }

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
  $monitor->status({ namespace => ['Geo'], key => $key, value => $value });
}

sub mutated {
  my ($self) = @_;

  my $dbh = $self->{dbh};

  my $primary_key = 'p.' . $dbh->quote_identifier($self->{primary_key}) . '::text';

  my @conditions = (
    'm.resource = ' . $dbh->quote($MLS::Config::RESOURCE),
    "m.remote_address IS NOT NULL",
    "m.remote_address <> COALESCE(m.local_address, '')",
    "m.remote_removed_at IS NULL",
    "m.remote_id = $primary_key",
  );

  # partition should be an arrayref with digits
  # note: on some boards the right most digit may all be the same
  if ($self->{partition}) {
    my $digits_sql =  join ',',
                      map {$dbh->quote($_)} @{$self->{partition}};

    push @conditions, "RIGHT(m.remote_id, 1)" . " IN (" . $digits_sql . ")";
  }

  my $cols = 'm.remote_id, m.remote_address, m.local_address';
  my $mutation_table = "$MLS::Config::MLS.mutation as m";
  my $resource_table = "$MLS::Config::MLS." . $dbh->quote_identifier($MLS::Config::RESOURCE) . ' as p';

  if ($MLS::Config::PEAK_TIME && $MLS::Config::MV_ACTIVE_COLS) {
    my $select_subquery = MLS::Resource::Utils::get_mv_active_select_sql;
    push @conditions, "$primary_key IN ($select_subquery)";
  }

  my $sql = "SELECT $cols FROM $mutation_table, $resource_table WHERE " . join(' AND ', @conditions);
  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  print "Going to geocode [" . scalar(@$rs) . "] listings\n";

  return $rs;
}


sub http_fail {
  my ($tx, $ua) = @_;

  my ($err, $code) = $tx->error;
  if ($err) { 
    print "\n\nHTTP USER AGENT ERROR:";
    print $code ? "$code response: $err" : "Connection error: $err"; 
  }

  print "\n\nPROXY:";
  print $ua->proxy->http;

  print "\n\nREQUEST:";
  print $tx->req->to_string;
  print "\n\nRESPONSE:";
  print $tx->res->to_string;
  print "\n";
}

sub get_user_agent {
  my $self = shift;

  if (!$self->{proxy_servers}) {
    my $rs = $self->{dbh_tools}->selectall_arrayref('SELECT * FROM geocode_proxy', {Slice => {}});
    die "No proxy servers in table" if (!$rs);
    $self->{proxy_servers} = $rs;
  }

  # pick a proxy server at random
  my $proxy = $self->{proxy_servers}->[rand @{$self->{proxy_servers}}];

  my $ua = Mojo::UserAgent->new();
  $ua->proxy->http("http://$proxy->{hostname}:8080")->https("http://$proxy->{hostname}:8080");

  # do not use proxy for bing, mapbox
  $ua->proxy->not([qw(virtualearth.net mapbox.com)]);

  $self->{google_api_key} = $proxy->{api_token};

  return $ua;
}

sub http_request {
  my ($self, $service, $url) = @_;

  my $attempts = 10;
  my $tx;

  while ($attempts--) {
    my $ua = $self->get_user_agent;

    my $req_url = $url;

    # add the key to the url before we search so it doesn't muck with the cache
    if ($service eq 'google') {
      $req_url .= '&key=' . $self->{google_api_key};
    }
    elsif ($service eq 'mapbox') {
      $req_url .= '&access_token=' . $self->{mapbox_api_key};
    }
    elsif ($service eq 'bing') {
      $req_url .= '&key=' . $self->{bing_api_key};
    }

    $tx = $ua->get($req_url);

    if ($tx->success) {
      return $tx->success;
    }
    else {
      http_fail($tx, $ua);
      sleep 10;
      die if (!$attempts);
    }
  }
}

sub request {
  my ($self, $service, $url) = @_;

  my $dbh = $self->{dbh};

  my @conditions = (
    'service = ' . $dbh->quote($service),
    'query = ' . $dbh->quote($url)
  );

  my $sql = "SELECT *, ts + expires::interval <= NOW() as expired FROM $MLS::Config::MLS.geocoder_cache WHERE " . join(' AND ', @conditions);
  my $row = $dbh->selectrow_hashref($sql);

  if ($row && !($row->{expired})) {
    my $json = j(encode_utf8($row->{response}));

    if ($json) {
      return {
        json => $json,
      };
    }
  }

  my $res = $self->http_request($service, $url);

  my $json = $res->json or
    die "Response is not JSON!";

  # special case for google requests, retry other geocoders if query limit hit
  my $google_attempts = 20;
  while ($service eq 'google' && $json->{status} eq 'OVER_QUERY_LIMIT' && $google_attempts--) {
    $res = http_request($service, $url);

    $json = $res->json or
      die "Response is not JSON!";
  }

  if ($row) {
    $sql = "UPDATE $MLS::Config::MLS.geocoder_cache SET ts = NOW(), response = " . $dbh->quote(j($json)) . ' WHERE ' . join(' AND ', @conditions);
  } else {
    $sql = "INSERT INTO $MLS::Config::MLS.geocoder_cache(service, query, response) VALUES(" . $dbh->quote($service) .', ' . $dbh->quote($url) . ', ' . $dbh->quote(j($json)) . ')';
  }

  return {
    json      => $json,
    cache_sql => $sql,
  };
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

sub update_cache {
  my ($self, $response) = @_;

  my $cache_sql = $response->{cache_sql};
  $self->{temp_error} = "$cache_sql\n";

  eval {
    $self->{dbh}->do($cache_sql) if ($cache_sql);
  };

  if ($@) {
    print "Error updating geocoder cache: $@";
  }
}

sub geocode_mapbox {
  my ($self, $remote_row) = @_;

  $self->{totals}{mapbox}{total}++;

  my $url = sprintf('http://api.tiles.mapbox.com/v4/geocode/mapbox.places/%s.json?'
    , url_escape($remote_row->{remote_address})
  );

  $self->{temp_error} = "$url\n";

  my $response = $self->request('mapbox', $url);
  my $json = $response->{json};

  $self->update_cache($response);

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

  $self->{totals}{mapbox}{fail}++;

  return 0;
}

sub geocode_bing {
  my ($self, $remote_row) = @_;

  $self->{totals}{bing}{total}++;

  my $url = sprintf('http://dev.virtualearth.net/REST/v1/Locations?query=%s'
    , url_escape($remote_row->{remote_address})
  );

  $self->{temp_error} = "$url\n";

  my $response = $self->request('bing', $url);
  my $json = $response->{json};

  if ($json->{statusCode} ne '200') {
    warn "Error from Bing:\n";
    warn Dumper($json);

    $self->{totals}{bing}{fail}++;
    die;
  }

  unless (@{ $json->{resourceSets}->[0]->{resources} }) {
    $self->{totals}{bing}{fail}++;

    return 0;
  }

  $self->update_cache($response);

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

  $self->{totals}{bing}{fail}++;

  return 0;
}

sub geocode_google {
  my ($self, $remote_row) = @_;

  $self->{totals}{google}{total}++;

  my $url = sprintf('https://maps.googleapis.com/maps/api/geocode/json?address=%s'
    , url_escape($remote_row->{remote_address})
  );

  $self->{temp_error} = "$url\n";

  my $response = $self->request('google', $url);
  my $json = $response->{json};

  if ($json->{status} eq 'ZERO_RESULTS') {
    $self->{totals}{google}{fail}++;

    return 0;
  }

  if ($json->{status} ne 'OK') {
    warn "Error from Google:\n";
    warn Dumper($json);

    $self->{totals}{google}{fail}++;
    die;
  }

  my $result = $json->{results}->[0];

  unless ($result) {
    $self->{totals}{google}{fail}++;

    return 0;
  }

  $self->update_cache($response);

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

  $self->{totals}{google}{fail}++;

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

    MLS::Resource::Utils::check_transaction_complete($dbh, \@conditions);
  };

  if ($@) {
    $dbh->do('ROLLBACK');
    die $@;
  }

  $dbh->do('COMMIT');
  $dbh->set_autocommit(1);
}

1;
