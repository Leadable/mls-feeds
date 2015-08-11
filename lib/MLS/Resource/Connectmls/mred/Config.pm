package MLS::Resource::Connectmls::mred::Config;

use strict;

use MLS::Rets;
use Geo::StreetAddress::US;

# MLS identifier
$MLS::Config::MLS = 'mred';

# Location of logging
$MLS::Config::LOG_DIR = "/tmp/log/$MLS::Config::MLS";

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://connectmls-rets.mredllc.com/rets/server/login',
  username   => 'RETS_O_8100',
  password   => 'wjtm7wp5',
  user_agent => 'ListingPages/1.0',
});

$MLS::Config::Mutation::OFFSET_SIZE = 100000;
# $MLS::Config::Row::OFFSET_SIZE = 1000;

$MLS::Config::AZURE_STORAGE = 'leadablestoruseast2';

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

# google api key
$MLS::Config::GOOGLE_ACCESS_TOKEN = 'AIzaSyBlCGd2SaHPDnG8A5nPjGsEKt4WZ8vXbic';

1;