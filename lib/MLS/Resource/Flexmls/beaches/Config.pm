package MLS::Resource::Flexmls::beaches::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'beaches';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://retsgw.flexmls.com/rets2_1/Login',
  username  => 'fl.rets.dbarr',
  password  => 'dbarr'
});

$MLS::Config::Mutation::OFFSET_SIZE = 100000;
$MLS::Config::Row::OFFSET_SIZE = 1000;

1;