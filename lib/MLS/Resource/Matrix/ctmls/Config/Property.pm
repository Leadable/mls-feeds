package MLS::Resource::Matrix::ctmls::Config::Property;
use strict;

use MLS::Resource::Matrix::ctmls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(linda_davis lisa_barall);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'LargePhoto';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'matrix_unique_id' );

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
  city     => 'City',
  state    => 'StateOrProvince',
  zip      => 'PostalCode',
);

# Four columns needed to make mv_active, listing_type, sold_date, __active, listing_id
# These should be identical to the definitions in view_property
$MLS::Config::MV_ACTIVE_COLS = q|
  SELECT
    CASE "TransactionType"
      WHEN 'Rent'::text THEN
        CASE "Status"
          WHEN 'Closed'::text THEN 'leased'::text
          ELSE 'for_rent'::text
        END
      WHEN 'Lease'::text THEN
        CASE "Status"
          WHEN 'Closed'::text THEN 'leased'::text
          ELSE 'for_rent'::text
        END
      ELSE
        CASE "Status"
          WHEN 'Closed'::text THEN 'sold'::text
          ELSE 'for_sale'::text
        END
    END as listing_type,
    (__removed_at is null) as __active,
    matrix_unique_id::text AS listing_id,
    "CloseDate" as sold_date
  FROM ctmls."Property"
|;

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
    Listing => { StandardName => 'Cross Property', 'SearchRequest' => $search },
);

1;
