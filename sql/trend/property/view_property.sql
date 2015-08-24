DROP VIEW IF EXISTS trend.view_property CASCADE;
CREATE OR REPLACE VIEW trend.view_property AS
SELECT
  'trend'::text as mls,
  __removed_at,
  (__removed_at is null) as __active,
  __inserted_at as age,
  __inserted_at,
  __modified_at,
  last_transaction_completed_at,
  __geo_geom,
  __geo_outlier,
  __price_updated_at,
  __price_history_times,
  __price_history_vals,
  __percent_reduced,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  "ListingKey"::text as listing_id,
  "ListingID" as mlsnum,
  "CloseDate" as sold_date,
  "ClosePrice" as sold_price,
  "LocaleListingStatus" as status,
  false as comments_disabled,
  "LocaleListingStatus" IN ('PENDING', 'CONTRACT') as under_contract,
  CASE "LocaleListingStatus"
    WHEN 'PENDING'  THEN 'Under Contract'
    WHEN 'CONTRACT' THEN 'Under Contract'
    ELSE null::text
  END as under_contract_description,
  CASE __class_name
    WHEN 'RNT' THEN 'for_rent'
    WHEN 'COM' THEN
      CASE "AnnualLeasePrice"
        WHEN null THEN 'for_sale'
        ELSE 'for_rent'
      END
    ELSE 'for_sale'
  END as listing_type,
  coalesce(__image_count, "TotalPhotos", 0) as image_count,
  "ListPrice" as price,
  "Beds" as beds,
  "BathsFull" as baths_total,
  CASE "PropertyType"
    WHEN 'Residential' THEN "Type"
    ELSE "PropertyType"
  END as type,
  "Remarks" as remarks,
  CASE
    WHEN "CityName" ~ '^\d' THEN NULL::text
    ELSE initcap("CityName")
  END as city,
  "State" as state,
  "PostalCode" as zip,
  initcap("FullStreetAddress") as address_line1,
  COALESCE(initcap("CityName"), '') || ', ' || COALESCE("State", '') || ' ' || COALESCE("PostalCode", '') as address_line2,
  initcap("County") as county,
  null::text as township,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "NetSQFT" as square_feet,
  "LotAreaAcre" as acres,
  "Basement" as basement,
  "Fireplace" as fireplace,
  ("ExteriorFeatures" && ARRAY['Fencing']) as fenced_yard,
  "WaterFront" as waterfront,
  ("Styles" && ARRAY['Rancher']) as ranch_style,
  ("Pool" = 'Yes') as pool,
  ("PorchDeck" is not null) as patio_deck_porch,
  ("MainBedroom" && ARRAY['WalkInClstMB']) as walk_in_closets,
  null::boolean as double_vanity,
  null::text as __minor_area,
  null::text as __major_area,
  initcap("Subdivision") as subdivision,
  "ModificationTimestamp" as modification_timestamp,
  "AddressExportAllowed" as display_address,
  null::text as lake,
  initcap("SchoolDistrict") as school_district,
  initcap("HighSchool") as high_school,
  initcap("MiddleSchool") as middle_school,
  initcap("ElementarySchool") as elementary_school,
  (("GarageSpaces" && ARRAY['NoGarage']) is not true) as garage,
  "ListOfficeFullOfficeName" as office_name,
  null::text as complex,
  "Appliances" as "feature_appliances[]",
  "BasementType" as "feature_basement_type[]",
  "BathsHalf" as "feature_half_baths[]",
  "CommunityFeeIncludes" as "feature_community_includes[]",
  "Cooling" as "feature_cooling[]",
  "Design" as "feature_design[]",
  "ExteriorFeatures" as "feature_exterior_features[]",
  "FireplaceFeatures" as "feature_fireplace_features[]",
  "Furnished" as "feature_furnished[]",
  "GarageType" as "feature_garage_type[]",
  "GarageSpaces" as "feature_garage_spaces[]",
  "HOAFee" as "feature_hoa_fee",
  "HousingForOlderPersons" as "feature_housing_for_elderly",
  "Handicap" as "feature_accessibility[]",
  "Heating" as "feature_heating[]",
  "InteriorFeatures" as "feature_interior[]",
  "LaundryType" as "feature_laundry[]",
  "LocationTypes" as "feature_location[]",
  "LotDescription" as "feature_lot[]",
  "MainBedroom" as "feature_main_bedroom[]",
  "NewConstruction" as "feature_new_construction[]",
  "Ownership" as "feature_ownership",
  "Parking" as "feature_parking[]",
  "PetRestrictions" as "feature_pet_restrictions",
  "PetsAllowed" as "feature_pets_allowed",
  "PorchDeck" as "feature_porch_deck[]",
  "Roof" as "feature_roof[]",
  "TenantPays" as "feature_tenant_pays[]",
  "Type" as "feature_type[]",
  "Styles" as "feature_styles[]"
FROM
  trend."Property", trend.mutation as m
WHERE __class_name IN ('LOT', 'RES', 'RNT') and
  "ListingKey"::text = m.remote_id and m.last_transaction_completed_at is not null
;
