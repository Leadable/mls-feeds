COMMENT ON COLUMN wiregrass.view_wiregrass.city 
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN wiregrass.view_wiregrass.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 20 }';
COMMENT ON COLUMN wiregrass.view_wiregrass.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip Codes", "rank": 40 }';
COMMENT ON COLUMN wiregrass.view_wiregrass.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN wiregrass.view_wiregrass.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN wiregrass.view_wiregrass.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';

COMMENT ON COLUMN wiregrass.view_wiregrass.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN wiregrass.view_wiregrass.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN wiregrass.view_wiregrass.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN wiregrass.view_wiregrass.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN wiregrass.view_wiregrass.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN wiregrass.view_wiregrass.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
