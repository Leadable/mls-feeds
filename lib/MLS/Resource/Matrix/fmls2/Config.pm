package MLS::Resource::Matrix::fmls2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'fmls2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://fmlsrets.mlsmatrix.com/rets/login.ashx',
  username   => 'LSTPGS',
  password   => 'REW@t24',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 2500;
$MLS::Config::Row::OFFSET_SIZE = 2500;

1;