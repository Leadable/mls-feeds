DROP VIEW IF EXISTS nneren.view_lee;
CREATE OR REPLACE VIEW nneren.view_lee AS
  SELECT *, 16::integer as area_id FROM nneren.view_property
    WHERE (state <> 'VT' AND state <> 'MA')
;

COMMENT ON COLUMN nneren.view_lee.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN nneren.view_lee.county 
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 90 }';
COMMENT ON COLUMN nneren.view_lee.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
--COMMENT ON COLUMN nneren.view_lee.subdivision 
--  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 40 }';
COMMENT ON COLUMN nneren.view_lee.lake 
  IS '{ "location": true, "label": "Water Body", "label_plural": "Water Bodies", "rank": 40 }';
COMMENT ON COLUMN nneren.view_lee.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN nneren.view_lee.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN nneren.view_lee.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN nneren.view_lee.school_district 
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "group": "Schools", "rank": 80 }';


---- features
COMMENT ON COLUMN nneren.view_lee.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN nneren.view_lee.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN nneren.view_lee.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN nneren.view_lee.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN nneren.view_lee.waterfront IS '{ "feature": true, "label": "Waterfront" }';
----COMMENT ON COLUMN nneren.view_lee.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN nneren.view_lee.pool IS '{ "feature": true, "label": "Pool" }';
--
-- advanced
----COMMONFEATURES[]
--COMMENT ON COLUMN nneren.view_lee."feature_common_features[]" 
--  IS '{ "advanced": true, "label": "Common Features", "input": "checkbox-group", "rank": 10 }';
--Amenities
COMMENT ON COLUMN nneren.view_lee."feature_amenities[]" 
  IS '{ "advanced": true, "label": "Amenities", "input": "checkbox-group", "rank": 10 }';
--Basement
COMMENT ON COLUMN nneren.view_lee."feature_basement[]" 
  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 20 }';
--CoOpYN
COMMENT ON COLUMN nneren.view_lee."feature_is_coop" 
  IS '{ "advanced": true, "label": "Is Co-Op", "input": "checkbox-group", "rank": 30 }';
--ConstructionStatus
COMMENT ON COLUMN nneren.view_lee."feature_construction_status" 
  IS '{ "advanced": true, "label": "Is Co-Op", "input": "checkbox-group", "rank": 40 }';
--DisabilityFeatures
COMMENT ON COLUMN nneren.view_lee."feature_accessibility_features[]" 
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 50 }';
--ExteriorFeatures
COMMENT ON COLUMN nneren.view_lee."feature_exterior_features[]" 
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 60 }';
--FurnishedYN
COMMENT ON COLUMN nneren.view_lee."feature_is_furnished" 
  IS '{ "advanced": true, "label": "Furnished", "input": "checkbox-group", "rank": 70 }';
--GarageAndParking
COMMENT ON COLUMN nneren.view_lee."feature_parking[]" 
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 80 }';
--GarageCapacityNumber
COMMENT ON COLUMN nneren.view_lee."feature_garage_capacity" 
  IS '{ "advanced": true, "label": "Garage Capacity", "input": "checkbox-group", "rank": 90 }';
--GarageType
COMMENT ON COLUMN nneren.view_lee."feature_garage_type" 
  IS '{ "advanced": true, "label": "Garage Type", "input": "checkbox-group", "rank": 100 }';
--InteriorFeatures
COMMENT ON COLUMN nneren.view_lee."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 110 }';
--NumberStories
COMMENT ON COLUMN nneren.view_lee."feature_num_stories" 
  IS '{ "advanced": true, "label": "Number of Stories", "input": "checkbox-group", "rank": 120 }';
--OccupantRestrictions
COMMENT ON COLUMN nneren.view_lee."feature_occupant_restrictions[]" 
  IS '{ "advanced": true, "label": "Occupant Restrictions", "input": "checkbox-group", "rank": 130 }';
--Style
COMMENT ON COLUMN nneren.view_lee."feature_style[]" 
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 140 }';
