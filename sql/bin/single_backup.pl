#!/usr/bin/perl

use strict;

die 'MLS_DB_HOST must be set'  if (!$ENV{MLS_DB_HOST});

my $mls = $ARGV[0];

print "starting backup of [$mls]\n";

my $tools = {
    POSTGRES_TOOLS_TCP_ADDR => 'leadable-tools-db.cloudapp.net',
    POSTGRES_TOOLS_TCP_PORT => '6432',
    POSTGRES_TOOLS_USER     => 'tools-db-owner',
    POSTGRES_TOOLS_PASS     => 'zmWWhBDcusTvtq4Bbx5tQW9GAUSMhR3RuyAnghgV',
};
my @tools_env = map {"-e $_='$tools->{$_}'"} keys %$tools;

my $db = "mls-db-$mls";
my $mls = $1;

print "pg_dumpall [$mls]\n";

# /mnt/backup_staging is mapped to /opt/backup in mls-db-*
my @cmd = (
q|docker|,
q|exec|,
qq|$db|,
q|pg_dumpall|,
q|-U mls-db-owner|,
q|-l mls-db-owner|,
qq|-f /opt/backup/$mls.sql|,
);

`@cmd`;
`sudo gzip -f /mnt/backup_staging/$mls.sql`;

print "uploading backup...\n";

# cleanup old containers, not always removed by docker for some reason
`docker rm -f mls-backup-$mls`;

@cmd = (
q|docker run|,
@tools_env,
qq|-e BACKUP_FILE='/opt/backups/$mls.sql.gz'|,
qq|-e MLS_DB_HOST='$ENV{MLS_DB_HOST}'|,
qq|-e MLS_NAME='$mls'|,
q|-v ~/mls-feeds/:/opt/mls-feeds|,
q|-v /mnt/backup_staging/:/opt/backups|,
qq|--name=mls-backup-$mls|,
q|--rm|,
q|leadable/mls-feeds|,
qq|perl /opt/mls-feeds/sql/bin/store_backup.pl|,
);

`@cmd`;

print "[$mls] DONE\n";

1;
