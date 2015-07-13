DROP VIEW IF EXISTS aarretsx.view_caulk;
CREATE OR REPLACE VIEW aarretsx.view_caulk AS
  SELECT
   1::integer as area_id,
   vl.*,
   neigh_places.label as __geo_neigh,
   city_places.label as __geo_city,
   sd_places.label as __geo_school_district
  FROM
    aarretsx.view_property vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              aarretsx.view_property vl
              JOIN (select * from aarretsx.places where area_id = 1 and category = 'Neighborhood') as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              aarretsx.view_property vl
              JOIN (select * from aarretsx.places where area_id = 1 and category = 'City') as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'City'
      )
    city_places ON city_places.mlsnum = vl.mlsnum
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              aarretsx.view_property vl
              JOIN (select * from aarretsx.places where area_id = 1 and category = 'School District') as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'School District'
      )
    sd_places ON sd_places.mlsnum = vl.mlsnum
;
