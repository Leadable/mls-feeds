#!/usr/bin/env perl
use strict;

use Data::Dumper qw(Dumper);
use DBI;

die "Missing argument [MLS]" unless $ARGV[0];
my $mls = $ARGV[0];

###########################
# Initialize the schema   #
###########################
print "Creating the schema [$mls]\n";

sub dbh {
  my $dbname = 'mls';
  my $host = $ENV{POSTGRES_PORT_5432_TCP_ADDR};
  my $port = '5432';
  my $user = 'postgres';
  my $pass = 'password';

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

my $sql_dir = "./$mls/sql";
my $psql_cmd = q|psql -q -h $POSTGRES_PORT_5432_TCP_ADDR -U postgres mls|;

##############################
# Create the resource tables #
##############################
print "Creating the resource tables\n";

die "Could not find [$sql_dir/resources.sql]" if (! -e "$sql_dir/resources.sql");

$cmd = qq|$psql_cmd < $sql_dir/resources.sql|;
print "$cmd\n";
system($cmd) == 0 or
  die "There was a problem with the command: [" . ($? >> 8) . "]";

print "[DONE]\n\n";

##############################################################################
# Create the places table, populate it with data, and make the property view #
# TODO: this may need to change if multiple places tables are possible       #
##############################################################################
print "Creating places table and property view\n";
my @files = (
  "$sql_dir/property/places_schema.sql",
  "$sql_dir/property/places_data.sql",
  "$sql_dir/property/view_property.sql"
);

foreach (@files) {
  die "Could not find: [$_]" if (! -e $_);
}

my $file_str = join ' ', @files;

# Execute multiple SQL files at once with cat
$cmd = qq{cat $file_str | } . qq{$psql_cmd -f -};
print "$cmd\n";
system($cmd) == 0 or
  die "There was a problem with the command: [" . ($? >> 8) . "]";

print "[DONE]\n\n";

######################################################
# create the views for all places and resource types #
######################################################
print "Creating all views\n";

# Execute multiple SQL files at once with cat
$cmd = qq{cat $sql_dir/views/* | } . qq{$psql_cmd -f -};
print "$cmd\n";
system($cmd) == 0 or
  die "There was a problem with the command: [" . ($? >> 8) . "]";

print "[DONE]\n\n";

print "---Done intializing DB for [$mls]--\n";

1;
