DROP VIEW IF EXISTS mred.view_mcdonnell;
CREATE OR REPLACE VIEW mred.view_mcdonnell AS
  SELECT *, 39::integer as area_id FROM mred.view_property
;

COMMENT ON COLUMN mred.view_mcdonnell.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN mred.view_mcdonnell.township
  IS '{ "location": true, "label": "Township", "label_plural": "Townships", "rank": 15 }';
COMMENT ON COLUMN mred.view_mcdonnell.county
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 90 }';
COMMENT ON COLUMN mred.view_mcdonnell.zip
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN mred.view_mcdonnell.subdivision
  IS '{ "location": true, "label": "Subdiv", "label_plural": "Subdiv", "rank": 40 }';
COMMENT ON COLUMN mred.view_mcdonnell.elementary_school_district
  IS '{ "location": true, "label": "Elementary School Dist", "label_plural": "Elementary School Dist", "group": "Schools", "rank": 55 }';
COMMENT ON COLUMN mred.view_mcdonnell.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary School", "group": "Schools", "rank": 56 }';
COMMENT ON COLUMN mred.view_mcdonnell.middle_school_district
  IS '{ "location": true, "label": "Middle School Dist", "label_plural": "Middle School Dist", "group": "Schools", "rank": 65 }';
COMMENT ON COLUMN mred.view_mcdonnell.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle School", "group": "Schools", "rank": 66 }';
COMMENT ON COLUMN mred.view_mcdonnell.high_school_district
  IS '{ "location": true, "label": "High School Dist", "label_plural": "High School Dist", "group": "Schools", "rank": 75 }';
COMMENT ON COLUMN mred.view_mcdonnell.high_school
  IS '{ "location": true, "label": "High School", "label_plural": "High School", "group": "Schools", "rank": 76 }';

---- features
COMMENT ON COLUMN mred.view_mcdonnell.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN mred.view_mcdonnell.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN mred.view_mcdonnell.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN mred.view_mcdonnell.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN mred.view_mcdonnell.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN mred.view_mcdonnell.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN mred.view_mcdonnell.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN mred.view_mcdonnell.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN mred.view_mcdonnell.double_vanity IS '{ "feature": true, "label": "Dual Vanity" }';
COMMENT ON COLUMN mred.view_mcdonnell.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
--
-- advanced
COMMENT ON COLUMN mred.view_mcdonnell."feature_style"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_kitchen[]"
  IS '{ "advanced": true, "label": "Kitchen", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_bath_amenities[]"
  IS '{ "advanced": true, "label": "Bath Amenities", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_master_bedroom_level"
  IS '{ "advanced": true, "label": "Master Bedroom Level", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_available_furnished"
  IS '{ "advanced": true, "label": "Rental Available Furnished", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_parking_details[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_parking_on_site"
  IS '{ "advanced": true, "label": "Parking On-Site", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_basement_description[]"
  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_lot_description[]"
  IS '{ "advanced": true, "label": "Residential/Rental Lot", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_amenities[]"
  IS '{ "advanced": true, "label": "Residential Amenities", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_garage_details[]"
  IS '{ "advanced": true, "label": "Garage Details", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_additional_rooms[]"
  IS '{ "advanced": true, "label": "Additional Rooms", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_land_amenities[]"
  IS '{ "advanced": true, "label": "Land Amenities", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_disability_access_features[]"
  IS '{ "advanced": true, "label": "Disability Access", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_new_construction"
  IS '{ "advanced": true, "label": "New Construction", "input": "checkbox-group", "rank": 150 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_land_description[]"
  IS '{ "advanced": true, "label": "Land Description", "input": "checkbox-group", "rank": 160 }';
COMMENT ON COLUMN mred.view_mcdonnell."feature_laundry_level[]"
  IS '{ "advanced": true, "label": "Laundry Level", "input": "checkbox-group", "rank": 170 }';
