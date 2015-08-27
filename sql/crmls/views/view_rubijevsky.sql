DROP VIEW IF EXISTS crmls.view_rubijevsky cascade;
CREATE OR REPLACE VIEW crmls.view_rubijevsky AS
  SELECT
   68::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{68,"Neighborhood"}')::text) as __geo_neigh
  FROM
    (SELECT * FROM crmls.view_property WHERE (city in ('Banning', 'Carson', 'Fairmont', 'Inglewood', 'Laguna Beach', 'Lancaster', 'Lompoc', 'Long Beach', 'Outside Area (Inside Ca)', 'Pine Cove', 'Playa Vista', 'Redlands', 'Wilmington') is not true)) vl
;

--ST_Within(__geo_geom, ST_SetSRID('010600002031BF0D00010000000103000000010000000F000000E0FFFFEFFB9B5DC0EC8BEFAD58F7404060FE7EE0D1995DC0BB7216835DF74040140000E088975DC044ECFBAC2EF740400C00006091965DC0770D3B5979F740400C000040E3915DC0B8A376ABF6F64040DCFFFFFF31925DC0EA23A6B196ED4040100000005F925DC0016D03A165E64040E0B72D25FB915DC0E7790E0007E5404000000000D8915DC0C2D09651D1E24040E8FFFF3F89915DC0F0914A51B6DF4040E0FFFFDFBB915DC08708BE29D7D84040F0FFFFDFB29A5DC0590313E66EDE404020000020CC9B5DC0354B9AABDAE24040E0FFFF97359C5DC077B4C35733F74040E0FFFFEFFB9B5DC0EC8BEFAD58F74040'::geometry,4326))

COMMENT ON COLUMN crmls.view_rubijevsky.city
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN crmls.view_rubijevsky.feature_area
  IS '{ "location": true, "label": "Area", "label_plural": "Areas", "rank": 15 }';
--COMMENT ON COLUMN crmls.view_rubijevsky.county 
--  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 90 }';
COMMENT ON COLUMN crmls.view_rubijevsky.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN crmls.view_rubijevsky.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN crmls.view_rubijevsky.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle Schools", "group": "Schools", "rank": 72 }';
COMMENT ON COLUMN crmls.view_rubijevsky.high_school
  IS '{ "location": true, "label": "High School", "label_plural":  "High Schools", "group": "Schools", "rank": 76 }';
COMMENT ON COLUMN crmls.view_rubijevsky.school_district 
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "group": "Schools", "rank": 80 }';

--COMMENT ON COLUMN crmls.view_rubijevsky.__geo_neigh
--  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 12 }';


---- features
COMMENT ON COLUMN crmls.view_rubijevsky.one_level IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN crmls.view_rubijevsky.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN crmls.view_rubijevsky.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN crmls.view_rubijevsky.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN crmls.view_rubijevsky.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN crmls.view_rubijevsky.pool IS '{ "feature": true, "label": "Pool" }';
--
-- advanced
COMMENT ON COLUMN crmls.view_rubijevsky."feature_stories"
  IS '{ "advanced": true, "label": "Stories", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_property_sub_type"
  IS '{ "advanced": true, "label": "Property Sub Type", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_land_fees"
  IS '{ "advanced": true, "label": "Land Fees/Lease", "input": "checkbox-group", "rank": 8 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_accessibility[]" 
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_association_features[]" 
  IS '{ "advanced": true, "label": "Association Features", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_attached" 
  IS '{ "advanced": true, "label": "Attached Structure", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_community_features[]" 
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_exterior_features[]" 
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_furnished" 
  IS '{ "advanced": true, "label": "Furnished", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_parking[]" 
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 45 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_patio[]" 
  IS '{ "advanced": true, "label": "Patio", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_pets_allowed[]" 
  IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 55 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_pool[]" 
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_rooms[]" 
  IS '{ "advanced": true, "label": "Rooms", "input": "checkbox-group", "rank": 65 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_security[]" 
  IS '{ "advanced": true, "label": "Security", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_senior_y_n" 
  IS '{ "advanced": true, "label": "Senior Y/N", "input": "checkbox-group", "rank": 75 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_spa[]" 
  IS '{ "advanced": true, "label": "Spa", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_style[]" 
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 85 }';
COMMENT ON COLUMN crmls.view_rubijevsky."feature_view[]" 
  IS '{ "advanced": true, "label": "View", "input": "checkbox-group", "rank": 90 }';
