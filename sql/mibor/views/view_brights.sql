DROP VIEW IF EXISTS mibor.view_brights;
CREATE OR REPLACE VIEW mibor.view_brights AS
  SELECT
    22::integer as area_id,
    vl.*,
    array(select jsonb_array_elements_text(__geo_places#>'{22,"Neighborhood"}')::text) as __geo_area
  FROM
    (SELECT * from mibor.view_property) vl
;

COMMENT ON COLUMN mibor.view_brights.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN mibor.view_brights.__geo_area
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 12 }';
COMMENT ON COLUMN mibor.view_brights.township
  IS '{ "location": true, "label": "Township", "label_plural": "Townships", "rank": 15 }';
COMMENT ON COLUMN mibor.view_brights.county
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 20 }';
COMMENT ON COLUMN mibor.view_brights.zip
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN mibor.view_brights.subdivision
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 35 }';
COMMENT ON COLUMN mibor.view_brights.school_district
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "rank": 50 }';


---- features
COMMENT ON COLUMN mibor.view_brights.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN mibor.view_brights.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN mibor.view_brights.double_vanity IS '{ "feature": true, "label": "Dual Sinks" }';
COMMENT ON COLUMN mibor.view_brights.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
COMMENT ON COLUMN mibor.view_brights.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN mibor.view_brights.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN mibor.view_brights.pool IS '{ "feature": true, "label": "Pool" }';
--
-- advanced
COMMENT ON COLUMN mibor.view_brights."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN mibor.view_brights."feature_style[]"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN mibor.view_brights."feature_lot_info[]"
  IS '{ "advanced": true, "label": "Lot Information", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN mibor.view_brights."feature_basement_desc[]"
  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN mibor.view_brights."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN mibor.view_brights."feature_porch[]"
  IS '{ "advanced": true, "label": "Patio/Deck/Porch", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN mibor.view_brights."feature_rooms[]"
  IS '{ "advanced": true, "label": "Rooms", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN mibor.view_brights."feature_type[]"
  IS '{ "advanced": true, "label": "Type", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN mibor.view_brights."feature_location[]"
  IS '{ "advanced": true, "label": "Location", "input": "checkbox-group", "rank": 90 }';
