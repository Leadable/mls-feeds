package MLS::Resource::RealTracs::mtrmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'mtrmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://rets.realtracs.com:6103/rets/login',
  username  => 'JIngersoll',
  password  => '387725',
  user_agent => 'JIngersoll/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 250;
$MLS::Config::Row::OFFSET_SIZE = 250;

1;