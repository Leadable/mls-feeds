package MLS::Resource::Matrix::ntreis2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'ntreis2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'matrixrets.ntreis.net/rets/login.ashx',
  username   => 'ListingPagesTech',
  password   => 'wKVzE9x',
  user_agent => 'Raelstrom-1.0',
});

if (!$MLS::Config::Mutation::OFFSET_SIZE) {
    $MLS::Config::Mutation::OFFSET_SIZE = 2500;
}

if (!$MLS::Config::Row::OFFSET_SIZE) {
    $MLS::Config::Row::OFFSET_SIZE = 2500;
}

1;