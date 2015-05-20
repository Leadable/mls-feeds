package MLS::Property::Purge;
use strict;

use Data::Dumper qw(Dumper);

sub new {
  my ($class, $opts) = @_;

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  my $mutated = $self->mutated();
  return unless $mutated;

  foreach my $remote_row (@$mutated) {
    $self->mark_as_removed($remote_row);
  }
}

sub mutated {
  my ($self) = @_;

  my $dbh = $self->{dbh};

  my @conditions = (
    'resource = ' . $dbh->quote($MLS::Property::Config::RESOURCE),
    "remote_removed_at IS NOT NULL",
    "remote_removed_at > COALESCE(local_removed_at, '1900-01-01'::timestamp without time zone)"
  );

  my $sql = "SELECT remote_id, remote_removed_at, local_removed_at FROM $MLS::Property::Config::MLS.mutation WHERE " . join(' AND ', @conditions) . " ORDER BY remote_id";
  print "$sql\n";

  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  print "found " . scalar(@$rs) . "\n";
  return @$rs ? $rs : 0;
}

sub mark_as_removed {
  my ($self, $remote_row) = @_;

  my $dbh = $self->{dbh};

  my $pkey_ident = $MLS::Property::Config::PRIMARY_KEY{SystemName};
  my $pkey_val = $remote_row->{remote_id};

  $dbh->{AutoCommit} = 0;

  eval {
    my $sql = "UPDATE $MLS::Property::Config::MLS." . $dbh->quote_identifier($MLS::Property::Config::RESOURCE) . " SET __removed_at = NOW() WHERE " . $dbh->quote_identifier($pkey_ident) . " = " . $dbh->quote($pkey_val);
    print "$sql\n";
    $dbh->do($sql);

    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Property::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($pkey_val)
    );
    $sql = "UPDATE $MLS::Property::Config::MLS.mutation SET local_removed_at = remote_removed_at, last_transaction_completed_at = NOW() WHERE " . join(' AND ', @conditions);
    print "$sql\n";
    $dbh->do($sql);
  };

  if ($@) {
    $dbh->do('ROLLBACK');
    die $@;
  }

  $dbh->do('COMMIT');
  $dbh->{AutoCommit} = 1;
}

1;
