-- mtrmls mls view
DROP VIEW IF EXISTS mtrmls.view_property CASCADE;
CREATE OR REPLACE VIEW mtrmls.view_property AS
SELECT
  'mtrmls'::text as mls,
  p.__removed_at,
  (p.__removed_at IS NULL AND p."ListingStatusID" IN ('Pending','Closed','Active')) AS __active,
  p.__inserted_at,
  last_transaction_completed_at,
  p.__modified_at,
  p.__price_updated_at,
  p.__percent_reduced,
  p.__geo_geom,
  p.__geo_outlier,
  p.__geo_modified_at,
  p.__geo_places,
  p.__price_history_times,
  p.__price_history_vals,
  p.__photo_urls,
  (p.__inserted_at - '1 hour'::interval) as age,
  p.__status_updated_at,
  p.__status_history_times,
  p.__status_history_vals,
  p."ListingStatusID" as status,
  CASE p.__class_name
        WHEN 'RNT'::text THEN
        CASE p."ListingStatusID"
            WHEN 'Active'::text            THEN 'for_rent'::text
            WHEN 'Pending'::text           THEN 'for_rent'::text
            WHEN 'Closed'::text            THEN 'leased'::text
            ELSE NULL::text
        END
        ELSE
        CASE p."ListingStatusID"
            WHEN 'Active'::text            THEN 'for_sale'::text
            WHEN 'Pending'::text           THEN 'for_sale'::text
            WHEN 'Closed'::text            THEN 'sold'::text
            ELSE NULL::text
        END
  END AS listing_type,
 MAX(media."URL") as virtual_tour,
  "ListDate" as __list_date,
  date_part('days', "ClosedDate"::timestamp without time zone - "ListDate"::timestamp without time zone)::integer as days_to_close,
  "ClosedDate" as sold_date,
  "SalesPrice" as sold_price,
  (p."ListingStatusID" = 'Pending') as under_contract,
  "ContingencyType"::text || ' Contingency' as under_contract_description,
  p."MlsNum" as listing_id,
  p."MlsNum" as mlsnum,
  "PictureCount" as image_count,
  COALESCE("ListPrice", "LeasePerMonth") as price,
  "TotalBedrooms" as beds,
  "TotalFullBaths" as baths_total,
  CASE p."PropertyClassID"
    WHEN 'Rental'::text THEN
      CASE "PropertySubType"
        WHEN 'Site Built'::text         THEN 'Residential'::text
        WHEN 'Condominium'::text        THEN 'Condominium'::text
        ELSE 'Apartment'::text
      END
    ELSE p."PropertyClassID"
  END as type,
  COALESCE("Remarks", '') as remarks,
  "StreetAddressDisplay" as address_line1,
  COALESCE(trim(initcap("City")), '') || ', TN ' || COALESCE("ZipCode", '') as address_line2,
  trim(initcap("City")) || ', TN' as city,
  "ZipCode" as zip,
  p.__geo_latitude as latitude,
  p.__geo_longitude as longitude,
  "SqFtTotal" as square_feet,
  "YearBuilt" as year_built,
  "Acres" as acres,
  "CountyID" as county,
  "State" as state,

--subdivision,
  trim(initcap("Subdivision")) as subdivision,
--schools (elementary, middle and high),
  "ElementarySchool" as elementary_school,
  "JuniorHighSchool" as middle_school,
  "HighSchool" as high_school,

--bedroom on main,
  "BedroomsMain" as bedrooms_main, 
--stories,
  "NumOfStories"::text as feature_num_stories,
--garage capacity,
  "GarageCapacity" as garage_capacity,
--home type(ie, manufactured, site built, zero lot line),
  "PropertySubType" as feature_sub_type,
--basement type,
  "BasementType" as basement_type,
--maybe construction type(ie, brick, vinyl, hardyboard)

  -- patio/deck/porch
  "PatioDeck" is not null
    as "patio_deck_porch",

  -- walk in closets
  ("InteriorOther" && (ARRAY['Walk-In Closets']))
    as "walk_in_closets",
  
  -- basement
  "BasementDesc" IN ('Apartment', 'Combination', 'Finished', 'Unfinished')
    as "basement",

  -- fireplace
  ("NumberOfFireplaces" is not null AND "NumberOfFireplaces" > 0)
    as "fireplace",

  -- fenced
  "FenceType" is not null
     as "fenced_yard",

  -- waterfront
  "WaterfrontDesc" is not null
     as "waterfront",

  -- garage
  (
    "GarageDescription" <> 'None' AND
    "GarageDescription" <> 'CRPRT' AND
    "GarageDescription" <> 'Shared Carport' AND
    "GarageDescription" <> 'Parking Space' AND
    "GarageDescription" <> 'Assigned' AND
    "GarageDescription" <> 'Unassigned' AND
    "GarageDescription" <> 'Carport' AND
    "GarageDescription" <> 'Individual Carport'
  )
    as "garage",

  -- ranch
   "Style" = 'Ranch'
     as "ranch_style",

  -- pool
  "PoolDesc" IN ('Above Ground', 'Indoor Pool', 'In-Ground Pool')
     as "pool",

  -- double vanity
  "MasterBathDesc" = 'Double Vanities'
    as "double_vanity",

  "ListingType" as "feature_listing_type", --Ex Agency-Short Sale,Ex Right-Short Sale,Exc. Right to Sell, etc
  "AppliancesOther" as "feature_appliances[]",
  "AssociationFee" as "feature_association_fee",
  "AssociationFeeIncludes" as "feature_association_fee_includes[]",
  "BasementDesc" as "feature_basement_description",
  "BasementType" as "feature_basement_type",
  "BedroomsMain" as "feature_bedrooms_main",
  "BedroomOneDesc" as "feature_bedroom_one_description",
  "BedroomTwoDesc" as "feature_bedroom_two_description",
  "BuiltInfo" as "feature_built_info",
  "CommunityAmenities" as "feature_community_amenities[]",
  "ConstructionType" as "feature_construction_type",
  "CoolingSource" as "feature_cooling_source",
  "CoolingSystem" as "feature_cooling_system",
  "DenDesc" as "feature_den_desc",
  "DiningRoomDesc" as "feature_dining_desc",
  "DrapesRemain" as "feature_drapes_remain",
  "DrivewayType" as "feature_driveway_type",
  "ElectricityPaidBy" as "feature_elec_paid_by",
  "EnergyFeatures" as "feature_energy_features[]",
  "ExteriorFeatures" as "feature_exterior[]",
  "ExteriorTrim" as "feature_exterior_trim",
  "FenceType" as "feature_fence_type",
  "FloorTypes" as "feature_floor_types[]",
  "GarageCapacity" as "feature_garage_capacity",
  "GarageDescription" as "feature_garage_description",
  "GasPaidBy" as "feature_gas_paid_by",
  "GreenCertifyingBody" as "feature_green_cert_body[]",
  "HandicapAccess" as feature_accessibility,
  "HasPetRestriction" as "feature_has_pet_restriction",
  "HeatingSource" as "feature_heating_source",
  "HeatingSystem" as "feature_heating_system",
  "HobbyRoomDesc" as "feature_hobby_room_description",
  "InteriorOther" as "feature_interior_features[]",
  "IsCertifiedGreen" as "feature_is_certified_green",
  "IsFurnished" as "feature_is_furnished",
  "IsNewConstruction"::text as "feature_is_new_construction",
  "KitchenDesc" as "feature_kitchen_description",
  "LivingRoomDesc" as "feature_living_room_description",
  "LotDesc" as "feature_lot_description",
  "MasterBathDesc" as "feature_master_bath_description",
  "MasterBathType" as "feature_master_bath_type",
  "MiscOther" as "feature_misc_other_features[]",
  "OtherRestrictions" as "feature_other_restrictions[]",  
  "OvenDesc" as "feature_oven_description",  
  "PatioDeck" as "feature_patio_deck[]",
  "PetDeposit" as "feature_pet_deposit",  
  "PetsPermitted" as "feature_pet_permitted",   --RNT
  "RangeDesc" as "feature_range_description",
  "RangeSource" as "feature_range_source",
  "RecRoomDesc" as "feature_rec_room_description",
  "RoofMaterial" as "feature_roof_material",
  "SecurityDeposit" as "feature_security_deposit", --RNT
  "SecurityDesc" as "feature_security_description", --CND
  "SewerSystem" as "feature_sewer_system",
  "Style" as "feature_building_style", --cottage/log/ranch/etc
  "TaxAmount" as "feature_tax_amount",
  "TotalHalfBaths" as "feature_baths_half",
  "FullBathsBasement" as "feature_baths_full_basement",
  "FullBathsMain" as "feature_baths_full_main",
  "FullBathsOther" as "feature_baths_full_other",
  "FullBathsSecond" as "feature_baths_full_second",
  "FullBathsThird" as "feature_baths_full_third",
  "HalfBathsBasement" as "feature_baths_half_basement",
  "HalfBathsMain" as "feature_baths_half_main",
  "HalfBathsOther" as "feature_baths_half_other",
  "HalfBathsSecond" as "feature_baths_half_second",
  "HalfBathsThird" as "feature_baths_half_third",
  "TotalRooms" as "feature_total_rooms",
  "UnitLocation" as "feature_unit_location", --CND
  "UnitNumber" as "feature_unit_number", --CND
  "VerticalLocation" as "feature_vertical_location", --CND/RNT
  "WaterPaidBy" as "feature_water_paid_by", --CND/RNT
  "WaterSource" as "feature_water_source", --CND/RNT
  "WaterfrontDock" as "feature_waterfront_dock", --CND/RNT
  "WaterfrontDesc" as "feature_waterfront_desc",
  trim(initcap("Subdivision")) as feature_subdivision,

  mtrmls.fn_mtrmls_major_area("CountyID", trim(initcap("City")), "ZipCode")
  as __major_area,
  mtrmls.fn_mtrmls_minor_area("CountyID", trim(initcap("City")), "ZipCode")
  as __minor_area,
  NULL::text as area,

  p."ModDate" as modification_timestamp,
  "OfficeListOfficeName" as office_name,
  true as display_address
FROM
  mtrmls."Property" as p
  LEFT OUTER JOIN mtrmls."Media" media ON p."MlsNum" = media."MlsNum" AND media.__removed_at IS NULL AND media."MediaType" = 'Tour',
  mtrmls.mutation as m
WHERE
    p."MlsNum" = m.remote_id and
    m.resource = 'Property' and
    m.last_transaction_completed_at is not null and (
     p."PropertyClassID" IN ('Condominium', 'Land-Lots-Farms', 'Rental', 'Residential') and
     p."PropertySubType" <> 'Manufactured-Mobile' and p."State" = 'Tennessee'
    )
GROUP BY p."MlsNum", last_transaction_completed_at
;
