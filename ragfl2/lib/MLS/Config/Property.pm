package MLS::Config::Property;
use strict;

use MLS::Config;

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

# Make a closure with resource specific addr cols
$MLS::Config::ADDRESS = sub {
    my $remote_row = shift;

    my $address_cols = {
      street   => '247',
      number   => '248',
      suffix   => '249',
      prefix   => '73',
      city     => '922',
      state    => '924',
      zip      => '10',
    };

    return $MLS::Config::ADDRESS_PROTO->($remote_row, $address_cols);
};

1;
