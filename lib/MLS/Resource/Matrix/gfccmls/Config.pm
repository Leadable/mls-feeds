package MLS::Resource::Matrix::gfccmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'gfccmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'matrixrets.ct-mls.com/rets/login.ashx',
  username   => 'listpageIDX',
  password   => 'bmltpg0813',
  user_agent => 'ListingPages/1.0',
});

# $MLS::Config::Mutation::OFFSET_SIZE = 5000;
# $MLS::Config::Row::OFFSET_SIZE = 5000;

1;