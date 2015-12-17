package MLS::Resource::Matrix::wmls2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'wmls2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://cvrmls.mlsmatrix.com/RETS/login.ashx',
  username  => 'wbg.rets.2140',
  password  => 'wejM9R4E6',
});

$MLS::Config::Mutation::OFFSET_SIZE = 5000;

1;