package MLS::Rets;

use strict;

use lib "blib/lib", "blib/arch";

use librets;
use vars qw{$AUTOLOAD};

sub new {
    my ($class, $opts) = @_;

    die "You must pass a login_url, username, and password" if (!$opts->{login_url} || !$opts->{username} || !$opts->{password});

    $opts->{NumRetry} ||= 3;

    bless $opts, $class;

    $opts->login;

    return $opts;
}

sub login {
    my $self = shift;

    my $rets = new librets::RetsSession($self->{login_url});

    die "Invalid RETS login" unless $rets->Login($self->{username}, $self->{password});

    $self->{rets} = $rets;
}

sub SetHttpLogName {
    my ($self, $path) = @_;

    require File::Basename;
    require File::Path;

    # make sure the directory is created
    my $dir = File::Basename::dirname($path);
    File::Path::mkpath($dir) if (! -d $dir);

    return $self->{rets}->SetHttpLogName($path);
}

# catchall for other methods not defined here
sub AUTOLOAD {
    my ($self, $arg1, $arg2, $arg3) = @_;

    (my $method = $AUTOLOAD) =~ s{.*::}{};

    my $rets = $self->{rets};

    my $return;

    # librets is very strict about how many arguments are passed in
    if (defined $arg3) {
        $return = $rets->$method($arg1, $arg2, $arg3);
    }
    elsif (defined $arg2) {
        $return = $rets->$method($arg1, $arg2);
    }
    elsif (defined $arg1) {
        $return = $rets->$method($arg1);
    }
    else {
        $return = $rets->$method();
    }

    return $return;
}

sub Search {
    my ($self, $request) = @_;

    my $retries_left = $self->{NumRetry} + 1;

    while ($retries_left--) {
        my $rets = $self->{rets};

        my $results = eval {
            $rets->Search($request);
        };

        # login and try again
        if ($@ && $retries_left) {
            print "Retrying RETS search [$retries_left] more times\n";
            $self->login;
        }
        elsif ($@) {
            die $@;
        }
        else {
            return $results;
        }
    }
}

1;
