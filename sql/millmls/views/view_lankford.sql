DROP VIEW IF EXISTS millmls.view_lankford;
CREATE OR REPLACE VIEW millmls.view_lankford AS
  SELECT
   8::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{8,"Neighborhood"}')::text) as __geo_lake_area
  FROM
    (select * from millmls.view_property) vl
;

-- SEARCH CONFIG

-- locations
COMMENT ON COLUMN millmls.view_lankford.location 
  IS '{ "location": true, "label": "Location", "label_plural": "Locations", "rank": 10 }';
COMMENT ON COLUMN millmls.view_lankford.__geo_lake_area
  IS '{ "location": true, "label": "Lake Area", "label_plural": "Lake Areas", "rank": 15 }';
COMMENT ON COLUMN millmls.view_lankford.county 
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 20 }';
COMMENT ON COLUMN millmls.view_lankford.city 
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 30 }';
COMMENT ON COLUMN millmls.view_lankford.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip Codes", "rank": 40 }';
COMMENT ON COLUMN millmls.view_lankford.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 45 }';
COMMENT ON COLUMN millmls.view_lankford.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "School", "rank": 50 }';
COMMENT ON COLUMN millmls.view_lankford.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "School", "rank": 60 }';
COMMENT ON COLUMN millmls.view_lankford.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "School", "rank": 70 }';

-- features
COMMENT ON COLUMN millmls.view_lankford.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN millmls.view_lankford.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN millmls.view_lankford.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN millmls.view_lankford.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN millmls.view_lankford.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN millmls.view_lankford.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN millmls.view_lankford.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN millmls.view_lankford.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';

-- advanced
COMMENT ON COLUMN millmls.view_lankford.feature_site_built_area_only
  IS '{ "advanced": true, "label": "Site Built Area Only", "input": "checkbox-group", "rank": 2 }';
COMMENT ON COLUMN millmls.view_lankford."feature_ownership[]"
  IS '{ "advanced": true, "label": "Ownership", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN millmls.view_lankford.feature_waterfront
  IS '{ "advanced": true, "label": "Waterfront", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN millmls.view_lankford."feature_style[]"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN millmls.view_lankford."feature_construction[]"
  IS '{ "advanced": true, "label": "Construction", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN millmls.view_lankford."feature_parking[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN millmls.view_lankford."feature_pool[]"
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN millmls.view_lankford."feature_improvements[]"
  IS '{ "advanced": true, "label": "Improvements", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN millmls.view_lankford."feature_num_stories"
  IS '{ "advanced": true, "label": "Number of Stories", "input": "checkbox-group", "rank": 40 }';
