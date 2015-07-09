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

    $rets->SetRetsVersion($self->{rets_version}) if ($self->{rets_version});
    $rets->SetUserAgent($self->{user_agent})   if ($self->{user_agent});

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

    if ($method eq 'Search' || $method eq 'GetObject') {
        $return = $self->retryable_method($method, $arg1);
    }
    else {
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
    }

    return $return;
}

# To be used for Search or GetObject methods
# which both take one argument
sub retryable_method {
    my ($self, $method, $request) = @_;

    my $retries_left = $self->{NumRetry} + 1;

    while ($retries_left--) {
        my $rets = $self->{rets};

        my $results = eval {
            local $SIG{ALRM} = sub { die "alarm\n" };

            alarm (($self->{NumRetry} + 1) - $retries_left)*5*60; # increase timeout value in 5 minute increments
            my $return = $rets->$method($request);
            alarm 0;

            return $return;
        };

        # login and try again
        if ($@ && $retries_left) {

            if ($@ eq "alarm\n") {
                print "TIMEOUT\n";
            }
            else {
                print $@->GetFullReport;
            }

            print "Retrying RETS method [$method] [$retries_left] more times\n";
            sleep 10;
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
