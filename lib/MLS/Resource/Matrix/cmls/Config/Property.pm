package MLS::Resource::Matrix::cmls::Config::Property;
use strict;

use MLS::Resource::Matrix::cmls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(maxwell);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'LargePhoto';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'Matrix_Unique_ID' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'MatrixModifiedDT' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'PhotoModificationTimestamp' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListPrice' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  suffix   => 'StreetSuffix',
  post_dir => 'StreetDirSuffix',
  prefix   => 'StreetDirPrefix',
  city     => 'City',
  state    => 'StateOrProvince',
  zip      => 'PostalCode',
);

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
  Resi   => { StandardName => 'Residential', 'SearchRequest' => $search },
  Comm   => { StandardName => 'Commercial',  'SearchRequest' => $search, ignore => 1 },
  Land   => { StandardName => 'Land',        'SearchRequest' => $search },
  MF     => { StandardName => 'MultiFamily', 'SearchRequest' => $search },
  Rent   => { StandardName => 'Rental',      'SearchRequest' => $search },
);

1;
