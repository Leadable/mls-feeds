DROP VIEW IF EXISTS mred.view_mcdonnell;
CREATE OR REPLACE VIEW mred.view_mcdonnell AS
  SELECT *, 39::integer as area_id FROM mred.view_listings
;

