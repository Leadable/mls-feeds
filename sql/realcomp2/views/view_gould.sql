DROP VIEW IF EXISTS realcomp2.view_gould;
CREATE OR REPLACE VIEW realcomp2.view_gould AS
  SELECT *, 19::integer as area_id FROM realcomp2.view_property
;

COMMENT ON COLUMN realcomp2.view_gould.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN realcomp2.view_gould.county
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 90 }';
COMMENT ON COLUMN realcomp2.view_gould.zip
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN realcomp2.view_gould.subdivision
  IS '{ "location": true, "label": "Subdiv", "label_plural": "Subdiv", "rank": 40 }';
COMMENT ON COLUMN realcomp2.view_gould.lake
  IS '{ "location": true, "label": "Lake", "label_plural": "Subdiv", "rank": 41 }';
COMMENT ON COLUMN realcomp2.view_gould.school_district
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "rank": 55 }';

---- features
COMMENT ON COLUMN realcomp2.view_gould.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN realcomp2.view_gould.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN realcomp2.view_gould.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN realcomp2.view_gould.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN realcomp2.view_gould.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN realcomp2.view_gould.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN realcomp2.view_gould.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN realcomp2.view_gould.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
--
-- advanced
COMMENT ON COLUMN realcomp2.view_gould."feature_architecture[]"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN realcomp2.view_gould."feature_basement_features[]"
  IS '{ "advanced": true, "label": "Basement Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN realcomp2.view_gould."feature_construction_features[]"
  IS '{ "advanced": true, "label": "Construction Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN realcomp2.view_gould."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN realcomp2.view_gould."feature_garage_features[]"
  IS '{ "advanced": true, "label": "Garage Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN realcomp2.view_gould."feature_garage_size[]"
  IS '{ "advanced": true, "label": "Garage Size", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN realcomp2.view_gould."feature_heating[]"
  IS '{ "advanced": true, "label": "Heating", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN realcomp2.view_gould."feature_lot_features[]"
  IS '{ "advanced": true, "label": "Lot Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN realcomp2.view_gould."feature_short_sale"
  IS '{ "advanced": true, "label": "Short Sale", "input": "checkbox-group", "rank": 10 }';
