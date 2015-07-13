COMMENT ON COLUMN crmls.view_parsonsfiddler.city
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.feature_area
  IS '{ "location": true, "label": "Area", "label_plural": "Areas", "rank": 15 }';
--COMMENT ON COLUMN crmls.view_parsonsfiddler.county 
--  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 90 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle Schools", "group": "Schools", "rank": 72 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.high_school
  IS '{ "location": true, "label": "High School", "label_plural":  "High Schools", "group": "Schools", "rank": 76 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.school_district 
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "group": "Schools", "rank": 80 }';

---- features
COMMENT ON COLUMN crmls.view_parsonsfiddler.one_level IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN crmls.view_parsonsfiddler.pool IS '{ "feature": true, "label": "Pool" }';
--
-- advanced
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_stories"
  IS '{ "advanced": true, "label": "Stories", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_property_sub_type"
  IS '{ "advanced": true, "label": "Property Sub Type", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_land_fees"
  IS '{ "advanced": true, "label": "Land Fees/Lease", "input": "checkbox-group", "rank": 8 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_accessibility[]" 
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_association_features[]" 
  IS '{ "advanced": true, "label": "Association Features", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_attached" 
  IS '{ "advanced": true, "label": "Attached Structure", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_community_features[]" 
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_exterior_features[]" 
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_furnished" 
  IS '{ "advanced": true, "label": "Furnished", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_parking[]" 
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 45 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_patio[]" 
  IS '{ "advanced": true, "label": "Patio", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_pets_allowed[]" 
  IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 55 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_pool[]" 
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_rooms[]" 
  IS '{ "advanced": true, "label": "Rooms", "input": "checkbox-group", "rank": 65 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_security[]" 
  IS '{ "advanced": true, "label": "Security", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_senior_y_n" 
  IS '{ "advanced": true, "label": "Senior Y/N", "input": "checkbox-group", "rank": 75 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_spa[]" 
  IS '{ "advanced": true, "label": "Spa", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_style[]" 
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 85 }';
COMMENT ON COLUMN crmls.view_parsonsfiddler."feature_view[]" 
  IS '{ "advanced": true, "label": "View", "input": "checkbox-group", "rank": 90 }';
