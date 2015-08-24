package MLS::Resource::MRIS::trend::Config::Property;
use strict;

use MLS::Resource::MRIS::trend::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(glick);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

# RETS Resource Classes
my $search = '(ModificationTimestamp=' . MLS::Resource::Utils::get_search_interval . ')';
%MLS::Config::CLASSES = (
  RES => { StandardName => 'TREND Residential',         'SearchRequest' => $search },
  MUL => { StandardName => 'TREND Multi-Family',        'SearchRequest' => $search },
  COM => { StandardName => 'TREND Commercial',          'SearchRequest' => $search },
  LOT => { StandardName => 'TREND Lot Land',            'SearchRequest' => $search },
  RNT => { StandardName => 'TREND Residential Rentals', 'SearchRequest' => $search },
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'ListingKey' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'ModificationTimestamp');

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'MaxPhotoTms' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'LocaleListingStatus');

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListPrice');

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  prefix   => 'StreetDirPrefix',
  suffix   => 'StreetSuffix',
  city     => 'CityName',
  state    => 'State',
  zip      => 'PostalCode',
);

1;
