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

    # dump columns from view
    my $cols = $dbh->selectcol_arrayref("select column_name from information_schema.columns
                                         where table_schema = '$MLS::Property::Config::MLS' and table_name = 'view_listings'");

    # updated rows
    my $cols_set = join ',',
                   map {$dbh->quote_identifier($_) . " = v." . $dbh->quote_identifier($_)} @$cols;

    my $where_ids = join ' OR ',
                    map {"l." . $dbh->quote_identifier('listing_id') . ' = ' . $dbh->quote($_)} @{$self->{id_lists}{updated}};
    my $update_sql = qq|UPDATE $MLS::Property::Config::MLS.test_live as l
                        SET $cols_set
                        FROM $MLS::Property::Config::MLS.view_listings as v
                        WHERE $where_ids;|;

    # new rows
    my $new_where_ids = join ' OR ',
                        map {$dbh->quote_identifier('listing_id') . ' = ' . $dbh->quote($_)} @{$self->{id_lists}{new}};

    my $new_sql = qq|INSERT INTO $MLS::Property::Config::MLS.test_live
                     SELECT * FROM $MLS::Property::Config::MLS.view_listings
                     WHERE $new_where_ids;|;

    return "$update_sql\n$new_sql";
}


1;
