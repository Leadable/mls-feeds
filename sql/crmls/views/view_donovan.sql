DROP VIEW IF EXISTS crmls.view_donovan cascade;
CREATE OR REPLACE VIEW crmls.view_donovan AS
  SELECT
   65::integer as area_id,
   vl.*,
   null::text[] as __geo_neigh
  FROM
    crmls.view_property vl
;

-- ST_Within(__geo_geom, ST_SetSRID('010600002031BF0D00010000000103000000010000002A000000200000A8258D5DC061D1527DD9E14040040000B02C8D5DC02799122A8EE94040180000B0FF8C5DC004F5013601ED4040F4FFFFBF2C8C5DC0BDAE4786D0EF4040E8FFFF9F32885DC0F2A15FE2E4F14040000000E0D5865DC06547E63C11F5404020000000E7825DC0DBB2DAEC5BF5404010000040147F5DC014DEE94049F54040E8FFFF3F9E7C5DC001D0A34481F5404000000060337C5DC0BEFDEB921AF54040180000000C7C5DC0E885BF878EF4404018000080F57B5DC01C7280E600F24040F0FFFFDFB47A5DC0E26D3AAB94F04040F8FFFF7FF8785DC0072B5A9C42ED40400C000060A1775DC0177087B04FEC404020000020D4755DC095EC982EE5EC4040ECFFFF1FF3745DC00000BAA017EC4040F4FFFFBF44745DC02994D16F9AEC4040E0FFFFDF7F735DC0F8093BFB67ED4040F8FFFF7FA4725DC0A125EE5271ED4040080000A085715DC0A281D13148EE40400C000040D7705DC0EF2D760603EF4040F8FFFF5F12705DC04870BB6944EF4040F8FFFF7F206F5DC0924B1D1E73EF40400C0000607D6E5DC0EF2D760603EF4040F4FFFFBFF06D5DC076A9F7F3AEEE404010000020756B5DC0B7C28FD59FE8404020000020C4675DC09C1EB19E69DA4040000000E0F9625DC04160DF24FDD24040F8FFFF7F10615DC0FDB63B0780CD404000000020AE5F5DC0077338D436C64040F0FFFFFFCC605DC0DBEB45A72CBC4040F8FFFF7F48655DC0C4EBA92F93AD4040000000002C6B5DC009B7BCDB99B64040DCFFFFFF096F5DC0CFB924062BB94040E4FFFF9F77705DC03F72B3F597BE404010000020E5735DC0404E4F3704C44040080000A0117C5DC01C5D7911F0CA40401C00006068835DC0E8C8422ACED54040E4FFFF9F8F855DC0B6F6485BFFDA4040180000C002895DC0ABD9514A17DF4040200000A8258D5DC061D1527DD9E14040'::geometry,4326))

COMMENT ON COLUMN crmls.view_donovan.city
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';

COMMENT ON COLUMN crmls.view_donovan.__geo_neigh
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 12 }';


COMMENT ON COLUMN crmls.view_donovan.feature_area
  IS '{ "location": true, "label": "Area", "label_plural": "Areas", "rank": 15 }';
--COMMENT ON COLUMN crmls.view_donovan.county 
--  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 90 }';
COMMENT ON COLUMN crmls.view_donovan.zip 
  IS '{ "location": true, "label": "Zip Code", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN crmls.view_donovan.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural":  "Elementary Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN crmls.view_donovan.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural":  "Middle Schools", "group": "Schools", "rank": 72 }';
COMMENT ON COLUMN crmls.view_donovan.high_school
  IS '{ "location": true, "label": "High School", "label_plural":  "High Schools", "group": "Schools", "rank": 76 }';
COMMENT ON COLUMN crmls.view_donovan.school_district 
  IS '{ "location": true, "label": "School District", "label_plural": "School Districts", "group": "Schools", "rank": 80 }';

---- features
COMMENT ON COLUMN crmls.view_donovan.one_level IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN crmls.view_donovan.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN crmls.view_donovan.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN crmls.view_donovan.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN crmls.view_donovan.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN crmls.view_donovan.pool IS '{ "feature": true, "label": "Pool" }';
--
-- advanced
COMMENT ON COLUMN crmls.view_donovan."feature_stories"
  IS '{ "advanced": true, "label": "Stories", "input": "checkbox-group", "rank": 3 }';
COMMENT ON COLUMN crmls.view_donovan."feature_property_sub_type"
  IS '{ "advanced": true, "label": "Property Sub Type", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN crmls.view_donovan."feature_land_fees"
  IS '{ "advanced": true, "label": "Land Fees/Lease", "input": "checkbox-group", "rank": 8 }';
COMMENT ON COLUMN crmls.view_donovan."feature_accessibility[]" 
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN crmls.view_donovan."feature_association_features[]" 
  IS '{ "advanced": true, "label": "Association Features", "input": "checkbox-group", "rank": 15 }';
COMMENT ON COLUMN crmls.view_donovan."feature_attached" 
  IS '{ "advanced": true, "label": "Attached Structure", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN crmls.view_donovan."feature_community_features[]" 
  IS '{ "advanced": true, "label": "Community Features", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN crmls.view_donovan."feature_exterior_features[]" 
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN crmls.view_donovan."feature_furnished" 
  IS '{ "advanced": true, "label": "Furnished", "input": "checkbox-group", "rank": 35 }';
COMMENT ON COLUMN crmls.view_donovan."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN crmls.view_donovan."feature_parking[]" 
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 45 }';
COMMENT ON COLUMN crmls.view_donovan."feature_patio[]" 
  IS '{ "advanced": true, "label": "Patio", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN crmls.view_donovan."feature_pets_allowed[]" 
  IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 55 }';
COMMENT ON COLUMN crmls.view_donovan."feature_pool[]" 
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN crmls.view_donovan."feature_rooms[]" 
  IS '{ "advanced": true, "label": "Rooms", "input": "checkbox-group", "rank": 65 }';
COMMENT ON COLUMN crmls.view_donovan."feature_security[]" 
  IS '{ "advanced": true, "label": "Security", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN crmls.view_donovan."feature_senior_y_n" 
  IS '{ "advanced": true, "label": "Senior Y/N", "input": "checkbox-group", "rank": 75 }';
COMMENT ON COLUMN crmls.view_donovan."feature_spa[]" 
  IS '{ "advanced": true, "label": "Spa", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN crmls.view_donovan."feature_style[]" 
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 85 }';
COMMENT ON COLUMN crmls.view_donovan."feature_view[]" 
  IS '{ "advanced": true, "label": "View", "input": "checkbox-group", "rank": 90 }';
