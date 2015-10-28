DROP VIEW IF EXISTS armls.view_dean_ouellette;
CREATE OR REPLACE VIEW armls.view_dean_ouellette AS
  SELECT
   88::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{88,"Neighborhood"}')::text) as __geo_neigh,
   array(select jsonb_array_elements_text(__geo_places#>'{88,"High School"}')::text) as __geo_high_school
  FROM
    armls.view_property vl
;

COMMENT ON COLUMN armls.view_dean_ouellette.city_st IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN armls.view_dean_ouellette.zip IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN armls.view_dean_ouellette.county IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 40 }';
COMMENT ON COLUMN armls.view_dean_ouellette.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN armls.view_dean_ouellette.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN armls.view_dean_ouellette.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN armls.view_dean_ouellette.one_story IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN armls.view_dean_ouellette.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN armls.view_dean_ouellette.feature_pool_type IS '{ "advanced": true, "label": "Pool Type", "input": "checkbox-group", "rank": 2 }';
COMMENT ON COLUMN armls.view_dean_ouellette."feature_pool_features[]" IS '{ "advanced": true, "label": "Pool Features", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN armls.view_dean_ouellette.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN armls.view_dean_ouellette.elementary_school IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN armls.view_dean_ouellette.middle_school IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN armls.view_dean_ouellette.high_school IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN armls.view_dean_ouellette."feature_master_bedroom[]" IS '{ "advanced": true, "label": "Master Bedroom", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN armls.view_dean_ouellette."feature_exterior_features[]" IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN armls.view_dean_ouellette."feature_community_features[]" IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN armls.view_dean_ouellette."feature_accessibility_features[]" IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN armls.view_dean_ouellette."feature_roofing[]" IS '{ "advanced": true, "label": "Roofing", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN armls.view_dean_ouellette.feature_mls_property_type IS '{ "advanced": true, "label": "MLS Property Type", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN armls.view_dean_ouellette.feature_special_listing_cond IS '{ "advanced": true, "label": "Special Listing Conditions", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN armls.view_dean_ouellette.__geo_neigh IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 20 }';
COMMENT ON COLUMN armls.view_dean_ouellette.__geo_high_school IS '{ "location": true, "label": "Geo High School", "label_plural": "Geo High School", "group": "Schools", "rank": 81 }';
