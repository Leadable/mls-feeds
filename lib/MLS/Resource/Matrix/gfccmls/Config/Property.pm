package MLS::Resource::Matrix::gfccmls::Config::Property;
use strict;

use MLS::Resource::Matrix::gfccmls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(bunny);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Large';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'Matrix_Unique_ID' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'MatrixModifiedDT' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'PhotoModificationTimestamp', RESI => 'Photomodificationtimestamp');

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'STATUS', RESI => 'Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListPrice', RESI => 'Listprice' );

%MLS::Config::ADDR_COLUMNS = (
  street   => {default => 'STREET',          RESI => 'Street'},
  number   => {default => 'STREET_NO',       RESI => 'Street_No'},
  suffix   => {default => 'STREET_TYPE',     RESI => 'Street_Type'},
  post_dir => {default => 'STREET_POST_DIR', RESI => 'Street_Post_Dir'},
  prefix   => {default => 'STREET_DIR',      RESI => 'Street_Dir'},
  city     => 'Town',
  state    => {default => 'STATE',           RESI => 'State'},
  zip      => {default => 'ZIP_CODE',        RESI => 'Zip_Code'},
);

# Four columns needed to make mv_active, listing_type, sold_date, __active, listing_id
# These should be identical to the definitions in view_property
# $MLS::Config::MV_ACTIVE_COLS = q|

# |;

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
  RESI => { StandardName => 'ResidentialProperty', 'SearchRequest' => $search },
  LAND => { StandardName => 'LotsAndLand',         'SearchRequest' => $search },
  MULT => { StandardName => 'MultiFamily',         'SearchRequest' => $search, ignore => 1 },
  COMM => { StandardName => 'Commercial',          'SearchRequest' => $search, ignore => 1 },
);

1;
