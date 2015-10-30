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
  "SP" as sold_price,
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
  (select "SchoolDistrictDescription" from nwmls.school where "SchoolDistrictCode" = "SD") as school_district,

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
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'AR' AND a.prop_type = "PTYP" AND a.code_val = "AR") as feature_area,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'ARC' AND a.prop_type = "PTYP" AND a.code_val = "ARC") as feature_architecture,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'BDC' AND a.prop_type = "PTYP" AND a.code_val = "BDC") as feature_building_condition,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'BDI' AND a.prop_type = "PTYP" AND a.code_val = "BDI") as feature_building_information,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'BRM' AND a.prop_type = "PTYP" AND a.code_val = "BRM") as feature_bathrooms_main,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'BRM' AND a.prop_type = "PTYP" AND a.code_val = "BRM") as feature_bonus_room_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'BuiltGreenRating' AND a.prop_type = "PTYP" AND a.code_val = "BuiltGreenRating") as feature_built_green_certification_rating,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'DNO' AND a.prop_type = "PTYP" AND a.code_val = "DNO") as feature_den_or_office,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'DOC' AND a.prop_type = "PTYP" AND a.code_val = "DOC") as feature_reports_completed,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'DRM' AND a.prop_type = "PTYP" AND a.code_val = "DRM") as feature_dining_room_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'EFR' AND a.prop_type = "PTYP" AND a.code_val = "EFR") as feature_extra_finished_room_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'ELE' AND a.prop_type = "PTYP" AND a.code_val = "ELE") as feature_electricity_status,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'ENT' AND a.prop_type = "PTYP" AND a.code_val = "ENT") as feature_entrance_level,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'EXT' AND a.prop_type = "PTYP" AND a.code_val = "EXT") as feature_exterior,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'F17' AND a.prop_type = "PTYP" AND a.code_val = "F17") as feature_seller_disclosure,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'FAM' AND a.prop_type = "PTYP" AND a.code_val = "FAM") as feature_family_room_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'FTR' AND a.prop_type = "PTYP" AND a.code_val = "FTR") as feature_property_features,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'GAS' AND a.prop_type = "PTYP" AND a.code_val = "GAS") as feature_gas_status,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'GZC' AND a.prop_type = "PTYP" AND a.code_val = "GZC") as feature_general_zoning_class,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'HOI' AND a.prop_type = "PTYP" AND a.code_val = "HOI") as feature_home_owner_dues_included,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'KES' AND a.prop_type = "PTYP" AND a.code_val = "KES") as feature_kitchen_eating_area_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'KES' AND a.prop_type = "PTYP" AND a.code_val = "KES") as feature_kitchen_eating_space_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'KIT' AND a.prop_type = "PTYP" AND a.code_val = "KIT") as feature_kitchen_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'LEEDRating' AND a.prop_type = "PTYP" AND a.code_val = "LEEDRating") as feature_leed_certification_rating,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'LEQ' AND a.prop_type = "PTYP" AND a.code_val = "LEQ") as feature_leased_items,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'LRM' AND a.prop_type = "PTYP" AND a.code_val = "LRM") as feature_living_room_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'LTG' AND a.prop_type = "PTYP" AND a.code_val = "LTG") as feature_lease_terms,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'MBD' AND a.prop_type = "PTYP" AND a.code_val = "MBD") as feature_master_bedroom,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'MBD' AND a.prop_type = "PTYP" AND a.code_val = "MBD") as feature_master_bedroom_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'NC' AND a.prop_type = "PTYP" AND a.code_val = "NC") as feature_new_construction,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'NWESHRating' AND a.prop_type = "PTYP" AND a.code_val = "NWESHRating") as feature_nwesh_certification_rating,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'PARQ' AND a.prop_type = "PTYP" AND a.code_val = "PARQ") as feature_third_party_approval_required,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'PKA' AND a.prop_type = "PTYP" AND a.code_val = "PKA") as feature_manufactured_home_park_amenities,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'POL' AND a.prop_type = "PTYP" AND a.code_val = "POL") as feature_pool_type,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'RDI' AND a.prop_type = "PTYP" AND a.code_val = "RDI") as feature_road_information,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'RRM' AND a.prop_type = "PTYP" AND a.code_val = "RRM") as feature_rec_room_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'STY' AND a.prop_type = "PTYP" AND a.code_val = "STY") as feature_style,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'TOF' AND a.prop_type = "PTYP" AND a.code_val = "TOF") as feature_fireplace_type,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'UTR' AND a.prop_type = "PTYP" AND a.code_val = "UTR") as feature_utility_room_location,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'WTR' AND a.prop_type = "PTYP" AND a.code_val = "WTR") as feature_water,
  (SELECT code_desc FROM nwmls.amenity a where a.col = 'ZJD' AND a.prop_type = "PTYP" AND a.code_val = "ZJD") as feature_zoning_jurisdiction,
 (SELECT code_desc FROM nwmls.amenity a where a.col = 'ADU' and a.prop_type = "PTYP" and a.code_val = "ADU") as feature_approved_accessory_dwelling,

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("AFR") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'AFR' and pfs.f = a.code_val) x
  ) as  "feature_addl_finished_rooms[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("AMN") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'AMN' and pfs.f = a.code_val) x
  )  as "feature_amenities[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("CMN") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'CMN' and pfs.f = a.code_val) x
  )  as "feature_common_property_features[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("WFT") as wft, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'WFT' and pfs.wft = a.code_val) x
  ) as "feature_waterfront[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("APH") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'APH' and pfs.f = a.code_val) x
  ) as "feature_appliance_hookups[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("APP") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'APP' and pfs.f = a.code_val) x
  ) as "feature_appliances_provided[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("ATF") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'ATF' and pfs.f = a.code_val) x
  ) as "feature_approval_required[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("BFE") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'BFE' and pfs.f = a.code_val) x
  ) as "feature_barn_features[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("BTP") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'BTP' and pfs.f = a.code_val) x
  ) as "feature_bathrooms_main[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("BSM") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'BSM' and pfs.f = a.code_val) x
  ) as "feature_basement[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("CFE") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'CFE' and pfs.f = a.code_val) x
  ) as "feature_features[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("CMFE") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'CMFE' and pfs.f = a.code_val) x
  ) as "feature_community_features[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("ConstructionMethods") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'ConstructionMethods' and pfs.f = a.code_val) x
  ) as "feature_construction_methods[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("CTD") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'CTD' and pfs.f = a.code_val) x
  ) as "feature_pets_allowed[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("ECRT") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'ECRT' and pfs.f = a.code_val) x
  ) as "feature_environmental_cert[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("ENS") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'ENS' and pfs.f = a.code_val) x
  ) as "feature_energy_source[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("FEA") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'FEA' and pfs.f = a.code_val) x
  ) as "feature_interior_features[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("FEN") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'FEN' and pfs.f = a.code_val) x
  ) as "feature_fencing[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("FLS") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'FLS' and pfs.f = a.code_val) x
  ) as "feature_floor_covering[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("FTP") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'FTP' and pfs.f = a.code_val) x
  ) as "feature_farm_type[]", 

  coalesce((SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("GR") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'GR' and pfs.f = a.code_val) x
  ),
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("PKG") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'PKG' and pfs.f = a.code_val) x
  )) as "feature_parking_type[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("HTC") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'HTC' and pfs.f = a.code_val) x
  ) as "feature_heating_and_cooling[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("IRS") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'IRS' and pfs.f = a.code_val) x
  ) as "feature_irrigation_source[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("ITP") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'ITP' and pfs.f = a.code_val) x
  ) as "feature_irrigation_type[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("LDE") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'LDE' and pfs.f = a.code_val) x
  ) as "feature_lot_details[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("LDG") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'LDG' and pfs.f = a.code_val) x
  ) as "feature_loading[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("LIT") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'LIT' and pfs.f = a.code_val) x
  ) as "feature_leased_items[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("IMP") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'IMP' and pfs.f = a.code_val) x
  ) as "feature_improvements[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("LTP") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'LTP' and pfs.f = a.code_val) x
  ) as "feature_livestock_type[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("LTV") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'LTV' and pfs.f = a.code_val) x
  ) as "feature_lot_typography[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("MIF") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'MIF' and pfs.f = a.code_val) x
  ) as "feature_move_in_funds_required[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("SIT") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'SIT' and pfs.f = a.code_val) x
  ) as "feature_site_features[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("TRM") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'TRM' and pfs.f = a.code_val) x
  ) as "feature_potential_terms[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("VEW") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'VEW' and pfs.f = a.code_val) x
  ) as "feature_view[]",

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("EQP") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'EQP' and pfs.f = a.code_val) x
  ) as "feature_equipment_included[]", 

  coalesce((SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("FND") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'FND' and pfs.f = a.code_val) x
  ), 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("ANC") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'ANC' and pfs.f = a.code_val) x
  )) as "feature_foundation1[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("OTR") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'OTR' and pfs.f = a.code_val) x
  ) as "feature_rooms_other[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("OUT") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'OUT' and pfs.f = a.code_val) x
  ) as "feature_outbuildings[]", 

  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("POS") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'POS' and pfs.f = a.code_val) x
  ) as "feature_possession[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("RF") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'RF' and pfs.f = a.code_val) x
  ) as "feature_roof[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("RS2") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'RS2' and pfs.f = a.code_val) x
  ) as "feature_restrictions[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("STP") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'STP' and pfs.f = a.code_val) x
  ) as "feature_soil_type[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("SWR") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'SWR' and pfs.f = a.code_val) x
  ) as "feature_sewer[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("TMC") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'TMC' and pfs.f = a.code_val) x
  ) as "feature_terms_and_conditions[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("TPO") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'TPO' and pfs.f = a.code_val) x
  ) as "feature_topography[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("TYP") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'TYP' and pfs.f = a.code_val) x
  ) as "feature_property_type[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("UTL") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'UTL' and pfs.f = a.code_val) x
  ) as "feature_included_in_rent[]", 
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("WAS") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'WAS' and pfs.f = a.code_val) x
  ) as "feature_water_source[]",
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("UNF") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'UNF' and pfs.f = a.code_val) x
  ) as "feature_unit_features[]",
  (SELECT
   array_agg(code_desc)
   FROM (select a.code_desc FROM (select unnest("MHF") as f, "PTYP" as ptype) pfs
   JOIN nwmls.amenity a on pfs.ptype = a.prop_type and a.col = 'MHF' and pfs.f = a.code_val) x
  ) as "feature_manufactured_features[]"

FROM
  nwmls."Property" p, nwmls.mutation m, nwmls.office o
WHERE
  p."LN"::text = m.remote_id AND 
  p."LO" = o."OfficeMLSID" AND
  m.last_transaction_completed_at is not null
;
