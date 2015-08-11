DROP VIEW IF EXISTS wiregrass.view_wiregrass;
CREATE OR REPLACE VIEW wiregrass.view_wiregrass AS
  SELECT * 
  FROM wiregrass.view_property
;
