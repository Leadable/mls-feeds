package MLS::Resource::Mutation;
use strict;

use Data::Dumper qw(Dumper);

$| = 1;

sub new {
  my ($class, $opts) = @_;

  $opts->{remote} = {};
  $opts->{local} = {};

  bless $opts, $class;
}

sub go {
  my ($self) = @_;

  print "----Checking for Mutations ----\n\n";

  $self->{temp_log} = '';
  $self->{totals} = { new => 0, updated => 0, removed => 0, resurrected => 0 };

  $self->fetch_remote();
  $self->fetch_local();

  $self->new_remote_rows();
  $self->updated_remote_rows();
  $self->deleted_remote_rows();
  $self->resurrect_remote_rows();

  $self->finish();
}

sub finish {
  my $self = shift;

  print "\nReport:\n";
  print Dumper $self->{totals};
  print "\n[DONE]\n\n";
}

sub monitor {
  my($self, $key, $value) = @_;

  my $monitor = $self->{monitor} or return;
  $monitor->status({ namespace => ['Mutation'], key => $key, value => $value });
}

# fetch remote rows
sub fetch_remote {
  my ($self) = @_;

  my $rets = $self->{rets};
  my $remote = $self->{remote};

  print "Fetching remote rows.\n";

  foreach my $class_id (sort keys %MLS::Config::CLASSES) {
    my $class = $MLS::Config::CLASSES{ $class_id };
    print "\n\nResource Class: $class_id\n";
    print "Ignoring this class\n\n" if ($class->{ignore});

    next if $class->{ignore};

    if ($rets) {
      $self->do_rets_search($class, $class_id);
    }
    else {
      # NWMLS
      $self->remote_search($class_id);
    }
  }
}

sub do_rets_search {
  my ($self, $class, $class_id) = @_;

  my $rets = $self->{rets};

  my @select_fields = (
    $MLS::Config::PRIMARY_KEY{SystemName},
    $MLS::Config::ROW_MOD_TS_COLUMN{SystemName}
  );

  if ($MLS::Config::IMG_MOD_TS_COLUMN{SystemName}) {
    push @select_fields, $MLS::Config::IMG_MOD_TS_COLUMN{SystemName};
  }

  my @searches;

  if (ref $class->{SearchRequest} eq 'ARRAY') {
    @searches = @{$class->{SearchRequest}};
  }
  else {
    push @searches, $class->{SearchRequest};
  }

  foreach my $search_request (@searches) {
    print "Search request: " . $search_request . "\n";
    eval {
      my $request = $rets->CreateSearchRequest($MLS::Config::RESOURCE, $class_id, $search_request);
      $request->SetSelect(join(',', @select_fields));
      $request->SetLimit($librets::SearchRequest::LIMIT_DEFAULT);
      $request->SetOffset($librets::SearchRequest::OFFSET_NONE);
      $request->SetStandardNames(0);
      $request->SetCountType($librets::SearchRequest::RECORD_COUNT_AND_RESULTS);
      $request->SetFormatType($librets::SearchRequest::COMPACT_DECODED);

      # subclass method
      $self->remote_search($request, $class_id);
    };

    if (ref $@ eq 'librets::RetsReplyException') {
      die "librets::RetsException: " . $@->GetFullReport();
    }
    elsif ($@) {
      die $@;
    }
  }
}

# fetch local
sub fetch_local {
  my ($self) = @_;

  my $dbh = $self->{dbh};
  my $local = $self->{local};

  print "Fetching local rows\n\n";

  my $sql = "SELECT remote_id, remote_row_mod_ts, remote_img_mod_ts, remote_removed_at
             FROM $MLS::Config::MLS.mutation
             WHERE resource = '$MLS::Config::RESOURCE'";

  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });
  foreach (@$rs) {
    my %data = (
      remote_row_mod_ts => $_->{remote_row_mod_ts},
      remote_img_mod_ts => $_->{remote_img_mod_ts},
      remote_removed_at => $_->{remote_removed_at}
    );

    $local->{ $_->{remote_id} } = \%data;
  }
}

# NEW
# look for rows that don't exist in the local hash
# create row in mutation table
sub new_remote_rows {
  my ($self) = @_;

  print "Looking for new remote rows\n";

  my $dbh = $self->{dbh};
  my ($local, $remote) = ($self->{local}, $self->{remote});

  my $i = 0;
  foreach my $remote_id (keys %$remote) {

    next if ($local->{ $remote_id });

    my $remote_row = $remote->{ $remote_id };

    my @cols = qw(resource class remote_id remote_row_mod_ts remote_img_mod_ts);
    my @vals = (
      $dbh->quote($MLS::Config::RESOURCE),
      $dbh->quote($remote_row->{class}),
      $dbh->quote($remote_id),
      $dbh->quote($remote_row->{remote_row_mod_ts}),
      $dbh->quote($remote_row->{remote_img_mod_ts})
    );

    my $sql = "INSERT INTO $MLS::Config::MLS.mutation(" . join(', ', @cols) . ") VALUES (" . join(', ', @vals) . ")";
    $self->{temp_log} = "$sql\n";
    $dbh->do($sql);

    $self->{totals}->{new}++;
    print ".";
    print "[$i]\n" if (++$i % 100 == 0);
  }

  print "\n";
  $self->monitor('new', $self->{totals}->{new});
}

#UPDATE
# look for rows in remote and local and compare remote_row_mod_ts and remote_img_mod_ts
sub updated_remote_rows {
  my ($self) = @_;

  print "Looking for updated rows.\n";

  my $dbh = $self->{dbh};
  my ($local, $remote) = ($self->{local}, $self->{remote});

  my $i = 0;

  foreach my $remote_id (keys %$remote) {

    next unless ($local->{ $remote_id });

    my $remote_row = $remote->{ $remote_id };
    my $local_row = $local->{ $remote_id };

    my $row_mod_ts_mutated = ($remote_row->{remote_row_mod_ts} eq $local_row->{remote_row_mod_ts}) ? 0 : 1;
    my $img_mod_ts_mutated = ($remote_row->{remote_img_mod_ts} eq $local_row->{remote_img_mod_ts}) ? 0 : 1;

    if ($row_mod_ts_mutated or $img_mod_ts_mutated) {
      my @data = (
        'remote_row_mod_ts = ' . $dbh->quote($remote_row->{remote_row_mod_ts}),
        'remote_img_mod_ts = ' . $dbh->quote($remote_row->{remote_img_mod_ts}),
        'remote_removed_at = NULL',
        'local_removed_at = NULL'
      );

      my @conditions = (
        'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
        'remote_id = ' . $dbh->quote($remote_id)
      );

      my $sql = "UPDATE $MLS::Config::MLS.mutation SET " . join(', ', @data) . " WHERE " . join(' AND ', @conditions);
      $self->{temp_log} = "$sql\n";
      $dbh->do($sql);

      $self->{totals}->{updated}++;
      print ".";
      print "[$i]\n" if (++$i % 100 == 0);
    }
  }

  print "\n";
  $self->monitor('updated', $self->{totals}->{updated});
}

# DELETED
# look for rows in local that are no longer in remote
sub deleted_remote_rows {
  my ($self) = @_;

  if ($MLS::Config::PEAK_TIME) {
    print "Skipping looking for removed rows\n";
    return;
  }
  else {
    print "Looking for removed rows.\n";
  }

  my $dbh = $self->{dbh};
  my ($local, $remote) = ($self->{local}, $self->{remote});

  my $i = 0;

  foreach my $remote_id (keys %$local) {

    # still exists on remote?
    next if ($remote->{ $remote_id });

    # already removed locally?
    next if ($local->{ $remote_id }->{remote_removed_at});

    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );

    my $sql = "UPDATE $MLS::Config::MLS.mutation SET remote_removed_at = NOW() WHERE " . join(' AND ', @conditions);
    $self->{temp_log} = "$sql\n";
    $dbh->do($sql);

    $self->{totals}->{removed}++;
    print ".";
    print "[$i]\n" if (++$i % 100 == 0);
  }

  print "\n";
  $self->monitor('removed', $self->{totals}->{removed});
}

# RESURRECTED
# look for rows that were removed but now are back in the remote feed
sub resurrect_remote_rows {
  my ($self) = @_;

  print "Looking for resurrected rows.\n";

  my $dbh = $self->{dbh};
  my ($local, $remote) = ($self->{local}, $self->{remote});

  my $i = 0;

  foreach my $remote_id (keys %$remote) {
    my $remote_row = $remote->{ $remote_id };
    my $local_row = $local->{ $remote_id };

    next unless ($local_row && $local_row->{remote_removed_at});

    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );

    my $sql = "UPDATE $MLS::Config::MLS.mutation SET remote_removed_at = NULL WHERE " . join(' AND ', @conditions);
    $self->{temp_error} = "$sql\n";
    $dbh->do($sql);

    my $pkey_ident = $MLS::Config::PRIMARY_KEY{SystemName};

    $sql = 'UPDATE ' . $MLS::Config::MLS . '."' . $MLS::Config::RESOURCE . '" SET __removed_at = NULL WHERE ' . $dbh->quote_identifier($pkey_ident) .' = ' . $dbh->quote($remote_id);
    $self->{temp_log} = "$sql\n";
    $dbh->do($sql);

    $self->{totals}->{resurrected}++;
    print ".";
    print "[$i]\n" if (++$i % 100 == 0);
  }

  print "\n";
  $self->monitor('resurrected', $self->{totals}->{resurrected});
}

1;
