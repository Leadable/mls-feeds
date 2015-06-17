use strict;

use DBI;
use Data::Dumper;

die "Missing argument [MLS]" unless $ARGV[0];
my $mls = $ARGV[0];
push @INC, "$mls/lib";

# Connect to feeds db
sub dbh {
  my $dbname = 'mls';
  my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
  my $port = $ENV{POSTGRES_PORT_5432_TCP_PORT};
  my $user = $ENV{POSTGRES_FEEDS_USER};
  my $pass = $ENV{POSTGRES_FEEDS_PASS};

  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => 1, RaiseError => 1, pg_server_prepare => 0 });
};

my $dbh = dbh();

my @cols = qw(
    __removed_at
    __class_name
    __photo_urls
    __geo_modified_at
);

my @resources = qw(Property);

foreach my $resource (@resources) {
    eval qq|require MLS::Config::$resource| or die "Could not find MLS::Config::$resource : $@\n";

    my $pkey = $MLS::Config::PRIMARY_KEY{SystemName};
    my $pkey_sql = $dbh->quote_identifier($pkey);

    $resource = $dbh->quote_identifier($resource);
    my $all_ids = $dbh->selectcol_arrayref("SELECT $pkey_sql from $mls.$resource");
    print "[" .scalar @$all_ids . "] records in $mls.$resource\n";

    my $row_mod_ts = $MLS::Config::ROW_MOD_TS_COLUMN{SystemName};
    my $img_mod_ts = $MLS::Config::IMG_MOD_TS_COLUMN{SystemName};

    my $cols_str = join ',',
                   map {$dbh->quote_identifier($_)}
                   (@cols, values %MLS::Config::ADDR_COLUMNS, $pkey, $row_mod_ts, $img_mod_ts);

    while (@$all_ids) {
        # chunk requests
        my $id_str = join ' OR ',
                     map {"$pkey_sql = " . $dbh->quote($_)}
                     splice @$all_ids, 0, 5000;

        my $sql = "SELECT $cols_str from $mls.$resource where $id_str";

        my $rows = $dbh->selectall_arrayref($sql, { Slice => {} });
        foreach my $row (@$rows) {

            my %address;
            while (my ($col_name, $col_mapping) = each %MLS::Config::ADDR_COLUMNS) {
              $address{$col_name} = $row->{$col_mapping};
            }

            my $addr_str = $MLS::Config::ADDRESS_PROTO->(\%address);

            my $mutation_row = {
                remote_id         => $row->{$pkey},
                remote_row_mod_ts => $row->{$row_mod_ts},
                local_row_mod_ts  => $row->{$row_mod_ts},
                remote_img_mod_ts => $row->{$img_mod_ts},
                local_img_mod_ts  => $row->{__photo_urls} ? $row->{$img_mod_ts} : undef,
                remote_address    => $addr_str,
                local_address     => $row->{__geo_modified_at} ? $addr_str: undef,
                remote_removed_at => $row->{__removed_at},
                local_removed_at  => $row->{__removed_at},
                resource          => $resource,
                class             => $row->{__class_name},
                last_transaction_completed_at => 'NOW()',
                last_published_at             => undef,
            };

            my $insert_cols = join ',', map {$dbh->quote_identifier($_)} keys   %$mutation_row;
            my $insert_vals = join ',', map {$_ eq 'NOW()' ? $_ : $dbh->quote($_)} values %$mutation_row;
            $sql = "INSERT INTO $mls.mutation ($insert_cols) VALUES ($insert_vals)";
            $dbh->do($sql);
        }

    }
}

1;
