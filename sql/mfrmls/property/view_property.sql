-- mfrmls mls view
DROP VIEW IF EXISTS mfrmls.view_property CASCADE;
CREATE OR REPLACE VIEW mfrmls.view_property AS
--WITH rooms AS (
--  SELECT
--    "Listing_MUI" as listing_id,
--    MAX(CASE WHEN "RoomLevel" = 'Basement' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_basement[]",
--    MAX(CASE WHEN "RoomLevel" = 'Lower' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_lower[]",
--    MAX(CASE WHEN "RoomLevel" = 'Main' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_main[]",
--    MAX(CASE WHEN "RoomLevel" = 'Upper' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_upper[]",
--    MAX(CASE WHEN "RoomLevel" = 'Third' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_third_floor[]"
--  FROM
--    mfrmls."PropertySubTable"
--  GROUP BY
--    "Listing_MUI"
--)
SELECT
--  r."feature_rooms_basement[]",
--  r."feature_rooms_lower[]",
--  r."feature_rooms_main[]",
--  r."feature_rooms_upper[]",
--  r."feature_rooms_third_floor[]",
  'mfrmls'::text as mls,
  __removed_at,
  (__removed_at is null) as __active,
  __inserted_at,
  __modified_at,
  __geo_modified_at,
  __price_updated_at,
  __percent_reduced,
  __geo_geom,
  __geo_outlier,
  __geo_places,
  __price_history_times,
  __price_history_vals,
  __inserted_at as age,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  "Status" as status,
  "VirtualTourLink" as virtual_tour,
  ("Status" IN ('Active with Contract')) as under_contract,
  "Status" as under_contract_description,
  "Matrix_Unique_ID"::text as listing_id,
  "MLSNumber"::text as mlsnum,
  coalesce(__image_count, "PhotoCount", 0) as image_count,
  "ListPrice" as price,
  "ClosePrice" as sold_price,
  "CloseDate" as sold_date,
  "BedsTotal" as beds,
  initcap("ListOfficeName") as office_name,
  "BathsFull" as baths_total,
  CASE "PropertyType"
    WHEN 'Commercial' THEN 'Commercial'
    WHEN 'Income' THEN 'Income'
    WHEN 'Vacant Land' THEN 'Lots & Land'
    WHEN 'Rental' THEN 'Rental'
    WHEN 'Residential' THEN
      CASE
        WHEN "PropertyStyle" IN ('Co-op', 'Condo') THEN 'Condo'
        WHEN "PropertyStyle" = 'Single Family Home' THEN 'Single Family Home'
        WHEN "PropertyStyle" = 'Townhouse' THEN 'Townhouse'
        WHEN "PropertyStyle" = 'Dock-Rackominium' THEN 'Dock'
        WHEN "PropertyStyle" = 'Villa' THEN 'Villa'
      END
  END as type,
  CASE "Status"
    WHEN 'Sold'   THEN 'sold'
    WHEN 'Leased' THEN 'leased'
    ELSE
      CASE "PropertyType"
        WHEN 'Rental' THEN 'for_rent'
        ELSE
          CASE "LeasePrice"
            WHEN null THEN 'for_sale'
            ELSE 'for_rent'
          END
      END
  END as listing_type,
  "PublicRemarksNew" as remarks,
  CASE
    WHEN "StreetNumber" is null THEN ''
    ELSE "StreetNumber"::text || ' '
  END
  ||
  CASE
    WHEN "StreetDirPrefix" is null THEN ''
    ELSE "StreetDirPrefix" || ' '
  END
  ||
  initcap("StreetName")
  ||
  CASE
    WHEN "StreetSuffix" is null THEN ''
    ELSE ' ' || 
      CASE "StreetSuffix"
        WHEN 'AVENUE' THEN 'Ave'
        WHEN 'BOULEVARD' THEN 'Blvd'
        WHEN 'STREET' THEN 'St'
        WHEN 'COURT' THEN 'Ct'
        WHEN 'DRIVE' THEN 'Dr'
        WHEN 'CIRCLE' THEN 'Cir'
        WHEN 'PLACE' THEN 'Pl'
        WHEN 'LANE' THEN 'Ln'
        WHEN 'ROAD' THEN 'Rd'
        ELSE initcap("StreetSuffix")
      END
  END
  ||
  CASE
    WHEN "StreetDirSuffix" is null THEN ''
    ELSE ' ' || initcap("StreetDirSuffix")
  END as address_line1,
  trim(initcap("StreetCity")) ||  ' FL, ' || "PostalCode" as address_line2,
  trim(initcap("StreetCity")) ||  ', FL' as city_st,
  trim(initcap("StreetCity")) ||  ', FL' as city,
  "PostalCode" as zip,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "SqFtHeated" as square_feet,
  "YearBuilt" as year_built,
  "LotSizeAcres" as acres,
  "CountyOrParish" as county,
  'FL'::text as state,

  initcap("ComplexCommunityNameNCCB") as complex,
  initcap("LegalSubdivisionName") as subdivision,
  "ElementarySchool"  as elementary_school,
  "MiddleorJuniorSchool"  as middle_school,
  "HighSchool"  as high_school,
  -- as school_district,

  (
    "ExteriorFeatures" && ARRAY['Open Patio', 'Patio/Deck - Covered', 'Patio/Deck - Open', 'Patio/Deck - Screened', 'Patio/Porch/Deck Covered', 'Patio/Porch/Deck Open', 'Patio/Porch/Deck Screened', 'Porch/Patio']
  ) as "patio_deck_porch",
  --("Foundation" && ARRAY['Basement']) as "basement",
  ("FireplaceYN") as "fireplace",
  ("ExteriorFeatures" && ARRAY['Fenced']) as fenced_yard,
  ("InteriorFeatures" && ARRAY['Elevator']) as elevators,
  ("WaterFrontageYN") as "waterfront",
  (
    "GarageCarport" && ARRAY['1 Car Garage', '2 Car Garage', '3 Car Garage', '4 Car Garage', '5+ Car Garage', 'Under Building Parking']
  ) as "garage",
  (
    ("Pool" && ARRAY['Private'])
  ) as private_pool,
  (
    ("MaintenanceIncludes" && ARRAY['Community Pool'])
    OR ("RentIncludes" && ARRAY['Pool'])
    OR ("Pool" && ARRAY['Community'])
  ) as community_pool,
  ("ArchitecturalStyle" && ARRAY['Ranch']) as "ranch_style",
  ("NewConstructionYN") as "new_construction",
  ("PropertyDescription" && ARRAY['One Story']) as "one_story",
  ("InteriorLayout" && ARRAY['Master Bedroom Dwonstairs']) as first_floor_master,
  ("InteriorFeatures" && ARRAY['Walk In Closet']) as walk_in_closets,
  ("MasterBathFeatures" && ARRAY['Dual Sinks']) as double_vanity,
  ("WaterViewYN") as water_view,
  ("WaterAccessYN") as water_access,
  "MatrixModifiedDT" as modification_timestamp,
  ("ShowPropAddrOnInternetYN") as display_address,

  initcap("WaterName") as "lake",
  "WaterName" as "feature_water_name",
  "EstAnnualMarketIncome" as feature_est_annual_market_income,
  "AnnualNetIncome" as feature_annual_net_income,
  "TotalNumBuildings" as feature_buildings_num,
  "EfficienciesNumberOf" as feature_efficiencies_num,
  "Num1Bed1Bath" as feature_1bed_1bath_num,
  "Num2Bed1Bath" as feature_2bed_1bath_num,
  "Num2Bed2Bath" as feature_2bed_2bath_num,
  "Num3Bed1Bath" as "feature_3bed_1bath_num",
  "Num3Bed2Bath" as "feature_3bed_2bath_num",
  "EfficiencyAvgRent" as feature_efficiencies_avg_rent,
  "AvgRent1Bed1Bath" as feature_1bed_1bath_avg_rent,
  "AvgRent2Bed1Bath" as feature_2bed_1bath_avg_rent,
  "AvgRent2Bed2Bath" as feature_2bed_2bath_avg_rent,
  "AvgRent3Bed1Bath" as feature_3bed_1bath_avg_rent,
  "AvgRent3Bed2Bath" as feature_3bed_2bath_avg_rent,
  "TotalMonthlyExpenses" as "feature_total_monthly_expenses",
  "AnnualGrossIncome" as "feature_annual_gross_income",
  "NetOperatingIncome" as "feature_net_operating_income",
  "NetOperatingIncomeType" as "feature_net_operating_income_type",
  "Porches" as "feature_porches",

  "PropertyUse" as feature_property_use,
  "ExteriorConstruction" as "feature_exterior_construction[]",
  "Parking" as "feature_parking[]",
  "TransportationAccess" as "feature_transportation_access[]",
  "ForLeaseYN" as feature_for_lease,
  "WaterFrontage" as "feature_waterfront_desc[]",
  "WaterAccess" as "feature_water_access_desc[]",
  "RoadFrontage" as "feature_road_frontage",
  "GarageFeatures" as "feature_garage_features[]",
  "PetRestrictionsYN" as "feature_pet_restrictions",
  "NumofPets" as "feature_pets_number",
  "MaxPetWeight" as "feature_pet_weight_max",
  "PetSize" as "feature_pet_size",
  "PetRestrictions" as "feature_pet_restrictions[]",
  "AdditionalPetFees" as "feature_pet_fees_addtl",
  "PetFeeNonRefundable" as "feature_pet_fee",
  "OtherFeesTerm" as "feature_fees_other_term",
  "CondoFees" as "feature_fees_condo",
  "MandatoryFees" as "feature_fees_mandatory[]",
  "AirConditioning" as "feature_air_conditioning[]",
  "HeatingandFuel" as "feature_heating[]",
  "KitchenFeatures" as "feature_kitchen_features[]",
  "Fences" as "feature_fences[]",
  "ElectricalService" as "feature_electrical_service[]",
  "AppliancesIncluded" as "feature_appliances[]",
  "CurrentAdjacentUse" as "feature_adjacent_use[]",
  "FloorCovering" as "feature_flooring[]",
  "Roof" as "feature_roof[]",
  "AdditionalRooms" as "feature_additional_rooms[]",
  "Easements" as "feature_easements[]",
  "GreenWaterFeatures" as "feature_green_water_features[]",
  "GreenLandscaping" as "feature_green_landscaping[]",
  "GreenCertifications" as "feature_green_certifications[]",
  "GreenEnergyFeatures" as "feature_green_energy_features[]",
  "IndoorAirQuality" as "feature_indoor_air_quality[]",
  "CommunityFeatures" as "feature_community_features[]",
  "LeaseFee" as "feature_fee_lease",
  "LeaseTerms" as "feature_lease_terms",
  "MinimumDaysLeased" as "feature_days_leased_minimum",
  "MinimumLease" as "feature_minimum_lease",
  "DisasterMitigation" as "feature_disaster_mitigation[]",
  "FrontExposure" as "feature_front_exposure",
  "PoolType" as "feature_pool[]",
  "WindowCoverings" as "feature_window_coverings[]",
  "HousingForOlderPersons" as "feature_older_persons_housing[]",
  "PoolDimensions" as feature_pool_dimensions,
  "WeeksAvailable2014" as "feature_weeks_available_2014[]",
  "MasterBedSize" as "feature_master_bed_size",
  "MoMaintAmtadditiontoHOA" as "feature_fees_maintenance_extra",
  "MonthlyHOAAmount" as "feature_fees_hoa_monthly",
  "HOAFee" as "feature_fee_hoa",
  "MaintenanceIncludes" as "feature_maintenance_includes[]",
  "BuildingNumFloors" as "feature_num_floors_building",
  "WeeklyRent" as "feature_weekly_rent",
  "RoomCount" as "feature_room_count",
  "FinancingAvailable" as "feature_financing_available[]",
  "WaterExtras" as "feature_water_extras[]",
  "TotalUnits" as "feature_total_units[]",
  "TotalAcreage" as "feature_total_acreage[]",
  "SpecialSaleProvision" as "feature_special_sale_provisions",
  "AdditionalApplicantFee" as "feature_fee_application_addtl",
  "ApplicationFee" as "feature_fee_application",
  "FrontageDescription" as "feature_frontage_desc[]",
  "HERSIndex" as "feature_hers_index[]",
  "AnnualRent" as "feature_annual_rent",
  "UnitNumber" as "feature_unit_number",
  "PropertyStyle" as "feature_residential_style[]",
  "ArchitecturalStyle" as "feature_architectural_style[]",
  "RentalRateType" as "feature_rental_rate_type",
  "Location" as "feature_location[]",
  "CeilingHeight" as "feature_ceiling_height",
  "LotNum" as "feature_lot_number",
  "WaterView" as "feature_water_view_desc[]",
  "LotDimensions" as "feature_lot_dimensions",
  "HOACommonAssn" as "feature_hoa",
  "HOAPaymentSchedule" as "feature_hoa_payment_schedule",
  "LandLeaseFee" as "feature_fee_land_lease",
  "MasterBathFeatures" as "feature_master_bath[]",
  "CeilingType" as "feature_ceiling[]",
  "Furnishings" as "feature_furnished",
  "InteriorFeatures" as "feature_interior_features[]",
  "ExteriorFeatures" as "feature_exterior_features[]",
  "InteriorLayout" as "feature_interior_layout[]",
  "SiteImprovements" as "feature_site_improvements[]",
  "Taxes" as "feature_taxes",
  "TaxYear" as "feature_tax_year",
  "SecurityDeposit" as "feature_security_deposit",
  "WaterfrontFeet" as "feature_waterfront_feet",
  "RentIncludes" as "feature_rent_includes[]",
  "PropertyStatus" as "feature_property_status",
  "PropertyDescription" as "feature_residential_desc[]",
  "Utilities" as "feature_utilities[]",
  "GarageCarport" as "feature_garage[]",
  "GarageDimensions" as "feature_garage_dimensions",
  "AssociationFeeIncludes" as "feature_fee_assoc_includes[]",
  "AssociationApplicationFee" as "feature_fee_assoc_application",
  "BathsHalf" as feature_baths_half,
  "SpecialTaxDistTampaYN" as feature_tax_special_dist_tampa,
  "FloodZoneCode" as feature_flood_zone_code
FROM
  mfrmls."Property" p, mfrmls.mutation m
--LEFT OUTER JOIN rooms r ON p."Matrix_Unique_ID" = r.listing_id
WHERE 
  p."StateOrProvince" = 'Florida' AND
  p."Matrix_Unique_ID"::text = m.remote_id AND
  m.last_transaction_completed_at is not null
;
