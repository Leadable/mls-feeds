package MLS::Resource::Paragon::sandicor2::Config::Property;
use strict;

use MLS::Resource::Paragon::sandicor2::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(padula amg);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'L_ListingID', DBName => 'SystemID' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'L_UpdateDate', DBName => 'UpdtDate' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'L_Last_Photo_updt', DBName => 'PhotoDate' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'L_Status', DBName => 'Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'L_SystemPrice', DBName => 'LP' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'L_AddressStreet',
  number   => 'L_AddressNumber',
  prefix   => 'L_AddressDirection',
  city     => 'L_City',
  state    => 'L_State',
  zip      => 'L_Zip',
);

# Four columns needed to make mv_active, listing_type, sold_date, __active, listing_id
# These should be identical to the definitions in view_property
$MLS::Config::MV_ACTIVE_COLS = q|
  SELECT
    CASE __class_name
      WHEN 'RT_4' THEN
        CASE "L_Status"
          WHEN 'SOLD'   THEN 'leased'
          WHEN 'RENTED' THEN 'leased'
          ELSE 'for_rent'
        END
      ELSE
        CASE "L_Status"
          WHEN 'SOLD'   THEN 'sold'
          ELSE 'for_sale'
        END
    END as listing_type,
    (__removed_at IS NULL AND "L_Status" NOT IN ('EXPIRED', 'WITHDRAWN', 'CANCELLED')) as __active,
    "L_ListingID"::text as listing_id,
    "L_ClosingDate" as sold_date
  FROM sandicor2."Property"
|;

exit if (! MLS::Resource::Utils::is_peak_time());

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
    RE_1  => { StandardName => 'RE', 'SearchRequest' => $search },
    RI_2  => { StandardName => 'RI', 'SearchRequest' => $search, ignore => 1 },
    LN_3  => { StandardName => 'LN', 'SearchRequest' => $search },
    RT_4  => { StandardName => 'RT', 'SearchRequest' => $search },
    TS_5  => { StandardName => 'TS', 'SearchRequest' => $search, ignore => 1 },
    RN_6  => { StandardName => 'RN', 'SearchRequest' => $search, ignore => 1 },
    HO_7  => { StandardName => 'HO', 'SearchRequest' => $search, ignore => 1 },
    MH_8  => { StandardName => 'MH', 'SearchRequest' => $search, ignore => 1 },
    OF_9  => { StandardName => 'OF', 'SearchRequest' => $search, ignore => 1 },
    BO_10 => { StandardName => 'BO', 'SearchRequest' => $search, ignore => 1 },
    LR_11 => { StandardName => 'LR', 'SearchRequest' => $search, ignore => 1 },
);

1;
