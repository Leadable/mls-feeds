package MLS::Resource::MRIS::trend::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'trend';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://trend.trendrets.com:6103/platinum/login',
  username   => 'TRNRAELSTM',
  password   => 'uN2NoX',
  user_agent => 'MRIS Conduit/1.1',
});

#$MLS::Config::Mutation::OFFSET_SIZE = 2500;
# $MLS::Config::Row::OFFSET_SIZE = 1000;

1;