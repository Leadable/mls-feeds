package MLS::Resource::Evernet::Row;

use strict;
use base 'MLS::Resource::Row';

use Mojo::UserAgent;
use Mojo::JSON qw(j);

use Data::Dumper;

sub fetch_row {
    my ($self, $row_metdata, $class_id) = @_;

    my $api_host = $ENV{NWMLS_API_PORT_8800_TCP_ADDR};
    my $api_port = $ENV{NWMLS_API_PORT_8800_TCP_PORT};

    die "Could not find NWMLS_API environment variables (is the nwmls-api container linked?)" if (!$api_host || !$api_port);

    my $dbh = $self->{dbh};
    my $remote_id = $row_metdata->{remote_id};

    my $ua = Mojo::UserAgent->new();
    $ua->inactivity_timeout(120);
    my $tx = $ua->get("http://$api_host:$api_port/get_listing?listing_id=$remote_id");

    if (!$tx->success) {
        my ($err, $code) = $tx->error;
        if ($err) {
            print "\n\nHTTP USER AGENT ERROR: ";
            print $code ? "$code response: $err" : "Connection error: $err";
        }

        die "Error accessing NWMLS api container";
    }

    my $result = $tx->res->json or
        die "Response is not JSON!";

    # process row, make data object
    my %data = ( __class_name => $dbh->quote($class_id), __modified_at => 'NOW()', __removed_at => 'NULL' );

    foreach my $col_name (keys %$result) {
        $data{$col_name} = $dbh->quote($result->{$col_name});
    }

    my $history_data = {
      price_new  => $result->{ $self->{remote_price_col}  },
      status_new => $result->{ $self->{remote_status_col} },
      pkey_val   => $remote_id,
    };

    # is this an update, or insert?
    my $local_row = $self->{local_rows}->{ $remote_id };
    $local_row ? $self->update($history_data, \%data, $local_row) : $self->insert(\%data);

    $self->update_mutation_table($remote_id, $result, $class_id);

    $self->monitor('new', $self->{totals}{new});
    $self->monitor('updated', $self->{totals}{updated});
    $self->monitor('dupes', $self->{totals}{dupes});
    $self->monitor('error', $self->{totals}{error});
}

1;
