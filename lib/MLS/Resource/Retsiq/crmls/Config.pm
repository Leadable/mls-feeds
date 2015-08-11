package MLS::Resource::Retsiq::crmls::Config;

use strict;

use MLS::Rets;
use Geo::StreetAddress::US;

# MLS identifier
$MLS::Config::MLS = 'crmls';

# Location of logging
$MLS::Config::LOG_DIR = "/tmp/log/$MLS::Config::MLS";

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url => 'https://rets.crmls.org/contact/rets/login',
  username  => 'LISTINGPAGES',
  password  => 'dri7c-Atr'
});

$MLS::Config::AZURE_STORAGE = 'leadablestoruswest2';

# bucket name for photos
$MLS::Config::PHOTO_STORAGE_BUCKET = 'dfo-photos';

# bucket name for SQL diffs
$MLS::Config::PUBLISH_STORAGE_BUCKET = 'dfo-publish';

# bucket name for monitor logging
$MLS::Config::LOG_STORAGE_BUCKET = 'dfo-log';

# mapbox.com api key
$MLS::Config::MAPBOX_ACCESS_TOKEN = 'pk.eyJ1IjoibGlzdGluZ3AiLCJhIjoiOFVKOENBTSJ9.fcoVMMQ5M0HQDSR0owQ8OQ';

# bing api key
$MLS::Config::BING_ACCESS_TOKEN = 'AgY1iwb6H-_GidP_6n9GaPGlOPbdeuDJguMoGVKsbGrj8lfqury1agX4UEeXjZu4';

1;