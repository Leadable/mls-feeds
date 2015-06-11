package MLS::Resource::Publish;

use strict;
use warnings;

use Data::Dumper qw(Dumper);
use Digest::MD5 qw(md5_hex);
use Mojo::JSON qw(j);
use File::Temp qw(tempfile);
use File::Basename;

$| = 1;

sub new {
  my ($class, $opts) = @_;

  $opts->{s3_bucket} = 'dfo-publish';

  return bless $opts, $class;
}

sub go {
    my ($self) = @_;

    print "----Generate Publish Data [$self->{id}]---\n\n";
    $self->{id_lists} = {new => [], updated => []};

    $self->{view} = "$MLS::Config::MLS.view_$self->{id}";
    $self->{materialized} = $self->{view} . '_materialized';

    # determine if there is a schema change
    # if so, must rebuild the entire table on live
    if ($self->is_schema_change) {
        print "Schema change detected\n";

        $self->{rebuild} = 1;
        $self->{live_table} = $self->{view} . '_new';

        # format schema for publish later
        $self->{view_schema} = [
            map {
                { col_name => $_->[0], col_type => $_->[1] }
            } @{$self->{view_schema}}
        ];
    }
    else {
        $self->{live_table} = $self->{view};
    }

    # compare md5 of data from both tables to see if this should proceed
    if (!$self->is_data_change) {
        print "Tables are equivalent, no need to continue\n";
        $self->finish();
        return;
    }

    # Compare key columns of view with materialized view data
    $self->build_id_lists;

    # compile list of instructions based on this
    my $sql_to_write = $self->generate_sql;

    # dump .sql file to somewhere
    $self->store_diff($sql_to_write);

    if ($self->{rebuild}) {
        $self->store_schema;
    }

    # add a row to the live publish table
    $self->insert_publish_table;

    # recreate materialized view from our new view
    $self->{dbh}->do("REFRESH MATERIALIZED VIEW $self->{materialized}");

    $self->finish();
}

sub finish {
    my $self = shift;

    my $totals = {
        new     => scalar @{$self->{id_lists}{new}},
        updated => scalar @{$self->{id_lists}{updated}},
    };

    $self->monitor('new', $totals->{new});
    $self->monitor('updated', $totals->{updated});

    print "\nReport:\n";
    print Dumper $totals;
    print "\n[DONE]\n\n";
}

sub monitor {
    my($self, $key, $value) = @_;

    my $monitor = $self->{monitor} or return;

    my @class = split(/::/, ref($self));

    shift @class; # remove MLS

    $monitor->status({ namespace => \@class, key => $key, value => $value });
}

sub is_schema_change {
    my $self = shift;

    my $dbh = $self->{dbh};

    my $view_schema = $dbh->selectall_arrayref(qq|
        SELECT attname, format_type(atttypid, atttypmod)
        FROM   pg_attribute
        WHERE  attrelid = '$self->{view}'::regclass
        AND    attnum > 0
        AND    NOT attisdropped;|
    );

    my $live_schema = $dbh->selectall_arrayref(qq|
        SELECT attname, format_type(atttypid, atttypmod)
        FROM   pg_attribute
        WHERE  attrelid = '$self->{materialized}'::regclass
        AND    attnum > 0
        AND    NOT attisdropped;|
    );

    $self->{view_schema} = $view_schema;
    $self->{view_schema_md5} = do_md5sum_schema($view_schema);
    $self->{live_schema_md5} = do_md5sum_schema($live_schema);

    return $self->{view_schema_md5} ne $self->{live_schema_md5};
}

sub is_data_change {
    my $self = shift;

    my $dbh = $self->{dbh};

    my @key_cols = qw(__modified_at __removed_at __inserted_at);
    my $cols_str =
        join ',',
        map {"extract(epoch from $_) as $_"} @key_cols;

    my $view_rs = $self->{view_rs} = $dbh->selectall_hashref("SELECT $cols_str,listing_id from $self->{view}", 'listing_id');

    my $live_rs = {};
    if (!$self->{rebuild}) {
        $live_rs = $self->{live_rs} = $dbh->selectall_hashref("SELECT $cols_str,listing_id from $self->{materialized}", 'listing_id');
    }

    print scalar(keys %$view_rs) ." records in new view\n";
    print scalar(keys %$live_rs) ." records in live view\n";

    # initialize potentially null values
    foreach my $row_data (values %$view_rs, values %$live_rs) {
        foreach my $row_val (values %$row_data) {
            $row_val ||= 0;
        }
    }

    $self->{view_data_md5} = do_md5sum_data($view_rs);
    $self->{live_data_md5} = do_md5sum_data($live_rs);

    return $self->{view_data_md5} ne $self->{live_data_md5};
}

sub build_id_lists {
    my $self = shift;

    my $view_rs = $self->{view_rs};
    my $live_rs = $self->{live_rs};

    foreach my $id (keys %$view_rs) {
        # new listings
        if (! defined $live_rs->{$id}) {
            push @{$self->{id_lists}{new}}, $id;
        }
        else {
            # modified, removed, resurrected all require updating the row
            if ($view_rs->{$id}{__modified_at} != $live_rs->{$id}{__modified_at} ||
                $view_rs->{$id}{__removed_at}  != $live_rs->{$id}{__removed_at}) {
                push @{$self->{id_lists}{updated}}, $id;
            }
        }
    }
}

sub do_md5sum_schema {
    my $table_schema = shift;

    return md5_hex(
        map {
            join '', @$_
        } @$table_schema
    );
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

sub generate_sql {
    my $self = shift;

    my $dbh = $self->{dbh};

    my $return_sql = '';
    my @new_ids     = @{$self->{id_lists}{new}};
    my @updated_ids = @{$self->{id_lists}{updated}};

    # new
    if (scalar @new_ids) {
        while (@new_ids) {
            # chunk requests
            my @ids = splice @new_ids, 0, 5000;
            print 'Getting [' . scalar(@ids) . "] new records\n";

            my $new_ids_str = join ' OR ',
                              map {"listing_id = " . $dbh->quote($_)} @ids;
            my $new_rs = $dbh->selectall_arrayref("SELECT * from $self->{view} where $new_ids_str", {Slice => {}});
            $return_sql .= join "\n",
                           map {$self->format_row_data('insert', $_, $dbh)} @$new_rs;
            $return_sql .= "\n";
        }
    }

    # updated
    if (scalar @updated_ids) {
        while (@updated_ids) {
            # chunk requests
            my @ids = splice @updated_ids, 0, 5000;
            print 'Getting [' . scalar(@ids) . "] updated records\n";

            my $update_ids_str = join ' OR ',
                              map {"listing_id = " . $dbh->quote($_)} @ids;
            my $update_rs = $dbh->selectall_arrayref("SELECT * from $self->{view} where $update_ids_str", {Slice => {}});
            $return_sql .= join "\n",
                           map {$self->format_row_data('update', $_, $dbh)} @$update_rs;
            $return_sql .= "\n";
        }
    }

    return $return_sql;

}

# Formats a row in hash form for the diff
sub format_row_data {
    my ($self, $action, $row_data, $dbh) = @_;

    my $cols_str = join ',',
                   map {qq|"$_"|} keys %$row_data;

    my $vals_str = join ',',
                   map {$dbh->quote($_)} values %$row_data;

    if (lc $action eq 'update') {
        my $where_sql = 'l.listing_id = ' . $dbh->quote($row_data->{listing_id});
        return qq|UPDATE $self->{live_table} as l SET ($cols_str) = ($vals_str) WHERE $where_sql;|;
    }
    elsif (lc $action eq 'insert') {
        return qq|INSERT INTO $self->{live_table} ($cols_str) VALUES ($vals_str);|;
    }
}

sub store_diff {
    my ($self, $sql) = @_;

    print "Storing sql diff\n";

    my ($fh, $filename) = tempfile(
        TEMPLATE => "$MLS::Config::MLS-$self->{id}-data-XXXXXXXX",
        DIR      => '/tmp',
        SUFFIX   => '.sql',
        UNLINK   => 1,
    );

    my $md5_json = j({old => $self->{live_data_md5}, new => $self->{view_data_md5}});
    print $fh "--$md5_json\n";
    print $fh $sql;

    # write new version string to live table
    print $fh qq|COMMENT ON table $self->{live_table} is '$self->{view_data_md5}';|;

    close $fh;

    my $bucket = $self->{s3_client}->bucket(name => $self->{s3_bucket});
    my $s3_bucket = $bucket->object(
        key          => "$MLS::Config::MLS/" . basename($filename),
        acl_short    => 'public-read',
        content_type => 'application/octet-stream',
    );
    $s3_bucket->put_filename($filename);

    $self->{data_file_url} = $s3_bucket->uri;
}

sub store_schema {
    my $self = shift;

    my ($fh, $filename) = tempfile(
        TEMPLATE => "$MLS::Config::MLS-$self->{id}-schema-XXXXXXXX",
        DIR      => '/tmp',
        SUFFIX   => '.json',
        UNLINK   => 1,
    );

    my $md5_json = j($self->{view_schema});
    print $fh $md5_json;
    close $fh;

    my $bucket = $self->{s3_client}->bucket(name => $self->{s3_bucket});
    my $s3_bucket = $bucket->object(
        key          => "$MLS::Config::MLS/" . basename($filename),
        acl_short    => 'public-read',
        content_type => 'application/octet-stream',
    );
    $s3_bucket->put_filename($filename);

    $self->{schema_file_url} = $s3_bucket->uri;
}

sub insert_publish_table {
    my $self = shift;

    my $dbh = $self->{live_dbh};

    my %row_data = (
        mls               => $MLS::Config::MLS,
        resource          => $MLS::Config::RESOURCE,
        area              => $self->{id},
        full              => $self->{rebuild} || '0',
        data_file_url     => $self->{data_file_url},
        schema_file_url   => $self->{schema_file_url},
        schema_md5        => $self->{view_schema_md5}, # TODO: is this column necessary?
        data_md5          => $self->{view_data_md5},
        previous_data_md5 => $self->{live_data_md5},
    );

    my @cols = map {$dbh->quote_identifier($_)} keys %row_data;
    my @vals = map {$dbh->quote($_)} values %row_data;

    my $sql = "INSERT INTO public.publish(" . join(',', @cols) . ") VALUES (" . join(',', @vals) . ")";
    $dbh->do($sql);
}

1;
