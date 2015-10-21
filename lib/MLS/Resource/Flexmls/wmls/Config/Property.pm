package MLS::Resource::Flexmls::wmls::Config::Property;
use strict;

use MLS::Resource::Flexmls::wmls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(liz_moore);

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
  prefix   => 'LIST_33',
  city     => 'LIST_39',
  state    => 'LIST_40',
  zip      => 'LIST_43',
);

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
  A => { StandardName => 'ResidentialProperty', 'SearchRequest' => $search },
  B => { StandardName => 'LotsAndLand',         'SearchRequest' => $search },
  C => { StandardName => 'MultiFamily',         'SearchRequest' => $search },
  D => { StandardName => 'CommonInterest',      'SearchRequest' => $search, ignore => 1 },
  E => { StandardName => 'Commercial',          'SearchRequest' => $search, ignore => 1 },
  F => { StandardName => 'Rental',              'SearchRequest' => $search },
);

1;
