package MLS::Property::Publish;

use strict;
use warnings;

$| = 1;

use Data::Dumper qw(Dumper);

sub new {
  my ($class, $opts) = @_;

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  print "----Generate Publish Data---\n\n";
  #$self->{totals} = {removed => 0};

  # Assumption: Materialized view exists with live data already
  
  # Compare key columns of view with materialized view data
  # compile list of instructions based on this
  $self->compare_data;

  # dump .sql file to somewhere

  # recreate materialized view from our new view

  $self->finish();
}

sub finish {
  my $self = shift;

  # $self->monitor('removed', $self->{totals}{removed});

  # print "\nReport:\n";
  # print Dumper $self->{totals};
  # print "\n[DONE]\n\n";
}

sub compare_data {
    my $self = shift;

    my $dbh = $self->{dbh};

    my $view_rs = $dbh->selectall_arrayref('SELECT * from beaches.view_listings', {Slice => {}});
    my $live_rs = $dbh->selectall_arrayref('SELECT * from beaches.view_listings_materialized', {Slice => {}});

    # Compare modified timestamps
    print scalar(@$view_rs) ." records in new view\n";
    print scalar(@$live_rs) ." records in live view\n";

    # Modified
    # my $mod_rs = $dbh->selectall_arrayref($sql, {Slice => {}});
    # if (scalar(@$mod_rs)) {
    #     my $mod_str =
    #         join "\n",
    #         map {format_row_data($_)} @$mod_rs;

    #     print $mod_str;
    # }

    # Added
    
}

# Formats a row in hash form for the diff
sub format_row_data {
    my $row_data = shift;

    my @cols = keys %$row_data;
    my @vals = values %$row_data;

    # make sure vals that are arrays are correct
    foreach my $val (@vals) {
        if (! defined $val) {
            $val = q|''|;
        }
        elsif (ref $val eq 'ARRAY') {
            my $val_str = join(',', map {qq|"$_"|} @$val);
            $val = qq|ARRAY[$val_str]|;
        }
        else {
            $val = qq|"$val"|;
        }
    }

    my $cols_str    = join(',', @cols);
    my $vals_str = join(',', @vals);

    return qq|UPDATE beaches.view_listings_materialized SET ($cols_str) = ($vals_str)|;
};