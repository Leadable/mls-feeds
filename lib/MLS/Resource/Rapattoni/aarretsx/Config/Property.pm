package MLS::Resource::Rapattoni::aarretsx::Config::Property;
use strict;

use MLS::Resource::Rapattoni::aarretsx::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(caulk);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

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

# Four columns needed to make mv_active, listing_type, sold_date, __active, listing_id
# These should be identical to the definitions in view_property
$MLS::Config::MV_ACTIVE_COLS = q|
  SELECT
    CASE "Status"
        WHEN 'Rented'::text THEN 'leased'::text
        WHEN 'Sold'::text   THEN 'sold'::text
        ELSE
        CASE __class_name
            WHEN 'RENT'::text THEN 'for_rent'::text
            WHEN 'COMM'::text THEN
                CASE 'PropertyType'::text
                    WHEN 'Residential Lease'::text THEN 'for_rent'::text
                    WHEN 'Commercial Lease'::text  THEN 'for_rent'::text
                    ELSE 'for_sale'::text
                END
            ELSE 'for_sale'::text
        END
    END AS listing_type,
    (__removed_at is null) as __active,
    "Property"."ListingRid"::text AS listing_id,
    CASE "Property"."SellingDate"
        WHEN '1800-01-01'::text THEN null::text
        WHEN '1900-01-01'::text THEN null::text
        ELSE "Property"."SellingDate"
    END AS sold_date
  FROM aarretsx."Property"
|;

# RETS Resource Classes
my $search = '((ListingRid=1+),' . MLS::Resource::Utils::get_search_interval . ')';
%MLS::Config::CLASSES = (
  COMM => { StandardName => '',                     'SearchRequest' => $search },  # Commercial
  INCP => { StandardName => '',                     'SearchRequest' => $search },  # Income Property
  LOTL => { StandardName => 'LotsAndLand',          'SearchRequest' => $search },  # Land
  RENT => { StandardName => 'ResidentialProperty',  'SearchRequest' => $search },  # Rental
  RESI => { StandardName => 'ResidentialProperty',  'SearchRequest' => $search },  # Residential
);

1;
