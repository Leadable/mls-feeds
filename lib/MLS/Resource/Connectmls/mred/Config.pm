package MLS::Resource::Connectmls::mred::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'mred';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://connectmls-rets.mredllc.com/rets/server/login',
  username   => 'RETS_O_8100',
  password   => 'wjtm7wp5',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 100000;
# $MLS::Config::Row::OFFSET_SIZE = 1000;

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

1;