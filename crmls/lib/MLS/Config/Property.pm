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
#my $status = '(Status=|A,B,L,P,S)';
my $status = '(Status=|A,B)';
%MLS::Config::CLASSES = (
  Residential       => { StandardName => 'Residential',       'SearchRequest' => "(TimestampModified=1900-01-01+)" },
  Commercial        => { StandardName => 'Commercial',        'SearchRequest' => "(TimestampModified=1900-01-01+)" },
  Land              => { StandardName => 'Land',              'SearchRequest' => "(TimestampModified=1900-01-01+)" },
  Mobile            => { StandardName => 'Mobile',            'SearchRequest' => "", ignore => 1 },
  CrossProperty     => { StandardName => 'CrossProperty',     'SearchRequest' => "", ignore => 1 },
  ResidentialIncome => { StandardName => 'ResidentialIncome', 'SearchRequest' => "(TimestampModified=1900-01-01+)" },
  ResidentialLease  => { StandardName => 'ResidentialLease',  'SearchRequest' => "(TimestampModified=1900-01-01+)" },
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'ListingKey' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'TimestampModified' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'TimestampPhotoModified' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'Status' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListPrice' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetName',
  number   => 'StreetNumber',
  suffix   => 'StreetSuffix',
  post_dir => 'StreetDirectionSuffix',
  #prefix   => '',
  city     => 'City',
  state    => 'State',
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
