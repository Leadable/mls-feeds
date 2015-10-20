DROP VIEW IF EXISTS iowacity.view_brian_watts CASCADE;
CREATE OR REPLACE VIEW iowacity.view_brian_watts AS SELECT *, 35::integer as area_id FROM iowacity.view_property;

COMMENT ON COLUMN iowacity.view_brian_watts.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN iowacity.view_brian_watts.county 
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 20 }';
COMMENT ON COLUMN iowacity.view_brian_watts.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN iowacity.view_brian_watts.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 35 }';
COMMENT ON COLUMN iowacity.view_brian_watts.high_school
  IS '{ "location": true, "group": "Schools", "label": "High School", "label_plural": "High Schools", "rank": 57 }';
COMMENT ON COLUMN iowacity.view_brian_watts.middle_school
  IS '{ "location": true, "group": "Schools", "label": "Middle School", "label_plural": "Middle Schools", "rank": 53 }';
COMMENT ON COLUMN iowacity.view_brian_watts.elementary_school
  IS '{ "location": true, "group": "Schools", "label": "Elementary School", "label_plural": "Elementary Schools", "rank": 50 }';


---- features
COMMENT ON COLUMN iowacity.view_brian_watts.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN iowacity.view_brian_watts.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN iowacity.view_brian_watts.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN iowacity.view_brian_watts.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN iowacity.view_brian_watts.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
COMMENT ON COLUMN iowacity.view_brian_watts.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN iowacity.view_brian_watts.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN iowacity.view_brian_watts.pool IS '{ "feature": true, "label": "Pool" }';
--
-- advanced
COMMENT ON COLUMN iowacity.view_brian_watts."feature_basement[]"
  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 10 }';
