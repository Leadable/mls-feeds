#!/usr/bin/perl

# this will spawn a docker container that calls sql/bin/download_backup.pl
# and download a file suitable for passing to psql for recovery

# the file can be picked up at /mnt/recovery

my $mls = $ARGV[0] or die "You must supply the MLS name";

my $tools = {
    POSTGRES_TOOLS_TCP_ADDR => 'leadable-tools-db.cloudapp.net',
    POSTGRES_TOOLS_TCP_PORT => '6432',
    POSTGRES_TOOLS_USER     => 'tools-db-owner',
    POSTGRES_TOOLS_PASS     => 'zmWWhBDcusTvtq4Bbx5tQW9GAUSMhR3RuyAnghgV',
};

my @tools_env = map {"-e $_='$tools->{$_}'"} keys %$tools;

my @cmd = (
    q|docker run|,
    @tools_env,
    qq|-e MLS_NAME='$mls'|,
    q|-v /home/joe/mls-feeds/:/opt/mls-feeds|,
    q|-v /mnt/recovery:/opt/recovery|,
    qq|--name=mls-recover-$mls|,
    q|--rm|,
    q|leadable/mls-feeds|,
    qq|perl /opt/mls-feeds/sql/bin/download_backup.pl|,
);

`@cmd`;

1;
