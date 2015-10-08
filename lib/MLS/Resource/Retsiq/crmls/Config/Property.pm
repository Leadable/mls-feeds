package MLS::Resource::Retsiq::crmls::Config::Property;
use strict;

use MLS::Resource::Retsiq::crmls::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(glick_la_county rubijevsky);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'LargePhoto';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'ListingKey' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'TimestampModified' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'TimestampPhotoModified' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListPrice' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  suffix   => 'StreetSuffix',
  post_dir => 'StreetDirectionSuffix',
  #prefix   => '',
  city     => 'City',
  state    => 'State',
  zip      => 'PostalCode',
);

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
  Residential       => { StandardName => 'Residential',       'SearchRequest' => $search },
  Commercial        => { StandardName => 'Commercial',        'SearchRequest' => $search },
  Land              => { StandardName => 'Land',              'SearchRequest' => $search },
  Mobile            => { StandardName => 'Mobile',            'SearchRequest' => "", ignore => 1 },
  CrossProperty     => { StandardName => 'CrossProperty',     'SearchRequest' => "", ignore => 1 },
  ResidentialIncome => { StandardName => 'ResidentialIncome', 'SearchRequest' => $search },
  ResidentialLease  => { StandardName => 'ResidentialLease',  'SearchRequest' => $search },
);

1;
