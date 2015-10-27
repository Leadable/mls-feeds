DROP VIEW IF EXISTS nmar.view_rich CASCADE;
CREATE OR REPLACE VIEW nmar.view_rich AS
  SELECT
   76::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{76,"Neighborhood"}')::text) as __geo_neigh
  FROM
    (select * from nmar.view_property) vl
;

COMMENT ON COLUMN nmar.view_rich.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN nmar.view_rich.__geo_neigh
  IS '{ "location": true, "label": "Map Area", "label_plural": "Map Areas", "rank": 20 }';
COMMENT ON COLUMN nmar.view_rich.zip
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN nmar.view_rich.county
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 40 }';
COMMENT ON COLUMN nmar.view_rich.__major_area
  IS '{ "location": true, "label": "Major Area", "label_plural": "Major Areas", "group": "Areas", "rank": 50 }';
COMMENT ON COLUMN nmar.view_rich.__minor_area
    IS '{ "location": true, "label": "Minor Area", "label_plural": "Minor Areas", "group": "Areas", "rank": 60 }';

---- features
COMMENT ON COLUMN nmar.view_rich.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN nmar.view_rich.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN nmar.view_rich.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN nmar.view_rich.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN nmar.view_rich.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN nmar.view_rich.one_story IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN nmar.view_rich.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN nmar.view_rich.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
----
---- advanced
--COMMENT ON COLUMN nmar.view_rich."feature_master_first_floor"
--  IS '{ "advanced": true, "label": "First Floor Master", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN nmar.view_rich."feature_community_amenities[]"
--  IS '{ "advanced": true, "label": "Community Amenities", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN nmar.view_rich."feature_exterior_features[]"
--  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN nmar.view_rich."feature_interior_features[]"
--  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN nmar.view_rich."feature_golf_frontage_type[]"
--  IS '{ "advanced": true, "label": "Golf Frontage", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN nmar.view_rich."feature_basement[]"
--  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 5 }';
--COMMENT ON COLUMN nmar.view_rich."feature_accessibility_features"
--  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 5 }';
