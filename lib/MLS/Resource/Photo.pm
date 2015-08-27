package MLS::Resource::Photo;
use strict;

use Data::Dumper qw(Dumper);
use MLS::Resource::Utils;

$| = 1;

our %extensions = (
 'image/jpeg' => "jpg",
 'image/gif' => "gif",
 'text/xml' => "xml"
);

sub new {
  my ($class, $opts) = @_;

  $opts->{column_identifier} = $MLS::Config::Row::COLUMN_IDENTIFIER || 'SystemName';

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  print "----Fetching photos----\n\n";
  $self->{totals} = {listings_complete => 0, photo_urls_fetched => 0, error => 0};

  $self->{primary_key} = $MLS::Config::PRIMARY_KEY{$self->{column_identifier}};

  my $mutated = $self->mutated();
  return $self->finish() unless $mutated;

  my $i = 0;
  foreach my $remote_row (@$mutated) {
    $self->fetch_remote($remote_row);
    print '.';
    if (++$i % 100 == 0) {
      $self->monitor('photo_urls_fetched', $self->{totals}{photo_urls_fetched});
      $self->monitor('listings_complete', $self->{totals}{listings_complete});
      $self->monitor('error', $self->{totals}{error});
      print "[$i]\n";
    }
  }

  $self->finish();
}

sub finish {
  my $self = shift;

  $self->monitor('photo_urls_fetched', $self->{totals}{photo_urls_fetched});
  $self->monitor('listings_complete', $self->{totals}{listings_complete});
  $self->monitor('error', $self->{totals}{error});

  print "\nReport:\n";
  print Dumper $self->{totals};
  print "\n[DONE]\n\n";
}

sub monitor {
  my($self, $key, $value) = @_;

  my $monitor = $self->{monitor} or return;
  $monitor->status({ namespace => ['Photo'], key => $key, value => $value });
}

sub mutated {
  my ($self) = @_;
  
  my $dbh = $self->{dbh};

  my $primary_key = 'p.' . $dbh->quote_identifier($self->{primary_key}) . '::text';

  my @conditions = (
    'm.resource = ' . $dbh->quote($MLS::Config::RESOURCE),
    "m.remote_img_mod_ts <> COALESCE(local_img_mod_ts, '')",
    "m.remote_removed_at IS NULL",
    "m.remote_id = $primary_key",
  );

  my $cols = 'm.remote_id, m.remote_img_mod_ts, m.local_img_mod_ts';
  my $mutation_table = "$MLS::Config::MLS.mutation as m";
  my $resource_table = "$MLS::Config::MLS." . $dbh->quote_identifier($MLS::Config::RESOURCE) . ' as p';

  if ($MLS::Config::PEAK_TIME && $MLS::Config::MV_ACTIVE_COLS) {
    my $select_subquery = MLS::Resource::Utils::get_mv_active_select_sql;
    push @conditions, "$primary_key IN ($select_subquery)";
  }

  my $sql = "SELECT $cols FROM $mutation_table, $resource_table WHERE " . join(' AND ', @conditions);
  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  print "Going to fetch photos for [" . scalar(@$rs) . "] listings\n";

  return $rs;
}

sub fetch_remote {
  my ($self, $row) = @_;

  # subclass method
  my $urls = eval {
    $self->search_remote($row);
  };

  if ($@) {
    print "Error, skipping this listing\n";
    $self->{totals}{error}++;
    return;
  }
  elsif (! defined $urls) {
    print "No urls returned\n";
    return;
  }

  $self->{totals}{photo_urls_fetched} += scalar @$urls;
  $self->{totals}{listings_complete}++;

  $self->update($row, $urls) if (scalar @$urls);
  $self->update_mutation_table($row->{remote_id}); 
}

sub update {
  my ($self, $row, $urls) = @_;

  my $dbh = $self->{dbh};

  my $sql = "UPDATE $MLS::Config::MLS." . $dbh->quote_identifier($MLS::Config::RESOURCE) .
            " SET __photo_urls = ARRAY[" . join(',', map($dbh->quote($_), @$urls)) . "] WHERE " .
            $dbh->quote_identifier($self->{primary_key}) . " = " . $dbh->quote($row->{remote_id});

  $self->{temp_error} = "$sql\n";
  $dbh->do($sql);
}

sub update_mutation_table {
  my ($self, $remote_id) = @_;

  my $dbh = $self->{dbh};

  $dbh->set_autocommit(0);

  eval {
    # update local_img_mod_ts in mutation row
    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );
    my $sql = "UPDATE $MLS::Config::MLS.mutation SET local_img_mod_ts = remote_img_mod_ts WHERE " . join(' AND ', @conditions);
    $dbh->do($sql);

    MLS::Resource::Utils::check_transaction_complete($dbh, \@conditions);
  };

  if ($@) {
    $dbh->rollback;
    die $@;
  }

  $dbh->commit;
  $dbh->set_autocommit(1);
}

1;
