package MLS::Resource::Photo;
use strict;

$| = 1;

use Data::Dumper qw(Dumper);

my %extentions = (
 'image/jpeg' => "jpg",
 'image/gif' => "gif",
 'text/xml' => "xml"
);

sub new {
  my ($class, $opts) = @_;

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  print "----Fetching photos----\n\n";
  $self->{totals} = {photo_urls_fetched => 0};

  my $mutated = $self->mutated();
  return $self->finish() unless $mutated;

  my $i = 0;
  foreach my $remote_row (@$mutated) {
    $self->fetch_remote($remote_row);
    print '.';
    print "[$i]\n" if (++$i % 100 == 0);
  }

  $self->finish();
}

sub finish {
  my $self = shift;

  $self->monitor('photo_urls_fetched', $self->{totals}{photo_urls_fetched});

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
    "remote_img_mod_ts <> COALESCE(local_img_mod_ts, '')",
    "remote_removed_at IS NULL"
  );

  my $sql = "SELECT remote_id, remote_img_mod_ts, local_img_mod_ts FROM $MLS::Config::MLS.mutation WHERE " . join(' AND ', @conditions) . " ORDER BY remote_id";
  $self->{temp_error} = "$sql\n";

  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  print "Going to fetch for [" . scalar(@$rs) . "] listings\n";
  return @$rs ? $rs : 0;
}

sub fetch_remote {
  my ($self, $row) = @_;

  my $rets = $self->{rets};

  my $objectKey = $row->{remote_id} . '';

  my $request = new librets::GetObjectRequest($MLS::Config::RESOURCE, $MLS::Config::OBJECT);

  $request->SetLocation(1);
  $request->AddAllObjects($objectKey);

  my $response = $rets->GetObject($request);

  my @urls;

  my $objectDescriptor = $response->NextObject();
      
  while ($objectDescriptor) {
    my $location = $objectDescriptor->GetLocationUrl();

    push(@urls, $location);
    $self->{totals}{photo_urls_fetched}++;
    $objectDescriptor = $response->NextObject();
  }

  $self->update($row, \@urls);
  $self->update_mutation_table($row->{remote_id}); 
}

sub update {
  my ($self, $row, $urls) = @_;

  my $dbh = $self->{dbh};

  my $sql = "UPDATE $MLS::Config::MLS." . $dbh->quote_identifier($MLS::Config::RESOURCE) . " SET __photo_urls = ARRAY[" . join(',', map($dbh->quote($_), @$urls)) . "] WHERE " . $dbh->quote_identifier($MLS::Config::PRIMARY_KEY{SystemName}) . " = " . $dbh->quote($row->{remote_id});

  $self->{temp_error} = "$sql\n";
  $dbh->do($sql);
}

sub update_mutation_table {
  my ($self, $remote_id) = @_;

  my $dbh = $self->{dbh};

  $dbh->{AutoCommit} = 0;

  eval {
    # update local_img_mod_ts in mutation row
    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );
    my $sql = "UPDATE $MLS::Config::MLS.mutation SET local_img_mod_ts = remote_img_mod_ts WHERE " . join(' AND ', @conditions);
    $self->{temp_error} = "$sql\n";
    $dbh->do($sql);

    my $sql = "SELECT * FROM $MLS::Config::MLS.mutation WHERE " . join(' AND ', @conditions);
    $self->{temp_error} = "$sql\n";
    my $row = $dbh->selectrow_hashref($sql);

    my $transaction_complete = 1;

    # row is still out of sync
    $transaction_complete = 0 if ($row->{remote_row_mod_ts} ne $row->{local_row_mod_ts});

    # address hasn't been geocoded
    $transaction_complete = 0 if ($row->{remote_address} ne $row->{local_address});

    # if there are no more differences between remote and local in the mutation table then set the last_transaction_completed at = NOW() so that the row can be published
    # The publisher job will detect the change and publish the row to the materialized (live) tables
    if ($transaction_complete) {
      my $sql = "UPDATE $MLS::Config::MLS.mutation SET last_transaction_completed_at = NOW() WHERE " . join(' AND ', @conditions);
      $self->{temp_error} = "$sql\n";
      $dbh->do($sql);
    }
  };

  if ($@) {
    $dbh->do('ROLLBACK');
    die $@;
  }

  $dbh->do('COMMIT');
  $dbh->{AutoCommit} = 1;
}

1;
