package MLS::Resource::Paragon::wiregrass::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'wiregrass';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://wiregrass.rets.fnismls.com/rets/fnisrets.aspx/WIREGRASS/login',
  username   => 'bhancock',
  password   => 'firework',
});

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

1;