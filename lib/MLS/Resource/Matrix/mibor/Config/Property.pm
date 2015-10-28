package MLS::Resource::Matrix::mibor::Config::Property;
use strict;

use MLS::Resource::Matrix::mibor::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(brights);

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

# Four columns needed to make mv_active, listing_type, sold_date, __active, listing_id
# These should be identical to the definitions in view_property
$MLS::Config::MV_ACTIVE_COLS = q|
  SELECT
    (__removed_at is null AND "Status" NOT IN ('Expired', 'Withdrawn')) as __active,
    "Matrix_Unique_ID"::text as listing_id,
    "CloseDate" as sold_date,
    CASE
        WHEN "Status" = 'Leased' THEN 'leased'
        WHEN "Status" = 'Sold' THEN 'sold'
        WHEN "LeasePrice" IS NOT NULL THEN 'for_rent'
        ELSE 'for_sale'
    END as listing_type
  FROM mibor."Property"
|;

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
  Listing => { StandardName => 'Cross Property', 'SearchRequest' => $search },
);

1;
