package MLS::Property::Config;
use strict;

use Data::Dumper qw(Dumper);
use Geo::StreetAddress::US;

# MLS DB Shard
$MLS::Property::Config::MLS_DB_SHARD = 'mls-feeds-2';

# MLS identifier
$MLS::Property::Config::MLS = 'ragfl';

# ID of the Rets Property Resource
$MLS::Property::Config::RESOURCE = 'Property';

# Name of the RETS Resource Photo Object
$MLS::Property::Config::OBJECT = 'Photo';

# RETS Resource Classes
%MLS::Property::Config::CLASSES = (
  1 => { StandardName => 'ResidentialProperty' }, # Single Family
  2 => { StandardName => 'ResidentialProperty' }, # Condos
  3 => { StandardName => 'MultiFamily', ignore => 1 }, 
  4 => { StandardName => 'LotsAndLand' }, 
  5 => { StandardName => 'Industrial', ignore => 1 },
  6 => { StandardName => '' }, # Rentals
  7 => { StandardName => 'Commercial', ignore => 1 },
  8 => { StandardName => 'Business', ignore => 1 }
);

# RETS Resource Primary Key
%MLS::Property::Config::PRIMARY_KEY = ( SystemName => 'sysid', DBName => 'sysid' );

# RETS Resource column that indicates listing updated
%MLS::Property::Config::ROW_MOD_TS_COLUMN = ( SystemName => '131', DBName => 'LastTr_131' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Property::Config::IMG_MOD_TS_COLUMN = ( SystemName => '1329', DBName => 'LastI_1329' );

# RETS Resource status column
%MLS::Property::Config::STATUS_COLUMN = ( SystemName => '246', DBName => 'Status_246' );

# RETS Resource price column
%MLS::Property::Config::PRICE_COLUMN = ( SystemName => '137', DBName => 'ListPr_137' );

# RETS session object
$MLS::Property::Config::RETS = sub {
  my $rets = new librets::RetsSession('http://ragfl.retsiq.com/contact/rets/login');

  $rets->SetUserAgentAuthType($librets::UserAgentAuthType::USER_AGENT_AUTH_RETS_1_7);

  die "Invalid RETS login" unless $rets->Login("ListingTech", "W1Nt3R2015");

  return $rets;
};

# AMAZON S3 bucket name for photos
$MLS::Property::Config::S3_BUCKET = 'dfo-photos';

# mapbox.com api key
$MLS::Property::Config::MAPBOX_ACCESS_TOKEN = 'pk.eyJ1IjoibGlzdGluZ3AiLCJhIjoiOFVKOENBTSJ9.fcoVMMQ5M0HQDSR0owQ8OQ';

# bing api key
$MLS::Property::Config::BING_ACCESS_TOKEN = 'AgY1iwb6H-_GidP_6n9GaPGlOPbdeuDJguMoGVKsbGrj8lfqury1agX4UEeXjZu4';

# google api key
$MLS::Property::Config::GOOGLE_ACCESS_TOKEN = 'AIzaSyBlCGd2SaHPDnG8A5nPjGsEKt4WZ8vXbic';

# Format the listing address from the raw RETS row
$MLS::Property::Config::ADDRESS = sub {
  my ($remote_row) = @_;

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

   
  my %address = (
    street => $remote_row->GetString('247'),
    number => $remote_row->GetString('248'),
    suffix => $remote_row->GetString('249'),
    prefix => $remote_row->GetString('73'),
    city => $remote_row->GetString('922'),
    state => $remote_row->GetString('924'),
    zip => $remote_row->GetString('10'),
    #apartment_number => $remote_row->GetString('17')
  );

  $address{street} =~ /\s(\w+)$/;
  my $abbr = $1 ? lc($1) : '';
  print "street => :" . $address{street} . ":\n";
  print "abbr => :" . $abbr . ":\n";
  print "full => :" . $type_map{$abbr} . ":\n";
  $address{street} =~ s/\s(\w+)$/ $type_map{$abbr}/ if ($abbr and $type_map{$abbr});
  print "street after => :" . $address{street} . ":\n";
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
  print Dumper(\%address);
  print Dumper($spec);

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
