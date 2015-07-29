DROP VIEW IF EXISTS mred.view_property CASCADE;
CREATE OR REPLACE VIEW mred.view_property AS
SELECT
  'mred'::text as mls,
  __removed_at,
  (__removed_at IS NULL) as __active,
  (__inserted_at - '1 hour'::interval) as age,
  __inserted_at,
  __modified_at,
  __price_updated_at,
  "TOURURL" as virtual_tour,
  __price_history_times,
  __price_history_vals,
  __percent_reduced,
  __geo_geom,
  __geo_outlier,
  __geo_modified_at,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  "LN" as listing_id,
  "LN" as mlsnum,
  "ST" as status,
  ("ST" = 'Pending' or "ST" = 'Contingent') as under_contract,
  CASE "Property".__class_name
      WHEN 'RentalHome'::text THEN
      CASE "ST"
          WHEN 'Rented'    THEN 'leased'::text
          WHEN 'Expired'   THEN NULL::text
          WHEN 'Cancelled' THEN NULL::text
          ELSE 'for_rent'::text
      END
      ELSE
      CASE "ST"
          WHEN 'Rented'    THEN 'leased'::text
          WHEN 'Closed'    THEN 'sold'::text
          WHEN 'Expired'   THEN NULL::text
          WHEN 'Cancelled' THEN NULL::text
          ELSE 'for_sale'::text
      END
  END AS listing_type,
  CASE "ST"
    WHEN 'Pending' THEN 'Under Contract'
    WHEN 'Contingent' THEN 'Under Contract'
    ELSE NULL::text
  END as under_contract_description,
  "SP" as sold_price,
  "CLOSEDDATE" as sold_date,
  coalesce(__image_count, "PHOTOCOUNT", 0) as image_count,
  coalesce("LP", "RP") as price,
  "BR" as beds,
  CASE "TYP"
    WHEN 'Land' THEN 'Lots & Land'
    WHEN 'Residential Rental' THEN
     CASE "RENTAL_PROPERTY_TYPE"
       WHEN 'Attached' THEN 'Apartment'
       WHEN 'Detached' THEN 'Single Family'
     END
    ELSE
      CASE "OWN"
        WHEN 'Fee Simple' THEN 'Single Family'
        WHEN 'Fee Simple w/ HO Assn.' THEN 'Single Family'
        WHEN 'Condo' THEN 'Condo'
        WHEN 'Condo,Co-op' THEN 'Condo'
        WHEN 'Co-op' THEN NULL
      END
    END as type,
 
--    WHEN 'Attached Single' THEN
--      CASE "OWN"
--        WHEN 'Fee Simple' THEN 'Single Family - Attached'
--        WHEN 'Fee Simple w/ HO Assn.' THEN 'Single Family - Attached (HOA)'
--        WHEN 'Condo' THEN 'Condo - Attached'
--        WHEN 'Condo,Co-op' THEN 'Condo - Attached'
--        WHEN 'Co-op' THEN 'Co-op'
--      END
--    WHEN 'Detached Single' THEN
--      CASE "OWN"
--        WHEN 'Condo' THEN 'Condo - Detached'
--        WHEN 'Fee Simple' THEN 'Single Family - Detached'
--        WHEN 'Fee Simple w/ HO Assn.' THEN 'Single Family - Detached (HOA)'
--      END
--  END as type,

  "FULL_BATHS" as baths_total,
  "REMARKS" as remarks,
  regexp_replace(trim(coalesce("HSN", '') || ' ' || (CASE "CP" WHEN 'East' THEN 'E' WHEN 'North' THEN 'N' WHEN 'North East' THEN 'NE' WHEN 'North West' THEN 'NW' WHEN 'South' THEN 'S' WHEN 'South East' THEN 'SE' WHEN 'South West' THEN 'SW' WHEN 'West' THEN 'W' ELSE '' END) || ' ' || initcap(coalesce("STR", '')) || ' ' || coalesce("STREETSUFFIX", '') || ' ' || (CASE "POST_DIRECTION" WHEN 'East' THEN 'E' WHEN 'North' THEN 'N' WHEN 'North East' THEN 'NE' WHEN 'North West' THEN 'NW' WHEN 'South' THEN 'S' WHEN 'South East' THEN 'SE' WHEN 'South West' THEN 'SW' WHEN 'West' THEN 'W' ELSE '' END)), '\s{2,}', ' ', 'g') as address_line1,
  (CASE "STATE"
    WHEN 'Florida' THEN 'FL'
    WHEN 'Illinois' THEN 'IL'
    WHEN 'Indiana' THEN 'IN'
    WHEN 'Michigan' THEN 'MI'
    WHEN 'Montana' THEN 'MT'
    WHEN 'Texas' THEN 'TX'
    WHEN 'Wisconsin' THEN 'WI'
    ELSE ''
  END) as state,
  initcap("CIT") || ', ' || (CASE "STATE" WHEN 'Florida' THEN 'FL' WHEN 'Illinois' THEN 'IL' WHEN 'Indiana' THEN 'IN' WHEN 'Michigan' THEN 'MI' WHEN 'Montana' THEN 'MT' WHEN 'Texas' THEN 'TX' WHEN 'Wisconsin' THEN 'WI' ELSE '' END) || ' ' || "ZP" as address_line2,
  initcap("CIT") as city,
  initcap("CIT") || ', ' || (CASE "STATE" WHEN 'Florida' THEN 'FL' WHEN 'Illinois' THEN 'IL' WHEN 'Indiana' THEN 'IN' WHEN 'Michigan' THEN 'MI' WHEN 'Montana' THEN 'MT' WHEN 'Texas' THEN 'TX' WHEN 'Wisconsin' THEN 'WI' ELSE '' END) as city_st,
  "ZP" as zip,
  "CNY" as county,
  initcap("TWN") as township,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "ASF" as square_feet,
  "BLT" as year_built,
  "ACR" as acres,
  ("BMT" && ARRAY['English', 'Full', 'Partial', 'Walkout']) as basement,
  ("FP" > 0) as fireplace,
  ("LDS" && ARRAY['Fenced Yard']) as fenced_yard,
  ("WF" = 'Yes') as waterfront,
  ("STY" = 'Ranch') as ranch_style,
  (
  ("EXT_PROP_FEATS" && ARRAY['Pool Above Ground', 'Pool In-Ground'])
  or ("CAA" && ARRAY['Pool-Indoors', 'Pool-Outdoors'])
  ) as pool,
  ("EXT_PROP_FEATS" && ARRAY['Brick Paver Patio', 'Deck', 'Patio', 'Porch', 'Porch Screened', 'Roof Deck', 'Screened Deck', 'Screened Patio', 'Stamped Concrete Patio']) as patio_deck_porch,
  ("ADDITIONAL_ROOMS" && ARRAY['Walk In Closet']) as walk_in_closets,
  ("BAT" && ARRAY['Double Sink']) as double_vanity,
  null::text as __minor_area,
  null::text as __major_area,
  trim(initcap("SUB")) as subdivision,
  "RECORDMODDATE" as modification_timestamp,
  ("ADI" = 'Yes') as display_address,
  ("REMARKSINTERNET" = 'Yes') as display_remarks,
  null::text as school_district,
  trim(initcap("GS")) as elementary_school,
  trim(initcap("JH")) as middle_school,
  trim(initcap("HS")) as high_school,
  "GSD" as elementary_school_district,
  "JHD" as middle_school_district,
  "HSD" as high_school_district,
  ("PKN" && ARRAY['Garage']) as garage,
  "LONAME" as office_name,
  null::text as complex,
  "HALF_BATHS" as "feature_baths_1/2",
  "BAT" as "feature_bath_amenities[]",
  "MBB" as "feature_master_bath[]",
  "MBL" as "feature_master_bedroom_level",
  "APP" as "feature_appliances[]",
  "GREENFEAT" as "feature_green_features[]",
  "FUR" as "feature_available_furnished",
  "NO_PARKING_SPACES" as "feature_parking_spaces",
  "PAR_FEE_LEASE_AMOUNT" as "feature_parking_lease_amount",
  "SP_INCL_PARKING" as "feature_parking_included",
  "PAR" as "feature_parking_details[]",
  "PARKING_ONSITE" as "feature_parking_on_site",
  "PARKING_OWNERSHIP" as "feature_parking_ownership",
  "BAS" as "feature_basement_description[]",
  "LDS" as "feature_lot_description[]",
  "BB" as "feature_basement_bathrooms",
  "UTIL" as "feature_utilities_to_site[]",
  coalesce("SC", "SDP") as "feature_security_deposit",
  "ASM" as "feature_assessment_assoc_dues",
  "FAP" as "feature_fees_and_approvals[]",
  "MASTER_ASSOC_FEE" as "feature_master_assoc_fee",
  "AMN" as "feature_amenities[]",
  "CAA" as "feature_amenities_common[]",
  "GAR" as "feature_garage_details[]",
  "GARAGE_OWNERSHIP" as "feature_garage_ownership",
  "GARAGE_TYPE" as "feature_garage_type[]",
  "ADDITIONAL_ROOMS" as "feature_additional_rooms[]",
  "AGE" as "feature_age[]",
  "AIR" as "feature_air[]",
  "AML" as "feature_land_amenities[]",
  "ASFSOURCE" as "feature_sqft_source",
  "ATC" as "feature_attic[]",
  "AZN" as "feature_zoning_type",
  "DIN" as "feature_dining_room",
  "DISABILITY_ACCESS" as "feature_disability_access",
  "DISABILITY_ACCESS_DETAILS" as "feature_disability_access_features[]",
  "ELC" as "feature_electricity[]",
  "EQP" as "feature_equipment[]",
  "EXT" as "feature_exterior_building_type[]",
  "EXT_PROP_FEATS" as "feature_exterior_features[]",
  "FIREPLACE_LOCATION" as "feature_fireplace_location[]",
  "INT_PROP_FEATS" as "feature_interior_features[]",
  "KIT" as "feature_kitchen[]",
  "NC" as "feature_new_construction",
  "NCO" as "feature_new_construction_options",
  "WF" as "feature_waterfront",
  "LOCAT" as "feature_location[]",
  "LND" as "feature_land_description[]",
  "MAI" as "feature_assessment_includes[]",
  "MRI" as "feature_rent_includes[]",
  "LAUNDRYL" as "feature_laundry_level[]",
  "STY" as "feature_style"
FROM mred."Property"
;
