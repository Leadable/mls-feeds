DROP VIEW IF EXISTS mfrmls.view_padula;
CREATE OR REPLACE VIEW mfrmls.view_padula AS
  SELECT
   82::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{82,"Neighborhood"}')::text) as __geo_neigh
  FROM
    (select * from mfrmls.view_property WHERE county IN ('Sarasota', 'Manatee', 'Charlotte')) vl
;

-- JOIN (select * from mfrmls.places where area_id = 82) as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)

COMMENT ON COLUMN mfrmls.view_padula.city_st
  IS '{ "location": true, "label": "City", "label_plural": "City", "rank": 10 }';
COMMENT ON COLUMN mfrmls.view_padula.__geo_neigh
  IS '{ "location": true, "label": "Area", "label_plural": "Areas", "rank": 15 }';
COMMENT ON COLUMN mfrmls.view_padula.county 
  IS '{ "location": true, "label": "County", "label_plural": "County", "rank": 20 }';
COMMENT ON COLUMN mfrmls.view_padula.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
--COMMENT ON COLUMN mfrmls.view_padula.subdivision 
--  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivision", "rank": 35 }';
COMMENT ON COLUMN mfrmls.view_padula.subdivision IS '';
--COMMENT ON COLUMN mfrmls.view_padula.complex 
--  IS '{ "location": true, "label": "Complex", "label_plural": "Complex", "rank": 38 }';
COMMENT ON COLUMN mfrmls.view_padula.complex IS '';
COMMENT ON COLUMN mfrmls.view_padula.lake 
  IS '{ "location": true, "label": "Water", "label_plural": "Water", "rank": 40 }';
COMMENT ON COLUMN mfrmls.view_padula.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN mfrmls.view_padula.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN mfrmls.view_padula.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';


---- features
COMMENT ON COLUMN mfrmls.view_padula.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN mfrmls.view_padula.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN mfrmls.view_padula.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN mfrmls.view_padula.private_pool IS '{ "feature": true, "label": "Private Pool" }';
COMMENT ON COLUMN mfrmls.view_padula.community_pool IS '{ "feature": true, "label": "Community Pool" }';
COMMENT ON COLUMN mfrmls.view_padula.water_view IS '{ "feature": true, "label": "Water View" }';
COMMENT ON COLUMN mfrmls.view_padula.elevators IS '{ "feature": true, "label": "Elevators" }';
COMMENT ON COLUMN mfrmls.view_padula.water_access IS '{ "feature": true, "label": "Water Access" }';
COMMENT ON COLUMN mfrmls.view_padula.double_vanity IS '{ "feature": true, "label": "Dual Sinks" }';
COMMENT ON COLUMN mfrmls.view_padula.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
--
-- advanced
COMMENT ON COLUMN mfrmls.view_padula."feature_waterfront_desc[]"
  IS '{ "advanced": true, "label": "Water Frontage", "input": "checkbox-group", "rank": 1 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_water_view_desc[]"
  IS '{ "advanced": true, "label": "Water View", "input": "checkbox-group", "rank": 2 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_water_access_desc[]"
  IS '{ "advanced": true, "label": "Water Access", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_residential_desc[]"
  IS '{ "advanced": true, "label": "Property Description", "input": "checkbox-group", "rank": 4 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_special_sale_provisions"
  IS '{ "advanced": true, "label": "Special Sale Provisions", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_additional_rooms[]"
  IS '{ "advanced": true, "label": "Additional Rooms", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_water_extras[]"
  IS '{ "advanced": true, "label": "Water Extras", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_interior_layout[]"
  IS '{ "advanced": true, "label": "Interior Layout", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_parking[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_community_features[]"
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_residential_style[]"
  IS '{ "advanced": true, "label": "Residential Style", "input": "checkbox-group", "rank": 61 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_architectural_style[]"
  IS '{ "advanced": true, "label": "Architectural Style", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_master_bath[]"
  IS '{ "advanced": true, "label": "Master Bath", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_kitchen_features[]"
  IS '{ "advanced": true, "label": "Kitchen Features", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_pool[]"
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_garage[]"
  IS '{ "advanced": true, "label": "Garage", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_older_persons_housing[]"
  IS '{ "advanced": true, "label": "Older Persons Housing", "input": "checkbox-group", "rank": 150 }';

COMMENT ON COLUMN mfrmls.view_padula.complex 
  IS '{ "location": true, "label": "Complex", "label_plural": "Complex", "rank": 38 }';
COMMENT ON COLUMN mfrmls.view_padula.lake 
  IS '{ "location": true, "label": "Water", "label_plural": "Water", "rank": 40 }';
COMMENT ON COLUMN mfrmls.view_padula.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN mfrmls.view_padula.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN mfrmls.view_padula.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';


---- features
COMMENT ON COLUMN mfrmls.view_padula.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN mfrmls.view_padula.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN mfrmls.view_padula.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN mfrmls.view_padula.private_pool IS '{ "feature": true, "label": "Private Pool" }';
COMMENT ON COLUMN mfrmls.view_padula.community_pool IS '{ "feature": true, "label": "Community Pool" }';
COMMENT ON COLUMN mfrmls.view_padula.water_view IS '{ "feature": true, "label": "Water View" }';
COMMENT ON COLUMN mfrmls.view_padula.elevators IS '{ "feature": true, "label": "Elevators" }';
COMMENT ON COLUMN mfrmls.view_padula.water_access IS '{ "feature": true, "label": "Water Access" }';
COMMENT ON COLUMN mfrmls.view_padula.double_vanity IS '{ "feature": true, "label": "Dual Sinks" }';
COMMENT ON COLUMN mfrmls.view_padula.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
--
-- advanced
COMMENT ON COLUMN mfrmls.view_padula."feature_waterfront_desc[]"
  IS '{ "advanced": true, "label": "Water Frontage", "input": "checkbox-group", "rank": 1 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_water_view_desc[]"
  IS '{ "advanced": true, "label": "Water View", "input": "checkbox-group", "rank": 2 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_water_access_desc[]"
  IS '{ "advanced": true, "label": "Water Access", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_residential_desc[]"
  IS '{ "advanced": true, "label": "Property Description", "input": "checkbox-group", "rank": 4 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_special_sale_provisions"
  IS '{ "advanced": true, "label": "Special Sale Provisions", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_additional_rooms[]"
  IS '{ "advanced": true, "label": "Additional Rooms", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_water_extras[]"
  IS '{ "advanced": true, "label": "Water Extras", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_interior_layout[]"
  IS '{ "advanced": true, "label": "Interior Layout", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_parking[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_community_features[]"
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_residential_style[]"
  IS '{ "advanced": true, "label": "Residential Style", "input": "checkbox-group", "rank": 61 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_architectural_style[]"
  IS '{ "advanced": true, "label": "Architectural Style", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_master_bath[]"
  IS '{ "advanced": true, "label": "Master Bath", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_kitchen_features[]"
  IS '{ "advanced": true, "label": "Kitchen Features", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_pool[]"
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_garage[]"
  IS '{ "advanced": true, "label": "Garage", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN mfrmls.view_padula."feature_older_persons_housing[]"
  IS '{ "advanced": true, "label": "Older Persons Housing", "input": "checkbox-group", "rank": 150 }';
