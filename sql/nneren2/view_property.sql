DROP VIEW IF EXISTS nneren2.view_property CASCADE;
CREATE OR REPLACE VIEW nneren2.view_property AS
SELECT
  'nneren2'::text as mls,
  __removed_at,
  (__removed_at IS NULL AND "L_Status" IN ('Active', 'Active Under Contract', 'Pending')) as __active,
  __inserted_at as age,
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
  __geo_places,
  __photo_urls,
  "L_ListingDate" as __list_date,
  last_transaction_completed_at,
  "L_DOM"::integer as days_to_close,
  "L_ClosingDate"::text as sold_date,
  "L_SoldPrice"::integer as sold_price,
  CASE "__class_name"
    WHEN 'RN_7' THEN 'for_rent'
    ELSE 'for_sale'
  END as listing_type,
  "L_ListingID" as listing_id,
  "L_ListingID" as mlsnum,
  "L_Status" as status,
  ("L_Status" = 'Active Under Contract' OR "L_Status" = 'Pending') as under_contract,
  CASE "L_Status"
    WHEN 'Active Under Contract' THEN 'Under Contract - Active Under Contract'
    WHEN 'Pending' THEN 'Under Contract - Pending'
    ELSE NULL::text
  END as under_contract_description,
  COALESCE(array_length(__photo_urls, 1), 0) as image_count,
  "L_AskingPrice" as price,
  "LM_Int1_6" as beds,
  CASE "__class_name"
    WHEN 'LD_2' THEN 'Land'
    ELSE
      CASE "L_Type_"
        WHEN 'Condo' THEN 'Condo'
        WHEN 'Boat Facility' THEN 'Boat Facility'
        WHEN 'Mobile Home' THEN 'Mfg/Mobile'
        ELSE 'Residential'
      END
  END as type,
  "LM_int4_36" as baths_total,
  "LR_remarks22" as remarks,
  "L_Address" as address_line1,
  "L_City" || ', ' || "L_State" || ' ' || "L_Zip" as address_line2,
  "L_City"::text as city,
  "L_City"::text || ', ' || "L_State" as city_st,
  "L_State" as state,
  "L_Zip" as zip,
  substring("L_Area" from 4) as county,
  null::text as township,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "LM_Int4_16" as square_feet,
  "LM_Int2_4" as year_built,
  "L_NumAcres" as acres,
  ("LM_Char1_6" = 'Yes') as basement,
  (
    ("LFD_FeaturesInterior_15"  && ARRAY['Fireplace - Gas', 'Fireplace - Screens/Equip', 'Fireplace - Wood', 'Fireplaces - 1', 'Fireplaces - 2', 'Fireplaces - 3+']) OR
    ("LFD_FeaturesInterior_173" && ARRAY['Fireplace - Gas', 'Fireplace - Screens/Equip', 'Fireplace - Wood', 'Fireplaces - 1', 'Fireplaces - 2', 'Fireplaces - 3+'])
  ) as fireplace,
  (
    ("LFD_FeaturesExterior_14"  && ARRAY['Fence - Dog', 'Fence - Full']) OR
    ("LFD_FeaturesExterior_172" && ARRAY['Fence - Dog', 'Fence - Full']) OR
    ("LFD_FeaturesExterior_214" && ARRAY['Fence - Dog', 'Fence - Full'])
  ) as fenced_yard,
  (("LM_char50_25" is not null) or ("LM_int4_40" is not null))  as waterfront,
  null::boolean as ranch_style,
  (
    "LFD_FeaturesExterior_14" && ARRAY['Pool - Above Ground', 'Pool - In Ground']  OR
    "LFD_FeaturesExterior_172" && ARRAY['Pool - Above Ground', 'Pool - In Ground'] OR
    "LFD_FeaturesExterior_214" && ARRAY['Pool - Above Ground', 'Pool - In Ground']
  ) as pool,
  (
    "LFD_FeaturesExterior_14"  && ARRAY['Balcony', 'Deck', 'Gazebo', 'Patio', 'Porch', 'Porch - Covered', 'Porch - Enclosed', 'Porch - Screened'] OR
    "LFD_FeaturesExterior_172" && ARRAY['Balcony', 'Deck', 'Gazebo', 'Patio', 'Porch', 'Porch - Covered', 'Porch - Enclosed', 'Porch - Screened'] OR
    "LFD_FeaturesExterior_214" && ARRAY['Balcony', 'Deck', 'Gazebo', 'Patio', 'Porch', 'Porch - Covered', 'Porch - Enclosed', 'Porch - Screened']
  ) as patio_deck_porch,
  (
    ("LFD_FeaturesInterior_15"  && ARRAY['Walk-in Closet']) OR
    ("LFD_FeaturesInterior_173" && ARRAY['Walk-in Closet'])
  ) as walk_in_closets,
  null::text as double_vanity,
  null::text as __minor_area,
  null::text as __major_area,
  null::text as subdivision,
  "L_UpdateDate" as modification_timestamp,
  ("LV_vow_address" = 'Yes') as display_address,
  "LM_char50_25" as lake,
  "LM_char10_32"::text as school_district,
  "LM_Char10_2" as high_school,
  "LM_char10_69" as middle_school,
  "LM_char10_68" as elementary_school,
  ("LM_Char1_2" = 'Yes') as garage,
  "LO1_OrganizationName" as office_name,
  null::text as complex,
  COALESCE("LFD_FeaturesInterior_15", "LFD_FeaturesInterior_173") as "feature_amenities[]",
  COALESCE(
      "LFD_BasementDescription_108", "LFD_BasementDescription_161", "LFD_BasementDescription_3",
      "LFD_BasementDescription_61", "LFD_BasementDescription_85"
  ) as "feature_basement[]",
  ("LM_Char1_11" = 'Yes') as "feature_is_coop",
  "LM_Char25_8" as feature_association_name,
  "LM_Dec_10" as feature_condo_dues,
  "LM_char50_8" as feature_construction_status,
  COALESCE(
      "LFD_FeaturesAccessibility_13", "LFD_FeaturesAccessibility_199", "LFD_FeaturesAccessibility_210",
      "LFD_FeaturesAccessibility_231", "LFD_FeaturesAccessibility_232"
  ) as "feature_accessibility_features[]",
  COALESCE("LFD_Appliances_160", "LFD_Appliances_2") as "feature_appliances[]",
  COALESCE("LFD_FeaturesExterior_14", "LFD_FeaturesExterior_172", "LFD_FeaturesExterior_214") as "feature_exterior_features[]",
  COALESCE(
      "LFD_FeeIncludes_120", "LFD_FeeIncludes_150", "LFD_FeeIncludes_17", "LFD_FeeIncludes_175",
      "LFD_FeeIncludes_44", "LFD_FeeIncludes_69", "LFD_FeeIncludes_93"
  ) as "feature_assoc_fee_includes[]",
  "LM_Char1_18" as "feature_flood_zone",
  COALESCE(
    "LFD_Flooring_122", "LFD_Flooring_177", "LFD_Flooring_19",
    "LFD_Flooring_71", "LFD_Flooring_95"
  ) as "feature_floors[]",
  null::text as "feature_is_furnished",
  COALESCE(
    "LFD_Parking_130", "LFD_Parking_153", "LFD_Parking_184",
    "LFD_Parking_25", "LFD_Parking_48", "LFD_Parking_74", "LFD_Parking_98"
  ) as "feature_parking[]",
  "LM_Dec_8" as "feature_garage_capacity",
  COALESCE("LM_Char10_26", array_to_string("LFD_GarageType_125", ',')) as "feature_garage_type",
  COALESCE(
    "LFD_HeatFuel_126", "LFD_HeatFuel_180", "LFD_HeatFuel_22",
    "LFD_HeatFuel_240", "LFD_HeatFuel_241"
  ) as "feature_heating_fuel[]",
  COALESCE (
      "LFD_Cooling_111", "LFD_Cooling_164", "LFD_Cooling_237",
      "LFD_Cooling_238", "LFD_Cooling_6"
  ) as "feature_cooling[]", -- heating and cooling have been seperated
  COALESCE (
      "LFD_Heating_127", "LFD_Heating_181", "LFD_Heating_23",
      "LFD_Heating_236", "LFD_Heating_239"
  ) as "feature_heating[]", -- heating and cooling have been seperated
  COALESCE("LFD_FeaturesInterior_15", "LFD_FeaturesInterior_173") as "feature_interior_features[]",
  "LM_char10_35" as feature_lease_term,
  "LFD_MarinaAmenities_152" as "feature_marina_amenities[]",
  "LM_char5_54" as feature_num_stories,
  COALESCE (
      "LFD_Restrictions_133", "LFD_Restrictions_155", "LFD_Restrictions_187",
      "LFD_Restrictions_27"
  ) as "feature_occupant_restrictions[]",
  COALESCE ("LFD_RentIncludes_186", "LFD_RentIncludes_132") as "feature_rent_includes[]",
  COALESCE (
      "LFD_Roof_135", "LFD_Roof_189", "LFD_Roof_29",
      "LFD_Roof_76", "LFD_Roof_99"
  ) as "feature_roof[]",
  COALESCE (
      "LFD_Style_138", "LFD_Style_192", "LFD_Style_32"
  ) as "feature_style[]",
  "LM_Dec_29" as "feature_tax_amount",
  "VT_ExtVTourURL1" as virtual_tour,
  "LM_char10_55" as feature_water_access,
  "LM_char50_25" as feature_body_of_water,
  "L_ListAgent1" as listing_agent_name
FROM
  nneren2."Property" p, nneren2.mutation m
WHERE
  p."L_ListingID"::text = m.remote_id AND
  m.last_transaction_completed_at IS NOT NULL
;
