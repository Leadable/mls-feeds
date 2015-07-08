package MLS::Config;

use strict;

use MLS::Rets;
use Geo::StreetAddress::US;

# MLS identifier
$MLS::Config::MLS = 'ragfl';

# Rets Vendor
$MLS::Config::Vendor = 'Retsiq';

# Location of logging
$MLS::Config::LOG_DIR = "/tmp/log/$MLS::Config::MLS";

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://ragfl.retsiq.com/contact/rets/login',
  username  => 'ListingTech',
  password  => 'W1Nt3R2015'
});

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

# mapbox.com api key
$MLS::Config::MAPBOX_ACCESS_TOKEN = 'pk.eyJ1IjoibGlzdGluZ3AiLCJhIjoiOFVKOENBTSJ9.fcoVMMQ5M0HQDSR0owQ8OQ';

# bing api key
$MLS::Config::BING_ACCESS_TOKEN = 'AgY1iwb6H-_GidP_6n9GaPGlOPbdeuDJguMoGVKsbGrj8lfqury1agX4UEeXjZu4';

# google api key
$MLS::Config::GOOGLE_ACCESS_TOKEN = 'AIzaSyBlCGd2SaHPDnG8A5nPjGsEKt4WZ8vXbic';

# Format the listing address from the raw RETS row
# Format the listing address from the raw RETS row
$MLS::Config::ADDRESS_PROTO = sub {
  my ($remote_row, $address_cols) = @_;

  # Street_247 (Street)
  # Street_249 (Address Number)
  # Addres_881 (Address Line1)
  # City_N_922 (City)
  # State_924 (State)
  # ZipCode_10 (Zip)
  # APARTME_17 (Apartment #)

  my %type_map = (
    st => 'street',
    dr => 'drive',
    ave => 'avenue',
    ct => 'court',
    blvd => 'boulevard',
    ter => 'terrace',
    rd => 'road',
    av => 'avenue',
    ln => 'lane',
    pl => 'place',
    cir => 'circle',
    bl => 'boulevard',
    te => 'terrace',
    hwy => 'highway',
    isle => 'isles',
    mnr => 'manor',
    bnd => 'bend',
    cswy => 'causeway',
    trl => 'trail',
    hy => 'highway',
    terr => 'terrace'
  );

  my %address;
  while (my ($col_name, $col_mapping) = each %$address_cols) {
    $address{$col_name} = $remote_row->GetString($col_mapping);
  }

  $address{street} =~ /\s(\w+)$/;
  my $abbr = $1 ? lc($1) : '';
  $address{street} =~ s/\s(\w+)$/ $type_map{$abbr}/ if ($abbr and $type_map{$abbr});
  my (@line1, @full);

  push(@line1, $address{number}) if $address{number};
  push(@line1, $address{prefix}) if $address{prefix};
  push(@line1, $address{street}) if $address{street};
  push(@line1, $address{suffix}) if $address{suffix};
  
  $address{line1} = join(' ', @line1);
  #$address{line1} = $remote_row->GetString('881');

  $address{line2} = sprintf('%s, %s %s', $address{city}, $address{state}, $address{zip})  if ($address{city} && $address{state} && $address{zip});
  $address{line2} = sprintf('%s, %s', $address{city}, $address{state})                    if ($address{city} && $address{state} && !($address{zip}));

  # ragfl has cities defined as 'Other city in florida...' , set those to just the zip
  $address{line2} = $address{zip} if ($address{city} =~ /Other/i);

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