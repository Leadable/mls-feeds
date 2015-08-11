package MLS::Resource::Retsiq::ragfl::Config::Property;
use strict;

use MLS::Resource::Retsiq::ragfl::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw();

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

# RETS Resource Classes
%MLS::Config::CLASSES = (
  1 => { StandardName => 'ResidentialProperty', SearchRequest => "(sysid=0+)"},                 # Single Family
  2 => { StandardName => 'ResidentialProperty', SearchRequest => "(sysid=0+)" },                # Condos
  3 => { StandardName => 'MultiFamily',         SearchRequest => "(sysid=0+)", ignore => 1 }, 
  4 => { StandardName => 'LotsAndLand',         SearchRequest => "(sysid=0+)" }, 
  5 => { StandardName => 'Industrial',          SearchRequest => "(sysid=0+)", ignore => 1 },
  6 => { StandardName => '',                    SearchRequest => "(sysid=0+)" },                # Rentals
  7 => { StandardName => 'Commercial',          SearchRequest => "(sysid=0+)", ignore => 1 },
  8 => { StandardName => 'Business',            SearchRequest => "(sysid=0+)", ignore => 1 }
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'sysid', DBName => 'sysid' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => '131', DBName => 'LastTr_131' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => '1329', DBName => 'LastI_1329' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => '246', DBName => 'Status_246' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => '137', DBName => 'ListPr_137' );

%MLS::Config::ADDR_COLUMNS = (
  street   => '247',
  number   => '248',
  suffix   => '249',
  prefix   => '73',
  city     => '922',
  state    => '924',
  zip      => '10',
);

# Make a closure with resource specific addr cols
$MLS::Config::ADDRESS = sub {
    my $remote_row = shift;

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
    while (my ($col_name, $col_mapping) = each %MLS::Config::ADDR_COLUMNS) {
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
