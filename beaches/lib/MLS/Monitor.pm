package MLS::Monitor;
use strict;

$| = 1;

use Data::Dumper qw(Dumper);

sub new {
  my ($class, $opts) = @_;

  $opts ||= {};

  $opts->{stats} = {};

  bless $opts, $class; 
}

sub start {
  my ($self) = @_;

  # capture STDOUT, STDIN to log file

  # Get row from monitor table
  
  # Create new row in monitor_journal

}

sub _walk_status_tree {
  my ($namespace, $level, $node) = @_;

  #warn "in _walk_status_tree\n";
  #warn "\tnamespace: " . join(', ', @$namespace) . "\n";
  #warn "\tlevel: " . Dumper($level) . "\n";
  #warn "\tnode: " . Dumper($node) . "\n";

  my $name = shift @$namespace;
  return unless $name;

  $level->{$name} ||= {};
  $$node = $level->{$name};

  _walk_status_tree($namespace, $level->{$name}, $node);
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
  my $node;

  _walk_status_tree(\@namespace, $stats, \$node);

  #warn "node after: " . Dumper($node);
  #warn "key: $key\n";
  #warn "value: $value\n";

  warn "$key ALREADY EXISTS?!?\nExisting Value: $node->{$key}, New Value: $value\n" if defined($node->{$key});

  $node->{$key} = $value;

  warn Dumper($stats);

  # update monitor row
  # update monitor_journal row
}

sub finished {

}

1;
