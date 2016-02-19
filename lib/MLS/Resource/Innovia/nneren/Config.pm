package MLS::Resource::Innovia::nneren::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'nneren';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://nne.rets.mlxinnovia.com/nne/login',
  username   => '0711mon',
  password   => 'rVLE1KfQmDUl4WmlOYs1',
});

$MLS::Config::Mutation::OFFSET_SIZE = 2500;
$MLS::Config::Row::OFFSET_SIZE      = 2500;

1;
