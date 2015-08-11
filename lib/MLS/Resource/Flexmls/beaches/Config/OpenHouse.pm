package MLS::Resource::Flexmls::beaches::Config::OpenHouse;
use strict;

use MLS::Resource::Flexmls::beaches::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'OpenHouse';

# RETS Resource Classes
%MLS::Config::CLASSES = (
  OpenHouse => { StandardName => 'OpenHouseInfo', 'SearchRequest' => '(EVENT6=1950-01-01T00:00:00+)'}
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'EVENT0', DBName => 'techid' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'EVENT6', DBName => 'modtimesta' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'LIST22', DBName => 'listprice' );

%MLS::Config::ADDR_COLUMNS = (
    street   => 'ADD0',
    city     => 'ADD5',
    state    => 'ADD10',
);

1;
