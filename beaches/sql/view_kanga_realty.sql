DROP VIEW IF EXISTS beaches.view_kanga_realty CASCADE;
CREATE OR REPLACE VIEW beaches.view_kanga_realty AS
  SELECT
   83::integer as area_id,
   vl.*,
   neigh_places.label as __geo_neigh
  FROM
    (select * from beaches.view_listings) vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              (select * from beaches.view_listings) vl
              JOIN (select * from beaches.places where area_id = 83 AND category = 'Neighborhood') as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
;

COMMENT ON COLUMN beaches.view_kanga_realty.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN beaches.view_kanga_realty.__geo_neigh
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 20 }';
COMMENT ON COLUMN beaches.view_kanga_realty.zip
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN beaches.view_kanga_realty.subdivision
  IS '';
--  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdiv", "rank": 40 }';

---- features
COMMENT ON COLUMN beaches.view_kanga_realty.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN beaches.view_kanga_realty.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN beaches.view_kanga_realty.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN beaches.view_kanga_realty.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN beaches.view_kanga_realty.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN beaches.view_kanga_realty.one_story IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN beaches.view_kanga_realty.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN beaches.view_kanga_realty.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
----
---- advanced
--COMMENT ON COLUMN beaches.view_kanga_realty."feature_master_first_floor"
--  IS '{ "advanced": true, "label": "First Floor Master", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN beaches.view_kanga_realty."feature_community_amenities[]"
--  IS '{ "advanced": true, "label": "Community Amenities", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN beaches.view_kanga_realty."feature_exterior_features[]"
--  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN beaches.view_kanga_realty."feature_interior_features[]"
--  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN beaches.view_kanga_realty."feature_golf_frontage_type[]"
--  IS '{ "advanced": true, "label": "Golf Frontage", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN beaches.view_kanga_realty."feature_basement[]"
--  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN beaches.view_kanga_realty."feature_accessibility_features"
--  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 5 }';

COMMENT ON COLUMN beaches.view_kanga_realty."feature_private_pool[]"
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN beaches.view_kanga_realty."feature_governing_body"
  IS '{ "advanced": true, "label": "Governing Body", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN beaches.view_kanga_realty."feature_pets_allowed"
  IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN beaches.view_kanga_realty."feature_restrictions[]"
  IS '{ "advanced": true, "label": "Restrictions", "input": "checkbox-group", "rank": 25 }';
