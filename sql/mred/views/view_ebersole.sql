DROP VIEW IF EXISTS mred.view_ebersole;
CREATE OR REPLACE VIEW mred.view_ebersole AS
  SELECT *, 47::integer as area_id FROM mred.view_property
  WHERE county IN('Du Page','Kane', 'Will')
;
