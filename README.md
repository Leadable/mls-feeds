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
After a board has been updated (Steps 1-5 of previous section), a publish script will run to determine how to update the live data. Incremental changes will be used to update live data, unless a full rebuild is necessary.

1. Determine if there is a schema change by hashing the column names and types of the view against the hash of the materialized view which represents live data. If there is a schema change, a full rebuild is necessary.
2. If the schema is consistent, then hash the metadata values (__inserted_at, __modified_at, __removed_at) for all rows in the view against the materialized view to determine if the data has changed.
3. Generate diff containing whatever schema and data changes are necessary, push diff to storage service
4. Insert a row on live publish table containing old/new hashes, if a rebuild is necessary, and location of diff.
5. Update the local materialized view which represents the live data.

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

# Starting a new board

1. create the database schema and roles `cd /opt/mls-feeds; ./init_role_and_schema.pl [board system name]`
2. copy an existing board directory `cp -R ragfl/ [board system name]`
3. `vi bin/metadata.pl`
4. on the docker image `cd [board system name]/bin`, then `./metadata.pl daemon`
5. open your browser to http://[your name]-dev.leadable.com:49154
6. Scroll to the bottom and copy the SQL for creating the tables.
7. Copy into [board system name]/sql/schema.sql
8. Switch to psql and run `\i ~/mls-feeds/[board system name]/sql/schema.sql`
9. Update [board system name]/lib/MLS/Property/Config.pm
10. Update [board system name]/lib/MLS/Property/Mutation.pm, change the search string for $rets->CreateSearchRequest and change the string for SetSelect
