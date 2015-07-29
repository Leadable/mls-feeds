#!/usr/bin/env perl
use FindBin;
use lib "blib/lib", "blib/arch", "$FindBin::Bin/../lib";

use strict;

use Data::Dumper;
use Mojo::Template;
use Mojolicious::Lite;
use MLS::Database;
use File::Basename;

# have to do this outside of the handlers for some reason
my $SCRIPT_DIR = $FindBin::Bin;

my $dbh = MLS::Database->new({db => 'feeds'});

my @view_cols = qw(
  listing_id
  listing_type
  sold_price
  sold_date
  __geo_geom
  __geo_modified_at
  __inserted_at
  __percent_reduced
  __price_history_times
  __price_history_vals
  __price_updated_at
  __removed_at
  __status_history_times
  __status_history_vals
  __status_updated_at
  garage
  under_contract
  under_contract_description
  __active
  __geo_outlier
  __modified_at
  acres
  address_line1
  address_line2
  age
  baths_total
  beds
  city
  county
  display_address
  fireplace
  image_count
  latitude
  longitude
  mls
  mlsnum
  patio_deck_porch
  price
  remarks
  state
  status
  type
  year_built
  zip
  basement
  fenced_yard
  modification_timestamp
  square_feet
  waterfront
  pool
  subdivision
  office_name
  virtual_tour
  elementary_school
  high_school
  middle_school
  city_st
  walk_in_closets
  feature_exterior_features[]
  feature_interior_features[]
  ranch_style
  double_vanity
  feature_appliances[]
  school_district
  feature_heating[]
  __major_area
  __minor_area
  feature_style[]
  feature_cooling[]
  feature_roof[]
  feature_baths_half
  feature_water[]
  feature_basement[]
  feature_fireplace[]
  feature_parking[]
  complex
  feature_pool[]
  one_story
  feature_amenities[]
  township
  feature_improvements[]
  feature_garage[]
  feature_lot_description[]
  feature_construction[]
  feature_directions
  feature_floors[]
  feature_furnished
  feature_tax_year
  feature_area
  feature_new_construction
  feature_pets_allowed
  feature_sewer[]
  lake
  __class_name
  feature_utilities[]
  feature_accessibility_features[]
  feature_lot_dimensions
  feature_security_deposit
  feature_topography[]
  feature_zoning
  feature_air_conditioning[]
  feature_flooring[]
  feature_pet_deposit
  feature_rooms[]
  feature_style
  feature_view[]
);

get '/:mls/get_view' => sub {
  my $c = shift;

  my $mls = $c->param('mls');
  my $table = 'Property';

  my $boiler_plate_cols = join ",\n", @view_cols;

  my $sql = qq|
    DROP VIEW IF EXISTS $mls.view_property CASCADE;
    CREATE VIEW $mls.view_property AS
    SELECT '$mls'::text AS mls,

    $boiler_plate_cols

    FROM $mls."$table"
    JOIN $mls.mutation ON $mls."$table"."__<PRIMARY_KEY_COL>__"::text = $mls.mutation.remote_id::text AND
         $mls.mutation.last_transaction_completed_at is not null
  |;

  $c->render(
    template => 'get_view',
    sql => $sql,
  );
};

get '/:mls/view_data/:col' => sub {
  my $c = shift;

  my $mls = $c->param('mls');
  my $col = $c->param('col');
  my $class = $c->param('class_name');
  my $table = 'Property';

  my $type = $dbh->selectcol_arrayref(qq|
    SELECT format_type(atttypid, atttypmod)
    FROM   pg_attribute
    WHERE  attrelid = '$mls."$table"'::regclass
    AND    attnum > 0
    AND    NOT attisdropped
    AND    attname = '$col'
    ORDER BY attname asc;
  |)->[0];

  my $comment = $dbh->selectcol_arrayref(qq|
    SELECT pgd.description
    FROM pg_catalog.pg_statio_all_tables as st
    inner join pg_catalog.pg_description pgd on (pgd.objoid=st.relid)
    inner join information_schema.columns c on (pgd.objsubid=c.ordinal_position
    and  c.table_schema=st.schemaname and c.table_name=st.relname)
    WHERE table_schema = '$mls' and table_name = '$table' and column_name = '$col';
  |)->[0];

  my $where = '';
  if (defined $class) {
    $where = qq|WHERE __class_name = '$class'|;
  }

  my $col_select_sql = qq|SELECT DISTINCT "$col" FROM $mls."$table" $where order by "$col" asc;|;
  my $rs = $dbh->selectcol_arrayref($col_select_sql);

  foreach (@$rs) {
    if (! defined $_) {
      $_ = 'NULL';
    }
    elsif (ref $_ eq 'ARRAY') {
      $_ = join ", ", @$_;
    }
  }

  my @col_res = @$rs;

  my $class_select_sql = qq|SELECT __class_name as name, count("$col") FROM $mls."$table" group by "__class_name";|;
  $rs = $dbh->selectall_arrayref($class_select_sql, { Slice => {} });
  my @class_res = map {"$_->{name}: $_->{count}"}
                  sort {$a->{name} cmp $b->{name}} @$rs;

  $c->render(
    template  => 'view_data',
    mls       => $mls,
    table     => $table,
    column    => $col,
    comment   => $comment,
    type      => $type,
    col_sql   => $col_select_sql,
    class_sql => $class_select_sql,
    col_res   => \@col_res,
    class_res => \@class_res,
  );

};

get '/:mls' => sub {
  my $c = shift;

  my $mls = $c->param('mls');
  my $table = 'Property';

  my $rs = $dbh->selectall_arrayref(qq|
    SELECT a.attname as name, b.comment from
    (
      SELECT attname
      FROM   pg_attribute
      WHERE  attrelid = '$mls."Property"'::regclass
      AND    attnum > 0
      AND    NOT attisdropped
    ) a
    left join
    (
        SELECT c.column_name as name,pgd.description as comment
        FROM pg_catalog.pg_statio_all_tables as st
        inner join pg_catalog.pg_description pgd on (pgd.objoid=st.relid)
        inner join information_schema.columns c on (pgd.objsubid=c.ordinal_position
        and  c.table_schema=st.schemaname and c.table_name=st.relname)
        WHERE table_schema = '$mls' and table_name = 'Property'
    ) b
    on a.attname = b.name
    ORDER BY name asc;
  |, { Slice => {} });

  my @cols = sort {$a->{name} cmp $b->{name}} @$rs;

  $c->render(
    template => 'view_columns',
    mls => $mls,
    table => $table,
    columns => \@cols,
  );
};

get '/' => sub {
  my $c = shift;

  my @mls_list = map {basename $_}
                 split "\n", `find $SCRIPT_DIR/../lib/MLS/Resource -type d -maxdepth 2 -mindepth 2`;

  $c->render(
    template => 'main',
    mls_list => [sort @mls_list]
  );
};

1;

app->start;

__DATA__

@@ main.html.ep
<!DOCTYPE html>
<html>
<div>
<h2> Setup a view for: </h2>
  % foreach (@$mls_list) {
    <a href="<%= $_ %>/"><%= $_ %></a><br>
  % }
</div>
</html>

@@ get_view.html.ep
<!DOCTYPE html>
<html>
<pre>
  <%= $sql %>
</pre>
</html>

@@ view_columns.html.ep
<!DOCTYPE html>
<html>
<h3> Columns for <%= $mls %>.<%= $table %> </h3>
<div>
  % foreach (@$columns) {
    <a href="view_data/<%= $_->{name} %>" target="_blank"><%= $_->{name} %></a> <%= defined $_->{comment} ? "($_->{comment})" : '' %><br>
  % }
</div>
</html>

@@ view_data.html.ep
<!DOCTYPE html>
<html>
<h3> <%= $mls %>::<%= $table %>::<%= $column %>::<%= $type %> (<%= $comment %>) </h3>
<h4> <%= $col_sql %> </h4>
<div style="height:400px;width:400px;border:1px solid #ccc;overflow:auto;">
  % foreach (@$col_res) {
    <%= $_ %><br>
  % }
</div>
<br>
<h4> <%= $class_sql %> </h4>
<div style="height:400px;width:400px;border:1px solid #ccc;overflow:auto;">
  % foreach (@$class_res) {
    <%= $_ %><br>
  % }
</div>
</html>
