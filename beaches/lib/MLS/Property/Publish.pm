package MLS::Property::Publish;

use strict;
use warnings;

$| = 1;

use Data::Dumper qw(Dumper);

sub new {
  my ($class, $opts) = @_;

  $opts->{sql_file_out} = "/tmp/sql/$MLS::Property::Config::MLS-update.sql";

  return bless $opts, $class;
}

sub go {
    my ($self) = @_;

    print "----Generate Publish Data---\n\n";
    $self->{id_lists} = {new => [], updated => []};
    $self->{totals} =   {new => 0,  updated => 0};
  
    # Compare key columns of view with materialized view data
    $self->build_id_lists;

    # compile list of instructions based on this
    my $sql_to_write = $self->generate_sql;

    # dump .sql file to somewhere
    open(my $fh, '>', $self->{sql_file_out}) or
       die "Could not open [$self->{sql_file_out}] for write: $!";
    print $fh $sql_to_write;

    # recreate materialized view from our new view

    $self->finish();
}

sub finish {
  my $self = shift;

  print "\nReport:\n";
  print Dumper $self->{totals};
  print "Wrote SQL diff to [$self->{sql_file_out}]\n";
  print "\n[DONE]\n\n";
}

sub build_id_lists {
    my $self = shift;

    my $dbh = $self->{dbh};

    my @key_cols = qw(__modified_at __removed_at);
    my $cols_str =
        join ',',
        map {"extract(epoch from $_) as $_"} @key_cols;

    my $view_rs = $dbh->selectall_hashref("SELECT $cols_str,listing_id from $MLS::Property::Config::MLS.view_listings", 'listing_id');
    my $live_rs = $dbh->selectall_hashref("SELECT $cols_str,listing_id from $MLS::Property::Config::MLS.view_listings_materialized", 'listing_id');

    # Compare modified timestamps
    print scalar(keys %$view_rs) ." records in new view\n";
    print scalar(keys %$live_rs) ." records in live view\n";

    foreach my $id (keys %$view_rs) {
        # new listings
        if (! defined $live_rs->{$id}) {
            push @{$self->{id_lists}{new}}, $id;
        }
        else {
            # modified, removed, resurrected all require updating the row

            # initialize potentially null values
            map {$view_rs->{$id}{$_} ||= 0; $live_rs->{$id}{$_} ||= 0; $_} @key_cols;

            if ($view_rs->{$id}{__modified_at} != $live_rs->{$id}{__modified_at} ||
                $view_rs->{$id}{__removed_at}  != $live_rs->{$id}{__removed_at}) {
                push @{$self->{id_lists}{updated}}, $id;
            }
        }
    }

    $self->{totals}{new}     = scalar (@{$self->{id_lists}{new}});
    $self->{totals}{updated} = scalar (@{$self->{id_lists}{updated}});
}

sub generate_sql {
    my $self = shift;

    my $dbh = $self->{dbh};

    # new
    my $new_ids_str = join ' OR ',
                      map {"listing_id = " . $dbh->quote($_)} @{$self->{id_lists}{new}};
    my $new_rs = $dbh->selectall_arrayref("SELECT * from $MLS::Property::Config::MLS.view_listings where $new_ids_str", {Slice => {}});
    my $new_sql = join "\n",
                  map {format_row_data('insert', $_, $dbh)} @$new_rs;

    # updated
    my $update_ids_str = join ' OR ',
                      map {"listing_id = " . $dbh->quote($_)} @{$self->{id_lists}{updated}};
    my $update_rs = $dbh->selectall_arrayref("SELECT * from $MLS::Property::Config::MLS.view_listings where $update_ids_str", {Slice => {}});
    my $update_sql = join "\n",
                     map {format_row_data('update', $_, $dbh)} @$update_rs;

    return "$new_sql\n$update_sql";

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
        return qq|UPDATE $MLS::Property::Config::MLS.test_live as l SET ($cols_str) = ($vals_str) WHERE $where_sql;|;
    }
    elsif (lc $action eq 'insert') {
        return qq|INSERT INTO $MLS::Property::Config::MLS.test_live ($cols_str) VALUES ($vals_str);|;
    }
};

1;
