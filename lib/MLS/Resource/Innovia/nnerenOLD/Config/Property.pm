package MLS::Resource::Innovia::nnerenOLD::Config::Property;
use strict;

use MLS::Resource::Innovia::nnerenOLD::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Property';

@MLS::Config::AREAS = qw(lee);

# Name of the RETS Resource Photo Object
$MLS::Config::OBJECT = 'HQPhoto';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'ListingID' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'ModificationTimestamp' );

# RETS Resource column that indicates photos updated for a listing
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'PhotoModificationTimestamp' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'ListingStatus' );

# RETS Resource price column
%MLS::Config::PRICE_COLUMN = ( SystemName => 'ListPrice' );

%MLS::Config::ADDR_COLUMNS = (
  street   => 'StreetNameIDX',
  number   => 'StreetNumberIDX',
  suffix   => 'StreetTypeIDX',
  city     => 'City',
  state    => 'StateOrProvince',
  zip      => 'PostalCode',
);

# RETS Resource Classes
my $search = '(ListingID=1+)';
%MLS::Config::CLASSES = (
    BoatDock            => { StandardName => 'BoatDock',            'SearchRequest' => $search },
    CommercialProperty  => { StandardName => 'Commercial Property', 'SearchRequest' => $search, ignore => 1 },
    Keeplist            => { StandardName => 'Keeplist',            'SearchRequest' => $search, ignore => 1 },
    MultiFamilyProperty => { StandardName => 'MultiFamily',         'SearchRequest' => $search, ignore => 1 },
    Rental              => { StandardName => 'Rental',              'SearchRequest' => $search },
    ResidentialProperty => { StandardName => 'ResidentialProperty', 'SearchRequest' => $search },
    VacantLand          => { StandardName => 'LotsAndLand',         'SearchRequest' => $search },
);

1;
