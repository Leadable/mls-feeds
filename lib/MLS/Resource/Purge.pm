package MLS::Resource::Purge;
use strict;

use Data::Dumper qw(Dumper);

$| = 1;

sub new {
  my ($class, $opts) = @_;

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  print "----Purging removed records----\n\n";

  my $pkey = $MLS::Config::PRIMARY_KEY{SystemName};

  # Update the resource table, then the mutation table
  my $sql = qq|
    BEGIN;

    UPDATE
      $MLS::Config::MLS."$MLS::Config::RESOURCE"
    SET
      __removed_at = NOW()
    FROM
      $MLS::Config::MLS.mutation m
    WHERE
      m.resource = '$MLS::Config::RESOURCE' AND
      m.remote_id = "$pkey"::text AND
      m.remote_removed_at IS NOT NULL AND
      m.remote_removed_at > COALESCE(local_removed_at, '1900-01-01'::timestamp without time zone);

      UPDATE
        $MLS::Config::MLS.mutation
      SET
        local_removed_at = remote_removed_at, last_transaction_completed_at = NOW()
      WHERE
        resource = '$MLS::Config::RESOURCE' AND
        remote_removed_at IS NOT NULL AND
        remote_removed_at > COALESCE(local_removed_at, '1900-01-01'::timestamp without time zone);

    END;
  |;

  $self->{dbh}->do($sql);

  $self->finish();
}

sub finish {
  my $self = shift;

  $self->monitor('done', 1);

  print "\n[DONE]\n\n";
}

sub monitor {
  my($self, $key, $value) = @_;

  my $monitor = $self->{monitor} or return;
  $monitor->status({ namespace => ['Purge'], key => $key, value => $value });
}

1;
