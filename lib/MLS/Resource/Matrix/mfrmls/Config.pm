package MLS::Resource::Matrix::mfrmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'mfrmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://rets.mfrmls.com/contact/rets/login',
  username  => 'RETS704',
  password  => 'c6AsPUf3',
  use_logout => 1,
});

$MLS::Config::Mutation::OFFSET_SIZE = 5000;

1;