package MLS::Config;

use strict;

use Geo::StreetAddress::US;

# MLS identifier
$MLS::Config::MLS = 'beaches';

# Location of logging
$MLS::Config::LOG_DIR = "/tmp/log/$MLS::Config::MLS";

# RETS session object
$MLS::Config::RETS = sub {
  my $rets = new librets::RetsSession('http://retsgw.flexmls.com/rets2_1/Login');

  die "Invalid RETS login" unless $rets->Login("fl.rets.dbarr", "dbarr");

  return $rets;
};

# AMAZON S3 bucket name for photos
$MLS::Config::S3_BUCKET = 'dfo-photos';

# mapbox.com api key
$MLS::Config::MAPBOX_ACCESS_TOKEN = 'pk.eyJ1IjoibGlzdGluZ3AiLCJhIjoiOFVKOENBTSJ9.fcoVMMQ5M0HQDSR0owQ8OQ';

# bing api key
$MLS::Config::BING_ACCESS_TOKEN = 'AgY1iwb6H-_GidP_6n9GaPGlOPbdeuDJguMoGVKsbGrj8lfqury1agX4UEeXjZu4';

# google api key
$MLS::Config::GOOGLE_ACCESS_TOKEN = 'AIzaSyBlCGd2SaHPDnG8A5nPjGsEKt4WZ8vXbic';

# Format the listing address from the raw RETS row
$MLS::Config::ADDRESS_PROTO = sub {
  my ($remote_row, $address_cols) = @_;

  my %address;
  while (my ($col_name, $col_mapping) = each %$address_cols) {
    $address{$col_name} = $remote_row->GetString($col_mapping);
  }

  my (@line1, @full);

  push(@line1, $address{number}) if $address{number};
  push(@line1, $address{prefix}) if $address{prefix};
  push(@line1, $address{street}) if $address{street};
  push(@line1, $address{suffix}) if $address{suffix};
  push(@line1, $address{post_dir}) if $address{post_dir};

  $address{line1} = join(' ', @line1);

  $address{line2} = sprintf('%s, %s %s', $address{city}, $address{state}, $address{zip})  if ($address{city} && $address{state} && $address{zip});
  $address{line2} = sprintf('%s, %s', $address{city}, $address{state})                    if ($address{city} && $address{state} && !($address{zip}));

  push(@full, $address{line1}) if $address{line1};
  push(@full, $address{line2}) if $address{line2};
  $address{full} = join(', ', @full);

  my $spec = Geo::StreetAddress::US->parse_address($address{full});

#  $VAR1 = {
#          'state' => 'FL',
#          'city' => 'Fort Lauderdale',
#          'zip' => '33304',
#          'street' => '16',
#          'type' => 'Ter',
#          'number' => '1505',
#          'prefix' => 'NE'
#        };

  @line1 = ();
  my @line2 = ();

  push(@line1, $spec->{number}) if $spec->{number};
  push(@line1, $spec->{prefix}) if $spec->{prefix};
  push(@line1, $spec->{street}) if $spec->{street};
  push(@line1, $spec->{type}) if $spec->{type};
  push(@line1, $spec->{suffix}) if $spec->{suffix};

  push(@line2, $spec->{city} . ', ' . $spec->{state}) if ($spec->{city} && $spec->{state});
  push(@line2, $spec->{zip}) if $spec->{zip};

  return 'INVALID' unless (scalar(@line1) && scalar(@line2));

  return join(' ', @line1) . ', ' . join(' ', @line2);
};

1;