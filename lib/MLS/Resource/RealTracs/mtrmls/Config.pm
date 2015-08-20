package MLS::Resource::RealTracs::mtrmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'mtrmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://rets.realtracs.com:6103/rets/login',
  username  => 'JIngersoll',
  password  => '387725',
  user_agent => 'JIngersoll/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 250;
$MLS::Config::Row::OFFSET_SIZE = 250;

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

1;