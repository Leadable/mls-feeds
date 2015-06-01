#!/usr/bin/env perl
use strict;

use Data::Dumper qw(Dumper);
use DBI;

sub dbh {
  my $dbname = 'mls';
  my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
  my $port = '5432';
  my $user = 'postgres';
  my $pass = 'password';

  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => 0, RaiseError => 1, pg_server_prepare => 0 });
}

die "Missing argument [MLS]" unless $ARGV[0];
my $mls = $ARGV[0];

my $dbh = dbh();

my @sql = (
  # schema
  "CREATE SCHEMA $mls",

  # mutation
  "CREATE TABLE $mls.mutation
  (
    remote_id text NOT NULL,
    remote_row_mod_ts text,
    local_row_mod_ts text,
    remote_img_mod_ts text,
    local_img_mod_ts text,
    remote_address text,
    local_address text,
    remote_removed_at timestamp without time zone,
    local_removed_at timestamp without time zone,
    resource text NOT NULL,
    class text,
    last_transaction_completed_at timestamp without time zone, -- local row updated, photos fetched and geocoding completed
    last_published_at timestamp without time zone, -- last time the listing was published to the live tables *._mv and *._mv_active
    CONSTRAINT pkey_mutation PRIMARY KEY (resource, remote_id)
  ) WITH (OIDS=FALSE)",

  "CREATE INDEX idx_mutation_remote_row_mod_ts ON $mls.mutation USING btree (remote_row_mod_ts)",
  "CREATE INDEX idx_mutation_local_row_mod_ts ON $mls.mutation USING btree (local_row_mod_ts)",
  "CREATE INDEX idx_mutation_remote_img_mod_ts ON $mls.mutation USING btree (remote_img_mod_ts)",
  "CREATE INDEX idx_mutation_local_img_mod_ts ON $mls.mutation USING btree (local_img_mod_ts)",
  "CREATE INDEX idx_mutation_remote_address ON $mls.mutation USING btree (remote_address)",
  "CREATE INDEX idx_mutation_local_address ON $mls.mutation USING btree (local_address)",
  "CREATE INDEX idx_mutation_remote_removed_at ON $mls.mutation USING btree (remote_removed_at)",
  "CREATE INDEX idx_mutation_local_removed_at ON $mls.mutation USING btree (local_removed_at)",
  "CREATE INDEX idx_mutation_last_transaction_completed_at ON $mls.mutation USING btree (last_transaction_completed_at)",
  "CREATE INDEX idx_mutation_last_published_at ON $mls.mutation USING btree (last_published_at)",

  # geocoder_cache
  "CREATE TABLE $mls.geocoder_cache
  (
    service text NOT NULL,
    query text NOT NULL,
    ts timestamp without time zone NOT NULL DEFAULT now(),
    expires text NOT NULL DEFAULT '30 days'::text,
    response jsonb,
    CONSTRAINT pkey_geocoder_cache PRIMARY KEY (service, query)
  ) WITH (OIDS=FALSE)",
);

for my $sql (@sql) {
  print "$sql\n";
  eval { $dbh->do($sql); };

  if ($@) {
    $dbh->do('ROLLBACK');
    $dbh->disconnect;
    die $@;
  }
}

$dbh->do('COMMIT');

$dbh->disconnect;
