package MLS::Resource::Matrix::cmls2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'cmls2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'http://matrixrets.carolinamls.com/rets/login.ashx',
  username  => 'idxRaelstrom',
  password  => 'Zj0Y9g34'
});

$MLS::Config::Mutation::OFFSET_SIZE = 5000;

1;