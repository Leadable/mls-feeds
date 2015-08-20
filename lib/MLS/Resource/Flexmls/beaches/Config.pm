package MLS::Resource::Flexmls::beaches::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'beaches';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://retsgw.flexmls.com/rets2_1/Login',
  username  => 'fl.rets.dbarr',
  password  => 'dbarr'
});

$MLS::Config::Mutation::OFFSET_SIZE = 100000;
$MLS::Config::Row::OFFSET_SIZE = 1000;

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

1;