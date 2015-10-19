DROP VIEW IF EXISTS fmls2.view_karp;
CREATE OR REPLACE VIEW fmls2.view_karp AS
  SELECT
   75::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{75,"Neighborhood"}')::text) as __geo_neigh
  FROM
    fmls2.view_property vl
;

COMMENT ON COLUMN fmls2.view_karp.subdivision IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivision", "rank": 90 }';
COMMENT ON COLUMN fmls2.view_karp.city_st IS '{ "location": true, "label": "City", "label_plural": "City", "rank": 10 }';
COMMENT ON COLUMN fmls2.view_karp.zip IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN fmls2.view_karp.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN fmls2.view_karp.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN fmls2.view_karp.bedroom_on_main IS '{ "feature": true, "label": "Bedroom on Main" }';
COMMENT ON COLUMN fmls2.view_karp.master_on_main IS '{ "feature": true, "label": "Master on Main" }';
COMMENT ON COLUMN fmls2.view_karp.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN fmls2.view_karp.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
COMMENT ON COLUMN fmls2.view_karp.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN fmls2.view_karp.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN fmls2.view_karp.one_story IS '{ "feature": true, "label": "One Story" }';
COMMENT ON COLUMN fmls2.view_karp.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN fmls2.view_karp.double_vanity IS '{ "feature": true, "label": "Double Vanity" }';
COMMENT ON COLUMN fmls2.view_karp.elementary_school IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN fmls2.view_karp.middle_school IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle Schools", "group": "Schools", "rank": 72 }';
COMMENT ON COLUMN fmls2.view_karp.high_school IS '{ "location": true, "label": "High School", "label_plural":  "High Schools", "group": "Schools", "rank": 76 }';
COMMENT ON COLUMN fmls2.view_karp.feature_fee_assoc_annual_desc IS '{ "advanced": true, "label": "Annual Association Fee", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN fmls2.view_karp."feature_basement[]" IS '{ "advanced": true, "label": "Basement Description", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN fmls2.view_karp."feature_bedroom_desc[]" IS '{ "advanced": true, "label": "Bedroom Description", "input": "checkbox-group", "rank": 2 }';
COMMENT ON COLUMN fmls2.view_karp."feature_exterior_features[]" IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN fmls2.view_karp."feature_interior[]" IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN fmls2.view_karp."feature_lot_desc[]" IS '{ "advanced": true, "label": "Lot Description", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN fmls2.view_karp.feature_lot_size IS '{ "advanced": true, "label": "Lot Size", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN fmls2.view_karp.feature_pets_allowed IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN fmls2.view_karp.feature_area IS '{ "location": true, "label": "MLS Area", "label_plural": "MLS Areas", "rank": 20 }';
COMMENT ON COLUMN fmls2.view_karp."feature_special_circumstances[]" IS '{ "advanced": true, "label": "Special Circumstances", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN fmls2.view_karp."feature_style[]" IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 7 }';
COMMENT ON COLUMN fmls2.view_karp.__geo_neigh IS '{ "location": true, "label": "Map Area", "label_plural": "Map Areas", "rank": 15 }';
