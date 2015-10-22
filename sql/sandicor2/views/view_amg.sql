DROP VIEW IF EXISTS sandicor2.view_amg CASCADE;
CREATE OR REPLACE VIEW sandicor2.view_amg AS
  SELECT
    102::integer as area_id,
    vl.*,
    (select jsonb_array_elements_text(__geo_places#>'{102,"Neighborhood"}')::text) as neighborhood
  FROM
    sandicor2.view_property vl
;

COMMENT ON COLUMN sandicor2.view_amg.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';

COMMENT ON COLUMN sandicor2.view_amg.neighborhood
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 20 }';

COMMENT ON COLUMN sandicor2.view_amg.zip
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN sandicor2.view_amg.feature_area
  IS '{ "location": true, "label": "Area", "label_plural": "Area", "rank": 40 }';

---- features
COMMENT ON COLUMN sandicor2.view_amg.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN sandicor2.view_amg.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN sandicor2.view_amg.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN sandicor2.view_amg.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN sandicor2.view_amg.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN sandicor2.view_amg.one_story IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN sandicor2.view_amg.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN sandicor2.view_amg.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
--
-- advanced
COMMENT ON COLUMN sandicor2.view_amg."feature_amenities[]"
  IS '{ "advanced": true, "label": "Amenities", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN sandicor2.view_amg."feature_architecture_style"
  IS '{ "advanced": true, "label": "Architecture Style", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN sandicor2.view_amg."feature_hoa_includes[]"
  IS '{ "advanced": true, "label": "Association Fee Includes", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN sandicor2.view_amg."feature_patio[]"
  IS '{ "advanced": true, "label": "Patio/Deck/Porch", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN sandicor2.view_amg."feature_pets"
  IS '{ "advanced": true, "label": "Pets", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN sandicor2.view_amg."feature_pool[]"
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN sandicor2.view_amg."feature_age_restrictions"
  IS '{ "advanced": true, "label": "Age Restriction", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN sandicor2.view_amg."feature_style"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN sandicor2.view_amg."feature_view[]"
  IS '{ "advanced": true, "label": "View", "input": "checkbox-group", "rank": 5 }';
