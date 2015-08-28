package MLS::Resource::Connectmls::mred::Config::Property;
use strict;

use MLS::Resource::Connectmls::mred::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(bomba ebersole kelley mcdonnell);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'HrPhoto';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'LN', DBName => 'LN' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'RECORDMODDATE', DBName => 'RECORD_MOD_DATE' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'PHOTODATE', DBName => 'PHOTODATE' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'ST', DBName => 'ST' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'LP', DBName => 'LP', RN => 'RP', RentalHome => 'RP', );

# Three columns needed to make mv_active, listing_type, sold_date, __active
# These should be identical to the definitions in view_property
$MLS::Config::MV_ACTIVE_COLS = q|
  SELECT CASE "Property".__class_name
      WHEN 'RentalHome'::text THEN
      CASE "ST"
          WHEN 'Rented'    THEN 'leased'::text
          WHEN 'Expired'   THEN NULL::text
          WHEN 'Cancelled' THEN NULL::text
          ELSE 'for_rent'::text
      END
      ELSE
      CASE "ST"
          WHEN 'Rented'    THEN 'leased'::text
          WHEN 'Closed'    THEN 'sold'::text
          WHEN 'Expired'   THEN NULL::text
          WHEN 'Cancelled' THEN NULL::text
          ELSE 'for_sale'::text
      END
  END AS listing_type,
  (__removed_at is null) as __active,
  "LN" as listing_id,
  "CLOSEDDATE" as sold_date
  FROM mred."Property"
|;

%MLS::Config::ADDR_COLUMNS = (
  street   => 'STR',
  number   => 'HSN',
  suffix   => 'STREETSUFFIX',
  post_dir => {default => 'POST_DIRECTION', DP => ''},
  prefix   => 'CP',
  city     => 'CIT',
  state    => {default => 'STATE', INTL => 'INTLSTATE'},
  zip      => 'ZP',
);

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
  INTL                => { StandardName => 'International',        'SearchRequest' => $search },
  ResidentialProperty => { StandardName => 'Residential Property', 'SearchRequest' => $search },
  RentalHome          => { StandardName => 'Rentals',              'SearchRequest' => $search },
  LotsAndLand         => { StandardName => 'Lots and Land',        'SearchRequest' => $search },
  CommercialProperty  => { StandardName => 'Commercial',           'SearchRequest' => $search },
  OffMarket           => { StandardName => 'Off-Market Listings',  'SearchRequest' => $search, ignore => 1 },
  DeletedProperty     => { StandardName => 'Deleted Listings',     'SearchRequest' => $search, ignore => 1 },
  
  DE => { StandardName => 'Detached Single',                       'SearchRequest' => $search },
  AT => { StandardName => 'Attached Single',                       'SearchRequest' => $search },
  MH => { StandardName => 'Mobile Homes',                          'SearchRequest' => $search },
  MU => { StandardName => 'Two to Four Units',                     'SearchRequest' => $search },
  RN => { StandardName => 'Residential Rental',                    'SearchRequest' => $search },
  DP => { StandardName => 'Deeded Parking / Boat Slips',           'SearchRequest' => $search },
  VL => { StandardName => 'Vacant Land',                           'SearchRequest' => $search },
  MF => { StandardName => 'Multi Family',                          'SearchRequest' => $search },
  OI => { StandardName => 'Office/Tech',                           'SearchRequest' => $search },
  BU => { StandardName => 'Business / Business with Real Estate',  'SearchRequest' => $search },
  CO => { StandardName => 'Mixed Use',                             'SearchRequest' => $search },
  RS => { StandardName => 'Retail / Stores',                       'SearchRequest' => $search },
  OT => { StandardName => 'Instut / To Develop',                   'SearchRequest' => $search },
  IN => { StandardName => 'Industrial',                            'SearchRequest' => $search },
);

1;
