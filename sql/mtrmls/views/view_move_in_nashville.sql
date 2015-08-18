DROP VIEW IF EXISTS mtrmls.view_move_in_nashville CASCADE;
CREATE OR REPLACE VIEW mtrmls.view_move_in_nashville AS 
  SELECT
   2::integer as area_id,
   vl.*,
   null::text[] as __geo_neigh
  FROM
    mtrmls.view_property vl
;

COMMENT ON COLUMN mtrmls.view_move_in_nashville.area
  IS '{ "location": true, "label": "Area", "label_plural": "Areas", "rank": 0 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.city 
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.__geo_neigh 
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 15 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.subdivision 
  IS '{ "location": true, "label": "Subdivision", "label_plural": "Subdivisions", "rank": 20 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip Codes", "rank": 40 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';

COMMENT ON COLUMN mtrmls.view_move_in_nashville.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.walk_in_closets IS '{ "feature": true, "label": "Walk in Closets" }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.double_vanity IS '{ "feature": true, "label": "Double Vanity" }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';

COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_sub_type"
  IS '{ "advanced": true, "label": "Listing Sub Type", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_listing_type" 
  IS '{ "advanced": true, "label": "Listing Type", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_garage_capacity"
  IS '{ "advanced": true, "label": "Garage Capacity", "input": "checkbox-group", "rank": 6 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_basement_description" 
  IS '{ "advanced": true, "label": "Basement Description", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_basement_type" 
  IS '{ "advanced": true, "label": "Basement Type", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_bedrooms_main" 
  IS '{ "advanced": true, "label": "Bedrooms on Main Floor", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_bedroom_one_description" 
  IS '{ "advanced": true, "label": "Bedroom One Description", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_bedroom_two_description" 
  IS '{ "advanced": true, "label": "Bedroom Two Description", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_community_amenities[]" 
  IS '{ "advanced": true, "label": "Community Amenities", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_energy_features[]" 
  IS '{ "advanced": true, "label": "Energy Features", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_exterior[]" 
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_patio_deck[]" 
  IS '{ "advanced": true, "label": "Patio/Porch/Deck Description", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_waterfront_desc" 
  IS '{ "advanced": true, "label": "Waterfront", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.feature_accessibility 
  IS '{ "advanced": true, "label": "Accessibility", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_is_new_construction"
  IS '{ "advanced": true, "label": "New Construction", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville."feature_misc_other_features[]"
  IS '{ "advanced": true, "label": "Misc", "input": "checkbox-group", "rank": 150 }';
COMMENT ON COLUMN mtrmls.view_move_in_nashville.feature_num_stories
  IS '{ "advanced": true, "label": "Number of Stories", "input": "checkbox-group", "rank": 160 }';
