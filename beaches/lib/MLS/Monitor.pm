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

  # Get row from monitor table
  
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
