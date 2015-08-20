package MLS::Resource::Rapattoni::aarretsx::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'aarretsx';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url    => 'http://rets172lax.raprets.com:6103/Annarbor/ANNA/login.aspx',
  username     => 'IDXAnn',
  password     => 'xio',
  user_agent   => 'IDXIO-1.0',
  rets_version => $librets::RETS_1_7_2,
});

$MLS::Config::Row::OFFSET_SIZE = 300;

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

1;
