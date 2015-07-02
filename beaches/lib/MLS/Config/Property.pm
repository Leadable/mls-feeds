package MLS::Config::Property;
use strict;

use MLS::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(kanga_realty);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'HiRes';

# RETS Resource Classes
# active, pending, closed, backup, contingent
%MLS::Config::CLASSES = (
  A => { StandardName => 'ResidentialProperty',   'SearchRequest' => "(LIST_87=1900-01-01T00:00:00+)" },  # Single Family
  B => { StandardName => 'MultiFamily',           'SearchRequest' => "(LIST_87=1900-01-01T00:00:00+)"  }, # Income
  C => { StandardName => 'LotsAndLand',           'SearchRequest' => "(LIST_87=1900-01-01T00:00:00+)" },  # Land
  D => { StandardName => 'CommonInterest',        'SearchRequest' => "", ignore => 1 },                   # Business
  E => { StandardName => '',                      'SearchRequest' => "", ignore => 1 },                   # Commercial
  F => { StandardName => '',                      'SearchRequest' => "(LIST_87=1900-01-01T00:00:00+)" },  # Rentals
);

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

# Make a closure with resource specific addr cols
$MLS::Config::ADDRESS = sub {
    my $remote_row = shift;

    my %address;
    while (my ($col_name, $col_mapping) = each %MLS::Config::ADDR_COLUMNS) {
      $address{$col_name} = $remote_row->GetString($col_mapping);
    }

    return $MLS::Config::ADDRESS_PROTO->(\%address);
};

1;
