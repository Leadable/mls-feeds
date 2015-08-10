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

    $self->{totals} = {new => 0, updated => 0};

    my $dbh_feeds = $self->{dbh_feeds};
    my $dbh_live  = $self->{dbh_live};

    my $remote_table = "$MLS::Config::MLS.ft_view_$self->{id}";
    my $local_table  = "$MLS::Config::MLS.view_$self->{id}";
    my $mv_active    = "$MLS::Config::MLS.view_$self->{id}_mv_active";

    print "Syncing local with remote...\n";

    eval {
        my $delete_sql = qq|
            delete from $remote_table as m using $local_table as v
                where v.listing_id = m.listing_id and v.__modified_at != m.__modified_at;
        |;

        my $insert_sql = qq|
            insert into $remote_table
                select v.* from $local_table as v, $MLS::Config::MLS.mutation as mut where 
                mut.remote_id = v.listing_id
                and mut.last_transaction_completed_at is not null
                and not exists (
                    select listing_id from $remote_table as mv
                    where v.listing_id = mv.listing_id
                );
        |;

        print "$delete_sql\n";

        # dbi returns '0E0' when zero rows are affected, subtract 0 to make 'updated' a number
        $self->{totals}{updated} = $dbh_feeds->do($delete_sql) - 0;

        print "$insert_sql\n";

        $self->{totals}{new} = $dbh_feeds->do($insert_sql) - $self->{totals}{updated};

        $dbh_feeds->commit;
    };

    if ($@) {
        $dbh_feeds->rollback;
        die $@;
    }

    if ($MLS::Config::RESOURCE eq 'Property') {
        print "Refreshing mv_active...\n";

        $dbh_live->do(qq|
            REFRESH MATERIALIZED VIEW CONCURRENTLY $mv_active;
        |);
    }

    $self->finish();
}

sub finish {
    my $self = shift;

    my $totals = $self->{totals};

    $self->monitor($self->{id} . '_new', $totals->{new});
    $self->monitor($self->{id} . '_updated', $totals->{updated});

    print "\nReport:\n";
    print Dumper $totals;
    print "\n[DONE]\n\n";
}

sub monitor {
    my($self, $key, $value) = @_;

    my $monitor = $self->{monitor} or return;
    $monitor->status({ namespace => ['Publish'], key => $key, value => $value });
}

1;
