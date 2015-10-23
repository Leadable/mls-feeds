DROP VIEW IF EXISTS grar2.view_medina;
CREATE OR REPLACE VIEW grar2.view_medina AS
  SELECT
   67::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{67,"School District"}')::text) as __geo_school_district,
   array(select jsonb_array_elements_text(__geo_places#>'{67,"City"}')::text) as __geo_city
  FROM
    (select * from grar2.view_property where price >= 100000) vl
;

-- note because of this price restriction, all rentals are excluded

COMMENT ON COLUMN grar2.view_medina.city_st IS '{ "group": "City", "location": true, "label": "MLS City", "label_plural": "MLS City", "rank": 10 }';
COMMENT ON COLUMN grar2.view_medina.zip IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN grar2.view_medina.subdivision IS '{ "location": true, "label": "Sudiv", "label_plural": "Sudiv", "rank": 90 }';
COMMENT ON COLUMN grar2.view_medina.elementary_school IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN grar2.view_medina.middle_school IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle Schools", "group": "Schools", "rank": 72 }';
COMMENT ON COLUMN grar2.view_medina.high_school IS '{ "location": true, "label": "High School", "label_plural":  "High Schools", "group": "Schools", "rank": 76 }';
COMMENT ON COLUMN grar2.view_medina.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN grar2.view_medina.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN grar2.view_medina.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN grar2.view_medina.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN grar2.view_medina.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN grar2.view_medina.water_view IS '{ "feature": true, "label": "Water View" }';
COMMENT ON COLUMN grar2.view_medina.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN grar2.view_medina.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN grar2.view_medina."feature_exterior_features[]" IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN grar2.view_medina."feature_accessibility_features[]" IS '{ "advanced": true, "label": "Accessibility", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN grar2.view_medina.feature_style IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN grar2.view_medina.feature_stories IS '{ "advanced": true, "label": "Stories", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN grar2.view_medina.__geo_school_district IS '{ "location": true, "label": "School District", "label_plural":  "School Districts", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN grar2.view_medina.__geo_city IS '{ "group": "City", "location": true, "label": "Geo City", "label_plural": "Geo City", "rank": 11 }';
