DROP VIEW IF EXISTS mtrmls.view_move_in_nashville CASCADE;
CREATE OR REPLACE VIEW mtrmls.view_move_in_nashville AS 
  SELECT
   2::integer as area_id,
   vl.*,
   neigh_places.label as __geo_neigh
  FROM
    mtrmls.view_property vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              mtrmls.view_property vl
              JOIN (select * from mtrmls.places where area_id = 2) as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
;
