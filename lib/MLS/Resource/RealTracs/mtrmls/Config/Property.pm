package MLS::Resource::RealTracs::mtrmls::Config::Property;
use strict;

use MLS::Resource::RealTracs::mtrmls::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(move_in_nashville);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'Photo';

# RETS Resource Classes
# active, pending, closed, backup, contingent
%MLS::Config::CLASSES = (
  CND => { StandardName => 'Condominium',     'SearchRequest' => "(ModDate=1900-01-01T00:00:00+)" },
  RES => { StandardName => 'Residential',     'SearchRequest' => "(ModDate=1900-01-01T00:00:00+)" },
  LLF => { StandardName => 'Land-Lots-Farms', 'SearchRequest' => "(ModDate=1900-01-01T00:00:00+)" },
  RNT => { StandardName => 'Rental',          'SearchRequest' => "(ModDate=1900-01-01T00:00:00+)",},
  MLS => { StandardName => 'Cross-Class',     'SearchRequest' => "", ignore => 1 },
  COM => { StandardName => 'Commercial',      'SearchRequest' => "", ignore => 1 },
  MUL => { StandardName => 'Multi-Family',    'SearchRequest' => "", ignore => 1 },
  AUC => { StandardName => 'Auction',         'SearchRequest' => "", ignore => 1 },
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'MlsNum', );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'ModDate', );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'MediaUpdateDate', );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'ListingStatusID' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListPrice', RNT => 'LeasePerMonth');

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  suffix   => 'StreetDirection',
  #post_dir => 'StreerDirSuffix',
  prefix   => 'StreetLetter',
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
