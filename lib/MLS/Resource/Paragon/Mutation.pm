package MLS::Resource::Paragon::Mutation;

use strict;
use base 'MLS::Resource::Mutation';

sub remote_search {
  my ($self, $request, $class_id) = @_;

  my $rets = $self->{rets};
  my $remote = $self->{remote};

  my $record_count;
  my $sanity_count = 0;
  my $chunk_size;

  if (! defined $MLS::Config::Mutation::OFFSET_SIZE) {
    warn "WARNING: No offset size defined for this board ($MLS::Config::MLS), using default of 100,000\n";
    $chunk_size = 100000;
  }
  else {
    $chunk_size = $MLS::Config::Mutation::OFFSET_SIZE;
  }

  $request->SetLimit($chunk_size);

  my $i = 0;

  while (1) {
    my $offset = ($chunk_size * $i++) + 1;

    last if (defined $record_count && $record_count < $offset);

    print "Searching with offset: [" . $offset . "]\n\n";

    $request->SetOffset($offset);
    my $results = $rets->Search($request);

    if (! defined $record_count) {
      $record_count = $results->GetCount();
      print "Results found: [" . $record_count . "]\n";
    }

    while (MLS::Rets::HasNext($results)) {
      my $row_mod_ts = $results->GetString( $MLS::Config::ROW_MOD_TS_COLUMN{SystemName} );
      my $img_mod_ts = %MLS::Config::IMG_MOD_TS_COLUMN ? $results->GetString( $MLS::Config::IMG_MOD_TS_COLUMN{SystemName} ) : '';

      my %data = (
        remote_row_mod_ts => $row_mod_ts,
        remote_img_mod_ts => $img_mod_ts,
        class => $class_id
      );

      $remote->{ $results->GetString( $MLS::Config::PRIMARY_KEY{SystemName} ) } = \%data;

      $sanity_count++;
    }
  }

  die "ERROR: Expected record count was [$record_count] but received [$sanity_count]\n" if ($record_count - $sanity_count > 10);
}

1;
