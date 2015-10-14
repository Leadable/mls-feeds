DROP VIEW IF EXISTS millmls.view_property CASCADE;
CREATE OR REPLACE VIEW millmls.view_property AS
  SELECT
    'millmls'::text as mls,
    __removed_at,
    (__removed_at is null) as __active,
    __inserted_at,
    __modified_at,
    __price_updated_at,
    __price_history_times,
    __price_history_vals,
    __percent_reduced,
    __inserted_at as age,
    __status_updated_at,
    __status_history_times,
    __status_history_vals,
    __geo_geom,
    __geo_outlier,
    __geo_places,
    __geo_modified_at,
    __geo_latitude as latitude,
    __geo_longitude as longitude,
    __photo_urls,
    "List_Date" as __list_date,
    last_transaction_completed_at,
    null::int as days_to_close,
    null::text as sold_date,
    null::int as sold_price,
    ("Property_Status" = 'Contingency Contract') as under_contract,
    CASE "Property_Status"
      WHEN 'Contingency Contract' THEN 'Under Contract'
      ELSE NULL
    END as under_contract_description,
    'for_sale'::text as "listing_type",
    "Property_Type" as "type",
    "Property_Status" as status,
    "Full_Bath" as baths_total,
    "Apx_Acreage" as acres,
    "MST_MLS_NUMBER"::text as mlsnum,
    'GA'::text as state,
    "Year_Built" as year_built,
    "City" as city,
    COALESCE("Remarks", '') as remarks,
    "Apx_SqFt" as square_feet,
    COALESCE("Street_Num"::text, '') || ' ' || COALESCE(initcap("Address"), '') as address_line1,
    COALESCE("City", '') || ', GA ' || COALESCE("ZipCode", '') as address_line2,
    "ZipCode" as zip,
    "Bedroom" as beds,
    "MLS_Area" as county,
    COALESCE(array_length(__photo_urls, 1), 0) as image_count,
    "List_Price" as price,
    "MST_MLS_NUMBER" as listing_id,
    CASE __class_name
      WHEN 'RESD' THEN "CF_Z"
      WHEN 'VacLnd' THEN "CF_I"
      ELSE null::text[]
    END  as "feature_ownership[]",
    (("CF_X" &&
    (ARRAY[
      'Deck',
      'Patio',
      'Porch',
      'Screened Porch',
      'Terrace'
    ]))
    ) as patio_deck_porch,
    ("CF_U" && ARRAY['In Ground','Above Ground']) as pool,
    ("CF_X" @> ARRAY['Fireplace']) as fireplace,
    false as walk_in_closets,
    false as double_vanity,
    ("CF_A" && ARRAY['Ranch']) as ranch_style,
    ("CF_E" && ARRAY['Full Finished', 'Full Unfinished', 'Partial Finished', 'Partial Unfinished']) as basement,
    ("CF_X" && ARRAY['Fenced']) as fenced_yard,
    ("Waterfront" = 'On Water') as waterfront,
    ("CF_F" && ARRAY['Garage']) as garage,

   CASE
     WHEN "Site_Built" is true THEN 'Yes'
     ELSE 'No'
   END as feature_site_built_area_only,
   CASE __class_name
     WHEN 'RESD' THEN "CF_A"
     ELSE NULL
   END as "feature_style[]",
   CASE __class_name
     WHEN 'VacLnd' THEN "CF_A"
     WHEN 'RESD' THEN "CF_R"
     ELSE NULL
   END as location,
   CASE __class_name
     WHEN 'RESD' THEN "CF_C"
     ELSE NULL
   END as "feature_materials[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_D"
     ELSE NULL
   END as "feature_roof[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_L"
     WHEN 'VacLnd' THEN "CF_D"
     ELSE NULL
   END as "feature_sewer[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_F"
     ELSE NULL
   END as "feature_parking[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_U"
     ELSE NULL
   END as "feature_pool[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_G"
     ELSE NULL
   END as "feature_heating[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_H"
     ELSE NULL
   END as "feature_cooling[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_I"
     ELSE NULL
   END as "feature_floors[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_J"
     ELSE NULL
   END as "feature_interior_walls[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_K"
     ELSE NULL
   END as "feature_water_source[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_M"
     ELSE NULL
   END as "feature_phone_service[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_N"
     ELSE NULL
   END as "feature_electrical_service[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_O"
     ELSE NULL
   END as "feature_television_service[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_P"
     ELSE NULL
   END as "feature_appliances[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_S"
     WHEN 'VacLnd' THEN "CF_G"
     ELSE NULL
   END as "feature_road[]",
   CASE __class_name
     WHEN 'RESD' THEN "CF_T"
     ELSE NULL
   END as "feature_driveway[]",
   "CF_V" as "feature_boat_shelter[]",
   "CF_W" as "feature_seawall[]",
   "CF_X" as "feature_improvements[]",
   "CF_B" as "feature_construction[]",
   "Elementary_School" as elementary_school,
   "Middle_School" as middle_school,
   "High_School" as high_school,
   "Half_Bath" as feature_half_baths,
   "Waterfront" as feature_waterfront,
   "Num_Closets" as feature_num_closets,
   "Stories" as feature_num_stories,
   "Water_Depth" as feature_water_depth,
   "Subdivision" as subdivision,
   "VOWAddressDisplay" as display_address,
    NULL::text as __minor_area,
    NULL::text as __major_area,
   initcap(rets_lo_name) as office_name,
   "sys_Last_Modified" as modification_timestamp
FROM millmls."Property" as p, millmls.mutation as m
WHERE
  p."MST_MLS_NUMBER"::text = m.remote_id AND
  m.last_transaction_completed_at is not null AND
  (__class_name = 'RESD' OR __class_name = 'VacLnd')
;
