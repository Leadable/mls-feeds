package MLS::Resource::Paragon::pensacola::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'pensacola';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://parmls.rets.paragonrels.com/rets/fnisrets.aspx/PARMLS/login',
  username   => 'LPT',
  password   => 'hE90mkl9',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 2500;
# $MLS::Config::Row::OFFSET_SIZE = 1000;

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

1;