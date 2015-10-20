package MLS::Resource::Matrix::realcomp2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'realcomp2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://matrixrets.realcomponline.com/rets/login.ashx',
  username  => 'RAELSTROM',
  password  => 'RS_6tcp7w',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 5000;

1;