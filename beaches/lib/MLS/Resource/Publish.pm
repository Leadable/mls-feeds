package MLS::Resource::Publish;

use strict;
use warnings;

use Data::Dumper qw(Dumper);
use Digest::MD5 qw(md5_hex);
use Mojo::JSON qw(j);

sub new {
  my ($class, $opts) = @_;

  $opts->{sql_file_out} = "/tmp/sql/$MLS::Config::MLS-update.sql";

  return bless $opts, $class;
}

sub go {
    my ($self) = @_;

    print "----Generate Publish Data---\n\n";
    $self->{id_lists} = {new => [], updated => []};

    # get data from view and materialized view
    $self->get_data;

    # compare md5 from both tables to see if this should proceed
    if ($self->{view_md5} eq $self->{live_md5}) {
        print "Tables are equivalent, no need to continue\n";
        $self->finish();
        return;
    }
  
    # Compare key columns of view with materialized view data
    $self->build_id_lists;

    # compile list of instructions based on this
    my $sql_to_write = $self->generate_sql;

    # dump .sql file to somewhere
    open(my $fh, '>', $self->{sql_file_out}) or
       die "Could not open [$self->{sql_file_out}] for write: $!";

    #TODO: Wrap sql file in transactions (begin...commit)

    my $md5_json = j({old => $self->{live_md5}, new => $self->{view_md5}});
    print $fh "--$md5_json\n";
    print $fh $sql_to_write;

    # write new version string to live table
    print $fh qq|COMMENT ON table $MLS::Config::MLS.test_live is '$self->{view_md5}';|;

    # recreate materialized view from our new view

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
    print "Wrote SQL diff to [$self->{sql_file_out}]\n";
    print "\n[DONE]\n\n";
}

sub monitor {
    my($self, $key, $value) = @_;

    my $monitor = $self->{monitor} or return;

    my @class = split(/::/, ref($self));

    shift @class; # remove MLS

    $monitor->status({ namespace => \@class, key => $key, value => $value });
}

sub get_data {
    my $self = shift;

    my $dbh = $self->{dbh};

    my @key_cols = qw(__modified_at __removed_at __inserted_at);
    my $cols_str =
        join ',',
        map {"extract(epoch from $_) as $_"} @key_cols;

    my $view_rs = $self->{view_rs} = $dbh->selectall_hashref("SELECT $cols_str,listing_id from $MLS::Config::MLS.view_listings", 'listing_id');
    my $live_rs = $self->{live_rs} = $dbh->selectall_hashref("SELECT $cols_str,listing_id from $MLS::Config::MLS.view_listings_materialized", 'listing_id');

    print scalar(keys %$view_rs) ." records in new view\n";
    print scalar(keys %$live_rs) ." records in live view\n";

    # initialize potentially null values
    foreach my $row_data (values %$view_rs, values %$live_rs) {
        foreach my $row_val (values %$row_data) {
            $row_val ||= 0;
        }
    }

    $self->{view_md5} = do_md5sum_table($view_rs);
    $self->{live_md5} = do_md5sum_table($live_rs);
    print "view_md5: [$self->{view_md5}]\n";
    print "live_md5: [$self->{live_md5}]\n";
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

sub do_md5sum_table {
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

    # new
    my $new_ids_str = join ' OR ',
                      map {"listing_id = " . $dbh->quote($_)} @{$self->{id_lists}{new}};
    my $new_rs = $dbh->selectall_arrayref("SELECT * from $MLS::Config::MLS.view_listings where $new_ids_str", {Slice => {}});
    my $new_sql = join "\n",
                  map {format_row_data('insert', $_, $dbh)} @$new_rs;

    # updated
    my $update_ids_str = join ' OR ',
                      map {"listing_id = " . $dbh->quote($_)} @{$self->{id_lists}{updated}};
    my $update_rs = $dbh->selectall_arrayref("SELECT * from $MLS::Config::MLS.view_listings where $update_ids_str", {Slice => {}});
    my $update_sql = join "\n",
                     map {format_row_data('update', $_, $dbh)} @$update_rs;

    return "$new_sql\n$update_sql\n";

}

# Formats a row in hash form for the diff
sub format_row_data {
    my ($action, $row_data, $dbh) = @_;

    my $cols_str = join ',',
                   map {qq|"$_"|} keys %$row_data;

    my $vals_str = join ',',
                   map {$dbh->quote($_)} values %$row_data;

    if (lc $action eq 'update') {
        my $where_sql = 'l.listing_id = ' . $dbh->quote($row_data->{listing_id});
        return qq|UPDATE $MLS::Config::MLS.test_live as l SET ($cols_str) = ($vals_str) WHERE $where_sql;|;
    }
    elsif (lc $action eq 'insert') {
        return qq|INSERT INTO $MLS::Config::MLS.test_live ($cols_str) VALUES ($vals_str);|;
    }
};

1;
