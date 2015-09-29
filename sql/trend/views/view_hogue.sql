DROP VIEW IF EXISTS trend.view_hogue;
CREATE OR REPLACE VIEW trend.view_hogue AS
  SELECT
   99::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{99,"Neighborhood"}')::text) as __geo_neigh
  FROM
    trend.view_property vl
   WHERE state = 'PA'
;

-- SEARCH CONFIG

-- locations
COMMENT ON COLUMN trend.view_hogue.city 
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
-- COMMENT ON COLUMN trend.view_hogue.__geo_neigh
--   IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 15 }';
COMMENT ON COLUMN trend.view_hogue.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 20 }';
COMMENT ON COLUMN trend.view_hogue.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip Codes", "rank": 40 }';
COMMENT ON COLUMN trend.view_hogue.county 
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 30 }';
COMMENT ON COLUMN trend.view_hogue.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN trend.view_hogue.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN trend.view_hogue.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN trend.view_hogue.school_district
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "group": "Schools", "rank": 75 }';


-- features
COMMENT ON COLUMN trend.view_hogue.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN trend.view_hogue.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN trend.view_hogue.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN trend.view_hogue.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN trend.view_hogue.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN trend.view_hogue.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';

-- advanced
COMMENT ON COLUMN trend.view_hogue."feature_appliances[]"
  IS '{ "advanced": true, "label": "Appliances", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN trend.view_hogue."feature_basement_type[]"
  IS '{ "advanced": true, "label": "Basement Type", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN trend.view_hogue."feature_community_includes[]"
  IS '{ "advanced": true, "label": "Community Includes", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN trend.view_hogue."feature_cooling[]"
  IS '{ "advanced": true, "label": "Cooling", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN trend.view_hogue."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN trend.view_hogue."feature_furnished[]"
  IS '{ "advanced": true, "label": "Furnished", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN trend.view_hogue."feature_garage_spaces[]"
  IS '{ "advanced": true, "label": "Garage Spaces", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN trend.view_hogue."feature_garage_type[]"
  IS '{ "advanced": true, "label": "Garage Type", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN trend.view_hogue."feature_accessibility[]"
  IS '{ "advanced": true, "label": "Accessibility", "input": "checkbox-group", "rank": 90 }';
--COMMENT ON COLUMN trend.view_hogue."feature_housing_for_elderly"
--  IS '{ "advanced": true, "label": "Housing For Elderly", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN trend.view_hogue."feature_interior[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN trend.view_hogue."feature_laundry[]"
  IS '{ "advanced": true, "label": "Laundry", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN trend.view_hogue."feature_location[]"
  IS '{ "advanced": true, "label": "Location Type", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN trend.view_hogue."feature_lot[]"
  IS '{ "advanced": true, "label": "Lot Description", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN trend.view_hogue."feature_main_bedroom[]"
  IS '{ "advanced": true, "label": "Main Bedroom", "input": "checkbox-group", "rank": 150 }';
COMMENT ON COLUMN trend.view_hogue."feature_ownership"
  IS '{ "advanced": true, "label": "Ownership", "input": "checkbox-group", "rank": 160 }';
COMMENT ON COLUMN trend.view_hogue."feature_parking[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 170 }';
COMMENT ON COLUMN trend.view_hogue."feature_pets_allowed"
  IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 180 }';
COMMENT ON COLUMN trend.view_hogue."feature_porch_deck[]"
  IS '{ "advanced": true, "label": "Porch/Deck", "input": "checkbox-group", "rank": 190 }';
COMMENT ON COLUMN trend.view_hogue."feature_styles[]"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 200 }';
COMMENT ON COLUMN trend.view_hogue."feature_design[]"
  IS '{ "advanced": true, "label": "Design", "input": "checkbox-group", "rank": 205 }';
COMMENT ON COLUMN trend.view_hogue."feature_type[]"
  IS '{ "advanced": true, "label": "Type", "input": "checkbox-group", "rank": 210 }';

