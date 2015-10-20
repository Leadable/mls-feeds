package MLS::Resource::Paragon::sandicor2::Config::Property;
use strict;

use MLS::Resource::Paragon::sandicor2::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(padula amg);

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
%MLS::Config::PRICE_COLUMN = ( SystemName => 'L_SystemPrice', DBName => 'LP' );

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
    RE_1  => { StandardName => 'RE', 'SearchRequest' => $search },
    RI_2  => { StandardName => 'RI', 'SearchRequest' => $search, ignore => 1 },
    LN_3  => { StandardName => 'LN', 'SearchRequest' => $search },
    RT_4  => { StandardName => 'RT', 'SearchRequest' => $search },
    TS_5  => { StandardName => 'TS', 'SearchRequest' => $search, ignore => 1 },
    RN_6  => { StandardName => 'RN', 'SearchRequest' => $search, ignore => 1 },
    HO_7  => { StandardName => 'HO', 'SearchRequest' => $search, ignore => 1 },
    MH_8  => { StandardName => 'MH', 'SearchRequest' => $search, ignore => 1 },
    OF_9  => { StandardName => 'OF', 'SearchRequest' => $search, ignore => 1 },
    BO_10 => { StandardName => 'BO', 'SearchRequest' => $search, ignore => 1 },
    LR_11 => { StandardName => 'LR', 'SearchRequest' => $search, ignore => 1 },
);

1;
