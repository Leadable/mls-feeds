DROP VIEW IF EXISTS ppmls.view_clement;
CREATE OR REPLACE VIEW ppmls.view_clement AS
  SELECT
    66::integer as area_id,
    vl.*,
    neigh_places.label as __geo_neigh
  FROM
    (SELECT * from ppmls.view_property) vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              (SELECT * from ppmls.view_property) vl
              JOIN (SELECT * from ppmls.places where area_id = 66) as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
;
