package MLS::Config::OpenHouse;
use strict;

use MLS::Config;

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

# Make a closure with resource specific addr cols
$MLS::Config::ADDRESS = sub {
    my $remote_row = shift;

    my $address_cols = {
      street   => 'ADD0',
      city     => 'ADD5',
      state    => 'ADD10',
    };

    return $MLS::Config::ADDRESS_PROTO->($remote_row, $address_cols);
};

1;
