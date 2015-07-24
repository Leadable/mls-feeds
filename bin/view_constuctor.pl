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
      WHERE  attrelid = 'beaches."Property"'::regclass
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
        WHERE table_schema = 'beaches' and table_name = 'Property'
    ) b
    on a.attname = b.name
    ORDER BY name asc;
  |, { Slice => {} });

  my @cols = sort {$a->{name} cmp $b->{name}} @$rs;

  $c->render(
    template => 'create_view',
    mls => $mls,
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

@@ create_view.html.ep
<!DOCTYPE html>
<html>
<h3> Setup view for <%= $mls %> </h3>
<div>
  % foreach (@$columns) {
    <a href="view_data/<%= $_->{name} %>"><%= $_->{name} %></a> <%= defined $_->{comment} ? "($_->{comment})" : '' %><br>
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
