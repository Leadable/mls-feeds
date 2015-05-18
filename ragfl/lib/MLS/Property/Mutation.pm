package MLS::Property::Mutation;
use strict;

use Data::Dumper qw(Dumper);

sub new {
  my ($class, $opts) = @_;

  $opts->{remote} = {};
  $opts->{local} = {};

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  $self->fetch_remote();
  $self->fetch_local();

  $self->new_remote_rows();
  $self->updated_remote_rows();
  $self->deleted_remote_rows();
  $self->resurrect_remote_rows();
}

# fetch remote rows
sub fetch_remote {
  my ($self) = @_;

  my $rets = $self->{rets};
  my $remote = $self->{remote};

  foreach my $class_id (sort keys %MLS::Property::Config::CLASSES) {
    my $class = $MLS::Property::Config::CLASSES{ $class_id };
    next if $class->{ignore};

    eval {
      my $request = $rets->CreateSearchRequest($MLS::Property::Config::RESOURCE, $class_id, "(sysid=0+)");
      #$request->SetSelect("*");
      $request->SetLimit($librets::SearchRequest::LIMIT_DEFAULT);
      $request->SetOffset($librets::SearchRequest::OFFSET_NONE);
      $request->SetStandardNames(0);
      $request->SetCountType($librets::SearchRequest::RECORD_COUNT_AND_RESULTS);
      $request->SetFormatType($librets::SearchRequest::COMPACT_DECODED);

      print "Request for $MLS::Property::Config::RESOURCE, " . $class->{StandardName} . " ($class_id)\n";
      my $results = $rets->Search($request);

      print "Record count: " . $results->GetCount() . "\n\n";

      my $x = 0;
      while ($results->HasNext()) {
        #last if ($x++ > 10);

        #print Dumper(\%MLS::Property::Config::ROW_MOD_TS_COLUMN);
        #print Dumper(\%MLS::Property::Config::IMG_MOD_TS_COLUMN);

        my $row_mod_ts = $results->GetString( $MLS::Property::Config::ROW_MOD_TS_COLUMN{SystemName} );
        my $img_mod_ts = $results->GetString( $MLS::Property::Config::IMG_MOD_TS_COLUMN{SystemName} );

        my %data = (
          remote_row_mod_ts => $row_mod_ts,
          remote_img_mod_ts => $img_mod_ts,
          class => $class_id
        );

        $remote->{ $results->GetString( $MLS::Property::Config::PRIMARY_KEY{SystemName} ) } = \%data;
      }
    };

    if ($@) {
      print "librets::RetsException: " . $@->GetFullReport();
      die $@;
    }
  }

  print Dumper($remote);

  #$rets->Logout();
}

# fetch local 
sub fetch_local {
  my ($self) = @_;

  my $dbh = $self->{dbh};
  my $local = $self->{local};

  my $sql = "SELECT remote_id, remote_row_mod_ts, remote_img_mod_ts, remote_removed_at FROM $MLS::Property::Config::MLS.mutation";
  print "$sql\n";
  
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
  
  my $dbh = $self->{dbh};
  my ($local, $remote) = ($self->{local}, $self->{remote});

  foreach my $remote_id (keys %$remote) {

    next if ($local->{ $remote_id }); 
   
    my $remote_row = $remote->{ $remote_id };

    my @cols = qw(resource class remote_id remote_row_mod_ts remote_img_mod_ts); 
    my @vals = (
      $dbh->quote($MLS::Property::Config::RESOURCE),
      $dbh->quote($remote_row->{class}),
      $dbh->quote($remote_id),
      $dbh->quote($remote_row->{remote_row_mod_ts}),
      $dbh->quote($remote_row->{remote_img_mod_ts})
    );

    my $sql = "INSERT INTO $MLS::Property::Config::MLS.mutation(" . join(', ', @cols) . ") VALUES (" . join(', ', @vals) . ")";
    print "$sql\n";
    $dbh->do($sql);
  }
}

#UPDATE
# look for rows in remote and local and compare remote_row_mod_ts and remote_img_mod_ts
sub updated_remote_rows {
  my ($self) = @_;
  
  my $dbh = $self->{dbh};
  my ($local, $remote) = ($self->{local}, $self->{remote});

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
        'resource = ' . $dbh->quote($MLS::Property::Config::RESOURCE),
        'remote_id = ' . $dbh->quote($remote_id)
      );

      my $sql = "UPDATE $MLS::Property::Config::MLS.mutation SET " . join(', ', @data) . " WHERE " . join(' AND ', @conditions);
      print "$sql\n";
      $dbh->do($sql);
    }
  } 
}

# DELETED
# look for rows in local that are no longer in remote
sub deleted_remote_rows {
  my ($self) = @_;
  
  my $dbh = $self->{dbh};
  my ($local, $remote) = ($self->{local}, $self->{remote});

  foreach my $remote_id (keys %$local) {

    # still exists on remote?
    next if ($remote->{ $remote_id });

    # already removed locally?
    next if ($local->{ $remote_id }->{remote_removed_at});

    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Property::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );

    my $sql = "UPDATE $MLS::Property::Config::MLS.mutation SET remote_removed_at = NOW() WHERE " . join(' AND ', @conditions);
    print "$sql\n";
    $dbh->do($sql);
  }
}

# RESURRECTED
# look for rows that were removed but now are back in the remote feed
sub resurrect_remote_rows {
  my ($self) = @_;
  
  my $dbh = $self->{dbh};
  my ($local, $remote) = ($self->{local}, $self->{remote});

  foreach my $remote_id (keys %$remote) {
    my $remote_row = $remote->{ $remote_id };
    my $local_row = $local->{ $remote_id };
 
    next unless ($local_row && $local_row->{remote_removed_at});

    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Property::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );

    my $sql = "UPDATE $MLS::Property::Config::MLS.mutation SET remote_removed_at = NULL WHERE " . join(' AND ', @conditions);
    print "$sql\n";
    $dbh->do($sql);

    my $pkey_ident = $MLS::Property::Config::PRIMARY_KEY{SystemName};

    $sql = 'UPDATE ' . $MLS::Property::Config::MLS . '."' . $MLS::Property::Config::RESOURCE . '" SET __removed_at = NULL WHERE ' . $pkey_ident .' = ' . $dbh->quote($remote_id);
    print "$sql\n";
    $dbh->do($sql);
  }
}

1;
