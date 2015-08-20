package MLS::Resource::Connectmls::mred::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'mred';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://connectmls-rets.mredllc.com/rets/server/login',
  username   => 'RETS_O_8100',
  password   => 'wjtm7wp5',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 100000;
# $MLS::Config::Row::OFFSET_SIZE = 1000;

1;