# mls-feeds

Home of data feed processing.

# Overview
Keep local data store in sync with remote data sources (MLS Boards). 
MLS boards allow access to 3rd parties through the RETS protocol.
Property information including agents, offices, open houses and listing photos
are available. Primary goal of this project is to keep the local store
in sync with the remote store with little time between updates. Listings can not
be published until the local data for a listing is in sync with the remote and
the listing address has been geocoded. Otherwise, map view and listing alerts are shit.

# Design
Each board will follow the same steps to sync the data.

1. Look for row modification timestamp changes and/or image modifiaction timestamp changes on the remote service.
2. Fetch updated and new rows from the remote service.
3. Purge local listings that have been removed from the remote service.
4. Fetch images for new listings and existing listings with a change in the image modification timestamp column.
5. Geocode listing addresses for new listings and existings listings with an address change.

# Publishing Changes
The final step of updating a board's data is publishing the new data to the live database. A foreign table is used from the mls-feeds-db to directly connect to the live database. Updates are done as such:

1. Compare rows from live table and feeds table and delete where __modified_at differs
2. Insert all rows from feeds table not present in the live table

This operation is very fast in most cases, however there is a bottleneck when gathering listing_id from the view on the feeds-db. Views cannot use indexes in Postgres 9.4 so this operation can be very slow.

# Maintaining State
Each board has a table call mutation wich keeps track of the remote changes

1. Row Modification Timestamp. If these columns are different then the local row needs to be updated.
  * remote_row_mod_ts
  * local_row_mod_ts
2. Image Modification Timestamp. If these columns are different then the local images need to be updated.
  * remote_img_mod_ts
  * local_img_mod_ts
3. Address. If these columns are different then the address needs to be geocoded.
  * remote_address
  * local_address
4. Last Transaction Completed At. Set to NOW when 1, 2, 3 are in sync.
5. Last Published At. Set to NOW when the row is published.

# Feeds Database Design

- Each feed must have its own schema with tables for each resource type containing all data from the feed 
- There will be a normalized view of these tables that include a join with a places table for those resource types where location data is important
- Since clients can have different places table, there might be multiple views for a resource type per board
- A materialized view of each normalized view exists to represent the live data of that view, and is used to generate the diff detailed in the publish steps

Example
- beaches."Property" (table)
- beaches.view_property (normalized view of "Property" table)
- beaches.view_kanga_realty (area specific view of view_property)


# Code Organization
Each board has it's own directory with all the code needed to sync. Isolating each board is necessary
for long term maintenance. Shared libraries would be dangerous to modify with hundreds of boards as
dependants. 

- [mls board]/bin
- [mls board]/lib
- [mls board]/sql

# Setting up the environment

1. Install boot2docker for osx https://docs.docker.com/installation/mac/
2. Pull docker image for postgres with postgis: `docker pull mdillon/postgis:9.4`
3. Create container to hold postgres data directory: `docker create -v /var/lib/postgresql/data --name mls-feeds-data mdillon/postgis:9.4 /bin/true`
4. Start postgres container: `docker run --name postgres -e POSTGRES_PASSWORD=[password] -d -p 5432:5432 --volumes-from mls-feeds-data mdillon/postgis:9.4`
5. Clone mls-feeds repository: `git clone git@github.com:Leadable/mls-feeds.git`
6. Build mls-feeds image: `docker build -t leadable/mls-feeds .`
7. Run mls-feeds container: `docker run -ti --name mls-feeds --link postgres:postgres -v [path to repository]/mls-feeds/:/opt/mls-feeds --rm leadable/mls-feeds /bin/bash`
8. You should now be in the shell on the new container.
9. Create the mls database: `psql -h $POSTGRES_PORT_5432_TCP_ADDR -U postgres < /opt/mls-feeds/mls.sql`

# Environment Variables

* POSTGRES_PORT_5432_TCP_ADDR
* POSTGRES_PORT_5432_TCP_PORT
* POSTGRES_FEEDS_USER
* POSTGRES_FEEDS_PASS
* POSTGRES_TOOLS_TCP_ADDR
* POSTGRES_TOOLS_TCP_PORT
* POSTGRES_TOOLS_USER
* POSTGRES_TOOLS_PASS

# Starting a new board

1. create the database schema and roles `cd /opt/mls-feeds; ./init_schema.pl [board system name]`
2. copy an existing board directory `cp -R beaches/ [board system name]`
3. `vi bin/metadata.pl`
4. on the docker image `cd [board system name]/bin`, then `./metadata.pl daemon`
5. open your browser to http://[your name]-dev.leadable.com:49154
6. Scroll to the bottom and copy the SQL for creating the tables.
7. Copy into [board system name]/sql/schema.sql
8. Switch to psql and run `\i ~/mls-feeds/[board system name]/sql/schema.sql`
9. Update [board system name]/lib/MLS/Config.pm and the config files for resources in MLS/Config/*

# Automation

Create a directory for your new mls board in mls-feeds/service. The easiest way to do this is to simply copy an existing folder from the region where the board is.

In each board's service folder you will find:
- run - helper script that runs envdir to set environment variables
- run2 - actual script that starts docker container and watches for completion/user cancellation
- env/ - the directory that envdir will executed on in 'run' (see man envdir)

Then to have daemontools watch this directory:
`sudo ln -s ~/mls-feeds/service/$MLS/ /etc/service/$MLS`

If the daemon detects a file named '.cancel' in the folder, the docker container that is running will be stopped. The daemon will not start again until .cancel is removed from the directory.

Otherwise the daemon will watch the docker container until it completes and then sleep for five minutes before starting it again.

# Backup and Recovery

Nightly backups are performed with a script located in service/sql_backup. pg_dumpall will be run on each db container and results are gzipped and uploaded to file storage. An entry for the backup is created in the backup table on the tools db.

Recovery is possible by running sql/bin/recover_backup.pl $MLS. This will query the backup table in the tools db for the most recent backup for $MLS. The backup will be downloaded and reconstructed from the multiple gzip parts, then can be picked up in /mnt/recovery.

The backup may be restored once the db/pgb containers are online (see the pgbouncer repo for more on that)

    psql -h $HOST -p $PORT -U mls-db-owner -f /mnt/recovery/$MLS-pgdump.sql
