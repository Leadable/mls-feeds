COMMENT ON COLUMN pensacola2.view_sherman.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN pensacola2.view_sherman.county 
  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 20 }';
COMMENT ON COLUMN pensacola2.view_sherman.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN pensacola2.view_sherman.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 35 }';
COMMENT ON COLUMN pensacola2.view_sherman.high_school
  IS '{ "location": true, "group": "Schools", "label": "High School", "label_plural": "High Schools", "rank": 57 }';
COMMENT ON COLUMN pensacola2.view_sherman.middle_school
  IS '{ "location": true, "group": "Schools", "label": "Middle School", "label_plural": "Middle Schools", "rank": 53 }';
COMMENT ON COLUMN pensacola2.view_sherman.elementary_school
  IS '{ "location": true, "group": "Schools", "label": "Elementary School", "label_plural": "Elementary Schools", "rank": 50 }';


---- features
COMMENT ON COLUMN pensacola2.view_sherman.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN pensacola2.view_sherman.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN pensacola2.view_sherman.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN pensacola2.view_sherman.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN pensacola2.view_sherman.walk_in_closets IS '{ "feature": true, "label": "Walk-in Closets" }';
COMMENT ON COLUMN pensacola2.view_sherman.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN pensacola2.view_sherman.one_story IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN pensacola2.view_sherman.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN pensacola2.view_sherman.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN pensacola2.view_sherman.short_sale IS '{ "feature": true, "label": "Short Sale" }';
--
-- advanced
COMMENT ON COLUMN pensacola2.view_sherman."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN pensacola2.view_sherman."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN pensacola2.view_sherman."feature_lot_location[]"
  IS '{ "advanced": true, "label": "Lot Location", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN pensacola2.view_sherman."feature_master_bath[]"
  IS '{ "advanced": true, "label": "Master Bath", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN pensacola2.view_sherman."feature_master_bedroom[]"
  IS '{ "advanced": true, "label": "Master Bedroom", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN pensacola2.view_sherman."feature_pets_considered"
  IS '{ "advanced": true, "label": "Pets Considered (rental)", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN pensacola2.view_sherman."feature_waterfront[]"
  IS '{ "advanced": true, "label": "Waterfront", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN pensacola2.view_sherman."feature_pool[]"
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 80 }';
