package MLS::Resource::Matrix::cmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'cmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://matrixrets.carolinamls.com/rets/login.ashx',
  username  => 'idxRaelstrom',
  password  => 'Zj0Y9g34'
});

$MLS::Config::Mutation::OFFSET_SIZE = 5000;

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

1;