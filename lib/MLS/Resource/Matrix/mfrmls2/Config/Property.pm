package MLS::Resource::Matrix::mfrmls2::Config::Property;
use strict;

use MLS::Resource::Matrix::mfrmls2::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(isner padula wade vernamonti);

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

# Four columns needed to make mv_active, listing_type, sold_date, __active, listing_id
# These should be identical to the definitions in view_property
$MLS::Config::MV_ACTIVE_COLS = q|
  SELECT
      CASE "Status"
        WHEN 'Sold'   THEN 'sold'
        WHEN 'Leased' THEN 'leased'
        ELSE
          CASE "PropertyType"
            WHEN 'Rental' THEN 'for_rent'
            ELSE
              CASE "LeasePrice"
                WHEN null THEN 'for_sale'
                ELSE 'for_rent'
              END
          END
      END as listing_type,
      (__removed_at is null) as __active,
      "Matrix_Unique_ID"::text as listing_id,
      "CloseDate" as sold_date
  FROM mfrmls2."Property"
|;

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  suffix   => 'StreetSuffix',
  post_dir => 'StreetDirSuffix',
  prefix   => 'StreetDirPrefix',
  city     => 'StreetCity',
  state    => 'StateOrProvince',
  zip      => 'PostalCode',
);

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval({offpeak_monthly => 1});
%MLS::Config::CLASSES = (
  Listing => { StandardName => 'Cross Property', 'SearchRequest' => $search },
);

1;
