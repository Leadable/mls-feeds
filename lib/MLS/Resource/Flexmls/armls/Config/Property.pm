package MLS::Resource::Flexmls::armls::Config::Property;
use strict;

use MLS::Resource::Flexmls::armls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(dean_ouellette);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'HiRes';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'LIST_1', DBName => 'techid' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'LIST_87', DBName => 'modtimesta' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'LIST_134', DBName => 'pictimesta' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'LIST_15', DBName => 'status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'LIST_22', DBName => 'listprice' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'LIST_34',
  number   => 'LIST_31',
  suffix   => 'LIST_37',
  post_dir => 'LIST_36',
  prefix   => 'LIST_33',
  city     => 'LIST_39',
  state    => 'LIST_40',
  zip      => 'LIST_43',
);

# Four columns needed to make mv_active, listing_type, sold_date, __active, listing_id
# These should be identical to the definitions in view_property
$MLS::Config::MV_ACTIVE_COLS = q|
  SELECT
  (__removed_at IS NULL AND "LIST_15" NOT IN ('Cancelled', 'Deleted', 'Expired')) AS __active,
  "LIST_12" as sold_date,
  CASE __class_name
          WHEN 'B'::text THEN
          CASE "LIST_15"
              WHEN 'Pending'::text           THEN 'for_rent'::text
              WHEN 'Temp Off Market'::text   THEN 'for_rent'::text
              WHEN 'Active'::text            THEN 'for_rent'::text
              WHEN 'Closed'::text            THEN 'leased'::text
              ELSE NULL::text
          END
          ELSE
          CASE "LIST_15"
              WHEN 'Pending'::text           THEN 'for_sale'::text
              WHEN 'Temp Off Market'::text   THEN 'for_sale'::text
              WHEN 'Active'::text            THEN 'for_sale'::text
              WHEN 'Closed'::text            THEN 'sold'::text
              ELSE NULL::text
          END
      END AS listing_type,
  "LIST_1"::text AS listing_id
  FROM armls."Property"
|;

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
    A => { StandardName => 'ResidentialProperty', 'SearchRequest' => $search },
    B => { StandardName => 'Residential Rental',  'SearchRequest' => $search },
    C => { StandardName => 'LotsAndLand',         'SearchRequest' => $search },
    D => { StandardName => 'CommonInterest',      'SearchRequest' => $search, ignore => 1 },
    E => { StandardName => 'Comm/Industry Lease', 'SearchRequest' => $search, ignore => 1 },
    F => { StandardName => 'MultiFamily',         'SearchRequest' => $search },
);

1;
