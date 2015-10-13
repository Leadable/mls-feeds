DROP VIEW IF EXISTS gfccmls.view_bunny;
CREATE OR REPLACE VIEW gfccmls.view_bunny AS
  SELECT
   23::integer as area_id,
   vl.*,
   neigh_places.label as __geo_neigh
  FROM
    (select * from gfccmls.view_listings WHERE county = 'Fairfield') vl
    LEFT OUTER JOIN
      (
        SELECT * FROM
          (
            SELECT
              vl.mlsnum AS mlsnum,
              places.category as category,
              array_agg(places.label) AS label
            FROM
              (select * from gfccmls.view_listings WHERE county = 'Fairfield') vl
              JOIN (select * from gfccmls.places where area_id = 23) as places ON ST_Contains(ST_SETSRID(places.way, 4326), vl.__geo_geom)
            GROUP BY mlsnum, category
          ) mls_places
        WHERE category = 'Neighborhood'
      )
    neigh_places ON neigh_places.mlsnum = vl.mlsnum
;

COMMENT ON COLUMN gfccmls.view_bunny.city_st
  IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';

COMMENT ON COLUMN gfccmls.view_bunny.__geo_neigh
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 20 }';

--COMMENT ON COLUMN gfccmls.view_bunny.county
--  IS '{ "location": true, "label": "County", "label_plural": "Counties", "rank": 90 }';
COMMENT ON COLUMN gfccmls.view_bunny.zip
  IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN gfccmls.view_bunny.subdivision
  IS '{ "location": true, "label": "Subdiv", "label_plural": "Subdiv", "rank": 40 }';
COMMENT ON COLUMN gfccmls.view_bunny.complex
  IS '{ "location": true, "label": "Complex", "label_plural": "Complex", "rank": 41 }';
COMMENT ON COLUMN gfccmls.view_bunny.feature_neighborhood
  IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhood", "rank": 50 }';
COMMENT ON COLUMN gfccmls.view_bunny.elementary_school
  IS '{ "location": true, "label": "Elementary School", "label_plural": "Elementary Schools", "group": "School", "rank": 55 }';
COMMENT ON COLUMN gfccmls.view_bunny.middle_school
  IS '{ "location": true, "label": "Middle School", "label_plural": "Middle Schools", "group": "School", "rank": 60 }';
COMMENT ON COLUMN gfccmls.view_bunny.high_school
  IS '{ "location": true, "label": "High School", "label_plural": "High Schools", "group": "School", "rank": 70 }';


---- features
COMMENT ON COLUMN gfccmls.view_bunny.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN gfccmls.view_bunny.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN gfccmls.view_bunny.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN gfccmls.view_bunny.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN gfccmls.view_bunny.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN gfccmls.view_bunny.ranch_style IS '{ "feature": true, "label": "Ranch Style" }';
COMMENT ON COLUMN gfccmls.view_bunny.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN gfccmls.view_bunny.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
--
-- advanced
COMMENT ON COLUMN gfccmls.view_bunny."feature_amenities[]"
  IS '{ "advanced": true, "label": "Amenities", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_adult_community"
  IS '{ "advanced": true, "label": "Adult Community", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_basement[]"
  IS '{ "advanced": true, "label": "Basement", "input": "checkbox-group", "rank": 30 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_exterior_features[]"
  IS '{ "advanced": true, "label": "Exterior Features", "input": "checkbox-group", "rank": 40 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_accessibility_features[]"
  IS '{ "advanced": true, "label": "Accessibility Features", "input": "checkbox-group", "rank": 50 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_interior_features[]"
  IS '{ "advanced": true, "label": "Interior Features", "input": "checkbox-group", "rank": 60 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_lot_description[]"
  IS '{ "advanced": true, "label": "Lot Description", "input": "checkbox-group", "rank": 70 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_rooms_other[]"
  IS '{ "advanced": true, "label": "Other Rooms", "input": "checkbox-group", "rank": 80 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_parking[]"
  IS '{ "advanced": true, "label": "Parking", "input": "checkbox-group", "rank": 90 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_pets_allowed"
  IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 100 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_style[]"
  IS '{ "advanced": true, "label": "Style", "input": "checkbox-group", "rank": 110 }';
COMMENT ON COLUMN gfccmls.view_bunny."feature_waterfront_description[]"
  IS '{ "advanced": true, "label": "Waterfront Description", "input": "checkbox-group", "rank": 120 }';

-- invalidate cache
UPDATE area SET config_version = NOW() WHERE id = 23;
