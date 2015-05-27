package MLS::Monitor;
use strict;

use Data::Dumper qw(Dumper);
use File::Path qw(mkpath);
use Mojo::JSON qw(j);

sub new {
  my ($class, $opts) = @_;

  die "Monitor missing arguments" if (!$opts->{log_dir} || !$opts->{dbh});

  $opts->{stats} = {};
  $opts->{loaded_stats} = 0;
  $opts->{log_file} = "$opts->{log_dir}/monitor.log";

  bless $opts, $class; 
}

sub start {
  my ($self, $opts) = @_;

  if (! -d $self->{log_dir}) {
    mkpath($self->{log_dir});
  }

  # open file for write on a new_job to clear the log
  my $file_op = $self->{new_job} ? '>' : '>>';

  # capture STDOUT, STDIN to log file
  open(STDOUT, $file_op, $self->{log_file}) or
    die "Cannot redirect STDOUT to [$self->{log_file}]: $!";
  open(STDERR, $file_op, $self->{log_file}) or
    die "Cannot redirect STDERR to [$self->{log_file}]: $!";

  my $dbh = $self->{dbh};

  # Get row from monitor table
  my $sql = "SELECT id from public.monitor where mls = \'$MLS::Property::Config::MLS\'";
  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  if (scalar(@$rs)) {
    $self->{id} = $rs->[0]->{id};
  }

  # starting a new job for this board
  # TODO: potentially move this logic to it's own method
  if (defined $self->{id} && $opts->{new_job}) {
    # copy existing monitor row to journal
    my $cols_text = 'ec2_id, container_id, pid, started_at, failed_at, completed_at, stats, log_monitor_url, log_librets_url, mls';
    $sql =  "INSERT into monitor_journal (monitor_id, $cols_text)" .
            "SELECT id, $cols_text from monitor where id = $self->{id}";
    $dbh->do($sql);

    # reset existing monitor row (deleting cascades to monitor_journal)
    my $row_data = $self->get_blank_row();
    $sql = "UPDATE monitor SET (" . join(',', keys %$row_data) . ") = (" . join(',', values %$row_data) . ") where id = $self->{id}";
    $dbh->do($sql);
  }
  elsif (!defined $self->{id}) {
    # create the row for this board for monitor
    my $row_data = $self->get_blank_row();
    $sql = "INSERT INTO public.monitor(" . join(',', keys %$row_data) . ") VALUES (" . join(',', values %$row_data) . ")";
    $dbh->do($sql);

    $sql = "SELECT id from public.monitor where mls = \'$MLS::Property::Config::MLS\'";
    $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

    if (scalar(@$rs)) {
      $self->{id} = $rs->[0]->{id};
    }
    else {
      die "Could not get ID for monitor row";
    }
  }
}

sub get_blank_row {
  my $self = shift;

  my $dbh = $self->{dbh};

  return {
    mls               => $dbh->quote($MLS::Property::Config::MLS),
    created_at        => 'DEFAULT',
    status            => 'DEFAULT',
    ec2_id            => $dbh->quote(`wget -q -O - http://169.254.169.254/latest/meta-data/instance-id`),
    container_id      => $dbh->quote(`cat /proc/self/cgroup | grep "docker" | sed s/\\\\//\\\\n/g | tail -1`),
    pid               => $$,
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

  # Load our stats obj from the database so we can add to it
  if (!$self->{loaded_stats}) {
    my $sql = "SELECT stats from monitor where id = $self->{id}";
    my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

    if (scalar(@$rs)) {
      my $encoded_stats = $rs->[0]->{stats};

      $self->{stats} = j($encoded_stats);

      die "Could not decode json: $!" if (!$self->{stats});

    }
    else {
      die "Could not find stats object for id: [$self->{id}]";
    }

    $self->{loaded_stats} = 1;
  }

  my $stats = $self->{stats};
  foreach (@namespace) {
      $stats = $stats->{$_} ||= {};
  }

  warn "$key ALREADY EXISTS?!?\nExisting Value: $stats->{$key}, New Value: $value\n" if defined($stats->{$key});

  $stats->{$key} = $value;

  # update monitor row with new stats
  my $json = $dbh->quote(j($self->{stats}));
  my $sql = "UPDATE monitor SET stats = $json where id = $self->{id}";
  $dbh->do($sql);
}

sub finish {
  my $self = shift;

  # Store logs here, update log_monitor_url
  my $dbh = $self->{dbh};
  my $sql = "UPDATE monitor SET completed_at = NOW() where id = $self->{id}";
  $dbh->do($sql);
}

1;
