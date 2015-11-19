package MLS::Resource::RealTracs::mtrmls::Config::Media;
use strict;

use MLS::Resource::RealTracs::mtrmls::Config;
use MLS::Resource::Utils;

# ID of the Rets Property Resource
$MLS::Config::RESOURCE = 'Media';

# NOTE: This isn't actually unique, there is no unique column in the
# MTRMLS media table, so we have to settle for MlsNum
%MLS::Config::PRIMARY_KEY = ( SystemName => 'MlsNum' );

# RETS Resource column that indicates listing updated
%MLS::Config::ROW_MOD_TS_COLUMN = ( SystemName => 'ModDate' );

my $search = MLS::Resource::Utils::get_search_interval();

# NOTE: Because MlsNum is not actually a primary key (see above), the sync_rows step
# will pull all Media rows for a listing, not just the virtual tour.
# Limiting the search by MediaType here prevents multiple rows with the same remote_id in the mutation table
%MLS::Config::CLASSES = (
  Media => { StandardName => 'Media', 'SearchRequest' => "($search,(MediaType=|vir))" },
);

1;
