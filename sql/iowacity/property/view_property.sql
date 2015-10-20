DROP VIEW IF EXISTS iowacity.view_property CASCADE;
CREATE OR REPLACE VIEW iowacity.view_property AS
SELECT
  'iowacity'::text as mls,
  __removed_at,
  (__removed_at is null AND "L_Status" NOT IN ('Expired', 'Withdrawn', 'Cancel')) as __active,
  __class_name,
  (__inserted_at - '1 hours'::interval) as age,
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
  "L_ListingDate" as __list_date,
  last_transaction_completed_at,
  "L_DOM" as days_to_close,
  "L_ClosingDate" as sold_date,
  "L_SoldPrice" as sold_price,
  CASE "L_Status"
    WHEN 'Sold'   THEN 'sold'
    WHEN 'Rented' THEN 'leased'
    WHEN 'Leased' THEN 'leased'
    ELSE 'for_sale'
  END as listing_type,
  "L_ListingID" as listing_id,
  "L_ListingID" as mlsnum,
  "L_Status" as status,
  ("L_Status" = 'Contingent') as under_contract,
  CASE "L_Status"
    WHEN 'Contingent' THEN 'Under Contract'
    ELSE NULL::text
  END as under_contract_description,
  "L_AskingPrice" as price,
  coalesce(__image_count, "L_PictureCount", 0) as image_count,
  "LM_Int1_17" as beds,
  CASE "L_Type_"
    WHEN 'Acreage' THEN 'Lots & Land'
    WHEN 'Commercial' THEN 'Lots & Land'
    WHEN 'Condo Attached' THEN 'Condo'
    WHEN 'Condo Detached' THEN 'Condo'
    WHEN 'Lot/Land' THEN 'Lots & Land'
    WHEN 'Residential' THEN 'Lots & Land'
    WHEN 'Single Family' THEN 'Single Family Home'
    ELSE "L_Type_"
  END as type,
  "LM_Int1_13" as baths_total,
  "L_Remarks" as remarks,
  "L_Address" as address_line1,
  "L_City" as city,
  "L_City" || ', IA' as city_st,
  "L_Zip" as zip,
  'IA'::text as state,
  "L_City" || ', IA' || ' ' || "L_Zip"::text as address_line2,
  "LM_char30_2" as county,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "L_Keyword1" as square_feet,
  "LM_Int4_2" as year_built,
  "L_NumAcres" as acres,
  ("LFD_BASEMENT_2" && ARRAY['Full', 'Finished Rooms', 'Partial', 'Walkout']) as basement,
  ("LM_Int4_5" > 0) as fireplace,
  ("LFD_EXTERIOR_7" && ARRAY['Fenced Yard']) as fenced_yard,
  null::text as waterfront,
  ("LFD_STORIESSTYLE_25" && ARRAY['Ranch']) as ranch_style,
  (
    ("LFD_EXTERIOR_7" && ARRAY['Pool Above Ground', 'Pool In-Ground'])
    or ("LFD_AMENITIES_29" && ARRAY['Pool'])
    or ("LFD_AMENITIES_66" && ARRAY['Pool'])
  ) as pool,
  ("LFD_EXTERIOR_7" && ARRAY['Deck', 'Patio', 'Porch', 'Screen Porch']) as patio_deck_porch,
  null::boolean as walk_in_closets,
  null::boolean as double_vanity,
  "VT_VTourURL" as virtual_tour,
  null::text as __minor_area,
  null::text as __major_area,
  trim(initcap("LM_Char25_1")) as subdivision,
  "L_UpdateDate" as modification_timestamp,
  true as display_address,
  "LM_Char25_4" as elementary_school,
  "LM_Char25_5" as middle_school,
  "LM_Char25_6" as high_school,
  null::text as school_district,
  ("LFD_PARKING_21" && ARRAY['Garage']) as garage,
  initcap("LO1_OrganizationName") as office_name,
  "LM_Int1_6" as "feature_baths_3/4_lower",
  "LM_Int1_7" as "feature_baths_3/4_main",
  "LM_Int1_8" as "feature_baths_3/4_upper",
  "LM_Int1_14" as "feature_baths_full_lower",
  "LM_Int1_15" as "feature_baths_full_main",
  "LM_Int1_16" as "feature_baths_full_upper",
  "LM_Int1_10" as "feature_baths_1/2_lower",
  "LM_Int1_11" as "feature_baths_1/2_main",
  "LM_Int1_12" as "feature_baths_1/2_upper",
  "LFD_EQUIPMENT_6" as "feature_appliances[]",
  "LFD_PARKING_21" as "feature_parking[]",
  "LFD_LOTDESCRIPTION_16" as "feature_lot_description[]",
  "LFD_BASEMENT_2" as "feature_basement[]",
  "LFD_UTILITIESAVAILABLE_41" as "feature_utilities_available[]",
  "LFD_ENERGYRELATED_5" as "feature_energy[]",
  "LM_char10_31" as "feature_association_fee",
  "LFD_FEEINCLUDES_8" as "feature_association_fee_includes[]",
  "LM_Char25_11" as "feature_condo_level",
  "LM_char255_2" as "feature_directions",
  "LFD_STORIESSTYLE_25" as "feature_style[]",
  "LM_Char25_2" as "feature_township/range",
  "LFD_EXTERIOR_7" as "feature_exterior_features[]",
  "LFD_KITCHENBREAKFAST_13" as "feature_kitchen[]",
  "LFD_LAUNDRYLOCATION_15" as "feature_laundry_location[]",
  "LFD_LAUNDRYTYPE_14" as "feature_laundry_type[]",
  "LFD_WATERSEWER_26" as "feature_water[]",
  "LFD_WATER_42" as "feature_water_nearby[]",
  "LFD_FIREPLACELOCATION_9" as "feature_fireplace_location[]",
  "LFD_FIREPLACETYPE_11" as "feature_fireplace_type[]",
  "LM_Int4_5" as "feature_fireplace_count",
  "LFD_HEATING_67" as "feature_heating[]",
  "LFD_IMPROVEMENTS_31" as "feature_improvements[]",
  "LFD_INTERIOR_12" as "feature_interior_features[]",
  "LFD_POTENTIALUSE_36" as "feature_potential_use[]",
  "LFD_PRESENTUSE_35" as "feature_present_use[]",
  "LFD_ROOMS_22" as "feature_rooms[]",
  "LFD_STRUCTURE_39" as "feature_structure[]",
  "LFD_TOPOLOGY_40" as "feature_topology[]",
  "LM_Dec_1" as "feature_tax_gross",
  coalesce("LFD_AMENITIES_66", "LFD_AMENITIES_29") as "feature_amenities[]",
  "LFD_CONSTRUCTION_3" as "feature_construction[]",
  "LFD_COOLING_4" as "feature_cooling[]"
FROM
  iowacity."Property" p, iowacity.mutation m
WHERE
  p."L_ListingID"::text = m.remote_id AND
  m.last_transaction_completed_at IS NOT NULL
;
