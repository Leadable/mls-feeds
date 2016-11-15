package MLS::Resource::Publish;

use strict;
use warnings;

use Data::Dumper qw(Dumper);
use Digest::MD5 qw(md5_hex);
use Mojo::JSON qw(j);
use File::Temp qw(tempfile);
use File::Basename;
use Compress::Zlib qw(gzopen Z_BEST_COMPRESSION);
use Encode qw(encode_utf8);
use MLS::Resource::Utils;

$| = 1;

sub new {
  my ($class, $opts) = @_;

  return bless $opts, $class;
}

sub go {
    my ($self) = @_;

    print "----Publish Data [$self->{id}]---\n\n";

    my $dbh_feeds = $self->{dbh_feeds};

    my $mv        = "$MLS::Config::MLS.view_$self->{id}_mv";
    my $mv_active = "$MLS::Config::MLS.view_$self->{id}_mv_active";

    eval {
        print "Refreshing [$mv]...\n";

        $dbh_feeds->do(qq|
            REFRESH MATERIALIZED VIEW CONCURRENTLY $mv;
        |);

        if ($MLS::Config::RESOURCE eq 'Property') {
            print "Refreshing [$mv_active]...\n";

            $dbh_feeds->do(qq|
                REFRESH MATERIALIZED VIEW CONCURRENTLY $mv_active;
            |);
        }

        $dbh_feeds->commit;
    };

    if ($@) {
        $dbh_feeds->rollback;
        die $@;
    }

    print "Vacuum analyze [$mv]...\n";
    $dbh_feeds->set_autocommit(1);
    $dbh_feeds->do(qq|VACUUM ANALYZE $mv;|);

    $self->finish();
}

sub finish {
    my $self = shift;

    $self->monitor($self->{id} . '_done', 1);

    print "\n[DONE]\n\n";
}

sub monitor {
    my($self, $key, $value) = @_;

    my $monitor = $self->{monitor} or return;
    $monitor->status({ namespace => ['Publish'], key => $key, value => $value });
}

1;
