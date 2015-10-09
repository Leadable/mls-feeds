DROP VIEW IF EXISTS snakemls.view_adams;
CREATE OR REPLACE VIEW snakemls.view_adams AS
  SELECT *, 10::integer as area_id FROM snakemls.view_property
;

-- SEARCH CONFIG

-- locations
COMMENT ON COLUMN snakemls.view_adams.city 
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN snakemls.view_adams.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 20 }';
COMMENT ON COLUMN snakemls.view_adams.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip Codes", "rank": 40 }';
--COMMENT ON COLUMN snakemls.view_adams.complex 
--  IS '{ "location": true, "label": "Complex", "label_plural": "Complex", "rank": 30 }';
COMMENT ON COLUMN snakemls.view_adams.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "School", "rank": 50 }';
COMMENT ON COLUMN snakemls.view_adams.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "School", "rank": 60 }';
COMMENT ON COLUMN snakemls.view_adams.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "School", "rank": 70 }';


-- features
COMMENT ON COLUMN snakemls.view_adams.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN snakemls.view_adams.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN snakemls.view_adams.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN snakemls.view_adams.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN snakemls.view_adams.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN snakemls.view_adams.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';

-- advanced
COMMENT ON COLUMN snakemls.view_adams."feature_style[]" 
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN snakemls.view_adams."feature_garage[]" 
  IS '{ "advanced": true, "label": "Garage", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN snakemls.view_adams."feature_assoc_fee_includes[]" 
  IS '{ "advanced": true, "label": "Association Fee Includes", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN snakemls.view_adams."feature_terms[]" 
  IS '{ "advanced": true, "label": "Terms", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN snakemls.view_adams."feature_air_conditioning[]" 
  IS '{ "advanced": true, "label": "Air Conditioning", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN snakemls.view_adams."feature_rooms[]" 
  IS '{ "advanced": true, "label": "Rooms", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN snakemls.view_adams."feature_laundry[]" 
  IS '{ "advanced": true, "label": "Laundry", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN snakemls.view_adams."feature_construction_status[]" 
  IS '{ "advanced": true, "label": "Construction Status", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN snakemls.view_adams."feature_basement[]" 
  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN snakemls.view_adams."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN snakemls.view_adams."feature_included_appliances[]" 
  IS '{ "advanced": true, "label": "Appliances", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN snakemls.view_adams."feature_fireplace[]" 
  IS '{ "advanced": true, "label": "Fireplace", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN snakemls.view_adams."feature_exterior_features[]" 
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN snakemls.view_adams."feature_patio_deck[]" 
  IS '{ "advanced": true, "label": "Patio/Deck", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN snakemls.view_adams."feature_fence[]" 
  IS '{ "advanced": true, "label": "Fence", "input": "checkbox-group", "rank": 150 }';
COMMENT ON COLUMN snakemls.view_adams."feature_landscaping[]" 
  IS '{ "advanced": true, "label": "Landscaping", "input": "checkbox-group", "rank": 160 }';
COMMENT ON COLUMN snakemls.view_adams."feature_view[]" 
  IS '{ "advanced": true, "label": "View", "input": "checkbox-group", "rank": 170 }';
