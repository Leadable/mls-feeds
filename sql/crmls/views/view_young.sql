-- Kendyl has a really odd area, came up with the below city and zip constraint using gis.hoods
-- also using a statically defined Neighborhood set with an ugly way around duplicate column.
-- there has to be a better solution to this
DROP VIEW IF EXISTS crmls.view_young CASCADE;
CREATE OR REPLACE VIEW crmls.view_young AS
  SELECT
   46::integer as area_id,
   vl.*,
   null::text[] as neighborhood
  FROM
    (SELECT * FROM crmls.view_property WHERE (city = ANY (ARRAY['Tujunga'::text, 'Eagle Rock'::text, 'Glendale'::text, 'Glassell Park'::text, 'Highland Park'::text, 'Pasadena'::text, 'Montrose'::text, 'Sunland'::text, 'La Canada Flintridge'::text, 'Altadena'::text, 'Burbank'::text, 'La Crescenta'::text, 'North Hollywood'::text, 'Studio City'::text]) OR zip = ANY (ARRAY['91210'::text, '91202'::text, '91104'::text, '91504'::text, '91042'::text, '91502'::text, '91020'::text, '91207'::text, '91103'::text, '91040'::text, '91208'::text, '91505'::text, '91506'::text, '91203'::text, '90065'::text, '90041'::text, '91606'::text, '91331'::text, '91201'::text, '91205'::text, '91206'::text, '91501'::text, '91214'::text, '91107'::text, '91011'::text, '91001'::text, '91105'::text, '90042'::text, '90027'::text, '90039'::text, '90012'::text, '90013'::text, '90014'::text, '90015'::text, '91602'::text, '91604'::text, '91607'::text])) ) vl
;

COMMENT ON COLUMN crmls.view_young.city
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN crmls.view_young.feature_area
  IS '{ "location": true, "label": "Area", "label_plural": "Areas", "rank": 15 }';
COMMENT ON COLUMN crmls.view_young.neighborhood
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 20 }';

COMMENT ON COLUMN crmls.view_young.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN crmls.view_young.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN crmls.view_young.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle Schools", "group": "Schools", "rank": 72 }';
COMMENT ON COLUMN crmls.view_young.high_school
  IS '{ "location": true, "label": "High School", "label_plural":  "High Schools", "group": "Schools", "rank": 76 }';
COMMENT ON COLUMN crmls.view_young.school_district 
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "group": "Schools", "rank": 80 }';

---- features
COMMENT ON COLUMN crmls.view_young.one_level IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN crmls.view_young.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN crmls.view_young.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN crmls.view_young.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN crmls.view_young.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN crmls.view_young.pool IS '{ "feature": true, "label": "Pool" }';
--
-- advanced
COMMENT ON COLUMN crmls.view_young."feature_stories"
  IS '{ "advanced": true, "label": "Stories", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN crmls.view_young."feature_property_sub_type"
  IS '{ "advanced": true, "label": "Property Sub Type", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN crmls.view_young."feature_land_fees"
  IS '{ "advanced": true, "label": "Land Fees/Lease", "input": "checkbox-group", "rank": 8 }';
COMMENT ON COLUMN crmls.view_young."feature_accessibility[]" 
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN crmls.view_young."feature_association_features[]" 
  IS '{ "advanced": true, "label": "Association Features", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN crmls.view_young."feature_attached" 
  IS '{ "advanced": true, "label": "Attached Structure", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN crmls.view_young."feature_community_features[]" 
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN crmls.view_young."feature_exterior_features[]" 
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN crmls.view_young."feature_furnished" 
  IS '{ "advanced": true, "label": "Furnished", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN crmls.view_young."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN crmls.view_young."feature_parking[]" 
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 45 }';
COMMENT ON COLUMN crmls.view_young."feature_patio[]" 
  IS '{ "advanced": true, "label": "Patio", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN crmls.view_young."feature_pets_allowed[]" 
  IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 55 }';
COMMENT ON COLUMN crmls.view_young."feature_pool[]" 
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN crmls.view_young."feature_rooms[]" 
  IS '{ "advanced": true, "label": "Rooms", "input": "checkbox-group", "rank": 65 }';
COMMENT ON COLUMN crmls.view_young."feature_security[]" 
  IS '{ "advanced": true, "label": "Security", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN crmls.view_young."feature_senior_y_n" 
  IS '{ "advanced": true, "label": "Senior Y/N", "input": "checkbox-group", "rank": 75 }';
COMMENT ON COLUMN crmls.view_young."feature_spa[]" 
  IS '{ "advanced": true, "label": "Spa", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN crmls.view_young."feature_style[]" 
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 85 }';
COMMENT ON COLUMN crmls.view_young."feature_view[]" 
  IS '{ "advanced": true, "label": "View", "input": "checkbox-group", "rank": 90 }';
