package MLS::Resource::Navica::millmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'millmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://rets2.navicamls.net/login.aspx',
  username   => 'Rets427-041513',
  password   => 'Rets427MzV',
  user_agent => 'Raelstrom-1.0',
});

# $MLS::Config::Mutation::OFFSET_SIZE = 100000;
# $MLS::Config::Row::OFFSET_SIZE = 1000;

1;