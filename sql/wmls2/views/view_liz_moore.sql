DROP VIEW IF EXISTS wmls2.view_liz_moore CASCADE;
CREATE OR REPLACE VIEW wmls2.view_liz_moore AS
  SELECT
   103::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{103,"Neighborhood"}')::text) as __geo_neigh
  FROM
    (select * from wmls2.view_property) vl
;

COMMENT ON COLUMN wmls2.view_liz_moore.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN wmls2.view_liz_moore.__geo_neigh
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 20 }';
COMMENT ON COLUMN wmls2.view_liz_moore.zip
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN wmls2.view_liz_moore.subdivision
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdiv", "rank": 40 }';

---- features
COMMENT ON COLUMN wmls2.view_liz_moore.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN wmls2.view_liz_moore.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN wmls2.view_liz_moore.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN wmls2.view_liz_moore.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN wmls2.view_liz_moore.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN wmls2.view_liz_moore.one_story IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN wmls2.view_liz_moore.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN wmls2.view_liz_moore.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
--
-- advanced
COMMENT ON COLUMN wmls2.view_liz_moore."feature_master_first_floor"
  IS '{ "advanced": true, "label": "First Floor Master", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN wmls2.view_liz_moore."feature_community_amenities[]"
  IS '{ "advanced": true, "label": "Community Amenities", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN wmls2.view_liz_moore."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN wmls2.view_liz_moore."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN wmls2.view_liz_moore."feature_golf_frontage_type[]"
  IS '{ "advanced": true, "label": "Golf Frontage", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN wmls2.view_liz_moore."feature_basement[]"
  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN wmls2.view_liz_moore."feature_accessibility_features"
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 5 }';
