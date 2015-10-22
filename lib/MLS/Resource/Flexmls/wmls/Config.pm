package MLS::Resource::Flexmls::wmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'wmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://retsgw.flexmls.com/rets2_1/Login',
  username   => 'wbg.rets.1283-5',
  password   => 'garad-stylar54',
  user_agent => 'LISTING-PAGES/1.0',
});

# $MLS::Config::Mutation::OFFSET_SIZE = 100000;
$MLS::Config::Row::OFFSET_SIZE = 100;

1;