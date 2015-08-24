DROP VIEW IF EXISTS trend.view_glick;
CREATE OR REPLACE VIEW trend.view_glick AS
  SELECT
   15::integer as area_id,
   vl.*,
   null::text[] as __geo_neigh
  FROM
    (SELECT * FROM trend.view_listings WHERE state <> 'DE') vl
;

-- (select * from trend.places where area_id = 15 and category = 'Neighborhood') as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)

-- SEARCH CONFIG

-- locations
COMMENT ON COLUMN trend.view_glick.city 
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN trend.view_glick.__geo_neigh
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 15 }';
COMMENT ON COLUMN trend.view_glick.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 20 }';
COMMENT ON COLUMN trend.view_glick.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip Codes", "rank": 40 }';
COMMENT ON COLUMN trend.view_glick.county 
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 30 }';
COMMENT ON COLUMN trend.view_glick.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN trend.view_glick.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN trend.view_glick.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN trend.view_glick.school_district
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "group": "Schools", "rank": 75 }';


-- features
COMMENT ON COLUMN trend.view_glick.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN trend.view_glick.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN trend.view_glick.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN trend.view_glick.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN trend.view_glick.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN trend.view_glick.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';

-- advanced
COMMENT ON COLUMN trend.view_glick."feature_appliances[]"
  IS '{ "advanced": true, "label": "Appliances", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN trend.view_glick."feature_basement_type[]"
  IS '{ "advanced": true, "label": "Basement Type", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN trend.view_glick."feature_community_includes[]"
  IS '{ "advanced": true, "label": "Community Includes", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN trend.view_glick."feature_cooling[]"
  IS '{ "advanced": true, "label": "Cooling", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN trend.view_glick."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN trend.view_glick."feature_furnished[]"
  IS '{ "advanced": true, "label": "Furnished", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN trend.view_glick."feature_garage_spaces[]"
  IS '{ "advanced": true, "label": "Garage Spaces", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN trend.view_glick."feature_garage_type[]"
  IS '{ "advanced": true, "label": "Garage Type", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN trend.view_glick."feature_accessibility[]"
  IS '{ "advanced": true, "label": "Accessibility", "input": "checkbox-group", "rank": 90 }';
--COMMENT ON COLUMN trend.view_glick."feature_housing_for_elderly"
--  IS '{ "advanced": true, "label": "Housing For Elderly", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN trend.view_glick."feature_interior[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN trend.view_glick."feature_laundry[]"
  IS '{ "advanced": true, "label": "Laundry", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN trend.view_glick."feature_location[]"
  IS '{ "advanced": true, "label": "Location Type", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN trend.view_glick."feature_lot[]"
  IS '{ "advanced": true, "label": "Lot Description", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN trend.view_glick."feature_main_bedroom[]"
  IS '{ "advanced": true, "label": "Main Bedroom", "input": "checkbox-group", "rank": 150 }';
COMMENT ON COLUMN trend.view_glick."feature_ownership"
  IS '{ "advanced": true, "label": "Ownership", "input": "checkbox-group", "rank": 160 }';
COMMENT ON COLUMN trend.view_glick."feature_parking[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 170 }';
COMMENT ON COLUMN trend.view_glick."feature_pets_allowed"
  IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 180 }';
COMMENT ON COLUMN trend.view_glick."feature_porch_deck[]"
  IS '{ "advanced": true, "label": "Porch/Deck", "input": "checkbox-group", "rank": 190 }';
COMMENT ON COLUMN trend.view_glick."feature_styles[]"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 200 }';
COMMENT ON COLUMN trend.view_glick."feature_design[]"
  IS '{ "advanced": true, "label": "Design", "input": "checkbox-group", "rank": 205 }';
COMMENT ON COLUMN trend.view_glick."feature_type[]"
  IS '{ "advanced": true, "label": "Type", "input": "checkbox-group", "rank": 210 }';

-- invalidate cache
UPDATE area SET config_version = NOW() WHERE id = 15;
