package MLS::Resource::Purge;
use strict;

$| = 1;

use Data::Dumper qw(Dumper);

sub new {
  my ($class, $opts) = @_;

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  print "----Purging removed records----\n\n";
  $self->{totals} = {removed => 0};

  my $mutated = $self->mutated();
  return $self->finish() unless $mutated;

  my $i = 0;
  foreach my $remote_row (@$mutated) {
    $self->mark_as_removed($remote_row);
    print '.';
    print "[$i]\n" if (++$i % 100 == 0);
  }

  $self->finish();
}

sub finish {
  my $self = shift;

  $self->monitor('removed', $self->{totals}{removed});

  print "\nReport:\n";
  print Dumper $self->{totals};
  print "\n[DONE]\n\n";
}

sub monitor {
  my($self, $key, $value) = @_;

  my $monitor = $self->{monitor} or return;

  my @class = split(/::/, ref($self));

  shift @class; # remove MLS

  $monitor->status({ namespace => \@class, key => $key, value => $value });
}

sub mutated {
  my ($self) = @_;

  my $dbh = $self->{dbh};

  my @conditions = (
    'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
    "remote_removed_at IS NOT NULL",
    "remote_removed_at > COALESCE(local_removed_at, '1900-01-01'::timestamp without time zone)"
  );

  my $sql = "SELECT remote_id, remote_removed_at, local_removed_at FROM $MLS::Config::MLS.mutation WHERE " . join(' AND ', @conditions) . " ORDER BY remote_id";
  $self->{temp_error} = "$sql\n";

  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  print "Going to purge [" . scalar(@$rs) . "]\n";
  return @$rs ? $rs : 0;
}

sub mark_as_removed {
  my ($self, $remote_row) = @_;

  my $dbh = $self->{dbh};

  my $pkey_ident = $MLS::Config::PRIMARY_KEY{SystemName};
  my $pkey_val = $remote_row->{remote_id};

  $dbh->{AutoCommit} = 0;

  eval {
    my $sql = "UPDATE $MLS::Config::MLS." . $dbh->quote_identifier($MLS::Config::RESOURCE) . " SET __removed_at = NOW() WHERE " . $dbh->quote_identifier($pkey_ident) . " = " . $dbh->quote($pkey_val);
    $self->{temp_error} = "$sql\n";
    $dbh->do($sql);

    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($pkey_val)
    );
    $sql = "UPDATE $MLS::Config::MLS.mutation SET local_removed_at = remote_removed_at, last_transaction_completed_at = NOW() WHERE " . join(' AND ', @conditions);
    $self->{temp_error} = "$sql\n";
    $dbh->do($sql);
  };

  if ($@) {
    $dbh->do('ROLLBACK');
    die $@;
  }

  $dbh->do('COMMIT');
  $dbh->{AutoCommit} = 1;

  $self->{totals}{removed}++;
}

1;
