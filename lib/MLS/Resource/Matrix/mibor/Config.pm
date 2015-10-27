package MLS::Resource::Matrix::mibor::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'mibor';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://matrixrets.miborblc.com/rets/login.ashx',
  username   => '34269',
  password   => '1blossom',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 5000;
$MLS::Config::Row::OFFSET_SIZE = 5000;

1;
