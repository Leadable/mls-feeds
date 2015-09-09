package MLS::Resource::Evernet::nwmls::Config::Property;
use strict;

use MLS::Resource::Evernet::nwmls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw();

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'LN' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'UD' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'UD' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'ST' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'LP' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'STR',
  number   => 'HSN',
  suffix   => 'SSUF',
  post_dir => 'DRS',
  prefix   => 'DRP',
  city     => 'CIT',
  state    => 'STA',
  zip      => 'ZIP',
);

# Make sure $MLS::Config::PEAK_TIME is set
MLS::Resource::Utils::is_peak_time();
%MLS::Config::CLASSES = (
  BUSO => { StandardName => 'Business' },
  COMI => { StandardName => 'Commericial' },
  COND => { StandardName => 'Condominium' },
  FARM => { StandardName => 'Farmland' },
  MANU => { StandardName => 'Manufacturered Home' },
  MULT => { StandardName => 'Multi-Family' },
  RENT => { StandardName => 'Rental' },
  RESI => { StandardName => 'Residential' },
  TSHR => { StandardName => 'Time Share' },
  VACL => { StandardName => 'Lots and Land' },
);

1;
