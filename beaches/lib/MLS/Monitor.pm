package MLS::Monitor;
use strict;

use Data::Dumper qw(Dumper);
use File::Path qw(mkpath);

sub new {
  my ($class, $opts) = @_;

  die "Monitor missing arguments" if (!$opts->{log_dir} || !$opts->{dbh});

  $opts->{stats} = {};
  $opts->{log_file} = "$opts->{log_dir}/monitor.log";

  bless $opts, $class; 
}

sub start {
  my ($self) = @_;

  if (! -d $self->{log_dir}) {
    mkpath($self->{log_dir});
  }

  # capture STDOUT, STDIN to log file
  open(STDOUT, '>>', $self->{log_file}) or
    die "Cannot redirect STDOUT to [$self->{log_file}]: $!";
  open(STDERR, '>>', $self->{log_file}) or
    die "Cannot redirect STDERR to [$self->{log_file}]: $!";

  my $dbh = $self->{dbh};

  # Get row from monitor table
  my $sql = "SELECT id from public.monitor where mls = \'$MLS::Property::Config::MLS\'";
  $dbh->do($sql);
  my $rs = $dbh->selectall_arrayref($sql, { Slice => {} });
  if (!scalar(@$rs)) {
    # create the row for this board
    my %row_data = (
      mls               => $dbh->quote($MLS::Property::Config::MLS),
      ec2_id            => $dbh->quote(`wget -q -O - http://169.254.169.254/latest/meta-data/instance-id`),
      container_id      => $dbh->quote(`cat /proc/self/cgroup | grep "docker" | sed s/\\\\//\\\\n/g | tail -1`),
      pid               => $$,
      started_at        => 'NOW()',
      failed_at         => 'NULL',
      completed_at      => 'NULL',
      stats             => $dbh->quote('{}'),
      log_monitor_url   => 'NULL',
      log_librets_url   => 'NULL',
    );

    $sql = "INSERT INTO public.monitor(" . join(',', keys %row_data) . ") VALUES (" . join(',', values %row_data) . ")";
    $dbh->do($sql);
  }
  
  # Create new row in monitor_journal

}

sub status {
  my ($self, $opts) = @_;

  my @namespace = @{ $opts->{namespace} };
  my $key = $opts->{key};
  my $value = $opts->{value};

  warn "MISSING namespace option\n" unless @namespace;
  warn "MISSING key option\n" unless $key;
  warn "MISSING value option\n" unless defined($value);

  my $stats = $self->{stats};
  foreach (@namespace) {
      $stats = $stats->{$_} ||= {};
  }

  warn "$key ALREADY EXISTS?!?\nExisting Value: $stats->{$key}, New Value: $value\n" if defined($stats->{$key});

  $stats->{$key} = $value;

  warn Dumper($self->{stats});

  # update monitor row
  # update monitor_journal row
}

sub finished {

}

1;
