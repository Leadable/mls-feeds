DROP VIEW IF EXISTS ntreis2.view_yeo;
CREATE OR REPLACE VIEW ntreis2.view_yeo AS
  SELECT
   11::integer as area_id,
    *
  FROM
    ntreis2.view_property
  WHERE
    county IN ('Dallas','Denton', 'Collin')
;

COMMENT ON COLUMN ntreis2.view_yeo.city 
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN ntreis2.view_yeo.county 
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 90 }';
COMMENT ON COLUMN ntreis2.view_yeo.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN ntreis2.view_yeo.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 40 }';
COMMENT ON COLUMN ntreis2.view_yeo.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN ntreis2.view_yeo.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN ntreis2.view_yeo.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN ntreis2.view_yeo.school_district 
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "group": "Schools", "rank": 80 }';


-- features
COMMENT ON COLUMN ntreis2.view_yeo.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN ntreis2.view_yeo.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN ntreis2.view_yeo.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN ntreis2.view_yeo.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN ntreis2.view_yeo.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN ntreis2.view_yeo.pool IS '{ "feature": true, "label": "Private Pool" }';
COMMENT ON COLUMN ntreis2.view_yeo.community_pool IS '{ "feature": true, "label": "Community Pool" }';
COMMENT ON COLUMN ntreis2.view_yeo.first_floor_master IS '{ "feature": true, "label": "Master on Main" }';

-- advanced
COMMENT ON COLUMN ntreis2.view_yeo."feature_property_sub_type" 
  IS '{ "advanced": true, "label": "Property Sub Type", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_common_features[]" 
  IS '{ "advanced": true, "label": "Common Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_parking_covered_spaces" 
  IS '{ "advanced": true, "label": "# Covered Parking Spaces", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_garage_capacity" 
  IS '{ "advanced": true, "label": "Garage Capacity", "input": "checkbox-group", "rank": 21 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_exterior_features[]" 
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_flooring[]" 
  IS '{ "advanced": true, "label": "Floors", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_accessibility_features[]" 
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_housing_type[]" 
  IS '{ "advanced": true, "label": "Housing Type", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_pool[]"
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_bedroom_bathroom[]"
  IS '{ "advanced": true, "label": "Bed/Bath Features", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_architectural_style[]"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 170 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_year_built_details"
  IS '{ "advanced": true, "label": "Year Built Details", "input": "checkbox-group", "rank": 180 }';
COMMENT ON COLUMN ntreis2.view_yeo."feature_number_of_stories"
  IS '{ "advanced": true, "label": "Number of Stories", "input": "checkbox-group", "rank": 190 }';