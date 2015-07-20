DROP VIEW IF EXISTS beaches.view_kanga_realty CASCADE;
CREATE OR REPLACE VIEW beaches.view_kanga_realty AS
  SELECT
   83::integer as area_id,
   vl.*,
   neigh_places.label as __geo_neigh
  FROM
    (select * from beaches.view_property) vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              (select * from beaches.view_property) vl
              JOIN (select * from beaches.places where area_id = 83 AND category = 'Neighborhood') as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
;
