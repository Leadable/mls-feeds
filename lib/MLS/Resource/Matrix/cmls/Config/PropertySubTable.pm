package MLS::Resource::Matrix::cmls::Config::PropertySubTable;
use strict;

use MLS::Resource::Matrix::cmls::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'PropertySubTable';

# RETS Resource Classes
%MLS::Config::CLASSES = (
  Room   => { StandardName => 'Room', 'SearchRequest' => "(MatrixModifiedDT=1900-01-01+)" },
  Unit   => { StandardName => 'Unit', 'SearchRequest' => "(MatrixModifiedDT=1900-01-01+)" },
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'Listing_MUI' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'MatrixModifiedDT' );

1;
