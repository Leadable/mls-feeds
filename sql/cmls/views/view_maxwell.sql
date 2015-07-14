DROP VIEW IF EXISTS cmls.view_maxwell;
CREATE OR REPLACE VIEW cmls.view_maxwell AS
  SELECT
   4::integer as area_id,
   vl.*,
   neigh_places.label as __geo_area
  FROM
    cmls.view_property vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              cmls.view_property vl
              JOIN cmls.places as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom) AND places.area_id = 4
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
;
