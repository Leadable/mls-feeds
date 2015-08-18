DROP VIEW IF EXISTS ppmls.view_clement;
CREATE OR REPLACE VIEW ppmls.view_clement AS
  SELECT
    66::integer as area_id,
    vl.*,
    null::text[] as __geo_neigh
  FROM
    (SELECT * from ppmls.view_property) vl
;

-- (SELECT * from ppmls.places where area_id = 66) as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)

COMMENT ON COLUMN ppmls.view_clement.city_st
  IS '{ "location": true, "label": "City", "label_plural": "City", "rank": 10 }';
COMMENT ON COLUMN ppmls.view_clement.__geo_neigh
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 12 }';
COMMENT ON COLUMN ppmls.view_clement.feature_area_major
  IS '{ "location": true, "label": "Major Area", "label_plural": "Major Area", "group": "Area", "rank": 15 }';
COMMENT ON COLUMN ppmls.view_clement.feature_area_minor
  IS '{ "location": true, "label": "Minor Area", "label_plural": "Minor Area", "group": "Area", "rank": 16 }';
COMMENT ON COLUMN ppmls.view_clement.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN ppmls.view_clement.school_district
  IS '{ "location": true, "label": "School District", "label_plural":  "School District", "rank": 40 }';
---- features
COMMENT ON COLUMN ppmls.view_clement.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN ppmls.view_clement.mountain_view IS '{ "feature": true, "label": "Water View" }';
COMMENT ON COLUMN ppmls.view_clement.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN ppmls.view_clement.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN ppmls.view_clement.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN ppmls.view_clement.new_construction IS '{ "feature": true, "label": "New Construction" }';
--
-- advanced
COMMENT ON COLUMN ppmls.view_clement."feature_floor_plan"
  IS '{ "advanced": true, "label": "Floor Plan", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN ppmls.view_clement."feature_property_subtype"
  IS '{ "advanced": true, "label": "Property Subtype", "input": "checkbox-group", "rank": 8 }';
COMMENT ON COLUMN ppmls.view_clement."feature_lot_description[]"
  IS '{ "advanced": true, "label": "Lot Description", "input": "checkbox-group", "rank": 11 }';
COMMENT ON COLUMN ppmls.view_clement."feature_construction_status"
  IS '{ "advanced": true, "label": "Construction Status", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN ppmls.view_clement."feature_pets_ok"
  IS '{ "advanced": true, "label": "Pets OK (rental)", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN ppmls.view_clement."feature_bedroom_main_floor"
  IS '{ "advanced": true, "label": "Main Floor Bedroom", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN ppmls.view_clement."feature_garage_amenities[]"
  IS '{ "advanced": true, "label": "Garage Amenities", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN ppmls.view_clement."feature_unit_desc[]"
  IS '{ "advanced": true, "label": "Unit Description", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN ppmls.view_clement."feature_accessibility_features[]"
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN ppmls.view_clement."feature_amenities[]"
  IS '{ "advanced": true, "label": "Complex Amenities", "input": "checkbox-group", "rank": 45 }';
COMMENT ON COLUMN ppmls.view_clement."feature_structure[]"
  IS '{ "advanced": true, "label": "Structure", "input": "checkbox-group", "rank": 50 }';
