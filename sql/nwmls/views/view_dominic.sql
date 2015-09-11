DROP VIEW IF EXISTS nwmls.view_dominic;
CREATE OR REPLACE VIEW nwmls.view_dominic AS
  SELECT
   72::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{72,"Neighborhood"}')::text) as __geo_area
  FROM
    (select * from nwmls.view_property WHERE county IN ('Skagit', 'Snohomish', 'Island', 'Whatcom', 'King', 'San Juan', 'Kitsap')) vl
;

COMMENT ON COLUMN nwmls.view_dominic.city
  IS '{ "location": true, "label": "City", "label_plural": "City", "rank": 5 }';

COMMENT ON COLUMN nwmls.view_dominic.feature_area
  IS '{ "location": true, "label": "Area", "label_plural": "Area", "group": "Area", "rank": 5 }';
COMMENT ON COLUMN nwmls.view_dominic.feature_community
  IS '{ "location": true, "label": "Community", "label_plural": "Community", "group": "Area", "rank": 5 }';

COMMENT ON COLUMN nwmls.view_dominic.__geo_area
  IS '{ "location": true, "label": "Map Area", "label_plural": "Map Areas", "rank": 10 }';

COMMENT ON COLUMN nwmls.view_dominic.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN nwmls.view_dominic.county 
  IS '{ "location": true, "label": "County", "label_plural": "County", "rank": 35 }';
COMMENT ON COLUMN nwmls.view_dominic.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary School", "group": "School", "rank": 40 }';
COMMENT ON COLUMN nwmls.view_dominic.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle School", "group": "School", "rank": 41 }';
COMMENT ON COLUMN nwmls.view_dominic.high_school
  IS '{ "location": true, "label": "High School", "label_plural":  "High School", "group": "School", "rank": 42 }';
COMMENT ON COLUMN nwmls.view_dominic.school_district
  IS '{ "location": true, "label": "School District", "label_plural":  "School District", "group": "School", "rank": 43 }';

---- features
COMMENT ON COLUMN nwmls.view_dominic.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN nwmls.view_dominic.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN nwmls.view_dominic.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN nwmls.view_dominic.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN nwmls.view_dominic.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN nwmls.view_dominic.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN nwmls.view_dominic.new_construction IS '{ "feature": true, "label": "New Construction" }';
COMMENT ON COLUMN nwmls.view_dominic.one_story IS '{ "feature": true, "label": "One Story" }';
COMMENT ON COLUMN nwmls.view_dominic.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN nwmls.view_dominic.first_floor_master IS '{ "feature": true, "label": "First Floor Master" }';

-- advanced
COMMENT ON COLUMN nwmls.view_dominic."feature_style"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_view[]"
  IS '{ "advanced": true, "label": "View", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_baths_all"
  IS '{ "advanced": true, "label": "Baths", "input": "checkbox-group", "rank": 18 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_parking_type[]"
  IS '{ "advanced": true, "label": "Parking Type", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_site_features[]"
  IS '{ "advanced": true, "label": "Site Features", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_waterfront[]"
  IS '{ "advanced": true, "label": "Waterfront", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_bank_owned"
  IS '{ "advanced": true, "label": "Bank/REO Owned", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_third_party_approval_required"
  IS '{ "advanced": true, "label": "Third Party Approval Required", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_carport_spaces"
  IS '{ "advanced": true, "label": "Number of Carport Spaces", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_potential_terms[]"
  IS '{ "advanced": true, "label": "Potential Terms", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_unit_features[]"
  IS '{ "advanced": true, "label": "Unit Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN nwmls.view_dominic."feature_common_property_features[]"
  IS '{ "advanced": true, "label": "Common Property Features", "input": "checkbox-group", "rank": 40 }';
