package MLS::Resource::Retsiq::crmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'crmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'https://rets.crmls.org/contact/rets/login',
  username  => 'LISTINGPAGES',
  password  => 'dri7c-Atr'
});

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

1;