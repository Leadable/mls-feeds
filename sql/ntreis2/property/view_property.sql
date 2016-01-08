DROP VIEW IF EXISTS ntreis2.view_property CASCADE;
CREATE OR REPLACE VIEW ntreis2.view_property AS
WITH rooms AS (
  SELECT
    listing_id,
    (select array_agg(a) from unnest("feature_rooms_basement[]") a where a is not null) as "feature_rooms_basement[]",
    (select array_agg(a) from unnest("feature_rooms_first_floor[]") a where a is not null) as "feature_rooms_first_floor[]",
    (select array_agg(a) from unnest("feature_rooms_second_floor[]") a where a is not null) as "feature_rooms_second_floor[]",
    (select array_agg(a) from unnest("feature_rooms_third_floor[]") a where a is not null) as "feature_rooms_third_floor[]"
  FROM
    (SELECT
      "Listing_MUI" as listing_id,
      array_agg(CASE WHEN "RoomLevel" = 'B' THEN "RoomType" ELSE null::text END) as "feature_rooms_basement[]",
      array_agg(CASE WHEN "RoomLevel" = '1' THEN "RoomType" ELSE null::text END) as "feature_rooms_first_floor[]",
      array_agg(CASE WHEN "RoomLevel" = '2' THEN "RoomType" ELSE null::text END) as "feature_rooms_second_floor[]",
      array_agg(CASE WHEN "RoomLevel" = '3' THEN "RoomType" ELSE null::text END) as "feature_rooms_third_floor[]"
    FROM
      ntreis2."PropertySubTable"
    GROUP BY
      "Listing_MUI") t
)
SELECT
  r."feature_rooms_basement[]",
  r."feature_rooms_first_floor[]",
  r."feature_rooms_second_floor[]",
  r."feature_rooms_third_floor[]",
  'ntreis2'::text as mls,
  __removed_at,
  (__removed_at is null and "Status" NOT IN ('Withdrawn', 'Withdrawn Sublisting', 'Expired', 'Cancelled')) as __active,
  __inserted_at,
  __modified_at,
  __price_updated_at,
  __percent_reduced,
  __geo_geom,
  __geo_outlier,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  __price_history_times,
  __price_history_vals,
  __inserted_at as age,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  __geo_places,
  __photo_urls,
  null::text as __list_date,
  last_transaction_completed_at,
  null::text as days_to_close,
  null::text as sold_date,
  null::numeric as sold_price,
  "Status" as status,
  "VirtualTourURLUnbranded" as virtual_tour,
  ("Status" IN ('Active Contingent', 'Active Kick Out', 'Active Option Contract', 'Pending')) as under_contract,
  "Status" as under_contract_description,
  "Matrix_Unique_ID" as listing_id,
  "MLSNumber"::text as mlsnum,
  COALESCE("PhotoCount", 0) as image_count,
  "ListPrice" as price,
  "BedsTotal" as beds,
  "ListOfficeName" as office_name,
  "BathsFull" as baths_total,
  CASE "Status"
    WHEN 'Sold' THEN
      CASE "PropertyType"
        WHEN 'Residential Lease' THEN 'leased'
        ELSE 'sold'
      END
    WHEN 'Leased' THEN 'leased'
    ELSE
      CASE "PropertyType"
        WHEN 'Residential Lease' THEN 'for_rent'
        ELSE 'for_sale'
      END
  END as listing_type,
  CASE "PropertyType" 
    WHEN 'Lots & Acreage' then 'Lots & Land'
    WHEN 'Multi-Family' then 'Multi-Family'
    WHEN 'Residential' then
      CASE "PropertySubType"
        WHEN 'RES-Condo' THEN 'Condo'
        WHEN 'RES-Townhouse' THEN 'Townhouse'
        WHEN 'RES-Half Duplex' THEN 'Half Duplex'
        WHEN 'RES-Single Family' THEN 'Single Family'
        WHEN 'RES-Farm/Ranch' THEN 'Farm/Ranch'
      END
    WHEN 'Residential Lease' then
      CASE "PropertySubType"
        WHEN 'LSE-Apartment' THEN 'Condo'
        WHEN 'LSE-Condo/Townhome' THEN 'Condo'
        WHEN 'LSE-Duplex' THEN 'Condo'
        WHEN 'LSE-Fourplex' THEN 'Condo'
        WHEN 'LSE-House' THEN 'Single Family'
        WHEN 'LSE-Mobile' THEN 'Single Family'
        WHEN 'LSE-Triplex' THEN 'Condo'
      END
    ELSE 'Other'::text
  END as type,
  "PublicRemarks" as remarks,
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
    ELSE ' ' || "StreetSuffix"
  END
  ||
  CASE
    WHEN "StreetDirSuffix" is null THEN ''
    ELSE ' ' || "StreetDirSuffix"
  END as address_line1,
  regexp_replace("City", '\s*$', '') || ' ' || "StateOrProvince" || ', ' || "PostalCode" as address_line2,
  regexp_replace("City", '\s*$', '') ||  ', ' || "StateOrProvince" as city_st,
  regexp_replace(initcap("City"), '\s*$', '') ||  ', ' || "StateOrProvince" as city,
  "PostalCode" as zip,
  "SqFtTotal" as square_feet,
  "YearBuilt" as year_built,
  CASE
    WHEN "LotSizeUnits" = 'Sq Ft' THEN "LotSizeArea"/43560.00
    WHEN "LotSizeUnits" = 'Acres' THEN "LotSizeArea"
    else null::numeric
  END as acres,
  "CountyOrParish" as county,
  "StateOrProvince" as state,

  "ComplexName" as complex,
  "ComplexName" as feature_complex,
  "SubdivisionName" as subdivision,
  initcap("SchoolDistrict")  as school_district,
  "ElementarySchoolName"  as elementary_school,
  "MiddleSchoolName"  as middle_school,
  "HighSchoolName"  as high_school,
  ("NumberOfStories" = 1) as one_story,
  ("FoundationDetails" && ARRAY['Basement']) as basement,
  ("FireplacesTotal" > 0) as fireplace,
  ("FencedYardYN") as fenced_yard,
  (
    "LotFeatures" && ARRAY['Lake Front', 'Lake Front - Main Body', 'River Front']
  ) as waterfront,
  null::boolean as ranch_style, -- "ranch" means a real ranch in texas
  ("PoolYN") as pool,
  ("CommunityFeatures" && ARRAY['Community Pool']) as community_pool,
  (
    "ExteriorFeatures" && ARRAY['Covered Deck','Covered Porch(es)','Deck','Patio Covered','Patio Open']
  ) as patio_deck_porch,
  ("ParkingFeatures" && ARRAY['Garage', 'Assigned Garage', 'Attached', 'Common Garage', 'Garage Under Building']) as garage,
  ("PermitAddressInternetYN") as display_address,
  (r."feature_rooms_first_floor[]" && ARRAY['Master Bedroom', 'Second Master']) as first_floor_master,
  null::text as __minor_area,
  null::text as __major_area,
  "MatrixModifiedDT" as modification_timestamp,
  

  "NetAnnualIncome" as feature_net_annual_income,
  "AverageMonthlyLease" as feature_monthly_lease_avg,
  "CapitalizationRate" as feature_capitalization_rate,
  "GrossAnnualExpenses" as feature_gross_annual_expenses,
  "GrossAnnualIncome" as feature_gross_annual_income,
  "GrossIncomeMultiplier" as feature_gross_income_multiplier,
  "InsuranceExpense" as feature_insurance_expense,
  "NumberOfBuildings" as feature_number_of_buildings,
  "NumberOfLeaseableSpaces" as feature_number_of_leasable_spaces,
  "NumberOfUnits" as feature_number_of_units,
  "OccupancyRate" as feature_occupancy_rate,
  "Tenancy" as "feature_tenancy[]",
  "TotalAnnualExpensesInclude" as "feature_total_annual_expense_includes[]",
  "UnitCount" as "feature_unit_count",


  "AccessibilityFeatures" as "feature_accessibility_features[]",
  "AccessoryUnitType" as "feature_accessory_unit_type",
  "AppliancesYN" as "feature_appliances_y_n",
  "ApplicationFeeYN" as "feature_application_fee_y_n",
  "ArchitecturalStyle" as "feature_architectural_style[]",
  "AssociationFee" as "feature_association_fee",
  "AssociationFeeFrequency" as "feature_association_fee_frequency",
  "AssociationFeeIncludes" as "feature_association_fee_includes[]",
  "AssociationType" as "feature_association_type",
  "BarnInformation" as "feature_barn_information",
  "BathsHalf" as "feature_baths_half",
  "BedroomBathroomFeatures" as "feature_bedroom_bathroom[]",
  "BuildingAreaSource" as "feature_building_area_source",
  "CeilingHeight" as "feature_ceiling_height[]",
  "CommunityFeatures" as "feature_common_features[]",
  "ConstructionMaterials" as "feature_construction_materials[]",
  "Crops" as "feature_crops[]",
  "DateAvailable" as "feature_date_available",
  "DepositAmount" as "feature_deposit_amount",
  "DepositPet" as "feature_deposit_pet",
  "Development" as "feature_development[]",
  "Documents" as "feature_documents[]",
  "Easements" as "feature_easements[]",
  "EnergySavingFeatures" as "feature_energy_saving_features[]",
  "ExteriorBuildings" as "feature_exterior_buildings[]",
  "ExteriorFeatures" as "feature_exterior_features[]",
  "FarmRanchFeatures" as "feature_farm_ranch_features[]",
  "Fencing" as "feature_fencing[]",
  "FinancingProposed" as "feature_financing_proposed[]",
  "FireplaceFeatures" as "feature_fireplace[]",
  "FireplacesTotal" as "feature_fireplaces_total",
  "FloorLocationNumber" as "feature_floor_number",
  "Flooring" as "feature_flooring[]",
  "FoundationDetails" as "feature_foundation_details[]",
  "FurnishedYN" as "feature_furnished",
  "GarageLength" || 'L x ' || "GarageWidth" || 'W' as "feature_garage_dimensions",
  "GreenBuildingCertification" as "feature_green_building_certs[]",
  "GreenEnergyEfficient" as "feature_green_features[]",
  "Heating" as "feature_heating[]",
  "InteriorFeatures" as "feature_interior_features[]",
  "LakeName" as "feature_lake_name",
  "LandLeasedYN" as "feature_land_lease_y_n",
  "LeaseConditions" as "feature_lease_conditions[]",
  "LeaseTerms" as "feature_lease_terms",
  "LeaseType" as "feature_lease_type[]",
  "LotFeatures" as "feature_lot_features[]",
  "LotSize" as "feature_lot_size",
  "LotSizeSource" as "feature_lot_size_source",
  "MLSAreaMajor" as "feature_mls_area_major",
  "MLSAreaMinor" as "feature_mls_area_minor",
  "MoniesRequired" as "feature_monies_required[]",
  "MonthlyPetFee" as "feature_pet_fee_monthly",
  "NonRefundablePetFeeYN" as "feature_pet_fee_non_refundable",
  "NumberOfDaysGuestsAllowed" as "feature_number_of_days_guests_allowed",
  "NumberOfDiningAreas" as "feature_number_of_dining_areas",
  "NumberOfLakes" as "feature_number_of_lakes",
  "NumberOfLivingAreas" as "feature_number_of_living_areas",
  "NumberOfLots" as "feature_number_of_lots",
  "NumberOfParkingSpaces" as "feature_number_of_parking_spaces",
  "NumberOfPetsAllowed" as "feature_number_of_pets_allowed",
  "NumberOfPonds" as "feature_number_of_ponds",
  "NumberOfResidences" as "feature_number_of_residences",
  "NumberOfStories" as "feature_number_of_stories",
  "NumberOfVehicles" as "feature_number_of_vehicles",
  "NumberOfWells" as "feature_number_of_wells",
  "OtherEquipment" as "feature_other_equipment[]",
  "ParkingFeatures" as "feature_parking[]",
  "ParkingSpacesCarport" as "feature_parking_carport_spaces",
  "ParkingSpacesCoveredTotal" as "feature_parking_covered_spaces",
  "ParkingSpacesGarage" as "feature_garage_capacity",
  "PoolFeatures" as "feature_pool[]",
  "PresentUse" as "feature_present_use[]",
  "PropertySubType" as "feature_property_sub_type",
  "Restrictions" as "feature_restrictions[]",
  "RoadFrontage" as "feature_road_frontage[]",
  "Roof" as "feature_roof[]",
  "RoomCount" as "feature_number_of_rooms",
  "SecurityFeatures" as "feature_security_features[]",
  "SoilType" as "feature_soil_type",
  "SpecialNotes" as "feature_special_notes",
  "StructuralStyle" as "feature_housing_type[]", -- adv yeo
  "SurfaceRights" as "feature_surface_rights[]",
  "TenantPays" as "feature_tenant_pays[]",
  "TransactionType" as "feature_transaction_type",
  "Utilities" as "feature_utilities",
  "UtilitiesOther" as "feature_utilities_other",
  "WillSubdivide" as "feature_will_subdivide",
  "YearBuiltDetails" as "feature_year_built_details",
  "Zoning" as "feature_zoning[]"
FROM
  ntreis2."Property" p
  LEFT OUTER JOIN rooms r ON p."Matrix_Unique_ID" = r.listing_id,
  ntreis2.mutation m
WHERE
  p."Matrix_Unique_ID"::text = m.remote_id AND
  m.last_transaction_completed_at is not null AND
  p."PermitInternetYN" and p."StateOrProvince" = 'TX'
;
