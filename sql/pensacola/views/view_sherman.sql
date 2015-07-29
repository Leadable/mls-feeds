DROP VIEW IF EXISTS pensacola.view_sherman;
CREATE OR REPLACE VIEW pensacola.view_sherman AS
  SELECT *, 
  34::integer as area_id 
  FROM pensacola.view_property 
  WHERE county IN ('Santa Rosa', 'Escambia') AND city NOT IN ('Bellview', 'Chumuckla', 'Harold', 'Holt', 'Mcdavid') AND state NOT IN ('AK')
;
