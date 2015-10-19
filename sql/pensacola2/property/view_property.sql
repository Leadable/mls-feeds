DROP VIEW IF EXISTS pensacola2.view_property CASCADE;
CREATE OR REPLACE VIEW pensacola2.view_property AS
SELECT
  'pensacola2'::text as mls,
  __removed_at,
  (__removed_at is null) as __active,
  __class_name,
  (__inserted_at - '1 hours'::interval) as age,
  __inserted_at,
  __modified_at,
  last_transaction_completed_at,
  __price_updated_at,
  __price_history_times,
  __price_history_vals,
  __percent_reduced,
  __geo_geom,
  __geo_outlier,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  __photo_urls,
  "L_ListingID"::text as listing_id,
  "L_ListingID" as mlsnum,
  "L_Status" as status,
  "L_ListingDate" as __list_date,
  null::integer as days_to_close,
  null::numeric as sold_price,
  null::text as sold_date,
  false as under_contract,
  null::text as under_contract_description,
  "L_AskingPrice" as price,
  coalesce(__image_count, "L_PictureCount", 0) as image_count,
  "LM_Int1_1" as beds,
  CASE __class_name
    WHEN 'RN_4' THEN 'for_rent'::text
    ELSE 'for_sale'::text
  END as listing_type,
  CASE __class_name
    WHEN 'LD_2' THEN 'Lots & Land'
    WHEN 'RN_4' THEN 'Rental' 
    WHEN 'RE_1' THEN
      CASE "L_Type_"
        WHEN 'CONDO' THEN 'Condo'
        WHEN 'RES ATTACHED' THEN 'Townhome'
        WHEN 'RES DETACHED' THEN 'Single Family'
        ELSE 'Other'
      END 
    WHEN 'MU_4' THEN 'Multi-Family'
  END as type,
  "LM_Int2_8" as baths_total,
  "LR_remarks11" as remarks,
  initcap("L_Address") as address_line1,
  initcap("L_City") as city,
  initcap("L_City") || ', ' || "L_State" as city_st,
  "L_Zip" as zip,
  "L_State" as state,
  initcap("L_City") || ', ' || "L_State" || ' ' || "L_Zip" as address_line2,
  initcap("L_Area") as county,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "LM_Int4_3" as square_feet,
  "LM_Int2_11" as year_built,
  "L_NumAcres" as acres,
  null::boolean as basement,
  (
    ("LFD_INTERIOR_104" && ARRAY['2+FIREPLACE', 'FIREPLACE', 'FIREPLACE:  GAS']) 
    or ("LFD_INTERIOR_78" && ARRAY['2+FIREPLACE', 'FIREPLACE', 'FIREPLACE:  GAS']) 
    or ("LFD_INTERIOR_1" && ARRAY['2+FIREPLACE', 'FIREPLACE', 'FIREPLACE:  GAS']) 
  ) as fireplace,
  (
    ("LFD_EXTERIOR_19" && ARRAY['BACKYARD FENCE', 'CHAIN LINK', 'ENT LT FENCE', 'PARTIAL FENCE', 'PRIVACY FENCE'])
    or ("LFD_EXTERIOR_122" && ARRAY['BACKYARD FENCE', 'CHAIN LINK', 'ENT LT FENCE', 'PARTIAL FENCE', 'PRIVACY FENCE', 'CROSS FENCED'])
    or ("LFD_EXTERIOR_71" && ARRAY['BACKYARD FENCE', 'CHAIN LINK', 'ENT LT FENCE', 'PARTIAL FENCE', 'PRIVACY FENCE', 'CROSS FENCED'])
  ) as fenced_yard,
  (
    ("LFD_WATERFRONT_126" is not null and (("LFD_WATERFRONT_126" && ARRAY['NONE']) is not true))
    or ("LFD_WATERFRONT_23" is not null and (("LFD_WATERFRONT_23" && ARRAY['NONE']) is not true))
    or ("LFD_WATERFRONT_53" is not null and (("LFD_WATERFRONT_53" && ARRAY['NONE']) is not true))
    or ("LFD_WATERFRONT_86" is not null and (("LFD_WATERFRONT_86" && ARRAY['NONE']) is not true))
  ) as waterfront,
  ("LFD_STYLE_16" && ARRAY['RANCH']) as ranch_style,
  (
    ("LFD_DESIGN_117" && ARRAY['1 STORY'])
    or ("LFD_DESIGN_14" && ARRAY['1 STORY'])
    or ("LFD_DESIGN_73" && ARRAY['1 STORY'])
  ) as one_story,
  (
    ("LFD_POOL_123" is not null and (("LFD_POOL_123" && ARRAY['NONE']) is not true))
    or ("LFD_POOL_20" is not null and (("LFD_POOL_20" && ARRAY['NONE']) is not true))
    or ("LFD_POOL_72" is not null and (("LFD_POOL_72" && ARRAY['NONE']) is not true))
  ) as pool,
  (
    ("LFD_EXTERIOR_19" && ARRAY['COVERED PATIO', 'OPEN PATIO', 'OPEN DECK', 'PORCH', 'SCREENED PORCH'])
    or ("LFD_EXTERIOR_122" && ARRAY['COVERED PATIO', 'OPEN PATIO', 'OPEN DECK', 'PORCH', 'SCREENED PORCH'])
    or ("LFD_EXTERIOR_71" && ARRAY['COVERED PATIO', 'OPEN PATIO', 'OPEN DECK', 'PORCH', 'SCREENED PORCH'])
  ) as patio_deck_porch,
  (
    ("LFD_EXTERIOR_19" && ARRAY['WALK-IN CLOSET'])
    or ("LFD_EXTERIOR_122" && ARRAY['WALK-IN CLOSET'])
    or ("LFD_EXTERIOR_71" && ARRAY['WALK-IN CLOSET'])
  ) as walk_in_closets,
  (
    ("LFD_MASTERBATH_109" && ARRAY['DOUBLE VANITY'])
    or ("LFD_MASTERBATH_6" && ARRAY['DOUBLE VANITY'])
  ) as double_vanity,
  (
    ("LFD_PARKING_124" && ARRAY['1 CAR GARAGE', '2 CAR GARAGE',  '3 CAR GARAGE', '4+ CAR GARAGE', 'OVERSIZED GARAGE'])
    or ("LFD_PARKING_21" && ARRAY['1 CAR GARAGE', '2 CAR GARAGE',  '3 CAR GARAGE',  '4+ CAR GARAGE', 'OVERSIZED GARAGE'])
    or ("LFD_PARKING_90" && ARRAY['1 CAR GARAGE', '2 CAR GARAGE',  '3 CAR GARAGE',  '4+ CAR GARAGE', 'OVERSIZED GARAGE'])
  ) as garage,
  (
    ("LFD_SPECIALSALETYPE_150" && ARRAY['SHORT SALE'])
    or ("LFD_SPECIALSALETYPE_40" && ARRAY['SHORT SALE'])
    or ("LFD_SPECIALSALETYPE_68" && ARRAY['SHORT SALE'])
  ) as short_sale,
  "VT_VTourURL" as virtual_tour,
  null::text as __minor_area,
  null::text as __major_area,
  trim(initcap("LM_char10_51")) as subdivision,
  "L_UpdateDate" as modification_timestamp,
  ("L_IdxInclude" <> 'Yes Without Address') as display_address,
  initcap("LM_Char10_11") as elementary_school,
  initcap("LM_Char10_22") as middle_school,
  initcap("LM_Char10_14") as high_school,
  null::text as school_district,
  initcap("LO1_OrganizationName") as office_name,
  "LM_char1_27" as feature_multi_fam_pets,
  coalesce("LFD_PARKING_124", "LFD_PARKING_21", "LFD_PARKING_90") as "feature_parking[]",
  coalesce("LFD_ENERGY_11", "LFD_ENERGY_114", "LFD_ENERGY_92") as "feature_energy[]",
  "LM_Int2_18" as feature_pet_fee,
  "L_PricePerSQFT" as price_per_sqft,
  initcap("L_Type_") as feature_type,
  "LM_Int2_1" as feature_1bdr_units,
  (select (select array_agg(n) from unnest(arr) as n where n is not null) from (select ARRAY["LM_char10_36", "LM_char10_37", "LM_char10_38", "LM_char10_39", "LM_char10_40", "LM_char10_41", "LM_char10_42", "LM_char10_43", "LM_char10_44", "LM_char10_45", "LM_char10_46", "LM_char10_47", "LM_char10_48", "LM_char10_49", "LM_char10_50"] as arr) t) as "feature_rooms[]",
  --"LM_char10_36" as feature_room1,
  --"LM_char10_37" as feature_room2,
  --"LM_char10_38" as feature_room3,
  --"LM_char10_39" as feature_room4,
  --"LM_char10_40" as feature_room5,
  --"LM_char10_41" as feature_room6,
  --"LM_char10_42" as feature_room7,
  --"LM_char10_43" as feature_room8,
  --"LM_char10_44" as feature_room9,
  --"LM_char10_45" as feature_room10,
  --"LM_char10_46" as feature_room11,
  --"LM_char10_47" as feature_room12,
  --"LM_char10_48" as feature_room13,
  --"LM_char10_49" as feature_room14,
  --"LM_char10_50" as feature_room15,
  coalesce("LFD_MISCEQUIPMENT_115", "LFD_MISCEQUIPMENT_12", "LFD_MISCEQUIPMENT_80")  as "feature_misc_equipment[]",
  "LM_char30_3" as feature_lot_size,
  coalesce("LFD_WATERFEATURE_128", "LFD_WATERFEATURE_25")  as "feature_water_features[]",
  coalesce("LFD_COOLING_110", "LFD_COOLING_7", "LFD_COOLING_81")  as "feature_cooling[]",
  coalesce("LFD_WATERSEWER_120", "LFD_WATERSEWER_26", "LFD_WATERSEWER_91", "LFD_SEWER_56")  as "feature_water_sewer[]",
  coalesce("LFD_WATERFRONT_126", "LFD_WATERFRONT_23", "LFD_WATERFRONT_53", "LFD_WATERFRONT_86")  as "feature_waterfront[]",
  coalesce("LFD_WATERFRONTFEATURE_62", "LFD_WATERFRONTFEATURE_98")  as "feature_waterfront_features[]",
  "LFD_WATER_55" as "feature_water[]",
  coalesce("LFD_MASTERBATH_109", "LFD_MASTERBATH_6")  as "feature_master_bath[]",
  coalesce("LFD_MASTERBEDROOM_108", "LFD_MASTERBEDROOM_5")  as "feature_master_bedroom[]",
  "LM_char1_28"  as "feature_pets_considered",
  coalesce("LFD_LOTLOCATION_125", "LFD_LOTLOCATION_22", "LFD_LOTLOCATION_43", "LFD_LOTLOCATION_70")  as "feature_lot_location[]",
  coalesce("LFD_DESIGN_117", "LFD_DESIGN_14", "LFD_DESIGN_73")  as "feature_design[]",
  "LFD_STYLE_16" as "feature_style[]",
  "LM_Int1_3" as feature_baths_half,
  "L_NumUnits" as feature_num_units,
  coalesce("LFD_ZONING_36", "LFD_ZONING_63", "LFD_ZONING_99") as "feature_zoning[]",
  "LFD_GAS_64" as "feature_gas[]",
  "LFD_ELECTRIC_65" as "feature_electric[]",
  coalesce("LFD_SIDING_121", "LFD_SIDING_18", "LFD_SIDING_96") as "feature_siding[]",
  coalesce("LFD_DININGTYPE_107", "LFD_DININGTYPE_4") as "feature_dining_room[]",
  coalesce("LFD_EXTERIOR_122", "LFD_EXTERIOR_19", "LFD_EXTERIOR_71") as "feature_exterior_features[]",
  coalesce("LFD_CONSTRUCTIONSTATUS_102", "LFD_CONSTRUCTIONSTATUS_34")  as "feature_construction_status[]",
  coalesce("LFD_FLOORS_105", "LFD_FLOORS_2", "LFD_FLOORS_87") as "feature_floors[]",
  coalesce("LFD_POOL_123", "LFD_POOL_20", "LFD_POOL_72") as "feature_pool[]",
  coalesce("LFD_ROOF_119", "LFD_ROOF_17", "LFD_ROOF_85") as "feature_roof[]",
  coalesce("LFD_INTERIOR_1", "LFD_INTERIOR_104", "LFD_INTERIOR_78") as "feature_interior_features[]"

FROM 
  pensacola2."Property" as p, pensacola2.mutation as m
WHERE
  "L_ListingID"::text = m.remote_id and
  m.last_transaction_completed_at is not null
;
