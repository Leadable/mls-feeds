package MLS::Resource::Flexmls::grar2::Config::Property;
use strict;

use MLS::Resource::Flexmls::grar2::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(medina);

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

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
    A => { StandardName => 'ResidentialProperty', 'SearchRequest' => $search },
    B => { StandardName => 'LotsAndLand',         'SearchRequest' => $search },
    C => { StandardName => 'CommonInterest',      'SearchRequest' => $search, ignore => 1 },
    D => { StandardName => 'Commercial Lease',    'SearchRequest' => $search, ignore => 1 },
    E => { StandardName => 'MultiFamily',         'SearchRequest' => $search },
    F => { StandardName => 'Residential Lease',   'SearchRequest' => $search },
  
);

1;
