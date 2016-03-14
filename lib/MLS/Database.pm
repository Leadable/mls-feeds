package MLS::Database;
use strict;

use Data::Dumper;
use Carp;
use DBI;
use vars qw{$AUTOLOAD};

sub new {
  my ($class, $opts) = @_;

  die "specify either feeds or tools in db argument" if ($opts->{db} ne 'feeds' && $opts->{db} ne 'tools' && $opts->{db} ne 'lp');

  $opts->{NumRetry} ||= 3;

  if (! defined $opts->{AutoCommit}) {
    $opts->{AutoCommit} = 1;
  }

  bless $opts, $class;

  # immediately grab the dbh
  $opts->set_dbh;

  return $opts;
}

# proxy all DBI functions here
sub AUTOLOAD {
  my ($self, $arg1, $arg2, $arg3, $arg4) = @_;

  (my $method = $AUTOLOAD) =~ s{.*::}{};
  my $retries_left = $self->{NumRetry} + 1;

  # call our dbh method, refreshing the connection if needed
  while ($retries_left--) {
    my $res = eval {
      if (!$self->{dbh}) {
        $self->set_dbh;
      }

      my $dbh = $self->{dbh};

      my $return;

      # DBI is very strict about how many arguments are passed in
      if (defined $arg4) {
        $return = $dbh->$method($arg1, $arg2, $arg3, $arg4);
      }
      elsif (defined $arg3) {
        $return = $dbh->$method($arg1, $arg2, $arg3);
      }
      elsif (defined $arg2) {
        $return = $dbh->$method($arg1, $arg2);
      }
      elsif (defined $arg1) {
        $return = $dbh->$method($arg1);
      }
      elsif ($method eq 'quote') {
        # quote always requires at least one argument
        $return = $dbh->quote(undef);
      }
      else {
        $return = $dbh->$method();
      }

      return $return;
    };

    if ($@ =~ /connect/i && $retries_left) {
      warn "Connection problem, try to reconnect [$retries_left] more times...";
      sleep 10;
      undef $self->{dbh};
    }
    elsif ($@) {
      # general error or out of retries, let caller handle it
      if (!$self->{no_print_error}) {
        print "SQL: [$arg1]\n";
        Carp::confess;
      }

      die $@;
    }
    else {
      return $res;
    }
  }
}

sub set_autocommit {
  my ($self, $value) = @_;

  # set the DBI internal flag, so we don't have to reconnect
  if ($self->{dbh}) {
    $self->{dbh}->{AutoCommit} = $value;
  }

  # set class flag so subsequent connects use the correct value
  $self->{AutoCommit} = $value;
}

sub set_dbh {
  my $self = shift;

  if ($self->{db} eq 'feeds') {
    $self->{dbh} = $self->get_feeds_dbh;
  }
  elsif ($self->{db} eq 'tools') {
    $self->{dbh} = $self->get_tools_dbh;
  }
  elsif ($self->{db} eq 'lp') {
    $self->{dbh} = $self->get_lp_dbh;
  }
  else {
    die "No handler set for [$self->{db}]\n";
  }
}

sub get_feeds_dbh {
  my $self = shift;

  my $dbname = 'mls-db-owner';
  my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
  my $port = $ENV{POSTGRES_PORT_5432_TCP_PORT};
  my $user = $ENV{POSTGRES_FEEDS_USER};
  my $pass = $ENV{POSTGRES_FEEDS_PASS};

  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => $self->{AutoCommit}, RaiseError => 1, pg_server_prepare => 0 }) or die $DBI::errstr;
};

sub get_tools_dbh {
  my $self = shift;

  my $dbname = 'tools-db';
  my $host = $ENV{POSTGRES_TOOLS_TCP_ADDR};
  my $port = $ENV{POSTGRES_TOOLS_TCP_PORT};
  my $user = $ENV{POSTGRES_TOOLS_USER};
  my $pass = $ENV{POSTGRES_TOOLS_PASS};

  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => $self->{AutoCommit}, RaiseError => 1, pg_server_prepare => 0 }) or die $DBI::errstr;
};

sub get_lp_dbh {
  my $self = shift;

  my $dbname = 'dbkaigoaig2h9j';
  my $host = $ENV{POSTGRES_LP_HOST};
  my $port = $ENV{POSTGRES_LP_PORT};
  my $user = $ENV{POSTGRES_LP_USER};
  my $pass = $ENV{POSTGRES_LP_PASS};

  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => $self->{AutoCommit}, RaiseError => 1, pg_server_prepare => 0 }) or die $DBI::errstr;
};

1;
