package MLS::Resource::Retsiq::crmls::Photo;
use strict;

use base 'MLS::Resource::Retsiq::Photo';

sub search_remote {
  my ($self, $row) = @_;

  my $dbh = $self->{dbh};

  my $pkey      = $dbh->quote_identifier($MLS::Config::PRIMARY_KEY{SystemName});
  my $remote_id = $dbh->quote($row->{remote_id});

  # get the SourceKey column for this listing
  my $sql = 'SELECT ' . $dbh->quote_identifier('SourceKey') . " from $MLS::Config::MLS." . $dbh->quote_identifier("$MLS::Config::RESOURCE") .
            " WHERE $pkey = $remote_id";

  my $source_key = $dbh->selectcol_arrayref($sql)->[0];

  my $search = "(ClassSourceKey=$source_key)";

  my @urls;

  my $rets = $self->{rets};

  my $request = $rets->CreateSearchRequest('Media', 'Media', $search);
  $request->SetSelect('MediaURL');
  $request->SetLimit($librets::SearchRequest::LIMIT_DEFAULT);
  $request->SetOffset($librets::SearchRequest::OFFSET_NONE);
  $request->SetStandardNames(0);
  $request->SetCountType($librets::SearchRequest::RECORD_COUNT_AND_RESULTS);
  $request->SetFormatType($librets::SearchRequest::COMPACT_DECODED);

  my $results = $rets->Search($request);

  while ($results->HasNext()) {
    push @urls, $results->GetString("MediaURL") . '?v=' . time;
  }

  return \@urls;
}


1;
