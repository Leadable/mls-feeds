package MLS::Resource::Row;
use strict;

use Data::Dumper qw(Dumper);
use MLS::Resource::Utils;

$| = 1;

sub new {
  my ($class, $opts) = @_;

  $opts->{pg_col_info} = {};
  $opts->{rets_table_info} = {};
  $opts->{column_identifier} = $MLS::Config::Row::COLUMN_IDENTIFIER || 'SystemName';

  return bless $opts, $class;
}

sub go {
  my ($self) = @_;

  print "----Syncing listing rows----\n\n";
  $self->{totals} = { new => 0, updated => 0, dupes => 0, error => 0, };
  $self->fetch_pg_col_info();

  my $chunk_size;
  if (! defined $MLS::Config::Row::OFFSET_SIZE) {
    warn "WARNING: No offset size defined for this board ($MLS::Config::MLS), using default of 1,000\n";
    $chunk_size = 1000;
  }
  else {
    $chunk_size = $MLS::Config::Row::OFFSET_SIZE;
  }

  foreach my $class_id (sort keys %MLS::Config::CLASSES) {
    my $class = $MLS::Config::CLASSES{ $class_id };
    next if $class->{ignore};

    $self->fetch_rets_table_info($class_id);

    my $mutated = $self->mutated($class_id);
    next unless $mutated;

    print "Class [$class_id] was found to be mutated\n";
    my $done = 0;
    my $total = scalar @$mutated;

    while (@$mutated) {
      my @chunk = splice(@$mutated, 0, $chunk_size);
      $self->fetch_remote($class_id, $class, \@chunk);

      $done += scalar @chunk;
      print "[$done/$total] completed\n\n";
    }
  }

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
  $monitor->status({ namespace => ['Row'], key => $key, value => $value });
}


sub fetch_pg_col_info {
  my ($self) = @_;

  my $dbh = $self->{dbh};
  my $pg_col_info = $self->{pg_col_info};

  my $sql = 'SELECT attrelid::regclass, attnum, attname, atttypid, format_type(atttypid, atttypmod) as type
    FROM   pg_attribute
    WHERE  attrelid = \'' . $MLS::Config::MLS . '."' . $MLS::Config::RESOURCE . '"\'::regclass
    AND    attnum > 0
    AND    NOT attisdropped
    ORDER  BY attnum';
 
  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });
  my %pg_col_info = map { $_->{attname}, $_ } @$rs;

  $self->{pg_col_info} = \%pg_col_info;
}

sub fetch_rets_table_info {
  my ($self, $class_id) = @_;

  print "Fetching rets table info for [$class_id]\n";
  my $rets = $self->{rets};

  my $retries_left = 4;

  while ($retries_left--) {
    $self->{rets_table_info} = eval {
      my $metadata = $rets->GetMetadata;
      my $class = $metadata->GetClass($MLS::Config::RESOURCE, $class_id);

      my $return;

      foreach my $table (@{ $metadata->GetAllTables($class) }) {
        my %info = (
          SystemName => $table->GetSystemName(),
          StandardName => $table->GetStandardName(),
          DBName => $table->GetDBName(),
          ShortName => $table->GetShortName(),
          LongName => $table->GetLongName(),
          Unique => $table->IsUnique(),
        );

        $return->{ $table->GetSystemName() } = \%info;
      }

      return $return;
    };

    if ($@) {
      print "error in fetch_rets_table_info: $@";

      if ($retries_left) {
        print "retrying [$retries_left] more times\n";
        sleep 10;
        $rets->login;
      }
      else {
        die $@;
      }
    }
  }
}

sub mutated {
  my ($self, $class) = @_;

  my $dbh = $self->{dbh};

  my @conditions = (
    'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
    'class = ' . $dbh->quote($class),
    "remote_row_mod_ts <> COALESCE(local_row_mod_ts, '')",
    "remote_removed_at IS NULL"
  );

  my $sql = "SELECT remote_id, remote_row_mod_ts, local_row_mod_ts FROM $MLS::Config::MLS.mutation WHERE " . join(' AND ', @conditions) . " ORDER BY remote_id";
  $self->{temp_error} = "$sql\n";

  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  return @$rs ? $rs : 0;
}

sub fetch_local {
  my ($self, $mutated) = @_;

  my $dbh = $self->{dbh};

  my $pkey = $MLS::Config::PRIMARY_KEY{SystemName};

  my @select = (
    $dbh->quote_identifier($pkey),
  );

  if (%MLS::Config::STATUS_COLUMN) {
    push @select, $dbh->quote_identifier($self->{local_status_col});
  }

  if (%MLS::Config::PRICE_COLUMN) {
    push @select, $dbh->quote_identifier($self->{local_price_col});
  }

  my $sql = "SELECT " . join(', ', @select) . " FROM $MLS::Config::MLS.\"$MLS::Config::RESOURCE\" WHERE " . $dbh->quote_identifier($pkey) . " IN('" . join("','", map($_->{remote_id}, @$mutated)) . "')";
  $self->{temp_error} = "$sql\n";
  my %local = map { $_->{$pkey}, $_ } @{ $dbh->selectall_arrayref($sql, { Slice => {} }) };

  return \%local;
}

sub fetch_remote {
  my ($self, $class_id, $class, $remote_ids) = @_;

  my $dbh = $self->{dbh};
  my $rets = $self->{rets};
  my $rets_table_info = $self->{rets_table_info};
  my $pg_col_info = $self->{pg_col_info};

  # classes may use different columns for price/status
  $self->{local_price_col}   = $MLS::Config::PRICE_COLUMN{$class_id}  || $MLS::Config::PRICE_COLUMN{$self->{column_identifier}};
  $self->{remote_price_col}  = $MLS::Config::PRICE_COLUMN{$class_id}  || $MLS::Config::PRICE_COLUMN{SystemName};
  $self->{local_status_col}  = $MLS::Config::STATUS_COLUMN{$class_id} || $MLS::Config::STATUS_COLUMN{$self->{column_identifier}};
  $self->{remote_status_col} = $MLS::Config::STATUS_COLUMN{$class_id} || $MLS::Config::STATUS_COLUMN{SystemName};

  my $expected_count = scalar @$remote_ids;
  my $local_rows = $self->fetch_local($remote_ids);
  my $pkey = $MLS::Config::PRIMARY_KEY{SystemName};

  my $search = '(' . join('|', map("($pkey=$_->{remote_id})", @$remote_ids)) . ')';
  $self->{temp_error} = "$search\n";

  eval {
    my $request = $rets->CreateSearchRequest($MLS::Config::RESOURCE, $class_id, $search);
    $request->SetLimit($librets::SearchRequest::LIMIT_DEFAULT);
    $request->SetOffset($librets::SearchRequest::OFFSET_NONE);
    $request->SetStandardNames(0);
    $request->SetCountType($librets::SearchRequest::RECORD_COUNT_AND_RESULTS);
    $request->SetFormatType($librets::SearchRequest::COMPACT_DECODED);

    print "Fetching remote rows for [$MLS::Config::RESOURCE]/[" . $class->{StandardName} . "] ($class_id)\n";
    my $results = $rets->Search($request);

    print "Record count: [" . $results->GetCount() . "]\n";

    my $i = 0;
    while (MLS::Rets::HasNext($results)) {
      eval {
        my $rets_columns = $results->GetColumns();

        my %data = ( __class_name => $dbh->quote($class_id), __modified_at => 'NOW()', __removed_at => 'NULL' );

        foreach my $column (@$rets_columns) {
          my $value = $results->GetString($column);

          my $pg_col_name = $rets_table_info->{ $column }->{$self->{column_identifier}};
          my $pg_col_type = $pg_col_info->{ $pg_col_name }->{type};

          unless ($value) {
            $data{ $pg_col_name } = 'NULL';
            next;
          }

          if ($pg_col_type eq 'text[]') {
            my @vals = split(',', $value);
            $data{ $pg_col_name } = 'ARRAY[' . join(',', map( $dbh->quote($_), @vals)) . ']';
          }
          elsif (($pg_col_type eq 'integer' || $pg_col_type eq 'numeric') && $value eq '.') {
            $data{ $pg_col_name } = $dbh->quote(0);
          }
          else {
            $data{ $pg_col_name } = $dbh->quote($value);
          }
        }

        my $pkey_val = $results->GetString($MLS::Config::PRIMARY_KEY{SystemName});
        my $local_row = $local_rows->{ $pkey_val };

        $local_row ? $self->update($results, \%data, $local_row) : $self->insert($results, \%data);

        $self->update_mutation_table($pkey_val, $results, $class_id);
      };

      if ($@) {
        print "Error while parsing results:\n";
        $self->{totals}{error}++;

        if (ref $@ eq 'librets::RetsReplyException') {
          print "librets::RetsException: " . $@->GetFullReport();
        }
        elsif ($@) {
          print $@;
        }
      }

      print '.';
      print "[$i]\n" if (++$i % 100 == 0);
    }
    print "\n";

    die "ERROR: Expected record count was [$expected_count] but received [$i]\n" if ($expected_count - $i > 10);
  };

  if (ref $@ eq 'librets::RetsReplyException') {
    die "librets::RetsException: " . $@->GetFullReport();
  }
  elsif ($@) {
    die $@;
  }

  $self->monitor('new', $self->{totals}{new});
  $self->monitor('updated', $self->{totals}{updated});
  $self->monitor('dupes', $self->{totals}{dupes});
  $self->monitor('error', $self->{totals}{error});
}

sub update {
  my ($self, $results, $data, $local_row) = @_;
 
  my $dbh = $self->{dbh};
 
  my @vals;
  foreach (sort keys %$data) {
    push(@vals, $dbh->quote_identifier($_) . ' = ' . $data->{$_});
  }

  if (%MLS::Config::PRICE_COLUMN) {
    my $price_val = $local_row->{$self->{local_price_col}};
    my $price_newval = $results->GetString($self->{remote_price_col}) || 0;

    if ($price_val != $price_newval) {

      if ($price_val) {
        # __percent_reduced
        my $amount_reduced = $price_val - $price_newval;
        my $percent_reduced = $amount_reduced / $price_val * 100;

        push(@vals, '__percent_reduced = ' . $percent_reduced);
      }

      # __price_updated_at
      push(@vals, '__price_updated_at = NOW()');

      # __price_history_times
      push(@vals, '__price_history_times = array_append(__price_history_times, LOCALTIMESTAMP)');

      # __price_history_vals
      push(@vals, '__price_history_vals = array_append(__price_history_vals, ' . $price_newval . '::numeric)');
    }
  }

  if (%MLS::Config::STATUS_COLUMN) {
    my $status_val = $local_row->{$self->{local_status_col}};
    my $status_newval = $results->GetString($self->{remote_status_col}) || 'NULL';
    if ($status_val ne $status_newval) {
      # __status_updated_at
      push(@vals, '__status_updated_at = NOW()');

      # __status_history_times
      push(@vals, '__status_history_times = array_append(__status_history_times, LOCALTIMESTAMP)');

      # __status_history_vals
      push(@vals, '__status_history_vals = array_append(__status_history_vals, ' . $dbh->quote($status_newval) . ')');
    }
  }

  my $pkey_ident = $MLS::Config::PRIMARY_KEY{SystemName};
  my $pkey_val = $results->GetString($pkey_ident);

  my $sql = 'UPDATE ' . $MLS::Config::MLS . '."' . $MLS::Config::RESOURCE . '" SET ' . join(',', @vals) . " WHERE " . $dbh->quote_identifier($pkey_ident) . " = " . $dbh->quote($pkey_val);
  $self->{temp_error} = "$sql\n";
  $dbh->do($sql);

  $self->{totals}->{updated}++;
}

sub insert {
  my ($self, $results, $data) = @_;

  my $dbh = $self->{dbh};

  my (@cols, @vals);
  foreach (sort keys %$data) {
    push(@cols, $dbh->quote_identifier($_));
    push(@vals, $data->{$_});
  }

  if (%MLS::Config::PRICE_COLUMN) {
    # __percent_reduced
    push(@cols, '__percent_reduced');
    push(@vals, 0);

    # __price_history_times
    push(@cols, '__price_history_times');
    push(@vals, 'ARRAY[NOW()]');

    # __price_history_vals
    push(@cols, '__price_history_vals');
    push(@vals, 'ARRAY[' . ($data->{$self->{local_price_col}} || 0) . '::numeric]');
  }

  if (%MLS::Config::STATUS_COLUMN) {
    # __status_history_times
    push(@cols, '__status_history_times');
    push(@vals, 'ARRAY[NOW()]');

    # __status_history_vals
    push(@cols, '__status_history_vals');
    push(@vals, 'ARRAY[' . ($data->{$self->{local_status_col}} || 'NULL') . ']');
  }

  # __inserted_at
  push(@cols, '__inserted_at');
  push(@vals, 'NOW()');

  my $sql = 'INSERT INTO ' . $MLS::Config::MLS . '."' . $MLS::Config::RESOURCE . '"(' . join(',', @cols) . ') VALUES(' . join(',', @vals) . ')';
  $self->{temp_error} = "$sql\n";

  eval {
    $dbh->do($sql);
  };

  if ($@ =~ /unique constraint/) {
    warn "Duplicate primary key found\n";
    warn Dumper $data;
    $self->{totals}{dupes}++;
  }
  elsif ($@) {
    # some other error, die normally
    die $@;
  }
  else {
    $self->{totals}{new}++;
  }
}

sub update_mutation_table {
  my ($self, $remote_id, $remote_row, $class) = @_;

  my $dbh = $self->{dbh};

  $dbh->set_autocommit(0);

  eval {
    my $address_sql;
    if (%MLS::Config::ADDR_COLUMNS) {
      # be aware: this can sometimes die silently
      my $address = MLS::Resource::Utils::parse_address($remote_row, $class);
      $address_sql = ', remote_address = ' . $dbh->quote($address);
    }

    # update local_row_mod_ts and remote_address in mutation row
    # if remote_address does not equal local_address in mutation row the row will need to be geocoded before being published
    my @conditions = (
      'resource = ' . $dbh->quote($MLS::Config::RESOURCE),
      'remote_id = ' . $dbh->quote($remote_id)
    );
    my $sql = "UPDATE $MLS::Config::MLS.mutation SET local_row_mod_ts = remote_row_mod_ts" . $address_sql . " WHERE " . join(' AND ', @conditions);
    $self->{temp_error} = "$sql\n";
    $dbh->do($sql);

    MLS::Resource::Utils::check_transaction_complete($dbh, \@conditions);
  };

  if ($@) {
    $dbh->do('ROLLBACK');
    die $@;
  }

  $dbh->do('COMMIT');
  $dbh->set_autocommit(1);
}

1;
