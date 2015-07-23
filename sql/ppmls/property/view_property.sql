-- ppmls mls view
DROP VIEW IF EXISTS ppmls.view_property CASCADE;
CREATE OR REPLACE VIEW ppmls.view_property AS
SELECT
  'ppmls'::text as mls,
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
  "Status" as status,
  "VirtualTourURLUnbranded" as virtual_tour,
  ("Status" IN ('Under Contract - Showing', 'UC Short Sale - Showing')) as under_contract,
  "Status" as under_contract_description,
  "Matrix_Unique_ID" as listing_id,
  NULL::text as sold_date, -- note sold data is not present in this board yet
  NULL::text as sold_price,
  CASE "Property".__class_name
      WHEN 'Rental'::text THEN
      CASE "Status"
          WHEN 'Leased'     THEN 'leased'::text
          WHEN 'Expired'    THEN NULL::text
          WHEN 'Cancelled'  THEN NULL::text
          WHEN 'Incomplete' THEN NULL::text
          WHEN 'Withdrawn'  THEN NULL::text
          ELSE 'for_rent'::text
      END
      ELSE
      CASE "Status"
          WHEN 'Sold'       THEN 'sold'::text
          WHEN 'Expired'    THEN NULL::text
          WHEN 'Cancelled'  THEN NULL::text
          WHEN 'Incomplete' THEN NULL::text
          WHEN 'Withdrawn'  THEN NULL::text
          ELSE 'for_sale'::text
      END
  END AS listing_type,
  "MLSNumber"::text as mlsnum,
  coalesce(__image_count, "PhotoCount", 0) as image_count,
  "ListPrice" as price,
  "BedsTotal" as beds,
  "ListOfficeName" as office_name,
  "BathsTotal" as baths_total,
  CASE __class_name
    WHEN 'Land' THEN 'Lots & Land'
    WHEN 'Rental' THEN 'Rental'
    WHEN 'Resi' THEN
      CASE "PropertySubType"
        WHEN 'Condominium' THEN 'Condo'
        WHEN 'Townhouse' THEN 'Townhouse'
        ELSE 'Single Family'
      END
    WHEN 'Income' THEN 'Multi Family'
    ELSE null::text
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
  "StreetName"
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
  "City" || ', CO ' || "PostalCode" as address_line2,
  "City" || ', CO' as city_st,
  "City" as city,
  "PostalCode" as zip,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "SqftTotal" as square_feet,
  "YearBuilt" as year_built,
  "AcresTotal" as acres,
  "CountyOrParish" as county,
  'CO'::text as state,

  --null::text as subdivision,
  --  as elementary_school,
  --  as middle_school,
  --  as high_school,
  "SchoolDistrict" as school_district,

  --() as "patio_deck_porch",
  ("foundationDetails" && ARRAY['Full Basement', 'Partial Basement']) as "basement",
  (("FirePlaceDesc" is not null) AND (("FirePlaceDesc" && ARRAY['None']) is not true)) as "fireplace",
  (("fence" is not null) AND ((fence && ARRAY['All', 'Front', 'Rear', 'Other', 'See Prop Desc Remarks']))) as "fenced_yard",
  --() as "waterfront",
  ("LotDesc" && ARRAY['Mountain View']) as "mountain_view",
  --() as "water_view",
  ("GarageType" && ARRAY['Attached', 'Detached', 'Tandem']) as "garage",
  ("FloorPlan" = 'Ranch') as "ranch_style",
  ("ConstructionStatus" IN ('New Construction', 'To Be Built', 'Under Construction')) as "new_construction",
  --() as "one_story",
  --() as "pool",
  "MatrixModifiedDT" as modification_timestamp,
  ("PermitAddressInternetYN") as display_address,

  -- MF

  "FloorPlan" as feature_floor_plan, 
  "Floors" as "feature_floors[]",
  "Appliances" as "feature_appliances[]",
  "RentIncludes" as "feature_rent_includes[]",
  "PropertySubType" as "feature_property_subtype",
  "LotDesc" as "feature_lot_description[]",
  "GarageType" as "feature_garage_type[]",
  "GarageSpaces" as "feature_garage_spaces",
  "SqftLowerFloor" as "feature_sqft_lower",
  "FirePlaceDesc" as "feature_fireplace[]",
  "ConstructionStatus" as "feature_construction_status",
  "BathsFull" as "feature_baths_full",
  "PetType" as "feature_pets_allowed[]",
  CASE
    WHEN "PetsYN" THEN 'Yes'
    WHEN "PetsYN" is not true THEN 'No'
    ELSE null::text
  END as feature_pets_ok,
  CASE
    WHEN "MainFloorBedroomYN" THEN 'Yes'
    WHEN "MainFloorBedroomYN" is not true THEN 'No'
    ELSE null::text
  END as "feature_bedroom_main_floor",
  "Siding" as "feature_siding[]",
  "SqftFinished" as "feature_sqft_finished",
  "SqftUpperFloor" as "feature_sqft_upper",
  "SqftMainFloor" as "feature_sqft_main",
  "sqftTotalBsmt" as "feature_sqft_basement",
  "WellsNumberof" as "feature_wells_count",
  "ParkingSpacesNumberOf" as "feature_parking_spaces",
  "BasementPercentFinished" as "feature_basement_percent_finished",
  "GarageAmenities" as "feature_garage_amenities[]",
  "MLSAreaMajor" as feature_area_major,
  "MLSAreaMinor" as feature_area_minor,
  "HeatAir" as "feature_heating[]",
  "TaxYear" as "feature_tax_year",
  "TaxAmount" as "feature_tax_amount",
  "UnitNumber" as "feature_unit_number",
  "BuilderName" as "feature_builder_name",
  "UnitDesc" as "feature_unit_desc[]",
  "OutBuildings" as "feature_out_buildings[]",
  "fence" as "feature_fence[]",
  "foundationDetails" as "feature_foundation_details[]",
  "Vegetation" as "feature_vegetation[]",
  "Handicap" as "feature_accessibility_features[]",
  "DepositPet" as "feature_pet_deposit",
  "DepositSecurity" as "feature_security_deposit",
  "LaundryFacilities" as "feature_laundry[]",
  "ComplexAmenities" as "feature_amenities[]",
  "Utilities" as "feature_utilities[]",
  "FeaturesExtra" as "feature_extras[]",
  "Water" as "feature_water[]",
  "Topography" as "feature_topography[]",
  "Structure" as "feature_structure[]",
  "Roof" as "feature_roof",
  "UnitCount" as "feature_unit_count",
  "EarnestMoney" as feature_earnest_money,
  "LeaseTermMin" as feature_lease_term_min
FROM
  ppmls."Property"
;
