package MLS::Resource::Connectmls::mred::Config::Property;
use strict;

use MLS::Resource::Connectmls::mred::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(bomba ebersole kelley mcdonnell);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'HrPhoto';

# RETS Resource Classes
my $search = '(RECORDMODDATE=1900-01-01+)';
%MLS::Config::CLASSES = (
  INTL                => { StandardName => 'International',        'SearchRequest' => $search },
  ResidentialProperty => { StandardName => 'Residential Property', 'SearchRequest' => $search },
  RentalHome          => { StandardName => 'Rentals',              'SearchRequest' => $search },
  LotsAndLand         => { StandardName => 'Lots and Land',        'SearchRequest' => $search },
  CommercialProperty  => { StandardName => 'Commercial',           'SearchRequest' => $search },
  OffMarket           => { StandardName => 'Off-Market Listings',  'SearchRequest' => $search, ignore => 1 },
  DeletedProperty     => { StandardName => 'Deleted Listings',     'SearchRequest' => $search, ignore => 1 },
  
  DE => { StandardName => 'Detached Single',                       'SearchRequest' => $search },
  AT => { StandardName => 'Attached Single',                       'SearchRequest' => $search },
  MH => { StandardName => 'Mobile Homes',                          'SearchRequest' => $search },
  MU => { StandardName => 'Two to Four Units',                     'SearchRequest' => $search },
  RN => { StandardName => 'Residential Rental',                    'SearchRequest' => $search },
  DP => { StandardName => 'Deeded Parking / Boat Slips',           'SearchRequest' => $search },
  VL => { StandardName => 'Vacant Land',                           'SearchRequest' => $search },
  MF => { StandardName => 'Multi Family',                          'SearchRequest' => $search },
  OI => { StandardName => 'Office/Tech',                           'SearchRequest' => $search },
  BU => { StandardName => 'Business / Business with Real Estate',  'SearchRequest' => $search },
  CO => { StandardName => 'Mixed Use',                             'SearchRequest' => $search },
  RS => { StandardName => 'Retail / Stores',                       'SearchRequest' => $search },
  OT => { StandardName => 'Instut / To Develop',                   'SearchRequest' => $search },
  IN => { StandardName => 'Industrial',                            'SearchRequest' => $search },
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'LN', DBName => 'LN' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'RECORDMODDATE', DBName => 'RECORD_MOD_DATE' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'PHOTODATE', DBName => 'PHOTODATE' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'ST', DBName => 'ST' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'LP', DBName => 'LP', RN => 'RP', RentalHome => 'RP', );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'STR',
  number   => 'HSN',
  suffix   => 'STREETSUFFIX',
  post_dir => {default => 'POST_DIRECTION', DP => ''},
  prefix   => 'CP',
  city     => 'CIT',
  state    => {default => 'STATE', INTL => 'INTLSTATE'},
  zip      => 'ZP',
);

# Make a closure with resource specific addr cols
$MLS::Config::ADDRESS = sub {
    my ($remote_row, $class) = @_;

    my %address;
    while (my ($col_name, $col_mapping) = each %MLS::Config::ADDR_COLUMNS) {

      if (ref $col_mapping eq 'HASH') {
        $col_mapping = defined $col_mapping->{$class} ? $col_mapping->{$class} : $col_mapping->{default};
      }

      $address{$col_name} = $remote_row->GetString($col_mapping) if ($col_mapping);
    }

    return $MLS::Config::ADDRESS_PROTO->(\%address);
};

1;
