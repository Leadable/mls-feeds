package MLS::Config::Property;
use strict;

use MLS::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(caulk);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

# RETS Resource Classes
# active, pending, closed, backup, contingent
%MLS::Config::CLASSES = (
  COMM => { StandardName => '',                     'SearchRequest' => "((OnMarket=|1,0),(ListingRid=1+))" },  # Commercial
  INCP => { StandardName => '',                     'SearchRequest' => "(ListingRid=1+)"  }, # Income Property
  LOTL => { StandardName => 'LotsAndLand',          'SearchRequest' => "(ListingRid=1+)" },  # Land
  RENT => { StandardName => 'ResidentialProperty',  'SearchRequest' => "(ListingRid=1+)" },  # Rental
  RESI => { StandardName => 'ResidentialProperty',  'SearchRequest' => "(ListingRid=1+)" },  # Residential
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'ListingRid', DBName => 'ListingRid' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'LastModifiedDateTime', DBName => 'LstModDtTm' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'PictureModifiedDateTime', DBName => 'PicModDT' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'Status', DBName => 'Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListingPrice', DBName => 'LstngPrice' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  suffix   => 'StreetSuffix',
  post_dir => 'StreetPostDirection',
  prefix   => 'StreetDirection',
  city     => 'City',
  state    => 'State',
  zip      => 'ZipCode',
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
