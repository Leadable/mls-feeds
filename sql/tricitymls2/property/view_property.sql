DROP VIEW IF EXISTS tricitymls2.view_property CASCADE;
CREATE OR REPLACE VIEW tricitymls2.view_property AS
SELECT
  'tricitymls2'::text as mls,
  __removed_at,
  (__removed_at is null) as __active,
  __class_name,
  __inserted_at as age,
  __inserted_at,
  __modified_at,
  __price_updated_at,
  __price_history_times,
  __price_history_vals,
  __percent_reduced,
  __geo_geom,
  __geo_outlier,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  __geo_places,
  __photo_urls,
  "L_InputDate" as __list_date,
  last_transaction_completed_at,
  null::text days_to_close,
  null::text as sold_date,
  null::integer as sold_price,
  CASE "L_SaleRent"
    WHEN 'For Sale' THEN 'for_sale'
    WHEN 'For Rent' THEN 'for_rent'
    ELSE null::text
  END as listing_type,
  "L_ListingID" as listing_id,
  "L_ListingID" as mlsnum,
  "L_Status" as status,
  ("L_Status" IN ('Active U/C Take BU Offers','Active U/C W/ Bump')) as under_contract,
  CASE
    WHEN ("L_Status" IN ('Active U/C Take BU Offers','Active U/C W/ Bump')) THEN 'Under Contract'
    ELSE null::text
  END as under_contract_description,
  "L_AskingPrice" as price,
  coalesce(__image_count, "L_PictureCount", 0) as image_count,
  "L_Keyword1" as beds,
  CASE 
    WHEN __class_name = 'LD_2' THEN 'Lots & Land'
    WHEN "L_Keyword3" = 'Condo' THEN 'Condo'
    WHEN "L_Keyword3" = 'Townhouse' THEN 'Townhouse'
    WHEN "L_SaleRent" = 'For Rent' THEN 'Rental'
    ELSE 'Single Family'
  END as type,
  (coalesce("LM_Int1_1", 0) + coalesce("LM_Int1_2", 0)) as baths_total,
  "LR_remarks44" as remarks,
  initcap("L_Address") as address_line1,
  "L_City" as city,
  "L_City" || ', WA' as city_st,
  "L_Zip" as zip,
  'WA'::text as state,
  "L_City" || ', WA' || ' ' || "L_Zip"::text as address_line2,
  "L_Area" as county,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "LM_Int4_1" as square_feet,
  "LM_Int4_4" as year_built,
  "L_NumAcres" as acres,
  ("L_Keyword2" IN ('1 Story', '1 Story w/Bmt')) as ranch_style,
  ("L_Keyword2" = '1 Story') as one_story,
  ("LFD_BASEMENT_4" is not null) as basement,
  ("LFD_FIREPLACE_14" is not null) as fireplace,
  ("LFD_EXTERIORFEATURES_16" && ARRAY['Fencing/Enclosed', 'Fencing/Partial']) as fenced_yard,
  (
    ("LFD_PROPERTYDESCRIPTION_27" && ARRAY['Frontage/Lake', 'Frontage/River', 'Frontage/Water'])
    OR ("LFD_PROPERTYDESCRIPTION_6" && ARRAY['Frontage/Lake', 'Frontage/River', 'Frontage/Water'])
  ) as waterfront,
  ("LFD_POOL_11" is not null) as pool,
  ("LFD_EXTERIORFEATURES_16" && ARRAY['Deck', 'Deck & Patio', 'Deck/Wood Covered', 'Deck/Wood Open', 'Patio/Covered', 'Patio/Open']) as patio_deck_porch,
  ("LFD_InteriorFlooring_8" && ARRAY['Walk In Closet (s)']) as walk_in_closets,
  ("LFD_GARAGEPARKING_19" && ARRAY['Garage - 1 Car', 'Garage - 2 Car', 'Garage - 3 Car']) as garage,
  "VT_VTourURL" as virtual_tour,
  initcap("LM_Char10_5") as subdivision,
  "L_UpdateDate" as modification_timestamp,
  ("LV_vow_address" = 'Yes') as display_address,
   --as elementary_school,
   --as middle_school,
   --as high_school,
  initcap("LM_Char10_6") as school_district,
  initcap("LO1_OrganizationName") as office_name,

  "LM_Char10_24" as feature_acres_water_rights,
  CASE WHEN __class_name = 'RE_1' THEN "L_Keyword5" END as feature_garage_capacity,
  CASE WHEN __class_name = 'LD_2' THEN "L_Keyword5" END as feature_rail_access,

  'Loc: ' || "LM_char5_14" || ', Size: ' || coalesce("LM_char5_13", '-') as feature_bedroom1,
  'Loc: ' || "LM_char5_16" || ', Size: ' || coalesce("LM_char5_15", '-') as feature_bedroom2,
  CASE WHEN __class_name  = 'RE_1' THEN 'Loc: ' || "LM_char5_20" || ', Size: ' || coalesce("LM_char5_17", '-') END as feature_bedroom3,
  'Loc: ' || "LM_char5_19" || ', Size: ' || coalesce("LM_char5_18", '-') as feature_bedroom4,
  'Loc: ' || "LM_char5_24" || ', Size: ' || coalesce("LM_char5_23", '-') as feature_bedroom5,
  'Loc: ' || "LM_char5_26" || ', Size: ' || coalesce("LM_char5_25", '-') as feature_bedroom6,

  'Loc: ' || "LM_char5_6" || ', Size: ' || coalesce("LM_char5_5", '-') as feature_room_den,
  'Loc: ' || "LM_char5_4" || ', Size: ' || coalesce("LM_char5_3", '-') as feature_room_dining,
  'Loc: ' || "LM_char5_2" || ', Size: ' || coalesce("LM_char5_1", '-') as feature_room_living,
  'Loc: ' || "LM_char5_8" || ', Size: ' || coalesce("LM_char5_7", '-') as feature_room_family,
  'Loc: ' || "LM_char5_10" || ', Size: ' || coalesce("LM_char5_9", '-') as feature_room_kitchen,
  'Loc: ' || "LM_char5_12" || ', Size: ' || coalesce("LM_char5_11", '-') as feature_room_utility,

  "LM_char10_70" as feature_dues,
  "LFD_BASEMENT_4" as "feature_basement[]",
  "LFD_FoundationConstruction_2" as "feature_foundation[]",
  "LFD_GARAGEPARKING_19" as "feature_garage[]",
  coalesce("LFD_PROPERTYDESCRIPTION_27", "LFD_PROPERTYDESCRIPTION_6") as "feature_property_desc[]",
  "LFD_ManMobileHome_20" as "feature_mobile_manu[]",
  "LM_Int1_1" as feature_baths_full,
  "LM_Int1_2" as feature_baths_3qtr,
  "LM_Int1_3" as feature_baths_half,
  coalesce("LFD_STREETROADINFORMATION_15", "LFD_STREETROADINFORMATION_30") as "feature_street_info[]",
  "L_Keyword2" as "feature_style",
  "L_Keyword3" as "feature_style2",
  initcap("LM_Char10_7") as "feature_zoning[]",
  coalesce("LFD_WATERSEWER_28", "LFD_WATERSEWER_7") as "feature_water_sewer[]",
  "LM_Char10_12" as "feature_taxes_annual",
  "LM_Char10_13" as "feature_tax_year",
  CASE WHEN __class_name = 'RE_1' THEN "L_Keyword6" END as "feature_new_construction",
  --CASE WHEN __class_name = 'LD_2' "L_Keyword6" END as "feature_waterfront",
  "L_Type_" as "feature_mls_type",
  "L_PricePerSQFT" as "feature_price_per_sqft",
  "L_Keyword9" as "feature_irrigated",

  COALESCE("LFD_IRRIGATIONSYSTEM_21", "LFD_IRRIGATIONSYSTEM_32") as "feature_irrigation_system[]",
  COALESCE("LFD_IRRIGATIONWATERSOURCE_22", "LFD_IRRIGATIONWATERSOURCE_33") as "feature_irrigation_water_src[]",
  "LFD_EXTERIORFEATURES_16" as "feature_exterior_features[]",
  "LFD_FIREPLACE_14" as "feature_fireplace[]",
  "LFD_BldgExteriorSiding_5" as "feature_building_exterior[]",
  "LFD_ROOF_3" as "feature_roof[]",
  "LFD_InteriorFlooring_8" as "feature_interior_features[]",
  "LFD_AIRCONDITIONING_13" as "feature_air_conditioning[]",
  "LFD_Heating_12" as "feature_heating[]",
  "LFD_IMPROVEMENTS_31" as "feature_improvements[]",
  "LFD_APPLIANCES_10" as "feature_appliances[]",
  "LFD_POOL_11" as "feature_pool[]",
  CASE WHEN __class_name = 'RE_1' THEN "LM_Char25_7" END as feature_garage_size,
  "LM_Char10_25" as feature_frontage,
  "LM_Char25_3" as feature_lot_dimensions,
  "L_SaleRent" as feature_sale_or_rent,
  "LM_char10_69" as feature_neighborhood,
  "LM_DateTime_2" as feature_construction_end,
  COALESCE("LFD_AVAILABLEFINANCING_1", "LFD_AVAILABLEFINANCING_26") as "feature_financing[]",
  COALESCE("LFD_UtilitiesElectricity_29", "LFD_UtilitiesElectricity_9") as "feature_utilities[]",
  CASE WHEN __class_name = 'RE_1' THEN "L_Keyword7" END as feature_occupied_ever,
  CASE WHEN __class_name = 'LD_2' THEN "L_Keyword7" END as feature_flood_zone
FROM
  tricitymls2."Property" p, tricitymls2.mutation m
WHERE
  p."L_ListingID"::text = m.remote_id AND
  m.last_transaction_completed_at IS NOT NULL
;
