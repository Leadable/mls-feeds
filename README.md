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

# Code Organization
Each board has it's own directory with all the code needed to sync. Isolating each board is necessary
for long term maintenance. Shared libraries would be dangerous to modify with hundreds of boards as
dependants. 

- [mls board]/bin
- [mls board]/lib
- [mls board]/sql
