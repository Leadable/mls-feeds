package MLS::Resource::Retsiq::ragfl::Config::ActiveAgent;
use strict;

use MLS::Resource::Retsiq::ragfl::Config;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'ActiveAgent';

# RETS Resource Classes
%MLS::Config::CLASSES = (
  Agent => { StandardName => 'AgentInfo', 'SearchRequest' => '(TIMESTAMP=1950-01-01T00:00:00+)'}
);

# RETS Resource Primary Key
%MLS::Config::PRIMARY_KEY = ( SystemName => 'MEMBER_0', DBName => 'techid' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'TIMESTAMP', DBName => 'TIMESTAMP' );

# There is no image modification column (but there are images), so just use timestamp
%MLS::Config::IMG_MOD_TS_COLUMN = ( SystemName => 'TIMESTAMP', DBName => 'TIMESTAMP' );

# RETS Resource status column
%MLS::Config::STATUS_COLUMN = ( SystemName => 'STATUS', DBName => 'STATUS' );

$MLS::Config::OBJECT = 'Photo';

1;
