package MLS::Resource::Rapattoni::aarretsx::Config;

use strict;

use MLS::Rets;
use Geo::StreetAddress::US;

# MLS identifier
$MLS::Config::MLS = 'aarretsx';

# Location of logging
$MLS::Config::LOG_DIR = "/tmp/log/$MLS::Config::MLS";

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url    => 'http://rets172lax.raprets.com:6103/Annarbor/ANNA/login.aspx',
  username     => 'IDXAnn',
  password     => 'xio',
  user_agent   => 'IDXIO-1.0',
  rets_version => $librets::RETS_1_7_2,
});

$MLS::Config::Row::OFFSET_SIZE = 300;

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
