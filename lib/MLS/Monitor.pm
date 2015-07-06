package MLS::Monitor;
use strict;

use Data::Dumper qw(Dumper);
use File::Path qw(mkpath);
use Mojo::JSON qw(j);
use POSIX;

$| = 1;

sub new {
  my ($class, $opts) = @_;

  die "Monitor missing arguments" if (!$opts->{log_dir} || !$opts->{dbh});

  $opts->{stats} = {};
  $opts->{log_file} = "$opts->{log_dir}/monitor.log";
  $opts->{live_table} = 'public.monitor_feeds';
  $opts->{journal_table} = 'public.monitor_feeds_journal';

  bless $opts, $class; 
}

sub start {
  my ($self, $opts) = @_;

  my $dbh = $self->{dbh};

  # Get row from monitor table
  my $sql = "SELECT id from $self->{live_table} where mls = \'$MLS::Config::MLS\'";
  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  if (scalar(@$rs)) {
    $self->{id} = $rs->[0]->{id};
  }

  # starting a new job for this board
  # TODO: potentially move this logic to it's own method
  if (defined $self->{id}) {
    # copy existing monitor row to journal
    my $cols_text = 'container_id, started_at, failed_at, completed_at, stats, log_monitor_url, log_librets_url, mls';
    $sql =  "INSERT into $self->{journal_table} (monitor_id, $cols_text)" .
            "SELECT id, $cols_text from $self->{live_table} where id = $self->{id}";
    $dbh->do($sql);

    # reset existing monitor row (deleting cascades to journal)
    my $row_data = $self->get_blank_row();
    $sql = "UPDATE $self->{live_table} SET (" . join(',', keys %$row_data) . ") = (" . join(',', values %$row_data) . ") where id = $self->{id}";
    $dbh->do($sql);
  }
  else {
    # create the row for this board for monitor
    my $row_data = $self->get_blank_row();
    $sql = "INSERT INTO $self->{live_table} (" . join(',', keys %$row_data) . ") VALUES (" . join(',', values %$row_data) . ")";
    $dbh->do($sql);

    $sql = "SELECT id from $self->{live_table} where mls = \'$MLS::Config::MLS\'";
    $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

    if (scalar(@$rs)) {
      $self->{id} = $rs->[0]->{id};
    }
    else {
      die "Could not get ID for monitor row";
    }
  }

  if (! -d $self->{log_dir}) {
    mkpath($self->{log_dir});
  }

  # capture STDOUT, STDIN to log file
  open(STDOUT, '>', $self->{log_file}) or
    die "Cannot redirect STDOUT to [$self->{log_file}]: $!";
  open(STDERR, ">&STDOUT") or
    die "Cannot redirect STDERR to STDOUT: $!";
}

sub get_blank_row {
  my $self = shift;

  my $dbh = $self->{dbh};

  return {
    mls               => $dbh->quote($MLS::Config::MLS),
    created_at        => 'DEFAULT',
    status            => $dbh->quote('RUNNING'),
    container_id      => $dbh->quote(`cat /proc/self/cgroup | grep "docker" | sed s/\\\\//\\\\n/g | tail -1`),
    started_at        => 'NOW()',
    failed_at         => 'NULL',
    completed_at      => 'NULL',
    maintenance_lock  => 'DEFAULT',
    stats             => $dbh->quote('{}'),
    log_monitor_url   => 'NULL',
    minimum_wait      => 'DEFAULT',
    log_librets_url   => 'NULL',
  };
}

sub status {
  my ($self, $opts) = @_;

  my @namespace = @{ $opts->{namespace} };
  my $key = $opts->{key};
  my $value = $opts->{value};

  warn "MISSING namespace option\n" unless @namespace;
  warn "MISSING key option\n" unless $key;
  warn "MISSING value option\n" unless defined($value);

  my $dbh = $self->{dbh};

  my $stats = $self->{stats};
  foreach (@namespace) {
      $stats = $stats->{$_} ||= {};
  }

  $stats->{$key} = $value;

  # update monitor row with new stats
  my $json = $dbh->quote(j($self->{stats}));
  my $sql = "UPDATE $self->{live_table} SET stats = $json where id = $self->{id}";
  $dbh->do($sql);
}

sub finish {
  my ($self, $error) = @_;

  # bail if start dies before the id is found (rare but possible)
  return if (!$self->{id});

  my $dbh = $self->{dbh};

  # Firstly, update monitor row so if there is a problem storing the
  # log files, we can still see the error
  my %new_data;
  $new_data{status} = $error ? $dbh->quote('ERROR') : $dbh->quote('IDLE');
  $new_data{$error ? 'failed_at' : 'completed_at'} = 'NOW()';

  my $sql = "UPDATE $self->{live_table} SET (" . join(',', keys %new_data) . ") = (" . join(',', values %new_data) .") where id = $self->{id}";
  $dbh->do($sql);

  # Store logs here, update log_monitor_url
  my $storage_client = $self->{storage_client};

  my $filename_root = "$MLS::Config::MLS/" . strftime("%F %T", localtime);

  # Store monitor log
  my $monitor_log_url = $storage_client->store_file({
    source_filename => $self->{log_file},
    dest_filename   => "$filename_root-monitor.log",
    content_type    => 'text/plain',
  });

  # Store rets log
  my $rets_log_url = eval {
    $storage_client->store_file({
      source_filename => "$self->{log_dir}/rets.log",
      dest_filename   => "$filename_root-rets.log",
      content_type    => 'text/plain',
    });
  };

  if ($@) {
    print $@;
    $rets_log_url = '';
  }

  %new_data = (
    log_monitor_url => $dbh->quote($monitor_log_url),
    log_librets_url => $dbh->quote($rets_log_url),
  );

  $sql = "UPDATE $self->{live_table} SET (" . join(',', keys %new_data) . ") = (" . join(',', values %new_data) .") where id = $self->{id}";
  $dbh->do($sql);
}

1;
