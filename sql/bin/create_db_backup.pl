#!/usr/bin/perl

my $containers = `docker ps | egrep -o 'mls-db-\\w+'`;
my @dbs = split "\n", $containers;

foreach my $db (@dbs) {
    $container =~ /mls-db-(\w+)/;
    my $mls = $1;

    my @cmd = (
        q|docker|,
        q|exec|,
        qq|$container|,
        q|pg_dumpall|,
        q|-U mls-db-owner|,
        q|-l mls-db-owner|,
        qq|-f /var/lib/postgresql/data/$mls.tar|,
    );

    `@cmd`;

    my $file = qq|/mnt/psql_data/$mls/$mls.tar|;
    my $staging_dir = q|/mnt/backup_staging/|;

    `sudo mv $file $staging_dir`;


    @cmd = (
        q|sudo docker run|,
        qq|-e BACKUP_FILE='/opt/backups/$mls.tar'|,
        qq|-e MLS_DB_HOST='$ENV{MLS_DB_HOST}'|,
        qq|-e MLS_NAME='$mls'|,
        q|-v /home/joe/mls-feeds/:/opt/mls-feeds|,
        q|-v /mnt/backup_staging/:/opt/backups|,
        qq|--name=mls-backup-$mls|,
        q|--rm|,
        q|leadable/mls-feeds|,
        qq|perl /opt/mls-feeds/sql/bin/store_backup.pl|,
    );

    `@cmd`;

}

