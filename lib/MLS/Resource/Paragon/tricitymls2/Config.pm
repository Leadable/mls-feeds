package MLS::Resource::Paragon::tricitymls2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'tricitymls2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://pacmls-rets.paragonrels.com/rets/fnisrets.aspx/PACMLS/login',
  username   => 'ListingPages',
  password   => 'peach_blossom',
});

1;