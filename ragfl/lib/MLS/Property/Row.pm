package MLS::Property::Row;
use strict;

use Data::Dumper qw(Dumper);

sub new {
  my ($class, $opts) = @_;

  $opts->{rets_search_limit} ||= 100;
  $opts->{pg_col_info} = {};
  $opts->{rets_table_info} = {};

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  $self->fetch_pg_col_info();

  foreach my $class_id (sort keys %MLS::Property::Config::CLASSES) {
    my $class = $MLS::Property::Config::CLASSES{ $class_id };
    next if $class->{ignore};

    $self->fetch_rets_table_info($class_id);

    my $mutated = $self->mutated($class_id);
    next unless $mutated;

    while (@$mutated) {
      #print Dumper($mutated);

      my @chunk = splice(@$mutated, 0, $self->{rets_search_limit});

      $self->fetch_remote($class_id, $class, \@chunk);
    }
    print "\n";
  }
}

sub fetch_pg_col_info {
  my ($self) = @_;

  my $dbh = $self->{dbh};
  my $pg_col_info = $self->{pg_col_info};

  my $sql = 'SELECT attrelid::regclass, attnum, attname, atttypid, format_type(atttypid, atttypmod) as type
    FROM   pg_attribute
    WHERE  attrelid = \'' . $MLS::Property::Config::MLS . '."' . $MLS::Property::Config::RESOURCE . '"\'::regclass
    AND    attnum > 0
    AND    NOT attisdropped
    ORDER  BY attnum';
 
  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });
  #print Dumper($rs);
  my %pg_col_info = map { $_->{attname}, $_ } @$rs;
  #print Dumper(\%pg_col_info);

  $self->{pg_col_info} = \%pg_col_info;
}

sub fetch_rets_table_info {
  my ($self, $class_id) = @_;

  my $rets = $self->{rets};

  my $metadata = $rets->GetMetadata;
  my $class = $metadata->GetClass($MLS::Property::Config::RESOURCE, $class_id);
 
  my %rets_table_info;
  
  foreach my $table (@{ $metadata->GetAllTables($class) }) {
    my %info = (
      SystemName => $table->GetSystemName(),
      StandardName => $table->GetStandardName(),
      DBName => $table->GetDBName(),
      ShortName => $table->GetShortName(),
      LongName => $table->GetLongName(),
      Unique => $table->IsUnique(),
    );

    $rets_table_info{ $table->GetSystemName() } = \%info;
  }

  $self->{rets_table_info} = \%rets_table_info;
}

sub mutated {
  my ($self, $class) = @_;

  my $dbh = $self->{dbh};

  my @conditions = (
    'resource = ' . $dbh->quote($MLS::Property::Config::RESOURCE),
    'class = ' . $dbh->quote($class),
    "remote_row_mod_ts <> COALESCE(local_row_mod_ts, '')",
    "remote_removed_at IS NULL"
  );

  my $sql = "SELECT remote_id, remote_row_mod_ts, local_row_mod_ts FROM $MLS::Property::Config::MLS.mutation WHERE " . join(' AND ', @conditions) . " ORDER BY remote_id";
  print "$sql\n";

  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  print "found " . scalar(@$rs) . "\n";
  return @$rs ? $rs : 0;
}

sub fetch_local {
  my ($self, $mutated) = @_;

  my $dbh = $self->{dbh};

  my $pkey = $MLS::Property::Config::PRIMARY_KEY{SystemName};

  my @select = (
    $dbh->quote_identifier($pkey),
    $dbh->quote_identifier($MLS::Property::Config::PRICE_COLUMN{DBName}),
    $dbh->quote_identifier($MLS::Property::Config::STATUS_COLUMN{DBName})
  );

  my $sql = "SELECT " . join(', ', @select) . " FROM $MLS::Property::Config::MLS.\"$MLS::Property::Config::RESOURCE\" WHERE $pkey IN('" . join("','", map($_->{remote_id}, @$mutated)) . "')";
  
  my %local = map { $_->{$pkey}, $_ } @{ $dbh->selectall_arrayref($sql, { Slice => {} }) };

  return \%local;
}

sub fetch_remote {
  my ($self, $class_id, $class, $remote_ids) = @_;

  my $dbh = $self->{dbh};
  my $rets = $self->{rets};
  my $rets_table_info = $self->{rets_table_info};
  my $pg_col_info = $self->{pg_col_info};

  my $local_rows = $self->fetch_local($remote_ids);
  my $pkey = $MLS::Property::Config::PRIMARY_KEY{SystemName};

  my $search = '(' . join('|', map("($pkey=$_->{remote_id})", @$remote_ids)) . ')';
  print "$search\n";

  eval {
    my $request = $rets->CreateSearchRequest($MLS::Property::Config::RESOURCE, $class_id, $search);
    #$request->SetSelect("*");
    $request->SetLimit($librets::SearchRequest::LIMIT_DEFAULT);
    $request->SetOffset($librets::SearchRequest::OFFSET_NONE);
    $request->SetStandardNames(0);
    $request->SetCountType($librets::SearchRequest::RECORD_COUNT_AND_RESULTS);
    $request->SetFormatType($librets::SearchRequest::COMPACT_DECODED);

    print "Request for $MLS::Property::Config::RESOURCE, " . $class->{StandardName} . " ($class_id)\n";
    my $results = $rets->Search($request);

    print "Record count: " . $results->GetCount() . "\n\n";
    #die unless $results->GetCount();

    #my $x = 0;
    while ($results->HasNext()) {

      my $rets_columns = $results->GetColumns();

      my %data = ( __class_name => $class_id, __modified_at => 'NOW()', __removed_at => 'NULL', __photo_urls => $self->photo_urls($results) );

      foreach my $column (@$rets_columns) {
        #print $column . ": " . $results->GetString($column) . "\n";
        my $value = $results->GetString($column);

        my $pg_col_name = $rets_table_info->{ $column }->{DBName};
        my $pg_col_type = $pg_col_info->{ $pg_col_name }->{type};

        unless ($value) {
          $data{ $pg_col_name } = 'NULL';
          next;
        }

        if ($pg_col_type eq 'text[]') {
          my @vals = split(',', $results->GetString($column));
          #print "$pg_col_name raw => :" . $results->GetString($column) . ":\n";
          #print "$pg_col_name split => :" . join(' | ', @vals) . ":\n";

          $data{ $pg_col_name } = 'ARRAY[' . join(',', map( $dbh->quote($_), @vals)) . ']';
        } else {
          $data{ $pg_col_name } = $dbh->quote($results->GetString($column));
        }
      }
      #print Dumper(\%data);
     
      my $pkey_val = $results->GetString($MLS::Property::Config::PRIMARY_KEY{SystemName});
      my $local_row = $local_rows->{ $pkey_val };

      print "sysid => :$pkey_val:\n";

      #print Dumper($local_row);

      $local_row ? $self->update($results, \%data, $local_row) : $self->insert($results, \%data);

      $self->update_mutation_table($pkey_val, $results);
    }
  };

  if ($@) {
    print "librets::RetsException: " . $@->GetFullReport() if ($@ =~ /librets/);
    die $@;
  }
}

sub photo_urls {
  my ($self, $results) = @_;

  my $dbh = $self->{dbh};

  my $image_count = $results->GetString('113');
  return 'null::text[]' unless $image_count;

  my $pkey_val = $results->GetString($MLS::Property::Config::PRIMARY_KEY{SystemName});
  my @urls;

  foreach my $index (1 .. $image_count) {
    my $url = sprintf('http://%s/%s/%s/%s/%s/%d.jpg'
      , 'd3nzuupqvizida.cloudfront.net'
      , $MLS::Property::Config::MLS
      , $MLS::Property::Config::RESOURCE
      , substr($pkey_val, -3, 3)
      , $pkey_val
      , $index
    );

    print "$url\n";

    push(@urls, $url);
  }

  return 'ARRAY[' . join(',', map($dbh->quote($_), @urls)) . ']';
}

sub update {
  my ($self, $results, $data, $local_row) = @_;
 
  my $dbh = $self->{dbh};
 
  my @vals;
  foreach (sort keys %$data) {
    push(@vals, $dbh->quote_identifier($_) . ' = ' . $data->{$_});
  }

  my $price_val = $local_row->{ $MLS::Property::Config::PRICE_COLUMN{DBName} };
  my $price_newval = $results->GetString($MLS::Property::Config::PRICE_COLUMN{SystemName});

  print "Current Price: $price_val\n";
  print "New Price    : $price_newval\n";
  print "\n";

  if ($price_val != $price_newval) {
    # __percent_reduced
    my $amount_reduced = $price_val - $price_newval;
    my $percent_reduced = $amount_reduced / $price_val * 100;

    push(@vals, '__percent_reduced = ' . $percent_reduced);


    # __price_updated_at
    push(@vals, '__price_updated_at = NOW()');

    # __price_history_times
    push(@vals, '__price_history_times = array_append(__price_history_times, LOCALTIMESTAMP)');

    # __price_history_vals
    push(@vals, '__price_history_vals = array_append(__price_history_vals, ' . $price_newval . '::numeric)');
  }

  my $status_val = $local_row->{ $MLS::Property::Config::STATUS_COLUMN{DBName} };
  my $status_newval = $results->GetString($MLS::Property::Config::STATUS_COLUMN{SystemName});
  if ($status_val ne $status_newval) {
    # __status_updated_at
    push(@vals, '__status_updated_at = NOW()');

    # __status_history_times
    push(@vals, '__status_history_times = array_append(__status_history_times, LOCALTIMESTAMP)');

    # __status_history_vals
    push(@vals, '__status_history_vals = array_append(__status_history_vals, ' . $dbh->quote($status_newval) . ')');
  }

  my $pkey_ident = $MLS::Property::Config::PRIMARY_KEY{SystemName};
  my $pkey_val = $results->GetString($pkey_ident);

  my $sql = 'UPDATE ' . $MLS::Property::Config::MLS . '."' . $MLS::Property::Config::RESOURCE . '" SET ' . join(',', @vals) . " WHERE $pkey_ident = " . $dbh->quote($pkey_val);
  print "$sql\n";
  $dbh->do($sql);
}

sub insert {
  my ($self, $results, $data) = @_;

  my $dbh = $self->{dbh};

  my (@cols, @vals);
  foreach (sort keys %$data) {
    push(@cols, $dbh->quote_identifier($_));
    push(@vals, $data->{$_});
  }

  # __inserted_at
  push(@cols, '__inserted_at');
  push(@vals, 'NOW()');

  # __percent_reduced
  push(@cols, '__percent_reduced');
  push(@vals, 0);

  # __price_history_times
  push(@cols, '__price_history_times');
  push(@vals, 'ARRAY[NOW()]');

  # __price_history_vals
  push(@cols, '__price_history_vals');
  push(@vals, 'ARRAY[' . $data->{ $MLS::Property::Config::PRICE_COLUMN{DBName} } . '::numeric]');

  # __status_history_times
  push(@cols, '__status_history_times');
  push(@vals, 'ARRAY[NOW()]');

  # __status_history_vals
  push(@cols, '__status_history_vals');
  push(@vals, 'ARRAY[' . $data->{ $MLS::Property::Config::STATUS_COLUMN{DBName} } . ']');

  my $sql = 'INSERT INTO ' . $MLS::Property::Config::MLS . '."' . $MLS::Property::Config::RESOURCE . '"(' . join(',', @cols) . ') VALUES(' . join(',', @vals) . ')';
  print "$sql\n";
  $dbh->do($sql);
}

sub update_mutation_table {
  my ($self, $remote_id, $remote_row) = @_;

  my $dbh = $self->{dbh};

  $dbh->{AutoCommit} = 0;

  eval {
    my $address = $MLS::Property::Config::ADDRESS->($remote_row);

    # update local_row_mod_ts and remote_address in mutation row
    # if remote_address does not equal local_address in mutation row the row will need to be geocoded before being published
    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Property::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );
    my $sql = "UPDATE $MLS::Property::Config::MLS.mutation SET local_row_mod_ts = remote_row_mod_ts, remote_address = " . $dbh->quote($address) . " WHERE " . join(' AND ', @conditions);
    print "$sql\n";
    $dbh->do($sql);

    my $sql = "SELECT * FROM $MLS::Property::Config::MLS.mutation WHERE " . join(' AND ', @conditions);
    print "$sql\n";
    my $row = $dbh->selectrow_hashref($sql);

    my $transaction_complete = 1;

    # photos are still out of sync
    $transaction_complete = 0 if ($row->{remote_img_mod_ts} ne $row->{local_img_mod_ts});

    # address hasn't been geocoded
    $transaction_complete = 0 if ($row->{remote_address} ne $row->{local_address});

    # if there are no more differences between remote and local in the mutation table then set the last_transaction_completed at = NOW() so that the row can be published
    # The publisher job will detect the change and publish the row to the materialized (live) tables
    if ($transaction_complete) {
      my $sql = "UPDATE $MLS::Property::Config::MLS.mutation SET last_transaction_completed_at = NOW() WHERE " . join(' AND ', @conditions);
      print "$sql\n";
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
