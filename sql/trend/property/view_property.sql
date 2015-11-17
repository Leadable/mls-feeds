DROP VIEW IF EXISTS trend.view_property CASCADE;
CREATE OR REPLACE VIEW trend.view_property AS
SELECT
  'trend'::text as mls,
  p.__removed_at,
  (p.__removed_at is null AND p."LocaleListingStatus" NOT IN ('EXPIRED', 'WITHDRAWN')) as __active,
  p.__inserted_at as age,
  p.__inserted_at,
  p.__modified_at,
  last_transaction_completed_at,
  p.__geo_geom,
  p.__geo_outlier,
  p.__geo_places,
  p.__price_updated_at,
  p.__price_history_times,
  p.__price_history_vals,
  p.__percent_reduced,
  p.__status_updated_at,
  p.__status_history_times,
  p.__status_history_vals,
  p.__photo_urls,
  CASE media."PropMimeType"
    WHEN 'URL' THEN media."PropMediaURL"
    ELSE null::text
  END as virtual_tour,
  p."ListingKey"::text as listing_id,
  p."ListingID" as mlsnum,
  p."SourceCreationTimestamp" as __list_date,
  null::integer as days_to_close,
  "CloseDate" as sold_date, -- sold data not available
  "ClosePrice" as sold_price,
  p."LocaleListingStatus" as status,
  false as comments_disabled,
  p."LocaleListingStatus" IN ('PENDING', 'CONTRACT') as under_contract,
  CASE p."LocaleListingStatus"
    WHEN 'PENDING'  THEN 'Under Contract'
    WHEN 'CONTRACT' THEN 'Under Contract'
    ELSE null::text
  END as under_contract_description,
  CASE p.__class_name
    WHEN 'RNT' THEN 'for_rent'
    WHEN 'COM' THEN
      CASE "AnnualLeasePrice"
        WHEN null THEN 'for_sale'
        ELSE 'for_rent'
      END
    ELSE 'for_sale'
  END as listing_type,
  coalesce("TotalPhotos", 0) as image_count,
  "ListPrice" as price,
  "Beds" as beds,
  "BathsFull" as baths_total,
  CASE "PropertyType"
    WHEN 'Residential' THEN
    CASE "Type"
      WHEN 'Detached'      THEN 'Single Family'
      WHEN 'Semi-Detached' THEN 'Row/Townhouse'
      WHEN 'Row/Townhous'  THEN 'Row/Townhouse'
      WHEN 'Mobile'        THEN 'Mobile'
      WHEN 'Unit/Flat'     THEN 'Apartment'
      ELSE 'Single Family'
    END
    WHEN 'Residential Rentals' THEN
    CASE "Type"
      WHEN 'Detached'      THEN 'Single Family'
      WHEN 'Semi-Detached' THEN 'Row/Townhouse'
      WHEN 'Row/Townhous'  THEN 'Row/Townhouse'
      WHEN 'Mobile'        THEN 'Mobile'
      WHEN 'Unit/Flat'     THEN 'Apartment'
      ELSE 'Single Family'
    END
    WHEN 'Lot-Land'       THEN 'Lots & Land'
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
  initcap(p."County") as county,
  null::text as township,
  p.__geo_modified_at,
  p.__geo_latitude as latitude,
  p.__geo_longitude as longitude,
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
  "Styles" as "feature_styles[]",
  null::text as year_built
FROM
  trend."Property" p
  LEFT OUTER JOIN trend."Media" media ON "ListingKey" = media."PropObjectKey" AND media.__removed_at IS NULL,
  trend.mutation as m
WHERE
  p.__class_name IN ('LOT', 'RES', 'RNT') and
  "ListingKey"::text = m.remote_id and
  m.last_transaction_completed_at is not null
;
