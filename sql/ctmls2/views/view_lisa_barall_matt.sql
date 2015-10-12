DROP VIEW IF EXISTS ctmls2.view_lisa_barall_matt CASCADE;
CREATE OR REPLACE VIEW ctmls2.view_lisa_barall_matt AS
  SELECT *, 35::integer as area_id FROM ctmls2.view_property
;

COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.city_st IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.zip IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.double_vanity IS '{ "feature": true, "label": "Dual Sinks" }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.subdivision IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 35 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.elementary_school IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.middle_school IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 55 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.high_school IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_exterior_features[]" IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_interior_features[]" IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_waterfront_description[]" IS '{ "advanced": true, "label": "Waterfront Description", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_basement_finish_description[]" IS '{ "advanced": true, "label": "Basement Finish Description", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_hoa_includes[]" IS '{ "advanced": true, "label": "HOA Includes", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_fuel_type[]" IS '{ "advanced": true, "label": "Fuel Type", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_sewage_system[]" IS '{ "advanced": true, "label": "Sewage System", "input": "checkbox-group", "rank": 6 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_water_source[]" IS '{ "advanced": true, "label": "Water Source", "input": "checkbox-group", "rank": 7 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_style[]" IS '{ "advanced": true, "label": "Residential Style", "input": "checkbox-group", "rank": 0 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt.feature_market_area IS '{ "location": true, "label": "Market Area", "label_plural": "Market Areas", "rank": 70 }';
COMMENT ON COLUMN ctmls2.view_lisa_barall_matt."feature_amenities_included[]" IS '{ "advanced": true, "label": "Amenities Included", "input": "checkbox-group", "rank": 72 }';
