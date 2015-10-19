package MLS::Resource::Paragon::pensacola2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'pensacola2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://parmls.rets.paragonrels.com/rets/fnisrets.aspx/PARMLS/login',
  username   => 'LPT',
  password   => 'hE90mkl9',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 2500;
# $MLS::Config::Row::OFFSET_SIZE = 1000;

1;