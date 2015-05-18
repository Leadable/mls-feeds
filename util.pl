BEGIN {
  $UTIL::DBH = sub {
    my ($shard, $mls) = @_;

    my $dbname = 'mls';
    my $host = $shard . '.c9ny87bfc9il.us-west-2.rds.amazonaws.com';
    my $port = '5432';
    my $user = $mls . '_login';
    my $pass = 'al2istic';

    my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

    return DBI->connect($connstr, $user, $pass, { AutoCommit => 1, RaiseError => 1, pg_server_prepare => 0 });
  };
  
  # AMAZON S3 client
  $UTIL::S3_CLIENT = sub {
    my $s3 = Net::Amazon::S3->new(
      {   aws_access_key_id     => 'AKIAIXF3CYSEBUR3GFTA',
          aws_secret_access_key => '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',
          retry                 => 1,
          timeout               => 120
      }
    );

    my $s3_client = Net::Amazon::S3::Client->new( s3 => $s3 );
    return $s3_client;
  };
}


1;
