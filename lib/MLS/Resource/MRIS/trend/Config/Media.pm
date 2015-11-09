package MLS::Resource::MRIS::trend::Config::Media;
use strict;

use MLS::Resource::MRIS::trend::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Media';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'PropMediaKey' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'PropMediaModificationTimestamp');

# RETS Resource Classes
my $search = MLS::Resource::Utils::get_search_interval();
%MLS::Config::CLASSES = (
  PROP_MEDIA => { StandardName => 'TREND Property Media', 'SearchRequest' => $search },
);

1;
