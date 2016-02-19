DROP VIEW IF EXISTS wmls2.view_property CASCADE;
CREATE OR REPLACE VIEW wmls2.view_property AS
SELECT
  'wmls2'::text as mls,
  __removed_at,
  (__removed_at IS NULL) as __active,
  __inserted_at  as age,
  __inserted_at,
  __modified_at,
  __price_updated_at,
  "VirtualTour" as virtual_tour,
  __price_history_times,
  __price_history_vals,
  __percent_reduced,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  __geo_geom,
  __geo_outlier,
  __geo_places,
  __photo_urls,
  "ListDate" as __list_date,
  last_transaction_completed_at,
  "DOM" as days_to_close,
  "CloseDate" as sold_date,
  "ClosePrice" as sold_price,
  CASE "PropertyType"
    WHEN 'Rentals' THEN
      CASE "Status"
        WHEN 'Sold' THEN 'leased'
        ELSE 'for_rent'
      END
    ELSE
      CASE "Status"
        WHEN 'Sold' THEN 'sold'
        ELSE 'for_sale'
      END
  END as listing_type,
  "Matrix_Unique_ID"::text as listing_id,
  "MLSNumber" as mlsnum,
  "Status" as status,
  "Status" IN ('Pending') as under_contract,
  "Status" as under_contract_description,
  coalesce("PhotoCount", 0) as image_count,
  "ListPrice" as price,
  "BedsTotal" as beds,
  CASE "PropertyType"
    WHEN 'Condo/Town' THEN 'Condo/Townhouse'
    WHEN 'Single Family' THEN 'Single Family'
    WHEN 'Lots/Land' THEN 'Land'
    WHEN 'Rental' THEN
      CASE "PropertySubType"
        WHEN 'Condo/Townhouse' THEN 'Condo/Townhouse'
        ELSE 'Single Family'
      END
    ELSE "PropertyType"
  END as type,
  "BathsTotal" as baths_total,
  "Remarks" as remarks,
  CASE
    WHEN "StreetNumDisplay" is null THEN ''
    ELSE "StreetNumDisplay"::text || ' '
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
  'VA'::text as state,
  initcap("City") || ', VA' || ' ' || "PostalCode" as address_line2,
  initcap("City") as city,
  initcap("City") || ', VA' as city_st,
  "PostalCode" as zip,
  null::text as county,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "SqFtTotal" as square_feet,
  "YearBuilt" as year_built,
  "Acres" as acres,
  "GarageYN" as garage,
  "BasementYN" as basement,
  "Fireplace" IS NOT NULL as fireplace,
  "FencedYN" as fenced_yard,
  ("Waterfront" = 'Yes') as waterfront,
  ("NumLevels" = 1.00) as one_story,
  "PoolYN" as pool,
  "Porch" IS NOT NULL as patio_deck_porch,
  "Interior" && ARRAY['Walk-in Closet'] as walk_in_closets,
  "Interior" && ARRAY['Double Vanity'] as double_vanity,
  null::text as __minor_area,
  null::text as __major_area,
  "Subdivision" as subdivision,
  "MatrixModifiedDT"  as modification_timestamp,
  "Address" as display_address,
  --"" as school_district,
  "ElementarySchool" as elementary_school,
  "MiddleSchool" as middle_school,
  "HighSchool" as high_school,
  "ListOfficeName" as office_name,
  CASE 
    WHEN "Interior" && ARRAY['1st Floor Master Bedroom'] THEN '1st Floor Master Bedroom'
    ELSE null::text
  END as feature_master_first_floor,
  "Fireplace" as feature_fireplaces,
  -- CASE __class_name
  --   WHEN 'F' THEN "FEAT20050315202052848323000000"
  --   ELSE null::text
  -- END as feature_insurance_required,
  "Attic" as "feature_attic[]",
  "LotDescription" as "feature_lot_description",
  "GolfFrontageYN" as feature_golf_frontage,
  "GolfFrontageView" as "feature_golf_frontage_type[]",
  "FeeDesc" as "feature_assoc_fee_init",
  "AddlHOAYN" as "feature_hoa_mandatory",
  "AddlHOAYN" as "feature_hoa",
  "FeeDesc" && ARRAY['Owners Association'] as "feature_hoa_fee",
  "FeePeriod" as "feature_hoa_fee_period",
  "Cooling" as "feature_cooling[]",
  "BasementType" as "feature_basement[]",
  "Waterfront" as "feature_waterfront[]",
  -- "" as feature_short_sale,
  -- CASE __class_name
  --   WHEN 'A' THEN "LIST_83"
  --   WHEN 'B' THEN "LIST_83"
  --   WHEN 'C' THEN "LIST_115"
  --   WHEN 'F' THEN null::text
  -- END as "feature_foreclosure",
  "LotDescription" as "feature_lot_info[]",
  "Exterior" as "feature_misc[]",
  "AdditionalFeeDescription" as "feature_fees_other",
  "ApplEquip" as "feature_equipment[]",
  "Ownership" as "feature_ownership",
  "NumParkingSpacesAvailable" as "feature_garage_spaces",
  "GarageType" as "feature_garage_parking[]",
  "Roof" as "feature_roof[]",
  "RentIncludes" as "feature_rent_includes[]",
  "NumLevels" as "feature_stories",
  -- "LIST_58" as feature_unit_level,
  "Siding" as "feature_exterior[]",
  "RoadFrontage" as "feature_road_frontage[]",
  "PastureAcres" as "feature_pasture_acres",
  "LeasePriceTerm" as "feature_rental_period[]",
  "RentalRestrictions" as "feature_lease_restrictions[]",
  "AnnualTaxes" as feature_taxes,
  "Deposit" as feature_security_deposit,
  "Interior" as "feature_other_rooms[]",
  "Units" as "feature_units",
  "Interior" as "feature_interior_features[]",
  "Exterior" as "feature_exterior_features[]",
  "WoodedAcres" as "feature_wooded_acres",
  "GarageType" as "feature_garage_type",
  "FeeIncludes" as "feature_hoa_includes[]",
  -- "GF20050117004939726033000000" as "feature_improvements[]",
  -- CASE __class_name
  --   WHEN 'B' THEN "LIST_91"
  --   ELSE null::text
  -- END as "feature_current_use",
  -- "GF20050117004952113165000000" as "feature_buildings[]",
  "Directions" as feature_directions,
  "DisabilityEquip" as "feature_accessibility_features",
  "Amenity" as "feature_community_amenities[]",
  -- "FEAT20050117002725034747000000" as "feature_easement",
  -- "GF20050117004925628440000000" as "feature_land_loc[]",
  -- CASE __class_name
  --   WHEN 'A' THEN "GF20041229014324261989000000"
  --   WHEN 'B' THEN "GF20050117000932711439000000"
  --   WHEN 'C' THEN "GF20050116220715780718000000"
  --   WHEN 'F' THEN "GF20050204151444844906000000"
  -- END as "feature_fencing[]",
  -- "FEAT20050117002433635596000000" as "feature_num_lots",
  "Flooring" as "feature_flooring[]",
  "BathsHalf" as "feature_baths_half",
  "Fireplace" as "feature_fireplace[]",
  "Heating" as "feature_heating[]",
  "Loading" as feature_garage_bays
FROM
  wmls2."Property" p, wmls2.mutation m
WHERE
  p."Matrix_Unique_ID"::text = m.remote_id AND
  m.last_transaction_completed_at IS NOT NULL
;

