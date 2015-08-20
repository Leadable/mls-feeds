package MLS::Resource::Retsiq::ragfl::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'ragfl';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://ragfl.retsiq.com/contact/rets/login',
  username  => 'ListingTech',
  password  => 'W1Nt3R2015'
});

# Should be SystemName or DBName
$MLS::Config::Row::COLUMN_IDENTIFIER = 'DBName';

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

1;