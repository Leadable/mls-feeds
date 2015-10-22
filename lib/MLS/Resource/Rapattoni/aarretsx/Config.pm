package MLS::Resource::Rapattoni::aarretsx::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'aarretsx';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url    => 'http://rets172lax.raprets.com:6103/Annarbor/ANNA/login.aspx',
  username     => 'IDXAnn',
  password     => 'xio',
  user_agent   => 'IDXIO-1.0',
  rets_version => '1.7.2',
});

$MLS::Config::Row::OFFSET_SIZE = 300;

1;
