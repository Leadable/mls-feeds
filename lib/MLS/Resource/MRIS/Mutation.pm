package MLS::Resource::MRIS::Mutation;

use strict;
use base 'MLS::Resource::Mutation';

sub remote_search {
  my ($self, $request, $class_id) = @_;

  my $rets = $self->{rets};
  my $remote = $self->{remote};

  my $sanity_count = 0;

  my $results = $rets->Search($request);
  my $record_count = $results->GetCount();

  print "Record count: [$record_count]\n";

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

  die "ERROR: Expected record count was [$record_count] but received [$sanity_count]\n" if ($record_count - $sanity_count > 10);
}

1;
