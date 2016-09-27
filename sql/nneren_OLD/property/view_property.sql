DROP VIEW IF EXISTS nneren.view_property CASCADE;
CREATE OR REPLACE VIEW nneren.view_property AS
SELECT
  'nneren'::text as mls,
  __removed_at,
  (__removed_at IS NULL AND "ListingStatus" IN ('Active', 'Active with Contract', 'Pending', 'New')) as __active,
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
  "ListDate" as __list_date,
  last_transaction_completed_at,
  null::integer as days_to_close,
  null::text as sold_date,
  null::integer as sold_price,
  CASE "PropertyType"
    WHEN 'Rental' THEN 'for_rent'
    ELSE 'for_sale'
  END as listing_type,
  "ListingID" as listing_id,
  "ListingID" as mlsnum,
  "ListingStatus" as status,
  ("ListingStatus" = 'Active with Contract' OR "ListingStatus" = 'Pending') as under_contract,
  CASE "ListingStatus"
    WHEN 'Active with Contract' THEN 'Under Contract - Active with Contract'
    WHEN 'Pending' THEN 'Under Contract - Pending'
    ELSE NULL::text
  END as under_contract_description,
  COALESCE(array_length(__photo_urls, 1), 0) as image_count,
  "ListPrice" as price,
  "Bedrooms" as beds,
  CASE "PropertyType"
    WHEN 'Rental' THEN
      CASE "RentalPropertyType"
        WHEN 'Mobile' THEN 'Mfg/Mobile'
        WHEN 'Condo'  THEN 'Condo'
        WHEN 'Condex' THEN 'Condo'
        WHEN 'Dock'   THEN 'Land'
        WHEN 'Apt'    THEN 'Condo'
        ELSE 'Residential'
      END
    ELSE "PropertyType"
  END as type,
  "TotalBaths" as baths_total,
  "PublicRemarks" as remarks,
  COALESCE("StreetNumberIDX"::text, '') || ' ' || COALESCE("StreetNameIDX"::text, '') || ' ' || COALESCE("UnitNumber"::text, "CondoUnitNumber"::text, '') as address_line1,
  "City" || ', ' || (CASE "StateOrProvince" WHEN 'Maine' THEN 'ME' WHEN 'Massachusetts' THEN 'MA' WHEN 'New Hampshire' THEN 'NH' WHEN 'Vermont' THEN 'VT' END) || ' ' || "PostalCode" as address_line2,
  "City"::text as city,
  "City"::text || ', ' || (CASE "StateOrProvince" WHEN 'Maine' THEN 'ME' WHEN 'Massachusetts' THEN 'MA' WHEN 'New Hampshire' THEN 'NH' WHEN 'Vermont' THEN 'VT' END) as city_st,
  CASE "StateOrProvince"
    WHEN 'Maine' THEN 'ME'
    WHEN 'Massachusetts' THEN 'MA'
    WHEN 'New Hampshire' THEN 'NH'
    WHEN 'Vermont' THEN 'VT'
  END as state,
  "PostalCode" as zip,
  "County" as county,
  null::text as township,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "ApxFinSqFtTotal" as square_feet,
  "YearBuilt" as year_built,
  "LotSizeArea" as acres,
  ("BasementYN" = 'Yes') as basement,
  (
    ("InteriorFeat" && ARRAY['1 Fireplace', '2 Fireplaces', '3+ Fireplaces', 'Fireplace-Gas', 'Fireplace-Gas', 'Fireplace-Wood', 'Fireplace-Screens/Equip.']) OR
    ("InteriorFeatures" && ARRAY['Fireplace-Gas', 'Fireplace-Screens/Equip.', 'Fireplace-Wood'])
  ) as fireplace,
  (
    ("ExteriorFeatures" && ARRAY['Dog Fence', 'Full Fence']) OR
    ("ExteriorFeat" && ARRAY['Dog Fence', 'Full Fence'])
  ) as fenced_yard,
  (("WaterBodyName" is not null) or ("WaterFrontage" is not null))  as waterfront,
  null::boolean as ranch_style,
  (
    "ExteriorFeat" && ARRAY['Pool-Above Ground', 'Pool-In Ground'] OR
    "ExteriorFeatures" && ARRAY['Pool-Above Ground', 'Pool-In Ground']
  ) as pool,
  (
    "ExteriorFeat" && ARRAY['Balcony', 'Deck', 'Gazebo', 'Patio', 'Porch', 'Porch-Covered', 'Porch-Enclosed', 'Screened Porch'] OR
    "ExteriorFeatures" && ARRAY['Balcony', 'Deck', 'Gazebo', 'Patio', 'Porch', 'Porch-Covered', 'Porch-Enclosed', 'Screened Porch']
  ) as patio_deck_porch,
  (
    ("InteriorFeat" && ARRAY['Walk-in Closet']) OR
    ("InteriorFeatures" && ARRAY['Walk-in Closets'])
  ) as walk_in_closets,
  null::text as double_vanity,
  null::text as __minor_area,
  null::text as __major_area,
  null::text as subdivision,
  "ModificationTimestamp" as modification_timestamp,
  ("DisplayFlagAddress" = 'Yes') as display_address,
  "WaterBodyName" as lake,
  "SchoolDistrict"::text as school_district,
  "SchoolHigh" as high_school,
  "JuniorHighSchool" as middle_school,
  "SchoolElementary" as elementary_school,
  ("GarageType" IN ('Attached', 'Detached', 'Under', 'Carport')) as garage,
  "ListingOffice" as office_name,
  null::text as complex,
  "Amenities" as "feature_amenities[]",
  "Basement" as "feature_basement[]",
  "CoOpYN" as "feature_is_coop",
  "CondoName" as feature_association_name,
  "CondoOwnersAssociationDues" as feature_condo_dues,
  "ConstructionStatus" as feature_construction_status,
  "DisabilityFeatures" as "feature_accessibility_features[]",
  "EquipmentAndAppliances" as "feature_appliances[]",
  COALESCE("ExteriorFeat", "ExteriorFeatures") as "feature_exterior_features[]",
  "FeeIncludes" as "feature_assoc_fee_includes[]",
  "FloodZone" as "feature_flood_zone",
  "Floors" as "feature_floors[]",
  "FurnishedYN" as "feature_is_furnished",
  "GarageAndParking" as "feature_parking[]",
  "GarageCapacityNumber" as "feature_garage_capacity",
  "GarageType" as "feature_garage_type",
  "HeatFuel" as "feature_heating_fuel[]",
  "HeatingAndCooling" as "feature_heating_and_cooling[]",
  COALESCE("InteriorFeat", "InteriorFeatures") as "feature_interior_features[]",
  "LeaseTerm" as feature_lease_term,
  "MarinaAmenities" as "feature_marina_amenities[]",
  "NumberStories" as feature_num_stories,
  "OccupantRestrictions" as "feature_occupant_restrictions[]",
  "RentIncludes" as "feature_rent_includes[]",
  "Roof" as "feature_roof[]",
  "Style" as "feature_style[]",
  "TaxAmount" as "feature_tax_amount",
  CASE WHEN "VirtualTourURL" IS NULL THEN NULL ELSE 'http://' || "VirtualTourURL" END as virtual_tour,
  "WaterAccessDesc" as feature_water_access,
  "WaterBodyName" as feature_body_of_water,
  "ListingAgentID" as listing_agent_name
FROM
  nneren."Property" p, nneren.mutation m
WHERE
  p."ListingID"::text = m.remote_id AND
  m.last_transaction_completed_at IS NOT NULL
;
