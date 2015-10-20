package MLS::Resource::Flexmls::armls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'armls';

# NOTE: 10/20/2015 ARMLS requires whitelisting IPs for access which needs to be done before this can be tested

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://retsgw.flexmls.com:6103/rets2_1/Login',
  username  => 'az.rets.gntr01b',
  password  => 'Circuitous-Route66'
});

$MLS::Config::Mutation::OFFSET_SIZE = 10000;
$MLS::Config::Row::OFFSET_SIZE = 10000;

1;