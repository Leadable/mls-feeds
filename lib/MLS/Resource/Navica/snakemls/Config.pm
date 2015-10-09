package MLS::Resource::Navica::snakemls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'snakemls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://rets2.navicamls.net/login.aspx',
  username   => 'Rets359-050813',
  password   => 'Rets359SzR',
  user_agent => 'Raelstrom-1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 1000;
$MLS::Config::Row::OFFSET_SIZE = 1000;

1;