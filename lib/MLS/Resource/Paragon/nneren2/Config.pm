package MLS::Resource::Paragon::nneren2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'nneren2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://neren.rets.paragonrels.com/rets/fnisrets.aspx/NEREN/login',
  username   => '0711mon',
  password   => 'rVLE1KfQmDUl4WmlOYs1',
  rets_version => '1.7.2',
});

$MLS::Config::Mutation::OFFSET_SIZE = 2500;
$MLS::Config::Row::OFFSET_SIZE      = 2500;

1;