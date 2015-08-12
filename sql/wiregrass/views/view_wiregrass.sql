DROP VIEW IF EXISTS wiregrass.view_wiregrass;
CREATE OR REPLACE VIEW wiregrass.view_wiregrass AS
  SELECT
  91::integer as area_id,
  vl.*
  FROM wiregrass.view_property vl
;
