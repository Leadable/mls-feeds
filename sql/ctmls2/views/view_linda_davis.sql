DROP VIEW IF EXISTS ctmls2.view_linda_davis CASCADE;
CREATE OR REPLACE VIEW ctmls2.view_linda_davis AS
  SELECT *, 32::integer as area_id FROM ctmls2.view_property WHERE county IN ('New London', 'Middlesex')
;

COMMENT ON COLUMN ctmls2.view_linda_davis.city_st IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN ctmls2.view_linda_davis.zip IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN ctmls2.view_linda_davis.county IS '{ "location": true, "label": "County", "label_plural": "County", "rank": 15 }';
COMMENT ON COLUMN ctmls2.view_linda_davis.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN ctmls2.view_linda_davis.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN ctmls2.view_linda_davis.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN ctmls2.view_linda_davis.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN ctmls2.view_linda_davis.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN ctmls2.view_linda_davis.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN ctmls2.view_linda_davis.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
COMMENT ON COLUMN ctmls2.view_linda_davis.double_vanity IS '{ "feature": true, "label": "Dual Sinks" }';
COMMENT ON COLUMN ctmls2.view_linda_davis.subdivision IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 35 }';
COMMENT ON COLUMN ctmls2.view_linda_davis.elementary_school IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN ctmls2.view_linda_davis.middle_school IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 55 }';
COMMENT ON COLUMN ctmls2.view_linda_davis.high_school IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN ctmls2.view_linda_davis.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN ctmls2.view_linda_davis."feature_exterior_features[]" IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN ctmls2.view_linda_davis."feature_interior_features[]" IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN ctmls2.view_linda_davis."feature_waterfront_description[]" IS '{ "advanced": true, "label": "Waterfront Description", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN ctmls2.view_linda_davis."feature_basement_finish_description[]" IS '{ "advanced": true, "label": "Basement Finish Description", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN ctmls2.view_linda_davis."feature_hoa_includes[]" IS '{ "advanced": true, "label": "HOA Includes", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN ctmls2.view_linda_davis."feature_style[]" IS '{ "advanced": true, "label": "Residential Style", "input": "checkbox-group", "rank": 0 }';
COMMENT ON COLUMN ctmls2.view_linda_davis.feature_market_area IS '{ "location": true, "label": "Market Area", "label_plural": "Market Areas", "rank": 70 }';
COMMENT ON COLUMN ctmls2.view_linda_davis."feature_amenities_included[]" IS '{ "advanced": true, "label": "Amenities Included", "input": "checkbox-group", "rank": 72 }';
