COMMENT ON COLUMN crmls.view_young.city
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN crmls.view_young.feature_area
  IS '{ "location": true, "label": "Area", "label_plural": "Areas", "rank": 15 }';
COMMENT ON COLUMN crmls.view_young.neighborhood
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 20 }';

COMMENT ON COLUMN crmls.view_young.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN crmls.view_young.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN crmls.view_young.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle Schools", "group": "Schools", "rank": 72 }';
COMMENT ON COLUMN crmls.view_young.high_school
  IS '{ "location": true, "label": "High School", "label_plural":  "High Schools", "group": "Schools", "rank": 76 }';
COMMENT ON COLUMN crmls.view_young.school_district 
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "group": "Schools", "rank": 80 }';

---- features
COMMENT ON COLUMN crmls.view_young.one_level IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN crmls.view_young.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN crmls.view_young.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN crmls.view_young.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN crmls.view_young.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN crmls.view_young.pool IS '{ "feature": true, "label": "Pool" }';
--
-- advanced
COMMENT ON COLUMN crmls.view_young."feature_stories"
  IS '{ "advanced": true, "label": "Stories", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN crmls.view_young."feature_property_sub_type"
  IS '{ "advanced": true, "label": "Property Sub Type", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN crmls.view_young."feature_land_fees"
  IS '{ "advanced": true, "label": "Land Fees/Lease", "input": "checkbox-group", "rank": 8 }';
COMMENT ON COLUMN crmls.view_young."feature_accessibility[]" 
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN crmls.view_young."feature_association_features[]" 
  IS '{ "advanced": true, "label": "Association Features", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN crmls.view_young."feature_attached" 
  IS '{ "advanced": true, "label": "Attached Structure", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN crmls.view_young."feature_community_features[]" 
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN crmls.view_young."feature_exterior_features[]" 
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN crmls.view_young."feature_furnished" 
  IS '{ "advanced": true, "label": "Furnished", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN crmls.view_young."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN crmls.view_young."feature_parking[]" 
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 45 }';
COMMENT ON COLUMN crmls.view_young."feature_patio[]" 
  IS '{ "advanced": true, "label": "Patio", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN crmls.view_young."feature_pets_allowed[]" 
  IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 55 }';
COMMENT ON COLUMN crmls.view_young."feature_pool[]" 
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN crmls.view_young."feature_rooms[]" 
  IS '{ "advanced": true, "label": "Rooms", "input": "checkbox-group", "rank": 65 }';
COMMENT ON COLUMN crmls.view_young."feature_security[]" 
  IS '{ "advanced": true, "label": "Security", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN crmls.view_young."feature_senior_y_n" 
  IS '{ "advanced": true, "label": "Senior Y/N", "input": "checkbox-group", "rank": 75 }';
COMMENT ON COLUMN crmls.view_young."feature_spa[]" 
  IS '{ "advanced": true, "label": "Spa", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN crmls.view_young."feature_style[]" 
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 85 }';
COMMENT ON COLUMN crmls.view_young."feature_view[]" 
  IS '{ "advanced": true, "label": "View", "input": "checkbox-group", "rank": 90 }';
