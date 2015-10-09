package MLS::Resource::Navica::snakemls::Config::Property;
use strict;

use MLS::Resource::Navica::snakemls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(adams);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'MST_MLS_NUMBER' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'sys_Last_Modified' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'rets_photo_timestamp' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'Property_Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'List_Price' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'Address',
  number   => 'Street_Num',
  prefix   => 'Direction',
  city     => 'City',
  state    => 'State',
  zip      => 'ZipCode',
);

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
    RES  => { StandardName => 'ResidentialProperty',    'SearchRequest' => $search },
    MFAM => { StandardName => 'MultiFamily',            'SearchRequest' => $search },
    RLND => { StandardName => 'LotsAndLand',            'SearchRequest' => $search },
    FARM => { StandardName => 'ResidentialProperty',    'SearchRequest' => $search },
    RNTL => { StandardName => 'ResidentialProperty',    'SearchRequest' => $search },
    COMM => { StandardName => 'CommonInterest',         'SearchRequest' => $search },
    CLSE => { StandardName => 'CommonInterest',         'SearchRequest' => $search },
    CLND => { StandardName => 'CommonInterest',         'SearchRequest' => $search },
);

1;
