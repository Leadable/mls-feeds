package MLS::Resource::Paragon::wiregrass::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'wiregrass';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://wiregrass.rets.fnismls.com/rets/fnisrets.aspx/WIREGRASS/login',
  username   => 'bhancock',
  password   => 'firework',
});

1;