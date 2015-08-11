package MLS::Resource::Matrix::ppmls::Config::Property;
use strict;

use MLS::Resource::Matrix::ppmls::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(clement);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'LargePhoto';

# RETS Resource Classes
my $search = '(MatrixModifiedDT=' . MLS::Resource::Utils::get_search_interval . ')';
%MLS::Config::CLASSES = (
  Resi       => { StandardName => 'Residential Property', 'SearchRequest' => $search },
  Business   => { StandardName => 'Business Property',    'SearchRequest' => $search },
  Commercial => { StandardName => 'Commercial Property',  'SearchRequest' => $search },
  Farm       => { StandardName => 'Farm Property',        'SearchRequest' => $search },
  Income     => { StandardName => 'Income Property',      'SearchRequest' => $search },
  Land       => { StandardName => 'Land Property',        'SearchRequest' => $search },
  Rental     => { StandardName => 'Rental Property',      'SearchRequest' => $search },
);

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

1;
