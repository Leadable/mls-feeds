DROP VIEW IF EXISTS sandicor2.view_property CASCADE;
CREATE OR REPLACE VIEW sandicor2.view_property AS
SELECT
  'sandicor2'::text as mls,
  __removed_at,
  (__removed_at IS NULL AND "L_Status" NOT IN ('EXPIRED', 'WITHDRAWN', 'CANCELLED')) as __active,
  __inserted_at as age,
  __inserted_at,
  __modified_at,
  __price_updated_at,
  "VT_VTourURL" as virtual_tour,
  __price_history_times,
  __price_history_vals,
  __percent_reduced,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  __geo_geom,
  __geo_outlier,
  __geo_places,
  __photo_urls,
  "L_InputDate" as __list_date,
  last_transaction_completed_at,
  "LM_Int4_15" as days_to_close,
  "L_ClosingDate" as sold_date,
  "L_SoldPrice" as sold_price,
  CASE "L_Status"
    WHEN 'SOLD' THEN 'sold'
    ELSE 'for_sale'
  END as listing_type,
  "L_ListingID" as listing_id,
  "L_ListingID" as mlsnum,
  "L_Status" as status,
  ("L_Status" IN ('CONTINGENT', 'PENDING')) as under_contract,
  CASE "L_Status"
    WHEN 'CONTINGENT' THEN 'Under Contract - Contingent'
    WHEN 'PENDING' THEN 'Under Contract - Pending'
    ELSE null::text
  END as under_contract_description,
  COALESCE(array_length(__photo_urls, 1), 0) as image_count,
  "L_SystemPrice" as price,
  CASE __class_name
    WHEN 'RE_1' THEN "LM_Int1_1"
    WHEN 'RT_4' THEN "LM_Int1_1"
    ELSE null::integer
  END as beds,
  CASE __class_name
    WHEN 'RE_1' THEN
      CASE
        WHEN "LFD_Ownership_20" && ARRAY['Condominium', 'Coop'] THEN 'Condo'
        WHEN "L_Type_" = 'Rowhome' THEN 'Rowhome'
        WHEN "L_Type_" = 'Townhome' THEN 'Townhome'
        ELSE 'Single Family'
      END
    --WHEN 'RI_2' THEN 'Multi Family'
    WHEN 'LN_3' THEN 'Lots & Land'
    WHEN 'RT_4' THEN 'Rental'
    ELSE null::text
  END as type,
  "LM_Int2_3" as baths_total,
  "LR_remarks11" as remarks,
  "LM_char100_7" as address_line1,
  'CA'::text as state,
  trim(initcap("L_City")) || ', CA' || ' ' || "L_Zip" as address_line2,
  trim(initcap("L_City")) as city,
  trim(initcap("L_City")) || ', CA' as city_st,
  "L_Zip" as zip,
  "LM_Char10_1" as county,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  CASE __class_name
    WHEN 'RE_1' THEN "LM_Int4_1" 
    WHEN 'RT_4' THEN "LM_Int4_1" 
    ELSE null::integer
  END as square_feet,
  "LM_Int2_1" as year_built,
  "L_NumAcres" as acres,
  (
    "LFD_ParkingGarage_22" && ARRAY['Assigned', 'Attached', 'Converted', 'Detached', 'Underground', 'Tandem']
  ) as garage,
  (
    ("LFD_SearchableRooms_33" && ARRAY['Basement', 'Walkout Basement'])
    OR ("LFD_SearchableRooms_143" && ARRAY['Basement', 'Walkout Basement'])
  ) as basement,
  (
    CASE __class_name
      WHEN 'RE_1' THEN ("LM_Int1_8" is not null)
      WHEN 'RT_4' THEN ("LM_Int1_8" is not null)
      ELSE null::boolean
    END
  ) as fireplace,
  (
    ("LFD_Fencing_118" && ARRAY['Full', 'Partial'])
    OR ("LFD_Fencing_50" && ARRAY['Full', 'Partial'])
    OR ("LFD_Fencing_6" && ARRAY['Full', 'Partial'])
    OR ("LFD_Fencing_89" && ARRAY['Full', 'Partial'])
  ) as fenced_yard,
  (
    ("LFD_Frontage_121" && ARRAY['Lagoon/Estuary', 'Lake/River', 'Ocean/Bluff', 'Ocean/Sand', 'Bay'])
    OR ("LFD_Frontage_51" && ARRAY['Lagoon/Estuary', 'Lake/River', 'Ocean/Bluff', 'Ocean/Sand', 'Bay'])
    OR ("LFD_Frontage_9" && ARRAY['Lagoon/Estuary', 'Lake/River', 'Ocean/Bluff', 'Ocean/Sand', 'Bay'])
    OR ("LFD_Frontage_90" && ARRAY['Lagoon/Estuary', 'Lake/River', 'Ocean/Bluff', 'Ocean/Sand', 'Bay'])
  ) as waterfront,
  (
    "LM_Char10_11" = '1 Story'
  ) as one_story,
  (
    ("LFD_Pool_136" && ARRAY ['Above Ground', 'Below Ground', 'Community/Common', 'Exercise', 'Private'])
    OR ("LFD_Pool_25" && ARRAY ['Above Ground', 'Below Ground', 'Community/Common', 'Exercise', 'Private'])
    OR ("LFD_Pool_68" && ARRAY ['Above Ground', 'Below Ground', 'Community/Common', 'Exercise', 'Private'])
  ) as pool,
  (
    ("LFD_Patio_135" && ARRAY['Awning/Porch Covered', 'Brick', 'Covered', 'Deck', 'Enclosed', 'Gazebo', 'Slab', 'Stone/Tile'])
    OR ("LFD_Patio_24" && ARRAY['Awning/Porch Covered', 'Brick', 'Covered', 'Deck', 'Enclosed', 'Gazebo', 'Slab', 'Stone/Tile'])
  ) as patio_deck_porch,
  --() as walk_in_closets,
  --() as double_vanity,
  trim(initcap("LM_Char50_1")) as subdivision,
  "L_UpdateDate"  as modification_timestamp,
  true as display_address,
  coalesce("LFD_SchoolDistrict_103","LFD_SchoolDistrict_142","LFD_SchoolDistrict_32") as school_district,
  --null::text as elementary_school,
  --null::text as middle_school,
  --null::text as high_school,
  "LO1_OrganizationName" as office_name,

  -- multi family
  "LM_int4_35" as feature_number_furnished_units,
  "LM_Int2_7" as feature_unit1_bedrooms,
  "LM_Int2_8" as feature_unit2_bedrooms,
  "LM_Int2_9" as feature_unit3_bedrooms,
  "LM_Int2_10" as feature_unit4_bedrooms,

  "LM_int4_27" as feature_unit1_deposit,
  "LM_int4_28" as feature_unit2_deposit,
  "LM_int4_29" as feature_unit3_deposit,
  "LM_int4_30" as feature_unit4_deposit,

  "LM_Int4_20" as feature_unit1_sqft_est,
  "LM_int4_22" as feature_unit2_sqft_est,
  "LM_int4_23" as feature_unit3_sqft_est,
  "LM_int4_24" as feature_unit4_sqft_est,

  "LM_Dec_23" as feature_unit1_parking_spaces,
  "LM_Dec_24" as feature_unit2_parking_spaces,
  "LM_Dec_25" as feature_unit3_parking_spaces,
  "LM_Dec_26" as feature_unit4_parking_spaces,

  "LM_Int2_11" as feature_unit1_baths_full,
  "LM_Int2_12" as feature_unit2_baths_full,
  "LM_Int2_13" as feature_unit3_baths_full,
  "LM_Int2_14" as feature_unit4_baths_full,

  "LM_Char1_17" as feature_unit1_exclusive_yard,
  "LM_Char1_18" as feature_unit2_exclusive_yard,
  "LM_Char1_19" as feature_unit3_exclusive_yard,
  "LM_char1_23" as feature_unit4_exclusive_yard,

  "LFD_ParkingNonGarageUnit1_64" as "feature_unit1_parking_non_garage[]",
  "LFD_ParkingNonGarageUnit2_65" as "feature_unit2_parking_non_garage[]",
  "LFD_ParkingNonGarageUnit3_66" as "feature_unit3_parking_non_garage[]",
  "LFD_ParkingNonGarageUnit4_67" as "feature_unit4_parking_non_garage[]",


  "LM_Int1_4" as feature_unit1_baths_half,
  "LM_Int1_6" as feature_unit2_baths_half,
  CASE __class_name
    WHEN 'RI_2' THEN "LM_Int1_10"
    ELSE null::integer
  END as feature_unit3_baths_half,
  CASE __class_name
    WHEN 'RI_2' THEN "LM_Int1_11"
    ELSE null::integer
  END as feature_unit4_baths_half,

  "LM_Dec_17" as feature_unit1_rent_projected,
  "LM_Dec_18" as feature_unit2_rent_projected,
  "LM_int4_25" as feature_unit3_rent_projected,
  "LM_int4_26" as feature_unit4_rent_projected,

  "LM_char5_45" as feature_unit1_laundry_hookups,
  "LM_char5_46" as feature_unit2_laundry_hookups,
  "LM_char5_47" as feature_unit3_laundry_hookups,
  "LM_char5_48" as feature_unit4_laundry_hookups,


  "LM_int4_34" as feature_number_of_units_w_garage,
  "LM_int4_40" as feature_gross_sched_income_actual,
  "LM_Int4_17" as feature_other_income_actual,

  CASE __class_name
    WHEN 'RI_2' THEN "LM_Int4_1"
    ELSE null::integer
  END as feature_net_oper_income_projected,
  CASE __class_name
    WHEN 'RI_2' THEN "LM_Int1_1"
    ELSE null::integer
  END as feature_number_of_buildings,
  CASE __class_name
    WHEN 'RI_2' THEN "LM_Dec_7"
    ELSE null::numeric
  END as feature_unit1_rent_actual,
  "LM_Dec_13" as feature_unit2_rent_actual,
  "LM_Dec_15" as feature_unit3_rent_actual,
  "LM_Dec_16" as feature_unit4_rent_actual,
  "LM_int4_37" as feature_units_w_range_oven,
  -- end multi family

  "LM_Int4_6" as "feature_lot_sqft_approx",
  "LFD_UtilitiesAvailable_109" as "feature_utilities_available[]",
  "LM_Char10_3" as feature_community,
  coalesce("LFD_TenantPays_150","LFD_TenantPays_80") as "feature_tenant_pays[]",
  "LM_Char1_10" as feature_exclusive_yard,
  COALESCE("LFD_Fencing_118","LFD_Fencing_50","LFD_Fencing_6","LFD_Fencing_89") as "feature_fencing[]",
  COALESCE("LFD_Pool_136","LFD_Pool_25","LFD_Pool_68") as "feature_pool[]",
  COALESCE("LFD_Site_105","LFD_Site_146","LFD_Site_36","LFD_Site_76") as "feature_site[]",
  "LM_char1_25" as feature_furnished,
  "LM_Char10_6" as feature_pets,
  COALESCE("LFD_FireplaceLocation_119", "LFD_FireplaceLocation_7") as "feature_fireplace_location[]",
  CASE __class_name
    WHEN 'RE_1' THEN "LM_Int1_8"
    WHEN 'RT_4' THEN "LM_Int1_8"
    ELSE null::integer
  END as feature_fireplace_count,
  CASE __class_name
    WHEN 'RE_1' THEN "LM_Int1_7"
    ELSE null::integer
  END as feature_stories_in_building,

  COALESCE("LFD_Water_112", "LFD_Water_154", "LFD_Water_45", "LFD_Water_84") as "feature_water[]",
  "LFD_HighestBestUse_91" as "feature_highest_best_use[]",
  COALESCE("LFD_PropRestrictionsKnown_101", "LFD_PropRestrictionsKnown_138", "LFD_PropRestrictionsKnown_28") as "feature_property_restrictions[]",
  "LR_remarks44" as feature_directions,
  COALESCE("LFD_HeatSource_12", "LFD_HeatSource_124", "LFD_HeatSource_53") as "feature_heat_source[]",
  COALESCE("LFD_HomeOwnersFeeIncludes_13", "LFD_HomeOwnersFeeIncludes_54", "LFD_HomeOwnersFeeIncludes_92") as "feature_hoa_includes[]",
  "LM_char5_9" as feature_water_district,
  "LM_char5_29" as feature_hoa_fee_interval,
  "LM_Dec_3" as feature_hoa_fees,
  "L_Type_" as feature_style,
  "LM_Char10_5" as feature_architecture_style,
  "LFD_Development_88" as "feature_development[]",
  COALESCE("LFD_Roof_140", "LFD_Roof_30", "LFD_Roof_71") as "feature_roof[]",
  "L_PricePerSQFT" as feature_price_per_sqft,
  "LFD_UnitFeatures_152" as "feature_unit_features[]",
  "LFD_Skirting_37" as "feature_skirting[]",
  CASE __class_name
    WHEN 'RT_4' THEN "LM_Int1_10"
    ELSE null::integer
  END as feature_rental_length_min,
  CASE __class_name
    WHEN 'RE_1' THEN "LM_Int1_5"
    WHEN 'RT_4' THEN "LM_Int1_5"
    ELSE null::integer
  END as feature_baths_half,

  COALESCE("LFD_ComplexFeatures_1","LFD_ComplexFeatures_114", "LFD_ComplexFeatures_47", "LFD_ComplexFeatures_86") as "feature_amenities[]",
  COALESCE("LFD_Cooling_115", "LFD_Cooling_3", "LFD_Cooling_48") as "feature_cooling[]",
  "LM_Char50_4" as feature_tax_id,
  "LM_Int4_9" as feature_fees_other,
  "LM_Dec_5" as feature_fees_other1,
  "LM_Int4_16" as feature_fees_monthly_total,
  "LM_Char10_11" as feature_stories,
  "LM_char1_27" as feature_lease_to_own,
  "LM_Char1_8" as feature_elevator,
  COALESCE("LFD_Topography_108", "LFD_Topography_151", "LFD_Topography_43", "LFD_Topography_82") as "feature_topography[]",
  "LM_char5_13" as feature_master_br_dimensions,
  "LM_char5_17" as feature_bed5_dimensions,
  "LM_char5_16" as feature_bed4_dimensions,
  "LM_char5_15" as feature_bed3_dimensions,
  "LM_char5_14" as feature_bed2_dimensions,
  "LM_Char50_5" as feature_age_restrictions,
  "LM_Int4_8" as feature_parking_spaces_total,
  COALESCE("LFD_View_111","LFD_View_153","LFD_View_44","LFD_View_83") as "feature_view[]",

  "LM_char5_21" as feature_dimensions_kitchen,
  COALESCE("LFD_LaundryUtilities_127","LFD_LaundryUtilities_16") as "feature_laundry[]",

  COALESCE("LFD_OtherFeeType_19","LFD_OtherFeeType_58","LFD_OtherFeeType_96") as "feature_fee_other_type[]",
  COALESCE("LFD_WaterHeaterType_155","LFD_WaterHeaterType_46","LFD_WaterHeaterType_85") as "feature_water_heater[]",
  COALESCE("LFD_GuestHouse_10","LFD_GuestHouse_122") as "feature_guest_house[]",
  COALESCE("LFD_Structures_106","LFD_Structures_40") as "feature_structures[]",
  COALESCE("LFD_Exterior_117","LFD_Exterior_49","LFD_Exterior_5") as "feature_exterior[]",
  "LFD_CurrentUse_87" as "feature_current_use[]",
  COALESCE("LFD_SewerSeptic_104","LFD_SewerSeptic_145","LFD_SewerSeptic_35","LFD_SewerSeptic_75") as "feature_sewer_septic[]",

  CASE __class_name
    WHEN 'RE_1' THEN "LM_Int1_2"
    WHEN 'RT_4' THEN "LM_Int1_2"
    ELSE null::integer
  END as feature_bedrooms_optional,
  COALESCE("LFD_Irrigation_125","LFD_Irrigation_14","LFD_Irrigation_55","LFD_Irrigation_93") as "feature_irrigation[]",
  "LM_Char10_14" as feature_boat_facilities,
  "LM_Char10_15" as feature_lot_size,
  COALESCE("LFD_Patio_135", "LFD_Patio_24") as "feature_patio[]",
  "L_Area" as "feature_area"
FROM
  sandicor2."Property" p, sandicor2.mutation m
WHERE
  p."L_ListingID"::text = m.remote_id AND
  m.last_transaction_completed_at IS NOT NULL
;
