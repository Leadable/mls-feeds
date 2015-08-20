package MLS::Resource::Matrix::ppmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'ppmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://ppmlsrets.mlsmatrix.com/rets/login.ashx',
  username   => 'L!stP@g3$',
  password   => '!nG3r$0l4#14',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 5000;

1;