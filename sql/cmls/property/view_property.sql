-- cmls mls view
DROP VIEW IF EXISTS cmls.view_property CASCADE;
CREATE OR REPLACE VIEW cmls.view_property AS
WITH rooms AS (
  SELECT
    "Listing_MUI" as listing_id,
    MAX(CASE WHEN "RoomLevel" = 'Basement' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_basement[]",
    MAX(CASE WHEN "RoomLevel" = 'Lower' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_lower[]",
    MAX(CASE WHEN "RoomLevel" = 'Main' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_main[]",
    MAX(CASE WHEN "RoomLevel" = 'Upper' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_upper[]",
    MAX(CASE WHEN "RoomLevel" = 'Third' THEN "RoomType" ELSE null::text[] END) as "feature_rooms_third_floor[]"
  FROM
    cmls."PropertySubTable"
  GROUP BY
    "Listing_MUI"
)
SELECT
  r."feature_rooms_basement[]",
  r."feature_rooms_lower[]",
  r."feature_rooms_main[]",
  r."feature_rooms_upper[]",
  r."feature_rooms_third_floor[]",
  'cmls'::text as mls,
  __removed_at,
  (__removed_at is null AND "Status" <> 'Under Contract-No Show') as __active,
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
  "CloseDate" as sold_date,
  "ClosePrice" as sold_price,
  "Status" as status,
  "VirtualTourURLUnbranded" as virtual_tour,
  ("Status" IN ('Under Contract-Show', 'Under Contract-No Show')) as under_contract,
  CASE __class_name
        WHEN 'Rent'::text THEN
        CASE "Status"
            WHEN 'Active'::text THEN 'for_rent'::text
            WHEN 'Closed'::text THEN 'leased'::text -- currently none of these in data
            ELSE NULL::text
        END
        ELSE
        CASE "Status"
            WHEN 'Closed'::text THEN 'sold'::text
            ELSE 'for_sale'::text
        END
  END AS listing_type,
  "Status" as under_contract_description,
  "Matrix_Unique_ID" as listing_id,
  "MLSNumber"::text as mlsnum,
  coalesce(__image_count, "PhotoCount", 0) as image_count,
  "ListPrice" as price,
  "BedsTotal" as beds,
  "ListOfficeName" as office_name,
  "BathsFull" as baths_total,
  "PropertyType" as type,
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
  "City" || ', ' || (CASE "StateOrProvince" WHEN 'North Carolina' THEN 'NC' WHEN 'South Carolina' THEN 'SC' END) || ' ' || "PostalCode" as address_line2,
  "City" ||  ', ' || (CASE "StateOrProvince" WHEN 'North Carolina' THEN 'NC' WHEN 'South Carolina' THEN 'SC' END) as city_st,
  "City" ||  ', ' || (CASE "StateOrProvince" WHEN 'North Carolina' THEN 'NC' WHEN 'South Carolina' THEN 'SC' END) as city,
  "PostalCode" as zip,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "SqFtTotal" as square_feet,
  "YearBuilt" as year_built,
  "LotSizeArea" as acres,
  "CountyOrParish" as county,
  CASE "StateOrProvince"
    WHEN 'North Carolina' THEN 'NC'
    WHEN 'South Carolina' THEN 'SC'
  END as state,

  "ComplexName" as complex,
  "ComplexName" as feature_complex,
  "SubdivisionName" as subdivision,
  "ElementarySchool"  as elementary_school,
  "MiddleOrJuniorSchool"  as middle_school,
  "HighSchool"  as high_school,
  -- as school_district,

  (
    "ExteriorFeatures" && ARRAY['Deck', 'Enclosed Patio', 'Patio', 'Porch', 'Porch - Glass', 'Porch - Screened']
  ) as "patio_deck_porch",
  ("FoundationDetails" && ARRAY['Basement']) as "basement",
  ("FireplaceYN") as "fireplace",
  (
    "ExteriorFeatures" && ARRAY['Fenced', 'Fenced Yard']
  ) as fenced_yard,
  ("LotFeatures" && ARRAY['Waterfront']) as "waterfront",
  (
    "Parking" && ARRAY['Attached Garage', 'Back Load Garage', 'Detached Garage', 'Garage - 1 Car', 'Garage - 2 Car', 'Garage - 3 Car', 'Garage - 3+ Car']
  ) as "garage",
  ("ArchitecturalStyle" && ARRAY['Ranch']) as "ranch_style",
  ("NewConstructionYN") as "new_construction",
  ("PropertySubType" = '1 Story' OR "PropertySubTypeSecondary" = '1 Story') as "one_story",
  (
    "ExteriorFeatures" && ARRAY['Pool-Above Ground', 'Pool-In-Ground']
    OR "CommunityFeatures" && ARRAY['Pool']
  ) as "pool",
  (
   ("feature_rooms_main[]" && ARRAY['2nd Master', 'Master BR']) OR
   ("feature_rooms_lower[]" && ARRAY['2nd Master', 'Master BR'])
  ) as first_floor_master,
  (
    "ExteriorConstruction" && ARRAY['Brick Veneer Full']
  ) as brick_exterior,
  "MatrixModifiedDT" as modification_timestamp,
  ("PermitAddressInternetYN") as display_address,
  "Zoning" as feature_zoning, 
  "LotFeatures" as "feature_lot_description[]", 
  "ExteriorFeatures" as "feature_exterior_features[]", 
  "ExteriorConstruction" as "feature_exterior_construction[]", 
  "Parking" as "feature_parking[]",
  "AssociationFee" as feature_association_fee,
  "SqFtMain" as feature_sqft_main,
  "SqFtThird" as feature_sqft_third,
  "SqFtUnheatedThird" as feature_sqft_unheated_third,
  "SqFtUnheatedMain" as feature_sqft_unheated_main,
  "SqFtUnheatedUpper" as feature_sqft_unheated_upper,
  "SqFtUnheatedTotal" as feature_sqft_unheated_total,
  "SqFtUnheatedBasement" as feature_sqft_basement,
  "SqFtLower" as feature_sqft_lower,
  "SqFtUpper" as feature_sqft_upper,
  "SqFtUnheatedLower" as feature_sqft_unheated_lower,
  "SqFtBuildingMinimum" as feature_sqft_building_min,
  "PetsAllowed" as feature_pets_allowed,
  "DepositPet" as feature_pet_deposit,
  "LotDimension" as feature_lot_dimension,
  "WaterHeater" as "feature_water_heater[]",
  "Model" as "feature_model",
  "UnitFloorLevel" as "feature_unit_floor_level",
  "UnitNumber" as "feature_unit_number",
  "TenantPays" as "feature_tenant_pays[]",
  "Restrictions" as "feature_restrictions[]",
  "CommunityFeatures" as "feature_community_features[]",
  "Sewer" as "feature_sewer[]",
  "Furnished" as "feature_furnished",
  "ZoningSpecification" as "feature_zoning_specification",
  "FoundationDetails" as "feature_foundation_details[]",
  "LaundryLocation" as "feature_laundry_location[]",
  "RoomOther" as "feature_room_other",
  "GreenCertification" as "feature_green_certification[]",
  "InteriorFeatures" as "feature_interior_features[]",
  coalesce("PropertySubType", "PropertySubTypeSecondary") as feature_property_subtype,
  -- ("VOWConsumerCommentYN" is false) as comments_disabled,
  "NumberOfUnitsTotal" as feature_units_total,
  CASE
    WHEN "NewConstructionYN" is null THEN null::text
    WHEN "NewConstructionYN" THEN 'Yes'
    ELSE 'No'::text
  END as feature_new_construction,
  "ConstructionStatus" as feature_construction_status,
  "Equipment" as "feature_equipment[]",
  "BathsHalf" as "feature_baths_half",
  "BuilderName" as "feature_builder_name",
  "ArchitecturalStyle" as "feature_style[]",
  "Flooring" as "feature_flooring[]",
  "CanSubdivideYN" as "feature_can_subdivide",
  "DoorsWindows" as "feature_doors_windows[]",
  "Driveway" as "feature_driveway[]",
  "LeaseTerm" as "feature_lease_term[]",
  "Heating" as "feature_heating[]",
  "SpecialListingConditions" as "feature_special_conditions[]",
  "LandIncludedYN" as "feature_land_included",
  "FireplaceDescription" as "feature_fireplace[]"
  
FROM
  cmls."Property" p
LEFT OUTER JOIN rooms r ON p."Matrix_Unique_ID" = r.listing_id
;
