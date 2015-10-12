package MLS::Resource::Matrix::ctmls2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'ctmls2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'rets.mymatrix.ctreal.com/rets/login.ashx',
  username   => 'LPAG200RETS',
  password   => '1327LP516',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 5000;
$MLS::Config::Row::OFFSET_SIZE = 5000;

1;