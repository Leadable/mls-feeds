package MLS::Resource::Retsiq::crmls::Config::Property;
use strict;

use MLS::Resource::Retsiq::crmls::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(donovan glick_la_county paxson rubijevsky young);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'LargePhoto';

# RETS Resource Classes
my $search = '(TimestampModified=' . MLS::Resource::Utils::get_search_interval . ')';
%MLS::Config::CLASSES = (
  Residential       => { StandardName => 'Residential',       'SearchRequest' => $search },
  Commercial        => { StandardName => 'Commercial',        'SearchRequest' => $search },
  Land              => { StandardName => 'Land',              'SearchRequest' => $search },
  Mobile            => { StandardName => 'Mobile',            'SearchRequest' => "", ignore => 1 },
  CrossProperty     => { StandardName => 'CrossProperty',     'SearchRequest' => "", ignore => 1 },
  ResidentialIncome => { StandardName => 'ResidentialIncome', 'SearchRequest' => $search },
  ResidentialLease  => { StandardName => 'ResidentialLease',  'SearchRequest' => $search },
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
