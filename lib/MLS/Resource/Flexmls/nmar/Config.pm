package MLS::Resource::Flexmls::nmar::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'nmar';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://retsgw.flexmls.com/rets2_1/Login',
  username   => 'nma.rets.krich',
  password   => 'piaba-pterous22',
  user_agent => 'LISTING-PAGES/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 100000;
$MLS::Config::Row::OFFSET_SIZE = 1000;

1;