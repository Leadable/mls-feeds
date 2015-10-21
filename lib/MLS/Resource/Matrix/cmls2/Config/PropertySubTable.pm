package MLS::Resource::Matrix::cmls2::Config::PropertySubTable;
use strict;

use MLS::Resource::Matrix::cmls2::Config;
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
);

$MLS::Config::Row::OFFSET_SIZE = 250;

1;
