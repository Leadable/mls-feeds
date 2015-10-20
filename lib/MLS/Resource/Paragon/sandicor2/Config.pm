package MLS::Resource::Paragon::sandicor2::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'sandicor2';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://rets-paragon.sandicor.com/rets/fnisrets.aspx/sandicor/login',
  username   => '500587',
  password   => 'kR-#D8QN',
  user_agent => 'Mozilla/4.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 2500;
$MLS::Config::Row::OFFSET_SIZE      = 2500;

1;
