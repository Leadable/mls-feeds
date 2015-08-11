package MLS::Resource::Flexmls::beaches::Config::Office;
use strict;

use MLS::Resource::Flexmls::beaches::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Office';

# RETS Resource Classes
%MLS::Config::CLASSES = (
  Office => { StandardName => 'OfficeInfo', 'SearchRequest' => '(TIMESTAMP=1950-01-01T00:00:00+)'}
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'OFFICE_0', DBName => 'techid' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'TIMESTAMP', DBName => 'TIMESTAMP' );

# There is no image modification column (but there are images), so just use timestamp
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'TIMESTAMP', DBName => 'TIMESTAMP' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'STATUS', DBName => 'STATUS' );

$MLS::Config::OBJECT = 'Photo';

%MLS::Config::ADDR_COLUMNS = (
  street   => 'OFFICE_10',
  city     => 'OFFICE_12',
  state    => 'OFFICE_13',
  zip      => 'OFFICE_14',
);

1;
