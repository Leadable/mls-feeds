package MLS::Monitor;
use strict;

use Data::Dumper qw(Dumper);
use File::Path qw(mkpath);
use Mojo::JSON qw(j);
use MLS::Util;
use POSIX;

$| = 1;

sub new {
  my ($class, $opts) = @_;

  die "Monitor missing arguments" if (!$opts->{log_dir} || !$opts->{dbh});

  $opts->{stats} = {};
  $opts->{log_file} = "$opts->{log_dir}/monitor.log";
  $opts->{s3_bucket} = 'dfo-log';

  bless $opts, $class; 
}

sub start {
  my ($self, $opts) = @_;

  if (! -d $self->{log_dir}) {
    mkpath($self->{log_dir});
  }

  # capture STDOUT, STDIN to log file
  open(STDOUT, '>', $self->{log_file}) or
    die "Cannot redirect STDOUT to [$self->{log_file}]: $!";
  open(STDERR, ">&STDOUT") or
    die "Cannot redirect STDERR to STDOUT: $!";

  my $dbh = $self->{dbh};

  # Get row from monitor table
  my $sql = "SELECT id from public.monitor where mls = \'$MLS::Config::MLS\'";
  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });

  if (scalar(@$rs)) {
    $self->{id} = $rs->[0]->{id};
  }

  # starting a new job for this board
  # TODO: potentially move this logic to it's own method
  if (defined $self->{id}) {
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
  else {
    # create the row for this board for monitor
    my $row_data = $self->get_blank_row();
    $sql = "INSERT INTO public.monitor(" . join(',', keys %$row_data) . ") VALUES (" . join(',', values %$row_data) . ")";
    $dbh->do($sql);

    $sql = "SELECT id from public.monitor where mls = \'$MLS::Config::MLS\'";
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
    mls               => $dbh->quote($MLS::Config::MLS),
    created_at        => 'DEFAULT',
    status            => $dbh->quote('RUNNING'),
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

  my $stats = $self->{stats};
  foreach (@namespace) {
      $stats = $stats->{$_} ||= {};
  }

  $stats->{$key} = $value;

  # update monitor row with new stats
  my $json = $dbh->quote(j($self->{stats}));
  my $sql = "UPDATE monitor SET stats = $json where id = $self->{id}";
  $dbh->do($sql);
}

sub finish {
  my ($self, $error) = @_;

  # Store logs here, update log_monitor_url
  my $s3_client = $MLS::Util::S3_CLIENT->();
  my $bucket = $s3_client->bucket(name => $self->{s3_bucket});
  my $filename_root = "$MLS::Config::MLS/" . strftime("%F %T", localtime);

  # Store monitor log
  my $s3_monitor_object = $bucket->object(
    key          => "$filename_root-monitor.log",
    acl_short    => 'public-read',
    content_type => 'text/plain',
  );
  $s3_monitor_object->put_filename($self->{log_file});

  # Store rets log
  my $s3_rets_object = $bucket->object(
    key          => "$filename_root-rets.log",
    acl_short    => 'public-read',
    content_type => 'text/plain',
  );
  $s3_rets_object->put_filename("$self->{log_dir}/rets.log");

  # If start() dies before the id is found (rare but possible)
  # do not attempt to update the monitor table
  if ($self->{id}) {
    my $dbh = $self->{dbh};
    my %new_data = (
      status          => $error ? $dbh->quote('ERROR') : $dbh->quote('IDLE'),
      log_monitor_url => $dbh->quote($s3_monitor_object->uri),
      log_librets_url => $dbh->quote($s3_rets_object->uri),
    );
    $new_data{$error ? 'failed_at' : 'completed_at'} = 'NOW()';

    my $sql = "UPDATE monitor SET (" . join(',', keys %new_data) . ") = (" . join(',', values %new_data) .") where id = $self->{id}";
    $dbh->do($sql);
  }
}

1;
