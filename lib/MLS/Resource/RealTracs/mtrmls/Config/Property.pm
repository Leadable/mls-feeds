package MLS::Resource::RealTracs::mtrmls::Config::Property;
use strict;

use MLS::Resource::RealTracs::mtrmls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(move_in_nashville);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'MlsNum', );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'ModDate', );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'MediaUpdateDate', );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'ListingStatusID' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListPrice', RNT => 'LeasePerMonth');

# Used by some modules to prioritize active listings
@MLS::Config::STATUS_ACTIVE_DEFINITION = ( 'Active' );

# Three columns needed to make mv_active, listing_type, sold_date, __active
# These should be identical to the definitions in view_property
$MLS::Config::MV_ACTIVE_COLS = q|
  SELECT CASE __class_name
        WHEN 'RNT'::text THEN
        CASE "ListingStatusID"
            WHEN 'Active'::text            THEN 'for_rent'::text
            WHEN 'Pending'::text           THEN 'for_rent'::text
            WHEN 'Closed'::text            THEN 'leased'::text
            ELSE NULL::text
        END
        ELSE
        CASE "ListingStatusID"
            WHEN 'Active'::text            THEN 'for_sale'::text
            WHEN 'Pending'::text           THEN 'for_sale'::text
            WHEN 'Closed'::text            THEN 'sold'::text
            ELSE NULL::text
        END
  END AS listing_type,
  (__removed_at is null) as __active,
  "ClosedDate" as sold_date,
  "MlsNum" as listing_id
  FROM mtrmls."Property"
|;

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  suffix   => 'StreetDirection',
  #post_dir => 'StreerDirSuffix',
  prefix   => 'StreetLetter',
  city     => 'City',
  state    => 'State',
  zip      => 'ZipCode',
);

my $search = MLS::Resource::Utils::get_search_interval({offpeak_monthly => 1});

# RETS Resource Classes
%MLS::Config::CLASSES = (
  CND => { StandardName => 'Condominium',     'SearchRequest' => $search },
  RES => { StandardName => 'Residential',     'SearchRequest' => $search },
  LLF => { StandardName => 'Land-Lots-Farms', 'SearchRequest' => $search },
  RNT => { StandardName => 'Rental',          'SearchRequest' => $search },
  MLS => { StandardName => 'Cross-Class',     'SearchRequest' => "", ignore => 1 },
  COM => { StandardName => 'Commercial',      'SearchRequest' => "", ignore => 1 },
  MUL => { StandardName => 'Multi-Family',    'SearchRequest' => "", ignore => 1 },
  AUC => { StandardName => 'Auction',         'SearchRequest' => "", ignore => 1 },
);

1;
