 -- View: nmar.view_listings
-- DROP VIEW nmar.view_listings;
DROP VIEW IF EXISTS nmar.view_property CASCADE;
CREATE OR REPLACE VIEW nmar.view_property AS 
 SELECT 'nmar'::text AS mls,
    __removed_at,
    __removed_at IS NULL AS __active,
    __inserted_at AS age,
    __inserted_at,
    __modified_at,
    __price_updated_at,
    "UNBRANDEDIDXVIRTUALTOUR" AS virtual_tour,
    __price_history_times,
    __price_history_vals,
    __percent_reduced,
    __status_updated_at,
    __status_history_times,
    __status_history_vals,
    __geo_geom,
    __geo_outlier,
    __photo_urls,
    __geo_places,
    "LIST_10" as __list_date,
    last_transaction_completed_at,
    null::text as days_to_close,
    null::text as sold_date,
    null::integer as sold_price,
    'for_sale'::text as listing_type,
    "LIST_1" AS listing_id,
    "LIST_105" AS mlsnum,
    "LIST_15" AS status,
    false as under_contract,
    null::text as under_contract_description,
    COALESCE("LIST_133", 0) AS image_count,
    "LIST_22" AS price,
    --null::text as price_per_sqft,
    "LIST_66" AS beds,
    CASE __class_name
      WHEN 'A'::text THEN
        CASE "LIST_54"
          WHEN 'Condo'::text THEN 'Condo/Townhouse'::text
          ELSE 'Single Family'::text
        END
       WHEN 'B'::text THEN 'Lots & Land'::text
       WHEN 'G'::text THEN 'Other'::text
    END AS type,
    "LIST_68" AS baths_total,
    "LIST_78" AS remarks,
    ((("LIST_31" || ' '::text) ||
        CASE
            WHEN "LIST_33" IS NULL THEN ''::text
            ELSE "LIST_33" || ' '::text
        END) || "LIST_34") ||
        CASE
            WHEN "LIST_37" IS NULL THEN ''::text
            ELSE ' '::text || "LIST_37"
        END AS address_line1,
    'MT'::text AS state,
    ((initcap("LIST_39") || ', MT'::text) || ' '::text) || "substring"("LIST_43", 1, 5) AS address_line2,
    initcap("LIST_39") AS city,
    initcap("LIST_39") || ', MT'::text AS city_st,
    "substring"("LIST_43", 1, 5) AS zip,
    "LIST_41" AS county,
    __geo_modified_at,
    __geo_latitude AS latitude,
    __geo_longitude AS longitude,
    "LIST_48" AS square_feet,
    "LIST_53" AS year_built,
    "LIST_57" AS acres,
    CASE "LIST_71"
      WHEN 'Double'::text THEN true::boolean
      WHEN 'Single'::text THEN true::boolean
      WHEN 'Triple'::text THEN true::boolean
      WHEN 'Triple Plus'::text THEN true::boolean
      WHEN 'Carport'::Text THEN false::boolean
      WHEN 'None'::text THEN false::boolean
      WHEN 'Other'::text THEN false::boolean
      ELSE NULL::boolean
    END as garage,
    CASE __class_name
      WHEN 'A' THEN "GF20031222224037038067000000" && ARRAY['Full', 'Full Finished', 'Partial', 'Partially Finished', 'Unfinished', 'Daylight', 'Walkout']
      WHEN 'B' THEN NULL::boolean
      WHEN 'G' THEN "GF20040209174823465693000000" && ARRAY['Full', 'Full Finished', 'Partial', 'Partially Finished', 'Unfinished', 'Daylight', 'Walkout']
      ELSE NULL::boolean
    END as basement,
    CASE __class_name
        WHEN 'A'::text THEN "GF20040107165935790840000000" && ARRAY['Fireplace'::text]
        WHEN 'B'::text THEN NULL::boolean
        WHEN 'G'::text THEN "GF20040209175343285853000000" && ARRAY['Fireplace'::text]
        ELSE NULL::boolean
    END AS fireplace,
    CASE __class_name
        WHEN 'A'::text THEN "GF20031222224154435678000000" && ARRAY['Fence'::text]
        WHEN 'G'::text THEN "GF20040209175354854444000000" && ARRAY['Fence'::text]
        ELSE NULL::boolean
    END AS fenced_yard,
    "LIST_93" = 'Navigable' OR "LIST_93" = 'Non Navigable' AS waterfront,
    "LIST_54" = 'Ranch' AS one_story,
    CASE __class_name
      WHEN 'A' THEN "GF20031222224154435678000000" && ARRAY['Swimming Pool'] OR "GF20040107165935790840000000" && ARRAY['Swimming Pool']
      WHEN 'G' THEN "GF20040209175354854444000000" && ARRAY['Swimming Pool']
      ELSE NULL::boolean
    END AS pool,
    CASE __class_name
      WHEN 'A' THEN "GF20031222224154435678000000" && ARRAY['Deck', 'Patio', 'Porch']
      WHEN 'G' THEN "GF20040209175354854444000000" && ARRAY['Deck', 'Patio', 'Porch']
      ELSE NULL::boolean
    END as patio_deck_porch,
    NULL::text AS walk_in_closets,
    NULL::text AS double_vanity,
    "LIST_29" AS __minor_area,
    "LIST_102" AS __major_area,
    "LIST_77" AS subdivision,
    "LIST_87" AS modification_timestamp,
    "LIST_104" = 'Y' AS display_address, 
    "LIST_91" as school_district,
    --"LIST_85" AS elementary_school,
    --"LIST_32" AS middle_school,
    --"LIST_73" AS high_school,
    listing_office_name AS office_name,
    listing_member_name AS listing_agent_name,
    CASE __class_name
      WHEN 'A' THEN "GF20031222223154364604000000"
      WHEN 'B' THEN "GF20031231220522655526000000"
      WHEN 'G' THEN "GF20031231220522655526000000"
      ELSE null::text[]
    END as "feature_views[]",
    CASE __class_name
      WHEN 'A' THEN "GF20031222223137608262000000"
      WHEN 'B' THEN "GF20031231220556203310000000"
      WHEN 'G' THEN "GF20040209174419042941000000"
      ELSE null::text[]
    END as "feature_road_surface[]",
    CASE __class_name
      WHEN 'A' THEN "GF20031222224307134117000000"
      WHEN 'B' THEN "GF20031231220456552131000000"
      WHEN 'G' THEN "GF20040209175654553166000000"
      ELSE null::text[]
    END as "feature_trees[]",
    "LIST_95" as "feature_lot_dimensions",
    "LIST_96" as "feature_waterfront_name"
FROM
  nmar."Property" p, nmar.mutation m
WHERE
  p."LIST_1"::text = m.remote_id AND
  m.last_transaction_completed_at IS NOT NULL
;
