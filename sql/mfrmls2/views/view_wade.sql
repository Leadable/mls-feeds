DROP VIEW IF EXISTS mfrmls2.view_wade;
CREATE OR REPLACE VIEW mfrmls2.view_wade AS
  SELECT
   37::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{37,"Neighborhood"}')::text) as __geo_neigh
  FROM
    (select * from mfrmls2.view_property WHERE county = 'Hillsborough') vl
;

COMMENT ON COLUMN mfrmls2.view_wade.city_st
  IS '{ "location": true, "label": "City", "label_plural": "City", "rank": 10 }';
COMMENT ON COLUMN mfrmls2.view_wade.__geo_neigh
  IS '{ "location": true, "label": "Nieghborhood", "label_plural": "Neighborhood", "rank": 15 }';
COMMENT ON COLUMN mfrmls2.view_wade.county 
  IS '{ "location": true, "label": "County", "label_plural": "County", "rank": 20 }';
COMMENT ON COLUMN mfrmls2.view_wade.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN mfrmls2.view_wade.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivision", "rank": 35 }';
COMMENT ON COLUMN mfrmls2.view_wade.complex 
  IS '{ "location": true, "label": "Complex", "label_plural": "Complex", "rank": 38 }';
COMMENT ON COLUMN mfrmls2.view_wade.lake 
  IS '{ "location": true, "label": "Water", "label_plural": "Water", "rank": 40 }';
COMMENT ON COLUMN mfrmls2.view_wade.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN mfrmls2.view_wade.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN mfrmls2.view_wade.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';


---- features
COMMENT ON COLUMN mfrmls2.view_wade.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN mfrmls2.view_wade.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN mfrmls2.view_wade.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN mfrmls2.view_wade.private_pool IS '{ "feature": true, "label": "Private Pool" }';
COMMENT ON COLUMN mfrmls2.view_wade.community_pool IS '{ "feature": true, "label": "Community Pool" }';
COMMENT ON COLUMN mfrmls2.view_wade.water_view IS '{ "feature": true, "label": "Water View" }';
COMMENT ON COLUMN mfrmls2.view_wade.elevators IS '{ "feature": true, "label": "Elevators" }';
COMMENT ON COLUMN mfrmls2.view_wade.water_access IS '{ "feature": true, "label": "Water Access" }';
COMMENT ON COLUMN mfrmls2.view_wade.double_vanity IS '{ "feature": true, "label": "Dual Sinks" }';
COMMENT ON COLUMN mfrmls2.view_wade.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
--
-- advanced
COMMENT ON COLUMN mfrmls2.view_wade."feature_waterfront_desc[]"
  IS '{ "advanced": true, "label": "Water Frontage", "input": "checkbox-group", "rank": 1 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_water_view_desc[]"
  IS '{ "advanced": true, "label": "Water View", "input": "checkbox-group", "rank": 2 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_water_access_desc[]"
  IS '{ "advanced": true, "label": "Water Access", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_residential_desc[]"
  IS '{ "advanced": true, "label": "Property Description", "input": "checkbox-group", "rank": 4 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_special_sale_provisions"
  IS '{ "advanced": true, "label": "Special Sale Provisions", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_additional_rooms[]"
  IS '{ "advanced": true, "label": "Additional Rooms", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_water_extras[]"
  IS '{ "advanced": true, "label": "Water Extras", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_interior_layout[]"
  IS '{ "advanced": true, "label": "Interior Layout", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_parking[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_community_features[]"
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_residential_style[]"
  IS '{ "advanced": true, "label": "Residential Style", "input": "checkbox-group", "rank": 61 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_architectural_style[]"
  IS '{ "advanced": true, "label": "Architectural Style", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_master_bath[]"
  IS '{ "advanced": true, "label": "Master Bath", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_kitchen_features[]"
  IS '{ "advanced": true, "label": "Kitchen Features", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_pool[]"
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_garage[]"
  IS '{ "advanced": true, "label": "Garage", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN mfrmls2.view_wade."feature_older_persons_housing[]"
  IS '{ "advanced": true, "label": "Older Persons Housing", "input": "checkbox-group", "rank": 150 }';
