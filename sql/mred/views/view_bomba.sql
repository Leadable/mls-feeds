DROP VIEW IF EXISTS mred.view_bomba;
CREATE OR REPLACE VIEW mred.view_bomba AS
  SELECT *, 40::integer as area_id FROM mred.view_property
  WHERE county = 'Du Page' OR city IN('La Grange','Western Springs')
;
