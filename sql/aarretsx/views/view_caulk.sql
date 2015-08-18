DROP VIEW IF EXISTS aarretsx.view_caulk;
CREATE OR REPLACE VIEW aarretsx.view_caulk AS
  SELECT
   1::integer as area_id,
   vl.*,
   neigh_places.label as __geo_neigh,
   city_places.label as __geo_city,
   sd_places.label as __geo_school_district
  FROM
    aarretsx.view_property vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              aarretsx.view_property vl
              JOIN (select * from aarretsx.places where area_id = 1 and category = 'Neighborhood') as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              aarretsx.view_property vl
              JOIN (select * from aarretsx.places where area_id = 1 and category = 'City') as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'City'
      )
    city_places ON city_places.mlsnum = vl.mlsnum
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              aarretsx.view_property vl
              JOIN (select * from aarretsx.places where area_id = 1 and category = 'School District') as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'School District'
      )
    sd_places ON sd_places.mlsnum = vl.mlsnum
;

COMMENT ON COLUMN aarretsx.view_caulk.city 
  IS '{ "group": "City", "location": true, "label": "MLS City", "label_plural": "MLS City", "rank": 10 }';
COMMENT ON COLUMN aarretsx.view_caulk.__geo_city
  IS '{ "group": "City", "location": true, "label": "Geo City", "label_plural": "Geo City", "rank": 11 }';
COMMENT ON COLUMN aarretsx.view_caulk.township 
  IS '{ "location": true, "label": "Township", "label_plural": "Townships", "rank": 20 }';
COMMENT ON COLUMN aarretsx.view_caulk.__geo_neigh
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 22 }';

COMMENT ON COLUMN aarretsx.view_caulk.zip 
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip Codes", "rank": 30 }';
COMMENT ON COLUMN aarretsx.view_caulk.lake 
  IS '{ "location": true, "label": "Lake", "label_plural": "Lakes", "rank": 40 }';
COMMENT ON COLUMN aarretsx.view_caulk.elementary_school 
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "Schools", "rank": 50 }';
COMMENT ON COLUMN aarretsx.view_caulk.middle_school 
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "Schools", "rank": 60 }';
COMMENT ON COLUMN aarretsx.view_caulk.high_school 
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "Schools", "rank": 70 }';
COMMENT ON COLUMN aarretsx.view_caulk.school_district 
  IS '{ "location": true, "label": "MLS District", "label_plural": "MLS Districts", "group": "Schools", "rank": 80 }';
COMMENT ON COLUMN aarretsx.view_caulk.__geo_school_district 
  IS '{ "location": true, "label": "Geo District", "label_plural": "Geo Districts", "group": "Schools", "rank": 81 }';


-- features
COMMENT ON COLUMN aarretsx.view_caulk.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN aarretsx.view_caulk.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN aarretsx.view_caulk.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN aarretsx.view_caulk.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN aarretsx.view_caulk.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN aarretsx.view_caulk.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN aarretsx.view_caulk.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN aarretsx.view_caulk.feature_detached IS '{ "feature": true, "label": "Detached Condo" }';

-- advanced
COMMENT ON COLUMN aarretsx.view_caulk."feature_lake" 
  IS '{ "advanced": true, "label": "Lake", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_water_extra[]" 
  IS '{ "advanced": true, "label": "Water (More)", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_garage[]" 
  IS '{ "advanced": true, "label": "Garage", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_basement[]" 
  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_community_facilities[]" 
  IS '{ "advanced": true, "label": "Community Facilities", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_fireplace[]" 
  IS '{ "advanced": true, "label": "Fireplace", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_floors[]" 
  IS '{ "advanced": true, "label": "Floors", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_heating[]" 
  IS '{ "advanced": true, "label": "Heat", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_interior_features[]" 
  IS '{ "advanced": true, "label": "Interior", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_exterior_features[]" 
  IS '{ "advanced": true, "label": "Exterior", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_pool[]" 
  IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_short_sale" 
  IS '{ "advanced": true, "label": "Short Sale", "input": "checkbox-group", "rank": 120 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_style[]" 
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 130 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_association_amenities[]" 
  IS '{ "advanced": true, "label": "Association Amenities", "input": "checkbox-group", "rank": 140 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_air_conditioning[]" 
  IS '{ "advanced": true, "label": "Air Conditioning", "input": "checkbox-group", "rank": 150 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_appliances[]" 
  IS '{ "advanced": true, "label": "Appliances", "input": "checkbox-group", "rank": 160 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_new_construction" 
  IS '{ "advanced": true, "label": "New Construction", "input": "checkbox-group", "rank": 170 }';
COMMENT ON COLUMN aarretsx.view_caulk."feature_ownership" 
  IS '{ "advanced": true, "label": "Ownership", "input": "checkbox-group", "rank": 180 }';
