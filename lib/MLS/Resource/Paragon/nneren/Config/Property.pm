package MLS::Resource::Paragon::nneren::Config::Property;
use strict;

use MLS::Resource::Paragon::nneren::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(lee);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'L_ListingID', DBName => 'SystemID' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'L_UpdateDate', DBName => 'UpdtDate' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'L_Last_Photo_updt', DBName => 'PhotoDate' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'L_Status', DBName => 'Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'L_AskingPrice', DBName => 'LP' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'L_AddressStreet',
  number   => 'L_AddressNumber',
  prefix   => 'L_AddressDirection',
  city     => 'L_City',
  state    => 'L_State',
  zip      => 'L_Zip',
);

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
  RE_1 => { StandardName => 'ResidentialProperty',  'SearchRequest' => $search },
  LD_2 => { StandardName => 'LotsAndLand',          'SearchRequest' => $search },
  CS_3 => { StandardName => 'CommonInterest',       'SearchRequest' => $search },
  CL_4 => { StandardName => 'CommonInterest',       'SearchRequest' => $search },
  MF_5 => { StandardName => 'MultiFamily',          'SearchRequest' => $search },
  BF_6 => { StandardName => 'CommonInterest',       'SearchRequest' => $search },
  RN_7 => { StandardName => 'ResidentialProperty',  'SearchRequest' => $search },
);

1;
