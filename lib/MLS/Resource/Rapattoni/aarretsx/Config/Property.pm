package MLS::Resource::Rapattoni::aarretsx::Config::Property;
use strict;

use MLS::Resource::Rapattoni::aarretsx::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(caulk);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

# RETS Resource Classes
my $search = '((ListingRid=1+),(LastModifiedDateTime=' . MLS::Resource::Utils::get_search_interval . '))';
%MLS::Config::CLASSES = (
  COMM => { StandardName => '',                     'SearchRequest' => $search },  # Commercial
  INCP => { StandardName => '',                     'SearchRequest' => $search },  # Income Property
  LOTL => { StandardName => 'LotsAndLand',          'SearchRequest' => $search },  # Land
  RENT => { StandardName => 'ResidentialProperty',  'SearchRequest' => $search },  # Rental
  RESI => { StandardName => 'ResidentialProperty',  'SearchRequest' => $search },  # Residential
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'ListingRid', DBName => 'ListingRid' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'LastModifiedDateTime', DBName => 'LstModDtTm' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'PictureModifiedDateTime', DBName => 'PicModDT' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'Status', DBName => 'Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListingPrice', DBName => 'LstngPrice' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  suffix   => 'StreetSuffix',
  post_dir => 'StreetPostDirection',
  prefix   => 'StreetDirection',
  city     => 'City',
  state    => 'State',
  zip      => 'ZipCode',
);

1;
