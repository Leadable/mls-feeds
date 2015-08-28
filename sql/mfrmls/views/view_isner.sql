DROP VIEW IF EXISTS mfrmls.view_isner;
CREATE OR REPLACE VIEW mfrmls.view_isner AS
  SELECT *, 38::integer as area_id FROM mfrmls.view_property
    WHERE county IN('Lake','Orange','Osceola','Polk','Seminole')
;

COMMENT ON COLUMN mfrmls.view_isner.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN mfrmls.view_isner.county 
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 20 }';
COMMENT ON COLUMN mfrmls.view_isner.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN mfrmls.view_isner.complex 
  IS '{ "location": true, "label": "Complex", "label_plural": "Complex", "rank": 35 }';
COMMENT ON COLUMN mfrmls.view_isner.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivision", "rank": 38 }';
COMMENT ON COLUMN mfrmls.view_isner.lake 
  IS '{ "location": true, "label": "Water", "label_plural": "Water", "rank": 40 }';
COMMENT ON COLUMN mfrmls.view_isner.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN mfrmls.view_isner.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN mfrmls.view_isner.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';


---- features
COMMENT ON COLUMN mfrmls.view_isner.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN mfrmls.view_isner.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN mfrmls.view_isner.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN mfrmls.view_isner.private_pool IS '{ "feature": true, "label": "Private Pool" }';
COMMENT ON COLUMN mfrmls.view_isner.community_pool IS '{ "feature": true, "label": "Community Pool" }';
COMMENT ON COLUMN mfrmls.view_isner.water_view IS '{ "feature": true, "label": "Water View" }';
COMMENT ON COLUMN mfrmls.view_isner.elevators IS '{ "feature": true, "label": "Elevators" }';
COMMENT ON COLUMN mfrmls.view_isner.water_access IS '{ "feature": true, "label": "Water Access" }';
COMMENT ON COLUMN mfrmls.view_isner.double_vanity IS '{ "feature": true, "label": "Dual Sinks" }';
COMMENT ON COLUMN mfrmls.view_isner.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
--
-- advanced
COMMENT ON COLUMN mfrmls.view_isner."feature_waterfront_desc[]"
  IS '{ "advanced": true, "label": "Water Frontage", "input": "checkbox-group", "rank": 1 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_water_view_desc[]"
  IS '{ "advanced": true, "label": "Water View", "input": "checkbox-group", "rank": 2 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_water_access_desc[]"
  IS '{ "advanced": true, "label": "Water Access", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_residential_desc[]"
  IS '{ "advanced": true, "label": "Property Description", "input": "checkbox-group", "rank": 4 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_special_sale_provisions"
  IS '{ "advanced": true, "label": "Special Sale Provisions", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_additional_rooms[]"
  IS '{ "advanced": true, "label": "Additional Rooms", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_water_extras[]"
  IS '{ "advanced": true, "label": "Water Extras", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_interior_layout[]"
  IS '{ "advanced": true, "label": "Interior Layout", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_parking[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_community_features[]"
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_residential_style[]"
  IS '{ "advanced": true, "label": "Residential Style", "input": "checkbox-group", "rank": 61 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_architectural_style[]"
  IS '{ "advanced": true, "label": "Architectural Style", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_master_bath[]"
  IS '{ "advanced": true, "label": "Master Bath", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_kitchen_features[]"
  IS '{ "advanced": true, "label": "Kitchen Features", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_pool[]"
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_garage[]"
  IS '{ "advanced": true, "label": "Garage", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN mfrmls.view_isner."feature_older_persons_housing[]"
  IS '{ "advanced": true, "label": "Older Persons Housing", "input": "checkbox-group", "rank": 150 }';
