-- nwmls mls view
DROP VIEW IF EXISTS nwmls.view_property CASCADE;
CREATE OR REPLACE VIEW nwmls.view_property AS
SELECT
  'nwmls'::text as mls,
  __removed_at,
  (__removed_at is null) as __active,
  __inserted_at,
  __modified_at,
  __geo_modified_at,
  __price_updated_at,
  __percent_reduced,
  __geo_geom,
  __geo_outlier,
  __price_history_times,
  __price_history_vals,
  __inserted_at as age,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  __photo_urls,
  __geo_places,
  "UD" as modification_timestamp,
  "ST" as status,
  "VIRT" as virtual_tour,
  "ST" IN ('Pending Feasability', 'Pending Inspection', 'Pending') as under_contract,
  'Under Contract - ' || "ST" as under_contract_description,
  "LN" as listing_id,
  "LN"::text as mlsnum,
  "SDT" as sold_date,
  "SP"::numeric as sold_price,
  COALESCE(array_length(__photo_urls, 1), 0) as image_count,
  "LP" as price,
  "BR" as beds,
  CASE "ST"
    WHEN 'Sold' THEN 'sold'
    ELSE
    CASE __class_name
      WHEN 'RENT' THEN 'for_rent'
      ELSE 'for_sale'
    END
  END as listing_type,
  o."OfficeName" as office_name,
  round("BTH")::integer as baths_total,
  CASE __class_name
    WHEN 'RESI' THEN 'Single Family'
    WHEN 'COND' THEN 'Condo'
    WHEN 'VACL' THEN 'Lots & Land'
    WHEN 'RENT' THEN 'Rental'
    WHEN 'FARM' THEN 'Farm'
    WHEN 'MANU' THEN 'Manufactured'
    WHEN 'MULT' THEN 'Multi Family'
    WHEN 'COMI' THEN 'Commercial'
  END as type,
  "MR" as remarks,
  -- "HSNA" Street Number Modifier
  CASE
    WHEN "HSN" is null THEN ''
    ELSE "HSN"::text || ' '
  END
  ||
  CASE
    WHEN "DRP" is null THEN ''
    ELSE "DRP" || ' '
  END
  ||
  "STR"
  ||
  CASE
    WHEN "SSUF" is null THEN ''
    ELSE ' ' || "SSUF"
  END
  ||
  CASE
    WHEN "DRS" is null THEN ''
    ELSE ' ' || "DRS"
  END as address_line1,
  "CIT" || ', WA ' || "ZIP" as address_line2,
  "CIT" || ', WA' as city_st,
  "CIT" as city,
  "ZIP" as zip,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "ASF"::integer as square_feet,
  "YBT" as year_built,
  CASE
    WHEN "LSF" = '0' THEN null::integer
    ELSE trunc("LSF"::integer/43560.00, 2)
  END as acres,
  "COU" as county,
  'WA'::text as state,
  --"" as complex,
  --"" as subdivision,
  "EL"  as elementary_school,
  "JH"  as middle_school,
  "SH"  as high_school,
  "SD" as school_district,
  (
    (__class_name = 'COND' AND ("UNF" && ARRAY['B']))
    OR (__class_name = 'FARM' AND ("IMP" && ARRAY['R', 'Q']))
    OR (__class_name = 'MANU' AND ("MHF" && ARRAY['K']))
    OR (__class_name = 'MULT' AND ("SIT" && ARRAY['U','H']))
    OR (__class_name = 'RENT' AND ("SIT" && ARRAY['U','H']))
    OR (__class_name = 'RESI' AND ("SIT" && ARRAY['U','H']))
    OR (__class_name = 'VACL' AND ("SIT" && ARRAY['R','Q']))
  ) as "patio_deck_porch",
  (
    ("BSM" is not null) AND (("BSM" && ARRAY['C']) is not true)
  ) as "basement",
  ("FP" <> '0') as "fireplace",
  (
    ((__class_name IN ('FARM', 'VACL')) and ("IMP" && ARRAY['H', 'G']))
    OR ((__class_name IN ('MULT', 'RENT', 'RESI')) and ("SIT" && ARRAY['L', 'M']))
  )as fenced_yard,
  ("WFT" is not null) as "waterfront",
  (
    ("GR" && ARRAY['G', 'D', 'E', 'F'])
    OR ("IMP" && ARRAY['I'])
    OR ("PKG" && ARRAY['D','E','F'])
  ) as "garage",
  ("NC" is not null) as "new_construction",
  ("STY" = '10') as "one_story",
  ("POL" is not null) as "pool",
  ("MBD" = 'M') as first_floor_master,
  ("SHOADR" = 'Y') as display_address,
  "TOB" as feature_type_of_business,
  "TSF" as feature_total_rented_sqft,
  "TX" as feature_tax_annual,
  "TXY" as feature_tax_year,
  "UBG" as feature_units_below_grade,
  "UFN" as feature_unit_floor_num,
  "UN1" as feature_unit1_desc,
  "UN2" as feature_unit2_desc,
  "UN3" as feature_unit3_desc,
  "UN4" as feature_unit4_desc,
  "UN5" as feature_unit5_desc,
  "UN6" as feature_unit6_desc,
  "RN1" as feature_unit1_rent,
  "RN2" as feature_unit2_rent,
  "RN3" as feature_unit3_rent,
  "RN4" as feature_unit4_rent,
  "RN5" as feature_unit5_rent,
  "RN6" as feature_unit6_rent,
  "SF1" as feature_unit1_sqft,
  "SF2" as feature_unit2_sqft,
  "SF3" as feature_unit3_sqft,
  "SF4" as feature_unit4_sqft,
  "SF5" as feature_unit5_sqft,
  "SF6" as feature_unit6_sqft,
  "TN1" as feature_comm_unit1_desc,
  "TN2" as feature_comm_unit2_desc,
  "TN3" as feature_comm_unit3_desc,
  "TN4" as feature_comm_unit4_desc,
  "TN5" as feature_comm_unit5_desc,
  "TN6" as feature_comm_unit6_desc,
  "US1" as feature_unit1_use,
  "US2" as feature_unit2_use,
  "US3" as feature_unit3_use,
  "US4" as feature_unit4_use,
  "US5" as feature_unit5_use,
  "US6" as feature_unit6_use,
  "WD1" as feature_unit1_laundry,
  "WD2" as feature_unit2_laundry,
  "WD3" as feature_unit3_laundry,
  "WD4" as feature_unit4_laundry,
  "WD5" as feature_unit5_laundry,
  "WD6" as feature_unit6_laundry,
  "DW1" as feature_unit1_dishwasher,
  "DW2" as feature_unit2_dishwasher,
  "DW3" as feature_unit3_dishwasher,
  "DW4" as feature_unit4_dishwasher,
  "DW5" as feature_unit5_dishwasher,
  "DW6" as feature_unit6_dishwasher,
  "BA1" as feature_unit1_bathrooms,
  "BA2" as feature_unit2_bathrooms,
  "BA3" as feature_unit3_bathrooms,
  "BA4" as feature_unit4_bathrooms,
  "BA5" as feature_unit5_bathrooms,
  "BA6" as feature_unit6_bathrooms,
  "BR1" as feature_unit1_bedrooms,
  "BR2" as feature_unit2_bedrooms,
  "BR3" as feature_unit3_bedrooms,
  "BR4" as feature_unit4_bedrooms,
  "BR5" as feature_unit5_bedrooms,
  "BR6" as feature_unit6_bedrooms,
  "FG1" as feature_unit1_refrigerator,
  "FG2" as feature_unit2_refrigerator,
  "FG3" as feature_unit3_refrigerator,
  "FG4" as feature_unit4_refrigerator,
  "FG5" as feature_unit5_refrigerator,
  "FG6" as feature_unit6_refrigerator,
  "FP1" as feature_unit1_fireplaces,
  "FP2" as feature_unit2_fireplaces,
  "FP3" as feature_unit3_fireplaces,
  "FP4" as feature_unit4_fireplaces,
  "FP5" as feature_unit5_fireplaces,
  "FP6" as feature_unit6_fireplaces,
  "FP" as feature_fireplaces,
  "FPL" as feature_fireplaces_lower,
  "FPM" as feature_fireplaces_main,
  "FPU" as feature_fireplaces_upper,
  "BTH" as feature_baths_all,
  "SPA" as feature_special_assessment,
  "SST" as feature_septic_system_type,
  "TEXP" as feature_total_expenses_annual,
  "TEX" as feature_total_expenses,
  "TIN" as feature_total_montly_income,
  "GAI" as feature_gross_adjusted_income,
  "GAR" as feature_parking_covered_total,
  "USP" as feature_parking_uncovered_total,
  "GRM" as feature_gross_rent_multiplier,
  "GRS" as feature_gross_sales_annual,
  "GSI" as feature_gross_scheduled_income,
  "GSP" as feature_garage_spaces,
  "BRI" as feature_boarding_income,
  "BSZ" as feature_barn_size,
  "CAP" as feature_cap_rate,
  "CCC" as feature_crop_and_soil_comments,
  "IRRC" as feature_irrigation_comments,
  "CHT" as feature_ceiling_height,
  "CRI" as feature_crop_income,
  "DD" as feature_directions,
  "DLT" as feature_lot_depth,
  "ELEV" as feature_elevation,
  "INS" as feature_expenses_insurance,
  "ELEX" as feature_expenses_electrical,
  "HET" as feature_expenses_heating,
  "ENV" as feature_environment_survey,
  "HOD" as feature_hoa_annual,
  "EQI" as feature_equity,
  "EQV" as feature_equipment_value,
  "EXA" as feature_expansion_area,
  "EXP" as feature_expenses_total,
  "F17" as feature_form_17,
  "TBG" as feature_baths_3qtr_garage,
  "TBM" as feature_baths_3qtr_main,
  "TBL" as feature_baths_3qtr_lower,
  "TBU" as feature_baths_3qtr_upper,
  "FBG" as feature_baths_full_garage,
  "FBL" as feature_baths_full_lower,
  "FBM" as feature_baths_full_main,
  "FBU" as feature_baths_full_upper,
  "HBG" as feature_baths_half_garage,
  "HBL" as feature_baths_half_lower,
  "HBM" as feature_baths_half_main,
  "HBU" as feature_baths_half_upper,
  "BREO" as feature_bank_owned, 
  "BCC" as feature_barn_comments,
  "BDL" as feature_bedrooms_lower,
  "BDM" as feature_bedrooms_main,
  "BDU" as feature_bedrooms_upper,
  "BLD" as feature_builder,
  "NCS" as feature_carport_spaces,
  "DSR" as feature_community,
  "AGR" as feature_age_restrictions, 
  "AMP" as feature_power_service_amps,
  "VAC" as feature_vacancy_rate,
  "VAL" as feature_land_assessed_value,
  "VCC" as feature_view_comments,
  "WFG" as feature_waterfront_footage,
  "WDW" as feature_window_covering,
  "WHT" as feature_water_heater_location,
  "WRJ" as feature_water_jurisdiction,
  "WAC" as feature_water_company,
  "WSF" as feature_approx_whse_mfg_sqft,
  "WSG" as feature_water_sewer_gas,
  "YVA" as feature_year_value_assessed,
  "AR"::text[] as feature_area,
  "ARC"::text[] as feature_architecture,
  "BDC"::text[] as feature_building_condition,
  "BDI"::text[] as feature_building_information,
  CASE "BRM"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "BRM"::text[]
  END as feature_bathrooms_main,
  CASE "BRM"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "BRM"::text[]
  END as feature_bonus_room_location,
  "BuiltGreenRating"::text[] as feature_built_green_certification_rating,
  "DNO"::text[] as feature_den_or_office,
  "DOC"::text[] as feature_reports_completed,
  CASE "DRM"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "DRM"::text[]
  END as feature_dining_room_location,
  "EFR"::text[] as feature_extra_finished_room_location,
  "ELE"::text[] as feature_electricity_status,
  CASE "ENT"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "ENT"::text[]
  END as feature_entrance_level,
  "EXT"::text[] as feature_exterior,
  "F17"::text[] as feature_seller_disclosure,
  CASE "FAM"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "FAM"::text[]
  END as feature_family_room_location,
  "FTR"::text[] as feature_property_features,
  "GAS"::text[] as feature_gas_status,
  "GZC"::text[] as feature_general_zoning_class,
  "HOI"::text[] as feature_home_owner_dues_included,
  CASE "KES"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "KES"::text[]
  END as feature_kitchen_eating_area_location,
  CASE "KES"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "KES"::text[]
  END as feature_kitchen_eating_space_location,
  CASE "KIT"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "KIT"::text[]
  END as feature_kitchen_location,
  "LEEDRating"::text[] as feature_leed_certification_rating,
  "LEQ"::text[] as feature_leased_items,
  CASE "LRM"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "LRM"::text[]
  END as feature_living_room_location,
  "LTG"::text[] as feature_lease_terms,
  CASE "MBD"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "MBD"::text[]
  END as feature_master_bedroom,
  CASE "MBD"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "MBD"::text[]
  END as feature_master_bedroom_location,
  "NC"::text[] as feature_new_construction,
  "NWESHRating"::text[] as feature_nwesh_certification_rating,
  "PARQ"::text[] as feature_third_party_approval_required,
  "PKA"::text[] as feature_manufactured_home_park_amenities,
  "POL"::text[] as feature_pool_type,
  "RDI"::text[] as feature_road_information,
  "RRM"::text[] as feature_rec_room_location,
  "STY"::text[] as feature_style,
  "TOF"::text[] as feature_fireplace_type,
  CASE "UTR"
    WHEN 'M' THEN '{Main}'::text[]
    WHEN 'U' THEN '{Upper}'::text[]
    WHEN 'L' THEN '{Lower}'::text[]
    ELSE "UTR"::text[]
  END as feature_utility_room_location, -- bad values
  "WTR"::text[] as feature_water,
  "ZJD"::text[] as feature_zoning_jurisdiction,
  "ADU"::text[] as feature_approved_accessory_dwelling,
  "AFR" as  "feature_addl_finished_rooms[]", 
  "AMN" as "feature_amenities[]", 
  "CMN" as "feature_common_property_features[]", 
"WFT" as "feature_waterfront[]", 
"APH" as "feature_appliance_hookups[]", 
"APP" as "feature_appliances_provided[]", 
"ATF" as "feature_approval_required[]", 
"BFE" as "feature_barn_features[]", 
"BTP" as "feature_bathrooms_main[]", 
"BSM" as "feature_basement[]", 
"CFE" as "feature_features[]", 
"CMFE" as "feature_community_features[]", 
"ConstructionMethods" as "feature_construction_methods[]", 
"CTD" as "feature_pets_allowed[]", 
"ECRT" as "feature_environmental_cert[]", 
"ENS" as "feature_energy_source[]", 
"FEA" as "feature_interior_features[]", 
"FEN" as "feature_fencing[]", 
"FLS" as "feature_floor_covering[]", 
"FTP" as "feature_farm_type[]", 
coalesce(
  "GR",
  "PKG"
) as "feature_parking_type[]", 
"HTC" as "feature_heating_and_cooling[]", 
"IRS" as "feature_irrigation_source[]", 
"ITP" as "feature_irrigation_type[]", 
"LDE" as "feature_lot_details[]", 
"LDG" as "feature_loading[]", 
"LIT" as "feature_leased_items[]", 
"IMP" as "feature_improvements[]", 
"LTP" as "feature_livestock_type[]", 
"LTV" as "feature_lot_typography[]", 
"MIF" as "feature_move_in_funds_required[]", 
"SIT" as "feature_site_features[]", 
"TRM" as "feature_potential_terms[]", 
"VEW" as "feature_view[]",
"EQP" as "feature_equipment_included[]", 
coalesce(
  "FND", 
  "ANC"
) as "feature_foundation1[]", 
"OTR" as "feature_rooms_other[]", 
"OUT" as "feature_outbuildings[]", 
"POS" as "feature_possession[]", 
"RF" as "feature_roof[]", 
"RS2" as "feature_restrictions[]", 
"STP" as "feature_soil_type[]", 
"SWR" as "feature_sewer[]", 
"TMC" as "feature_terms_and_conditions[]", 
"TPO" as "feature_topography[]", 
"TYP" as "feature_property_type[]", 
"UTL" as "feature_included_in_rent[]", 
"WAS" as "feature_water_source[]",
"UNF" as "feature_unit_features[]",
"MHF" as "feature_manufactured_features[]"
FROM
  nwmls."Property" p, nwmls.mutation m, nwmls.office o
WHERE
  p."LN"::text = m.remote_id AND 
  p."LO" = o."OfficeMLSID" AND
  m.last_transaction_completed_at is not null
;
