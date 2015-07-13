DROP VIEW IF EXISTS crmls.view_glick_la_county;
CREATE OR REPLACE VIEW crmls.view_glick_la_county AS
  SELECT
   25::integer as area_id,
   vl.*,
   neigh_places.label as __geo_neigh
  FROM
    (select * from crmls.view_property WHERE county IN ('Los Angeles', 'Santa Barbara', 'Ventura') OR city IN('San Clemente', 'Dana Point', 'Laguna Niguel')) vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              (select * from crmls.view_property WHERE county = 'Los Angeles' OR city IN('San Clemente', 'Dana Point', 'Laguna Niguel')) vl
              JOIN (select * from crmls.places where area_id = 25) as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom) 
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
;
