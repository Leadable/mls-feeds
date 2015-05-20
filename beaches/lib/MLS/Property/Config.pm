package MLS::Property::Config;
use strict;

use Data::Dumper qw(Dumper);
use Geo::StreetAddress::US;

# MLS DB Shard
$MLS::Property::Config::MLS_DB_SHARD = 'mls-feeds-2';

# MLS identifier
$MLS::Property::Config::MLS = 'beaches';

# ID of the Rets Property Resource
$MLS::Property::Config::RESOURCE = 'Property';

# Name of the RETS Resource Photo Object
$MLS::Property::Config::OBJECT = 'HiRes';

# RETS Resource Classes
%MLS::Property::Config::CLASSES = (
  A => { StandardName => 'ResidentialProperty', 'SearchRequest' => "((LIST_87=1950-01-01T00:00:00+),(LIST_15=|12LL26N0CFUH,12LL26N0CKTY,PWC_15429SGZYQIT))" }, # Single Family
  B => { StandardName => 'MultiFamily', 'SearchRequest' => "((LIST_87=1950-01-01T00:00:00+),(LIST_15=|12MKUJQH3QE8,12MKUJQH471V,PWC_15429SI5IHF3))"  }, # Income
  C => { StandardName => 'LotsAndLand', 'SearchRequest' => "((LIST_87=1950-01-01T00:00:00+),(LIST_15=|12MKULNSLMH4,12MKULNSM049,PWC_15429SI5IO7B))" }, 
  D => { StandardName => 'CommonInterest', 'SearchRequest' => "", ignore => 1 }, # Business 
  E => { StandardName => '', 'SearchRequest' => "", ignore => 1 }, # Commercial
  F => { StandardName => '', 'SearchRequest' => "((LIST_87=1950-01-01T00:00:00+),(LIST_15=|12MKV6FH8HUD,12MKV6FH8VXQ,PWC_15429SI5J9U2))" }, # Rentals
);

# RETS Resource Primary Key
%MLS::Property::Config::PRIMARY_KEY = ( SystemName => 'LIST_1', DBName => 'techid' );

# RETS Resource column that indicates listing updated
%MLS::Property::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'LIST_87', DBName => 'modtimesta' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Property::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'LIST_134', DBName => 'pictimesta' );

# RETS Resource status column
%MLS::Property::Config::STATUS_COLUMN = ( SystemName => 'LIST_15', DBName => 'status' );

# RETS Resource price column
%MLS::Property::Config::PRICE_COLUMN = ( SystemName => 'LIST_22', DBName => 'listprice' );

# RETS session object
$MLS::Property::Config::RETS = sub {
  my $rets = new librets::RetsSession('http://retsgw.flexmls.com/rets2_1/Login');

  die "Invalid RETS login" unless $rets->Login("fl.rets.dbarr", "dbarr");

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

  my %address = (
    street => $remote_row->GetString('LIST_34'),
    number => $remote_row->GetString('LIST_31'),
    suffix => $remote_row->GetString('LIST_37'),
    post_dir => $remote_row->GetString('LIST_36'),
    prefix => $remote_row->GetString('LIST_33'),
    city => $remote_row->GetString('LIST_39'),
    state => 'FL',
    zip => $remote_row->GetString('LIST_43'),
    #apartment_number => $remote_row->GetString('17')
  );

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
