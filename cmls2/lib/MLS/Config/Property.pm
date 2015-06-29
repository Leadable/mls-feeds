package MLS::Config::Property;
use strict;

use MLS::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

#@MLS::Config::AREAS = qw();

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'LargePhoto';

# RETS Resource Classes
# active, backup, leased, pending sale, closed sale
my $status = '(Status=|ACT,UCNS,UCS,CLOSD)';
%MLS::Config::CLASSES = (
  Resi   => { StandardName => 'Residential', 'SearchRequest' => "((MatrixModifiedDT=1900-01-01+),$status)" },
  # Comm   => { StandardName => 'Commercial',  'SearchRequest' => "", ignore => 1 },
  # Land   => { StandardName => 'Land',        'SearchRequest' => "" },
  # MF     => { StandardName => 'MultiFamily', 'SearchRequest' => "" },
  # Rent   => { StandardName => 'Rental',      'SearchRequest' => "" },
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'Matrix_Unique_ID' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'MatrixModifiedDT' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'PhotoModificationTimestamp' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListPrice' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  suffix   => 'StreetSuffix',
  post_dir => 'StreetDirSuffix',
  prefix   => 'StreetDirPrefix',
  city     => 'City',
  state    => 'StateOrProvince',
  zip      => 'PostalCode',
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
