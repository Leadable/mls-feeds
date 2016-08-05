#!/usr/bin/env perl
use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../lib";

use Mojolicious::Lite;
use Mojo::JSON qw(j);
use DBI;
use Data::Dumper;
use CHI;

my $cache = CHI->new(
    driver => 'Memory',
    global => 0,
    expires_in => 300,
);

my @SERVERS = qw(
    leadable-east.eastus2.cloudapp.azure.com
    leadable-west.westus.cloudapp.azure.com
);

get '/' => {template => 'index'};

get 'get_mls_names' => sub {
    my $self = shift;

    my $data = get_mls_info();

    $self->render(json => [sort keys %$data]);
};

get 'get_mls_data' => sub {
    my $self = shift;

    my $mls = $self->param('mls');

    my $data    = get_mls_info();
    my $mls_dbh = get_mls_dbh($data->{$mls});

    my $sql = qq|
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
    |;

    my $rs = $mls_dbh->selectall_arrayref($sql, { Slice => {} });
    my @cols = sort {$a->{name} cmp $b->{name}} @$rs;

    my $pkey_sql = qq|
        SELECT a.attname
        FROM   pg_index i
        JOIN   pg_attribute a ON a.attrelid = i.indrelid
                             AND a.attnum = ANY(i.indkey)
        WHERE  i.indrelid = '$mls."Property"'::regclass
        AND    i.indisprimary
    ;|;

    my $pkey = $mls_dbh->selectrow_arrayref($pkey_sql)->[0];

    $self->render(json => {cols => \@cols, pkey => $pkey});
};

get 'get_col_data' => sub {
    my $self = shift;

    my $mls = $self->param('mls');
    my $col = $self->param('col');

    my $data    = get_mls_info();
    my $mls_dbh = get_mls_dbh($data->{$mls});

    my $count_sql = qq|SELECT __class_name as name, count("$col") FROM $mls."Property" GROUP BY "__class_name";|;
    my $count_rs  = $mls_dbh->selectall_arrayref($count_sql, {Slice => {}});

    my $sample_sql = qq|select "$col" from $mls."Property"  WHERE "$col" IS NOT NULL LIMIT 100;|;
    my $sample_rs  = $mls_dbh->selectcol_arrayref($sample_sql);

    $self->render(json => {count_rs => $count_rs, sample_rs => $sample_rs});
};

sub get_mls_dbh {
    my $host = shift;

    my $dbname = 'mls-db-owner';
    my $port = '32768';
    my $user = 'mls-db-owner';
    my $pass = 'zmWWhBDcusTvtq4Bbx5tQW9GAUSMhR3RuyAnghgV';

    my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

    return DBI->connect($connstr, $user, $pass, { AutoCommit => 1, RaiseError => 1, pg_server_prepare => 0 });
};

sub get_mls_info {
    my $servers = $cache->get('servers');

    if (!$servers) {
        $servers = {};

        my $schema_sql = qq|
            SELECT schema_name
            FROM information_schema.schemata
            WHERE
                schema_name NOT LIKE 'pg_%' AND
                schema_name NOT IN ('information_schema', 'topology', 'tiger', 'tiger_data', 'public')
        ;|;

        foreach my $host (@SERVERS) {
            my $mls_dbh = get_mls_dbh($host);
            my $mls_list = $mls_dbh->selectcol_arrayref($schema_sql);

            foreach my $mls_name (@$mls_list) {
                $servers->{$mls_name} = $host;
            }
        }

        $cache->set('servers', $servers);
    }

    return $servers;
}

app->start;

__DATA__

@@ index.html.ep
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.2.0/react.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/react/15.2.0/react-dom.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-core/5.8.34/browser.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.14.1/lodash.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/remarkable/1.6.2/remarkable.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.14.1/moment.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js" integrity="sha384-Plbmg8JY28KFelvJVai01l8WyZzrYWG825m+cZ0eDDS1f7d/js6ikvy1+X+guPIB" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/react-bootstrap/0.30.2/react-bootstrap.min.js"></script>
    <title>View Creator</title>
  </head>
  <body>
    <div id="content"></div>
    <script>window.App = {}</script>
    <script src="js/app.jsx" type="text/babel"></script>
    <script type="text/babel">
      ReactDOM.render(
        <App.Main/>
        , document.getElementById('content')
      );
    </script>
  </body>
</html>
