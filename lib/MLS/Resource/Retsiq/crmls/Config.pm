package MLS::Resource::Retsiq::crmls::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'crmls';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'https://rets.crmls.org/contact/rets/login',
  username  => 'LISTINGPAGES',
  password  => 'dri7c-Atr'
});

1;