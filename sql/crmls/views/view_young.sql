-- Kendyl has a really odd area, came up with the below city and zip constraint using gis.hoods
-- also using a statically defined Neighborhood set with an ugly way around duplicate column.
-- there has to be a better solution to this
DROP VIEW IF EXISTS crmls.view_young CASCADE;
CREATE OR REPLACE VIEW crmls.view_young AS
  SELECT
   46::integer as area_id,
   vl.*,
   neigh_places.label as neighborhood
  FROM
    (SELECT * FROM crmls.view_property WHERE (city = ANY (ARRAY['Tujunga'::text, 'Eagle Rock'::text, 'Glendale'::text, 'Glassell Park'::text, 'Highland Park'::text, 'Pasadena'::text, 'Montrose'::text, 'Sunland'::text, 'La Canada Flintridge'::text, 'Altadena'::text, 'Burbank'::text, 'La Crescenta'::text, 'North Hollywood'::text, 'Studio City'::text]) OR zip = ANY (ARRAY['91210'::text, '91202'::text, '91104'::text, '91504'::text, '91042'::text, '91502'::text, '91020'::text, '91207'::text, '91103'::text, '91040'::text, '91208'::text, '91505'::text, '91506'::text, '91203'::text, '90065'::text, '90041'::text, '91606'::text, '91331'::text, '91201'::text, '91205'::text, '91206'::text, '91501'::text, '91214'::text, '91107'::text, '91011'::text, '91001'::text, '91105'::text, '90042'::text, '90027'::text, '90039'::text, '90012'::text, '90013'::text, '90014'::text, '90015'::text, '91602'::text, '91604'::text, '91607'::text])) ) vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              (SELECT * FROM crmls.view_property WHERE (city = ANY (ARRAY['Tujunga'::text, 'Eagle Rock'::text, 'Glendale'::text, 'Glassell Park'::text, 'Highland Park'::text, 'Pasadena'::text, 'Montrose'::text, 'Sunland'::text, 'La Canada Flintridge'::text, 'Altadena'::text, 'Burbank'::text, 'La Crescenta'::text, 'North Hollywood'::text, 'Studio City'::text]) OR zip = ANY (ARRAY['91210'::text, '91202'::text, '91104'::text, '91504'::text, '91042'::text, '91502'::text, '91020'::text, '91207'::text, '91103'::text, '91040'::text, '91208'::text, '91505'::text, '91506'::text, '91203'::text, '90065'::text, '90041'::text, '91606'::text, '91331'::text, '91201'::text, '91205'::text, '91206'::text, '91501'::text, '91214'::text, '91107'::text, '91011'::text, '91001'::text, '91105'::text, '90042'::text, '90027'::text, '90039'::text, '90012'::text, '90013'::text, '90014'::text, '90015'::text, '91602'::text, '91604'::text, '91607'::text])) ) vl
              JOIN (select * from crmls.places where area_id = 46) as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
;

-- (city = ANY (ARRAY['Tujunga'::text, 'Eagle Rock'::text, 'Glendale'::text, 'Glassell Park'::text, 'Highland Park'::text, 'Pasadena'::text, 'Montrose'::text, 'Sunland'::text, 'La Canada Flintridge'::text, 'Altadena'::text, 'Burbank'::text, 'La Crescenta'::text, 'North Hollywood'::text, 'Studio City'::text]) OR zip = ANY (ARRAY['91210'::text, '91202'::text, '91104'::text, '91504'::text, '91042'::text, '91502'::text, '91020'::text, '91207'::text, '91103'::text, '91040'::text, '91208'::text, '91505'::text, '91506'::text, '91203'::text, '90065'::text, '90041'::text, '91606'::text, '91331'::text, '91201'::text, '91205'::text, '91206'::text, '91501'::text, '91214'::text, '91107'::text, '91011'::text, '91001'::text, '91105'::text, '90042'::text, '90027'::text, '90039'::text, '90012'::text, '90013'::text, '90014'::text, '90015'::text, '91602'::text, '91604'::text, '91607'::text]))
