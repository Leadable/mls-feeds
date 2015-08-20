package MLS::Resource::Paragon::wiregrass::Config;

use strict;

use MLS::Rets;

# MLS identifier
$MLS::Config::MLS = 'wiregrass';

# RETS session object
$MLS::Config::RETS = MLS::Rets->new({
  login_url  => 'http://wiregrass.rets.fnismls.com/rets/fnisrets.aspx/WIREGRASS/login',
  username   => 'bhancock',
  password   => 'firework',
});

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