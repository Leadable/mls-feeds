package MLS::Resource::Matrix::wmls2::Config::PropertySubTable;
use strict;

use MLS::Resource::Matrix::wmls2::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'PropertySubTable';

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'matrix_unique_id' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'MatrixModifiedDT' );

my $search = MLS::Resource::Utils::get_search_interval();
# RETS Resource Classes
%MLS::Config::CLASSES = (
  Room   => { StandardName => 'Room', 'SearchRequest' => $search },
  Unit   => { StandardName => 'Unit', 'SearchRequest' => $search },
  Listing_Commercial_Space => { StandardName => 'Space', 'SearchRequest' => $search },
);

$MLS::Config::Mutation::OFFSET_SIZE = 5000;

1;
