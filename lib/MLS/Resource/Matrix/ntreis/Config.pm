package MLS::Resource::Matrix::ntreis::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'ntreis';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'matrixrets.ntreis.net/rets/login.ashx',
  username   => 'ListingPagesTech',
  password   => 'wKVzE9x',
  user_agent => 'Raelstrom-1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 2500;
$MLS::Config::Row::OFFSET_SIZE = 2500;

1;