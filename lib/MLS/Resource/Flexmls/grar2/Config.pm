package MLS::Resource::Flexmls::grar2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'grar2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://retsgw.flexmls.com/rets2_1/Login',
  username   => 'ric.rets.listingpages',
  password   => 'fleam-th67',
  user_agent => 'ListPage/1.7',
});

#$MLS::Config::Mutation::OFFSET_SIZE = 100000;
#$MLS::Config::Row::OFFSET_SIZE = 1000;

1;