package MLS::Resource::Publish;

use strict;
use warnings;

use Data::Dumper qw(Dumper);
use Digest::MD5 qw(md5_hex);
use Mojo::JSON qw(j);
use File::Temp qw(tempfile);
use File::Basename;
use Compress::Zlib qw(gzopen Z_BEST_COMPRESSION);
use Encode qw(encode_utf8);

$| = 1;

my %INDEXABLE_COLUMNS;

map {$INDEXABLE_COLUMNS{$_} = 1}
qw(
    __removed_at
    __active
    age
    __inserted_at
    __modified_at
    __price_updated_at
    __percent_reduced
    __geo_geom
    __geo_outlier
    id
    listing_id
    mlsnum
    status
    sold_date
    sold_price
    under_contract
    price
    price_per_sqft
    beds
    type
    baths_total
    address_line1
    city
    city_st
    zip
    square_feet
    year_built
    acres
    garage
    basement
    fireplace
    fenced_yard
    waterfront
    one_story
    pool
    patio_deck_porch
    walk_in_closets
    double_vanity
    __minor_area
    __major_area
    subdivision
    elementary_school
    middle_school
    high_school
    office_name
    "feature_private_pool[]"
    feature_governing_body
    feature_pets_allowed
    "feature_restrictions[]"
    __geo_neigh
    listing_type
);

sub new {
  my ($class, $opts) = @_;

  return bless $opts, $class;
}

sub go {
    my ($self) = @_;

    print "----Generate Publish Data [$self->{id}]---\n\n";
    $self->{id_lists} = {new => [], updated => []};

    $self->{id} = lc $self->{id};

    # This is the name of our local view
    # and also the table in the live db for this data
    $self->{view} = "$MLS::Config::MLS.view_$self->{id}";

    # these are the two sets of data that will be compared
    $self->{new_data_materialized} = $self->{view} . '_new_materialized';
    $self->{materialized}          = $self->{view} . '_materialized';

    # create a materialized view of the new data so selecting is fast
    print "Creating $self->{new_data_materialized}...\n";
    $self->{dbh}->do(qq|
        DROP MATERIALIZED VIEW IF EXISTS $self->{new_data_materialized};
        CREATE MATERIALIZED VIEW $self->{new_data_materialized} as SELECT * from $self->{view};
        CREATE INDEX idx_view_$self->{id}_new ON $self->{new_data_materialized} USING BTREE ("listing_id");
    |);

    $self->{prev_version} = $self->get_prev_version || '0';
    if (!$self->{prev_version}) {
        print "Materialized table does not exist, forcing rebuild\n";
        $self->{force_rebuild} = 1;
    }

    # live table is the name of the table on the live db where the data will be stored
    # for rebuilds, store in a temporary table which is later replaced
    if ($self->{force_rebuild}) {
        $self->{live_table} = $self->{view} . '_new';
    }
    else {
        $self->{live_table} = $self->{view};
    }

    # schema needed for build_id_lists and add_rebuild_sql
    $self->get_schema;

    # compare md5 of data from both tables to see if this should proceed
    print "Checking for data differences...\n";
    if (!$self->is_data_change) {
        print "Tables are equivalent, no need to continue\n";
        $self->finish();
        return;
    }

    # Compare key columns of view with materialized view data
    $self->build_id_lists;

    # compile list of instructions based on this
    my $sql_to_write = $self->generate_row_data;

    # add to our SQL diff if doing a full rebuild
    if ($self->{force_rebuild}) {
        $sql_to_write = $self->add_rebuild_sql($sql_to_write);
    }
    elsif ($MLS::Config::RESOURCE eq 'Property') {
        $sql_to_write .= "REFRESH MATERIALIZED VIEW CONCURRENTLY $self->{view}_mv_active;\n";
    }

    # use time as a version string
    my $version = $self->{version} = time;
    $sql_to_write .= qq|COMMENT ON table $self->{view} is '$version';\n|;

    $sql_to_write = encode_utf8($sql_to_write);
    my $gz_filename = $self->compress_sql($sql_to_write);

    # dump .sql file to somewhere
    $self->store_diff($gz_filename);

    print "Refreshing materialized view...\n";

    # update the materialized view
    $self->{dbh}->do(qq|
        BEGIN;
        DROP MATERIALIZED VIEW IF EXISTS $self->{materialized};
        ALTER MATERIALIZED VIEW $self->{new_data_materialized} RENAME TO view_$self->{id}_materialized;
        COMMENT ON MATERIALIZED VIEW $self->{materialized} IS '$version';
        ALTER INDEX $MLS::Config::MLS.idx_view_$self->{id}_new RENAME TO idx_view_$self->{id};
        COMMIT;
    |);

    # add a row to the live publish table
    $self->insert_publish_table;

    $self->finish();
}

sub finish {
    my $self = shift;

    my $totals = {
        new     => scalar @{$self->{id_lists}{new}},
        updated => scalar @{$self->{id_lists}{updated}},
    };

    $self->monitor($self->{id} . '_new', $totals->{new});
    $self->monitor($self->{id} . '_updated', $totals->{updated});

    print "\nReport:\n";
    print Dumper $totals;
    print "\n[DONE]\n\n";
}

sub monitor {
    my($self, $key, $value) = @_;

    my $monitor = $self->{monitor} or return;
    $monitor->status({ namespace => ['Publish'], key => $key, value => $value });
}

# gets the comment on the materialized table
sub get_prev_version {
    my $self = shift;

    my $dbh = $self->{dbh};

    my $sth = $dbh->table_info('', $MLS::Config::MLS, "view_$self->{id}_materialized");
    $sth->execute;
    my $result = $sth->fetchrow_hashref;

    if ($result) {
        return $result->{REMARKS};
    }

    return;
}

sub get_schema {
    my $self = shift;

    my $dbh = $self->{dbh};

    my $new_schema = $dbh->selectall_arrayref(qq|
        SELECT attname, format_type(atttypid, atttypmod)
        FROM   pg_attribute
        WHERE  attrelid = '$self->{new_data_materialized}'::regclass
        AND    attnum > 0
        AND    NOT attisdropped
        ORDER BY attname asc;|
    );

    # format schema for publish later
    $self->{new_schema} = [
        map {
            { col_name => $_->[0], col_type => $_->[1] }
        } @$new_schema
    ];
}

sub is_data_change {
    my $self = shift;

    my $dbh = $self->{dbh};

    my @key_cols = qw(__modified_at __removed_at __inserted_at);
    my $cols_str =
        join ',',
        map {"extract(epoch from $_) as $_"} @key_cols;

    my $new_rs = $self->{new_rs} = $dbh->selectall_hashref("SELECT $cols_str,listing_id from $self->{new_data_materialized}", 'listing_id');

    my $old_rs = {};
    if (!$self->{force_rebuild}) {
        $old_rs = $self->{old_rs} = $dbh->selectall_hashref("SELECT $cols_str,listing_id from $self->{materialized}", 'listing_id');
    }

    print scalar(keys %$new_rs) ." records in new view\n";
    print scalar(keys %$old_rs) ." records in old view\n";

    # initialize potentially null values
    foreach my $row_data (values %$new_rs, values %$old_rs) {
        foreach my $row_val (values %$row_data) {
            $row_val ||= 0;
        }
    }

    $self->{new_data_md5} = do_md5sum_data($new_rs);
    $self->{old_data_md5} = do_md5sum_data($old_rs);

    return $self->{new_data_md5} ne $self->{old_data_md5};
}

sub build_id_lists {
    my $self = shift;

    my $new_rs = $self->{new_rs};
    my $old_rs = $self->{old_rs};

    foreach my $id (keys %$new_rs) {
        # new listings
        if (! defined $old_rs->{$id}) {
            push @{$self->{id_lists}{new}}, $id;
        }
        else {
            # modified, removed, resurrected all require updating the row
            if ($new_rs->{$id}{__modified_at} != $old_rs->{$id}{__modified_at} ||
                $new_rs->{$id}{__removed_at}  != $old_rs->{$id}{__removed_at}) {
                push @{$self->{id_lists}{updated}}, $id;
            }
        }
    }
}

sub do_md5sum_data {
    my $table_data = shift;

    # sort by keys (listing id) here so data is always in same order
    return md5_hex(
        map {
            $table_data->{$_}{listing_id} .
            $table_data->{$_}{__inserted_at} .
            $table_data->{$_}{__modified_at} .
            $table_data->{$_}{__removed_at}
        } sort keys %$table_data
    );
}

sub generate_row_data {
    my $self = shift;

    my $dbh = $self->{dbh};

    my $return_sql = '';
    my @new_ids     = @{$self->{id_lists}{new}};
    my @updated_ids = @{$self->{id_lists}{updated}};

    my @col_names = map {$_->{col_name}} @{$self->{new_schema}};
    my $col_str = join ',',
                  map {$dbh->quote_identifier($_)} @col_names;

    # new
    if (scalar @new_ids) {
        print 'Getting [' . scalar(@new_ids) . "] new records (1000 at a time)\n";
        while (@new_ids) {
            # chunk requests
            my @ids = splice @new_ids, 0, 1000;

            my $new_ids_str = join ' OR ',
                              map {"listing_id = " . $dbh->quote($_)} @ids;
            my $new_rs = $dbh->selectall_arrayref("SELECT * from $self->{new_data_materialized} where $new_ids_str", {Slice => {}});

            foreach my $row (@$new_rs) {
                my $vals = join ',',
                           map {$dbh->quote($row->{$_})} @col_names;
                $row = "($vals)";
            }

            my $vals = join ",\n", @$new_rs;
            $return_sql .= qq|INSERT INTO $self->{live_table} ($col_str) VALUES $vals;\n|;

            print 'Remaining: [' . scalar(@new_ids) . "]\n";
        }
    }

    # updated
    if (scalar @updated_ids) {
        print 'Getting [' . scalar(@updated_ids) . "] updated records (5000 at a time)\n";
        while (@updated_ids) {
            # chunk requests
            my @ids = splice @updated_ids, 0, 5000;

            my $update_ids_str = join ' OR ',
                              map {"listing_id = " . $dbh->quote($_)} @ids;
            my $update_rs = $dbh->selectall_arrayref("SELECT * from $self->{new_data_materialized} where $update_ids_str", {Slice => {}});
            $return_sql .= join "\n",
                           map {$self->format_row_data($_, $dbh)} @$update_rs;
            $return_sql .= "\n";

            print 'Remaining: [' . scalar(@updated_ids) . "]\n";
        }
    }

    return $return_sql;

}

# Formats a row in hash form for the diff
sub format_row_data {
    my ($self, $row_data, $dbh) = @_;

    my $cols_str = join ',',
                   map {$dbh->quote_identifier($_)} keys %$row_data;

    my $vals_str = join ',',
                   map {$dbh->quote($_)} values %$row_data;

    my $where_sql = 'l.listing_id = ' . $dbh->quote($row_data->{listing_id});

    return qq|UPDATE $self->{live_table} as l SET ($cols_str) = ($vals_str) WHERE $where_sql;|;
}

sub add_rebuild_sql {
    my ($self, $sql) = @_;

    # build new table to house the data
    # later it will atomically replace current table
    my $schema = $self->{new_schema};
    my $index_sql = $self->generate_index_sql($schema, "view_$self->{id}");
    my $extra_sql = get_extra_sql("view_$self->{id}");
    my $create_view_sql = $self->generate_view_sql;

    my $cols = join ',',
               map {$self->{dbh}->quote_identifier($_->{col_name}) . ' ' . $_->{col_type}} @$schema;
    my $new_table_sql = qq|CREATE TABLE $self->{live_table} ($cols);|;

    my $mv_table_sql = qq|DROP TABLE IF EXISTS $self->{view} CASCADE; ALTER TABLE $self->{live_table} RENAME TO "view_$self->{id}";|;

    return qq|
      BEGIN;
      $new_table_sql
      $sql
      $mv_table_sql
      $extra_sql
      $create_view_sql
      $index_sql
      COMMIT;
    |;
}

sub generate_view_sql {
    my $self = shift;

    my $mv_active = '';
    if ($MLS::Config::RESOURCE eq 'Property') {
        $mv_active = qq|
            CREATE MATERIALIZED VIEW $self->{view}_mv_active AS SELECT * FROM $self->{view} WHERE
            $self->{view}.__active AND (
                ($self->{view}.listing_type = ANY (ARRAY['for_sale'::text, 'for_rent'::text])) OR

                (($self->{view}.listing_type = ANY (ARRAY['sold'::text, 'leased'::text])) AND
                $self->{view}.sold_date::timestamp without time zone >= (now() - '6 mons'::interval))
            );
        |;
    }

    return qq|
        CREATE VIEW $self->{view}_mv AS SELECT * FROM $self->{view};
        $mv_active
    |;
}

sub generate_index_sql {
  my ($self, $schema) = @_;

  my $dbh = $self->{dbh};
  my @indexes;
  my $id = 1;

  # create indexes on the full table and the active view
  my @tables = ($self->{view});

  if ($MLS::Config::RESOURCE eq 'Property') {
    push @tables, "$self->{view}_mv_active";
  }

  foreach my $table (@tables) {
      foreach my $col (@$schema) {
        next if (!$INDEXABLE_COLUMNS{$col->{col_name}});

        my $idx_type;
        if ($col->{col_type} eq 'geometry') {
          $idx_type = 'GIST';
        }
        elsif ($col->{col_type} =~ /\[\]/) {
          $idx_type = 'GIN'
        }
        else {
          $idx_type = 'BTREE';
        }

        my $index_name = $dbh->quote_identifier(
          join '_', ('idx', $col->{col_name}, $id++)
        );

        my $col_name = $dbh->quote_identifier($col->{col_name});

        my $unique = ($col->{col_name} eq 'listing_id' && $MLS::Config::RESOURCE eq 'Property') ? 'UNIQUE' : '';

        my $index = qq|CREATE $unique INDEX $index_name ON $table USING $idx_type ($col_name);|;
        push @indexes, $index;
      }
    }

  my $sql = join "\n", @indexes;
  return $sql;
}

# extra sql could include comments, creation of views, etc
sub get_extra_sql {
  my $name = shift;

  my $file = "$FindBin::Bin/../../sql/$MLS::Config::MLS/extra/$name.sql";
  return '' if (! -e $file);

  open (my $fh, '<', $file) or
    die "Could not open [$file] for read: $!";

  # slurp file into $sql
  my $sql;
  {
    local $/ = undef;
    $sql = <$fh>;
  }

  return $sql;
}

sub compress_sql {
    my ($self, $sql) = @_;

    print "Compressing file..\n";

    my ($fh, $filename) = tempfile(
        TEMPLATE => "$MLS::Config::MLS-$self->{id}-data-XXXXXXXX",
        DIR      => '/tmp',
        SUFFIX   => '.sql.gz',
        UNLINK   => 1,
    );

    # write file with max compression
    my $gz = gzopen($fh, 'wb9') or
        die "Could not open gzip file for write";

    my $md5_json = j({old => $self->{old_data_md5}, new => $self->{new_data_md5}});
    $gz->gzwrite("--$md5_json\n");
    $gz->gzwrite($sql);
    die "there was a problem flushing [$filename]" if ($gz->gzclose);

    return $filename;
}

sub store_diff {
    my ($self, $filename) = @_;

    print "Storing diff...\n";

    my $storage_client = $self->{storage_client};
    open (my $fh, '<', $filename)
        or die "Could not open file [$filename]";

    # store file in 10M chunks
    my $buffer;
    while (read($fh, $buffer, 10000000)) {

        my ($part_fh, $part_filename) = tempfile(
            TEMPLATE => "$MLS::Config::MLS-$self->{id}-data-XXXXXXXX",
            DIR      => '/tmp',
            SUFFIX   => '.sql.gz',
            UNLINK   => 1,
        );

        # store buffer in file
        print $part_fh $buffer;
        close $part_fh;

        my $url = $storage_client->store_file({
          source_filename => $part_filename,
          dest_filename   => "$MLS::Config::MLS/" . basename($part_filename),
          content_type    => 'text/plain',
        });

        push @{$self->{data_file_url}}, $url;
        print "File uploaded to: [$url]\n";
    }

}

sub insert_publish_table {
    my $self = shift;

    my $dbh = $self->{tools_dbh};

    my %row_data = (
        mls               => $MLS::Config::MLS,
        resource          => $MLS::Config::RESOURCE,
        area              => $self->{id},
        full              => $self->{force_rebuild} || '0',
        data_file_url     => $self->{data_file_url},
        data_md5          => $self->{version},
        previous_data_md5 => $self->{prev_version},
    );

    my @cols = map {$dbh->quote_identifier($_)} keys %row_data;
    my @vals = map {$dbh->quote($_)} values %row_data;

    my $sql = "INSERT INTO public.publish(" . join(',', @cols) . ") VALUES (" . join(',', @vals) . ")";
    $dbh->do($sql);
}

1;
