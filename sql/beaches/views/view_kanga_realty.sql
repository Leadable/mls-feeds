DROP VIEW IF EXISTS beaches.view_kanga_realty CASCADE;
CREATE OR REPLACE VIEW beaches.view_kanga_realty AS
  SELECT
   83::integer as area_id,
   vl.*,
   array(select jsonb_array_elements_text(__geo_places#>'{83,"Neighborhood"}')::text) as __geo_neigh
  FROM
    (select * from beaches.view_property) vl
;

COMMENT ON COLUMN beaches.view_kanga_realty.city_st IS '{ "location": true, "label": "City", "label_plural": "Cities", "rank": 10 }';
COMMENT ON COLUMN beaches.view_kanga_realty.zip IS '{ "location": true, "label": "Zip", "label_plural": "Zip", "rank": 30 }';
COMMENT ON COLUMN beaches.view_kanga_realty.garage IS '{ "feature": true, "label": "Garage" }';
COMMENT ON COLUMN beaches.view_kanga_realty.basement IS '{ "feature": true, "label": "Basement" }';
COMMENT ON COLUMN beaches.view_kanga_realty.fireplace IS '{ "feature": true, "label": "Fireplace" }';
COMMENT ON COLUMN beaches.view_kanga_realty.fenced_yard IS '{ "feature": true, "label": "Fenced Yard" }';
COMMENT ON COLUMN beaches.view_kanga_realty.waterfront IS '{ "feature": true, "label": "Waterfront" }';
COMMENT ON COLUMN beaches.view_kanga_realty.one_story IS '{ "feature": true, "label": "Single Story" }';
COMMENT ON COLUMN beaches.view_kanga_realty.pool IS '{ "feature": true, "label": "Pool" }';
COMMENT ON COLUMN beaches.view_kanga_realty.patio_deck_porch IS '{ "feature": true, "label": "Patio/Deck/Porch" }';
COMMENT ON COLUMN beaches.view_kanga_realty."feature_private_pool[]" IS '{ "advanced": true, "label": "Pool", "input": "checkbox-group", "rank": 5 }';
COMMENT ON COLUMN beaches.view_kanga_realty.feature_governing_body IS '{ "advanced": true, "label": "Governing Body", "input": "checkbox-group", "rank": 10 }';
COMMENT ON COLUMN beaches.view_kanga_realty.feature_pets_allowed IS '{ "advanced": true, "label": "Pets Allowed", "input": "checkbox-group", "rank": 20 }';
COMMENT ON COLUMN beaches.view_kanga_realty."feature_restrictions[]" IS '{ "advanced": true, "label": "Restrictions", "input": "checkbox-group", "rank": 25 }';
COMMENT ON COLUMN beaches.view_kanga_realty.__geo_neigh IS '{ "location": true, "label": "Neighborhood", "label_plural": "Neighborhoods", "rank": 20 }';
