#!/usr/bin/env perl
use strict;

use Data::Dumper qw(Dumper);
use DBI;

die "Missing argument [MLS]" unless $ARGV[0];
my $mls = $ARGV[0];

my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
my $port = $ENV{POSTGRES_PORT_5432_TCP_PORT};
my $user = $ENV{POSTGRES_FEEDS_USER};
my $pass = $ENV{POSTGRES_FEEDS_PASS};
my $dbname = 'mls';

if (!$host || !$port || !$user || !$pass) {
  print "The following environment variables must be set:
    POSTGRES_PORT_5432_TCP_ADDR
    POSTGRES_PORT_5432_TCP_PORT
    POSTGRES_FEEDS_USER
    POSTGRES_FEEDS_PASS
  ";
  exit;
}

###########################
# Initialize the schema   #
###########################
print "Creating the schema [$mls]\n";

sub dbh {
  my $connstr = "dbi:Pg:dbname=$dbname;host=$host;port=$port";

  return DBI->connect($connstr, $user, $pass, { AutoCommit => 0, RaiseError => 1, pg_server_prepare => 0 });
}

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

  "CREATE TABLE $mls.geocoder_cache
  (
    service text NOT NULL,
    query text NOT NULL,
    ts timestamp without time zone NOT NULL DEFAULT now(),
    expires text NOT NULL DEFAULT '30 days'::text,
    response jsonb,
    CONSTRAINT pkey_geocoder_cache PRIMARY KEY (service, query)
  ) WITH (OIDS=FALSE);",
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
print "[DONE]\n\n";

my $psql_cmd = qq|psql -q -h $host -p $port -U $user $dbname|;

##############################
# Create the resource tables #
##############################
print "Creating the resource tables\n";

die "Could not find [$$mls/resources.sql]" if (! -e "$mls/resources.sql");

$ENV{PGPASSWORD} = $pass;

my $cmd = qq|$psql_cmd < $mls/resources.sql|;
print "$cmd\n";
system($cmd) == 0 or
  die "There was a problem with the command: [" . ($? >> 8) . "]";

print "[DONE]\n\n";

print "---Done initializing DB for [$mls]--\n";

1;
