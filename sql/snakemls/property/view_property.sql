DROP VIEW IF EXISTS snakemls.view_property CASCADE;
CREATE OR REPLACE VIEW snakemls.view_property AS
SELECT
  'snakemls'::text as mls,
  __removed_at,
  (__removed_at is null) as __active,
  __inserted_at - '2 hours'::interval as age,
  __inserted_at,
  __modified_at,
  __geo_geom,
  __geo_outlier,
  __price_updated_at,
  __price_history_times,
  __price_history_vals,
  __percent_reduced,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  "List_Date" as __list_date,
  last_transaction_completed_at,
  __photo_urls,
  null::int as days_to_close,
  "Selling_Date" as sold_date,
  "Selling_Price" as sold_price,
  "MST_MLS_NUMBER" as listing_id,
  "MST_MLS_NUMBER" as mlsnum,
  "Property_Status" as status,
  ("Property_Status" <> 'Active') as under_contract,
  CASE "Property_Status"
    WHEN 'Active' THEN null::text
    ELSE 'Under Contract'
  END as under_contract_description,
  COALESCE(array_length(__photo_urls, 1), 0) as image_count,
  "List_Price" as price,
  "Bedroom" as beds,
  (COALESCE("Full_Bath"::integer, 0) + COALESCE("Three_qtr_bath"::integer, 0) + COALESCE("Half_Bath"::integer, 0)) as baths_total,
  "Property_Type" as type,
  CASE __class_name
    WHEN 'RNTL' THEN 'for_rent'
    ELSE 'for_sale'
  END as listing_type,
  regexp_replace(regexp_replace("Remarks", E'(?x)<[^>]*?(\s alt \s* = \s* ([\'"]) ([^>]*?) \2) [^>]*? >', E'\3'), E'(?x)(< [^>]*? >)', '', 'g') as remarks,
  COALESCE("Street_Num"::text, '') || ' ' || COALESCE("Direction"::text, '') || ' ' || COALESCE(initcap("Address"), '') as address_line1,
  COALESCE(initcap("City"), '') || ', ID ' || COALESCE("ZipCode", '') as address_line2,
  initcap("City") as city,
  'ID'::text as state,
  "ZipCode" as zip,
  "MLS_Area" as county,
  null::text as township,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  __geo_modified_at,
  "Ttl_SqFt" as square_feet,
  "Year_Blt" as year_built,
  "Apx_Acrg" as acres,
  ("CF_K" && ARRAY['Full', 'Finished', 'Partially Finished', 'Unfinished']) as basement,
  ("CF_P" && ARRAY['1', '2', '3+', 'Gas', 'Insert', 'Wood', 'Propane', 'Pellet', 'Open Hearth', 'Gas', 'Free Standing']) as fireplace,
  CASE __class_name
    WHEN 'RES' THEN (("CF_S" && ARRAY['None']) is not true)
    ELSE NULL::boolean
  END as fenced_yard,
  CASE __class_name
    WHEN 'RES' THEN ("CF_Z" && ARRAY['Creek Front', 'Lake Front', 'River Front', 'Stream Front', 'Waterfront'])
    ELSE null::boolean
  END as waterfront,
  CASE __class_name
    WHEN 'RES'
      THEN (
        ("CF_Q" && ARRAY['Above Ground Pool', 'Inground Pool'])
        OR ("CF_CC" && ARRAY['Pool']))
    ELSE NULL::boolean
  END as pool,
  null::boolean as ranch_style,
  ("CF_R" && ARRAY['Covered Deck', 'Covered Patio', 'Covered Porch', 'Enclosed Deck', 'Enclosed Patio', 'Enclosed Porch', 'Gazebo', 'Open Deck', 'Open Patio', 'Open Porch']) as patio_deck_porch, -- RES only
  ("CF_N" && ARRAY['Walk-in Closet(s)']) as walk_in_closets,
  null::boolean as double_vanity,
  null::text as __minor_area,
  null::text as __major_area,
  initcap("Subdivision") as subdivision,
  "sys_Last_Modified" as modification_timestamp,
  "VOWAddressDisplay" as display_address,
  null::text as lake,
  null::text as school_district,
  initcap("High_School") as high_school,
  initcap("Middle_School") as middle_school,
  initcap("Elementary_School") as elementary_school,
  CASE __class_name
    WHEN 'RES' THEN (("CF_D" && ARRAY['None']) is not true)
    ELSE null::boolean
  END as garage,
  "off_name" as office_name,
  null::text as complex,
  "Ttl_Units" as feature_total_units,
  "Style1_Bd" as feature_style1_beds,
  "Style1_Rent" as feature_style1_rent,
  "Style1_SqFt" as feature_style1_sqft,
  "Style1_Units" as feature_style1_units,
  "Style1_Bth" as feature_style1_baths,
  "Style2_Bd" as feature_style2_beds,
  "Style2_Rent" as feature_style2_rent,
  "Style2_SqFt" as feature_style2_sqft,
  "Style2_Units" as feature_style2_units,
  "Style2_Bth" as feature_style2_baths,
  "Style3_Bd" as feature_style3_beds,
  "Style3_Rent" as feature_style3_rent,
  "Style3_SqFt" as feature_style3_sqft,
  "Style3_Units" as feature_style3_units,
  "Style3_Bth" as feature_style3_baths,
  "Style4_Bd" as feature_style4_beds,
  "Style4_Rent" as feature_style4_rent,
  "Style4_SqFt" as feature_style4_sqft,
  "Style4_Units" as feature_style4_units,
  "Style4_Bth" as feature_style4_baths,
  "Style5_Bd" as feature_style5_beds,
  "Style5_Rent" as feature_style5_rent,
  "Style5_SqFt" as feature_style5_sqft,
  "Style5_Units" as feature_style5_units,
  "Style5_Bth" as feature_style5_baths,
  "Style6_Bd" as feature_style6_beds,
  "Style6_Rent" as feature_style6_rent,
  "Style6_SqFt" as feature_style6_sqft,
  "Style6_Units" as feature_style6_units,
  "Style6_Bth" as feature_style6_baths,
  CASE __class_name
    WHEN 'MFAM' THEN "CF_S"
    ELSE NULL
  END as "feature_style1[]",
  CASE __class_name
    WHEN 'MFAM' THEN "CF_T"
    ELSE NULL
  END as "feature_style2[]",
  CASE __class_name
    WHEN 'MFAM' THEN "CF_U"
    ELSE NULL
  END as "feature_style3[]",
  CASE __class_name
    WHEN 'MFAM' THEN "CF_V"
    ELSE NULL
  END as "feature_style4[]",
  CASE __class_name
    WHEN 'MFAM' THEN "CF_W"
    ELSE NULL
  END as "feature_style5[]",
  CASE __class_name
    WHEN 'MFAM' THEN "CF_X"
    ELSE NULL
  END as "feature_style6[]",
  CASE __class_name
    WHEN 'MFAM' THEN "CF_D"
    ELSE NULL
  END as "feature_utilities[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_B"
    WHEN 'MFAM' THEN "CF_B"
    ELSE NULL
  END as "feature_style[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_BB"
    WHEN 'MFAM' THEN "CF_O"
    ELSE NULL
  END as "feature_location[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_C"
    ELSE NULL
  END as "feature_garage[]",
  CASE __class_name
    WHEN 'RLND' THEN "CF_C"
    ELSE NULL
  END as "feature_possible_use[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_CC"
    WHEN 'MFAM' THEN "CF_CC"
    ELSE NULL
  END as "feature_assoc_fee_includes[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_D"
    WHEN 'MFAM' THEN "CF_C"
    ELSE NULL
  END as "feature_heat[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_DD"
    WHEN 'MFAM' THEN "CF_DD"
    ELSE NULL
  END as "feature_terms[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_E"
    WHEN 'MFAM' THEN "CF_E"
    ELSE NULL
  END as "feature_air_conditioning[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_F"
    WHEN 'MFAM' THEN "CF_H"
    ELSE NULL
  END as "feature_exterior_material[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_G"
    WHEN 'MFAM' THEN "CF_I"
    ELSE NULL
  END as "feature_exterior_more[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_H"
    ELSE NULL
  END as "feature_rooms[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_I"
    ELSE NULL
  END as "feature_laundry[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_J"
    WHEN 'MFAM' THEN "CF_J"
    ELSE NULL
  END as "feature_construction_status[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_K"
    WHEN 'MFAM' THEN "CF_K"
    ELSE NULL
  END as "feature_basement[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_N"
    ELSE NULL
  END as "feature_interior_features[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_O"
    ELSE NULL
  END as "feature_included_appliances[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_P"
    ELSE NULL
  END as "feature_fireplace[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_Q"
    ELSE NULL
  END as "feature_exterior_features[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_R"
    ELSE NULL
  END as "feature_patio_deck[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_S"
    ELSE NULL
  END as "feature_fence[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_T"
    WHEN 'MFAM' THEN "CF_Y"
    ELSE NULL
  END as "feature_landscaping[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_U"
    WHEN 'RLND' THEN "CF_G"
    WHEN 'MFAM' THEN "CF_P"
    ELSE NULL
  END as "feature_water[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_V"
    WHEN 'RLND' THEN "CF_H"
    WHEN 'MFAM' THEN "CF_Q"
    ELSE NULL
  END as "feature_sewer[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_W"
    ELSE NULL
  END as "feature_irrigation[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_X"
    WHEN 'MFAM' THEN "CF_R"
    ELSE NULL
  END as "feature_power[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_Y"
    WHEN 'MFAM' THEN "CF_Z"
    WHEN 'RLND' THEN "CF_K"
    ELSE NULL
  END as "feature_view[]",
  CASE __class_name
    WHEN 'RES' THEN "CF_Z"
    WHEN 'RLND' THEN "CF_M"
    ELSE NULL
  END as "feature_terrain[]",
  "Dist_Property" as feature_distressed,
  "Flood_Plain" as feature_flood_plain,
  "HOA_Fee" as feature_hoa_fee,
  "Half_Bath" as feature_baths_half,
  "Three_qtr_bath"::integer as feature_baths_3qtr,
  "Full_Bath"::integer as feature_baths_full,
  "Hndcp_Accs" as feature_handicap_accessible
FROM
  snakemls."Property" as p, snakemls.mutation as m
WHERE
  p."MST_MLS_NUMBER"::text = m.remote_id AND
  m.last_transaction_completed_at is not null AND
  __class_name IN ('RES','RLND','MFAM','RNTL')
;
