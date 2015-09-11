DROP VIEW IF EXISTS nwmls.view_warmack;
CREATE OR REPLACE VIEW nwmls.view_warmack AS
  SELECT
   97::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{97,"Neighborhood"}')::text) as __geo_area
  FROM
    (select * from nwmls.view_property WHERE county IN ('King')) vl
;

COMMENT ON COLUMN nwmls.view_warmack.city
  IS '{ "location": true, "label": "City", "label_plural": "City", "rank": 5 }';

COMMENT ON COLUMN nwmls.view_warmack.feature_area
  IS '{ "location": true, "label": "Area", "label_plural": "Area", "group": "Area", "rank": 5 }';
COMMENT ON COLUMN nwmls.view_warmack.feature_community
  IS '{ "location": true, "label": "Community", "label_plural": "Community", "group": "Area", "rank": 5 }';

COMMENT ON COLUMN nwmls.view_warmack.__geo_area
  IS '{ "location": true, "label": "Map Area", "label_plural": "Map Areas", "rank": 10 }';

COMMENT ON COLUMN nwmls.view_warmack.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN nwmls.view_warmack.county 
  IS '{ "location": true, "label": "County", "label_plural": "County", "rank": 35 }';
COMMENT ON COLUMN nwmls.view_warmack.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary School", "group": "School", "rank": 40 }';
COMMENT ON COLUMN nwmls.view_warmack.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle School", "group": "School", "rank": 41 }';
COMMENT ON COLUMN nwmls.view_warmack.high_school
  IS '{ "location": true, "label": "High School", "label_plural":  "High School", "group": "School", "rank": 42 }';
COMMENT ON COLUMN nwmls.view_warmack.school_district
  IS '{ "location": true, "label": "School District", "label_plural":  "School District", "group": "School", "rank": 43 }';

---- features
COMMENT ON COLUMN nwmls.view_warmack.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN nwmls.view_warmack.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN nwmls.view_warmack.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN nwmls.view_warmack.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN nwmls.view_warmack.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN nwmls.view_warmack.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN nwmls.view_warmack.new_construction IS '{ "feature": true, "label": "New Construction" }';
COMMENT ON COLUMN nwmls.view_warmack.one_story IS '{ "feature": true, "label": "One Story" }';
COMMENT ON COLUMN nwmls.view_warmack.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN nwmls.view_warmack.first_floor_master IS '{ "feature": true, "label": "First Floor Master" }';

-- advanced
COMMENT ON COLUMN nwmls.view_warmack."feature_style"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_view[]"
  IS '{ "advanced": true, "label": "View", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_baths_all"
  IS '{ "advanced": true, "label": "Baths", "input": "checkbox-group", "rank": 18 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_parking_type[]"
  IS '{ "advanced": true, "label": "Parking Type", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_site_features[]"
  IS '{ "advanced": true, "label": "Site Features", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_waterfront[]"
  IS '{ "advanced": true, "label": "Waterfront", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_bank_owned"
  IS '{ "advanced": true, "label": "Bank/REO Owned", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_third_party_approval_required"
  IS '{ "advanced": true, "label": "Third Party Approval Required", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_carport_spaces"
  IS '{ "advanced": true, "label": "Number of Carport Spaces", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_potential_terms[]"
  IS '{ "advanced": true, "label": "Potential Terms", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_unit_features[]"
  IS '{ "advanced": true, "label": "Unit Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN nwmls.view_warmack."feature_common_property_features[]"
  IS '{ "advanced": true, "label": "Common Property Features", "input": "checkbox-group", "rank": 40 }';
