DROP VIEW IF EXISTS cmls.view_maxwell;
CREATE OR REPLACE VIEW cmls.view_maxwell AS
  SELECT
   4::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{4,"Neighborhood"}')::text) as __geo_area
  FROM
    cmls.view_property vl
;

COMMENT ON COLUMN cmls.view_maxwell.city
  IS '{ "location": true, "label": "City", "label_plural": "City", "rank": 5 }';
COMMENT ON COLUMN cmls.view_maxwell.__geo_area
  IS '{ "location": true, "label": "Area", "label_plural": "Area", "rank": 10 }';
COMMENT ON COLUMN cmls.view_maxwell.subdivision
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivision", "group": "Community", "rank": 15 }';
COMMENT ON COLUMN cmls.view_maxwell.complex
  IS '{ "location": true, "label": "Complex", "label_plural": "Complex", "group": "Community", "rank": 16 }';
COMMENT ON COLUMN cmls.view_maxwell.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN cmls.view_maxwell.county 
  IS '{ "location": true, "label": "County", "label_plural": "County", "rank": 35 }';
COMMENT ON COLUMN cmls.view_maxwell.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary School", "group": "School", "rank": 40 }';
COMMENT ON COLUMN cmls.view_maxwell.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle School", "group": "School", "rank": 41 }';
COMMENT ON COLUMN cmls.view_maxwell.high_school
  IS '{ "location": true, "label": "High School", "label_plural":  "High School", "group": "School", "rank": 42 }';


---- features
COMMENT ON COLUMN cmls.view_maxwell.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN cmls.view_maxwell.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN cmls.view_maxwell.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN cmls.view_maxwell.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN cmls.view_maxwell.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN cmls.view_maxwell.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN cmls.view_maxwell.new_construction IS '{ "feature": true, "label": "New Construction" }';
COMMENT ON COLUMN cmls.view_maxwell.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN cmls.view_maxwell.one_story IS '{ "feature": true, "label": "One Story" }';
COMMENT ON COLUMN cmls.view_maxwell.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN cmls.view_maxwell.brick_exterior IS '{ "feature": true, "label": "Full Brick Exterior" }';
COMMENT ON COLUMN cmls.view_maxwell.first_floor_master IS '{ "feature": true, "label": "First Floor Master" }';
--
-- advanced
COMMENT ON COLUMN cmls.view_maxwell."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_lot_description[]"
  IS '{ "advanced": true, "label": "Lot Features", "input": "checkbox-group", "rank": 8 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_community_features[]"
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_property_subtype"
  IS '{ "advanced": true, "label": "Property Sub Type", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_style[]"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_parking[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 28 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_pets_allowed"
  IS '{ "advanced": true, "label": "Pets Allowed (Rental)", "input": "checkbox-group", "rank": 150 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_furnished"
  IS '{ "advanced": true, "label": "Furnished (Rental)", "input": "checkbox-group", "rank": 155 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_special_conditions[]"
  IS '{ "advanced": true, "label": "Special Conditions", "input": "checkbox-group", "rank": 160 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_fireplace[]"
  IS '{ "advanced": true, "label": "Fireplace Description", "input": "checkbox-group", "rank": 170 }';
COMMENT ON COLUMN cmls.view_maxwell."feature_exterior_construction[]"
  IS '{ "advanced": true, "label": "Exterior Construction", "input": "checkbox-group", "rank": 180 }';
