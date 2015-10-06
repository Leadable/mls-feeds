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

  if (!$source_key) {
    print "WARNING: Could not find SourceKey for [$remote_id], skipping\n";
    return;
  }

  my $search = qq|((ClassSourceKey=$source_key),(MediaType="Image"))|;

  my $rets = $self->{rets};

  my $request = $rets->CreateSearchRequest('Media', 'Media', $search);
  $request->SetSelect('MediaURL,MediaOrder');
  $request->SetLimit($librets::SearchRequest::LIMIT_DEFAULT);
  $request->SetOffset($librets::SearchRequest::OFFSET_NONE);
  $request->SetStandardNames(0);
  $request->SetCountType($librets::SearchRequest::RECORD_COUNT_AND_RESULTS);
  $request->SetFormatType($librets::SearchRequest::COMPACT_DECODED);

  my $results = $rets->Search($request);
  my %data;

  while (MLS::Rets::HasNext($results)) {
    $data{$results->GetString("MediaOrder")} = $results->GetString("MediaURL") . '?v=' . time;
  }

  my @urls = map {$data{$_}} sort { $a <=> $b } keys %data;

  return \@urls;
}


1;
