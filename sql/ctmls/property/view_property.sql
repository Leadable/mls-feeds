-- View: ctmls.view_property

-- DROP VIEW ctmls.view_property;
DROP VIEW IF EXISTS ctmls.view_property CASCADE;
CREATE OR REPLACE VIEW ctmls.view_property AS 
SELECT 'ctmls'::text AS mls,
  __removed_at,
  __removed_at IS NULL AS __active,
  __class_name,
  __inserted_at AS age,
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
  matrix_unique_id AS listing_id,
  __geo_places,
  __photo_urls,
  __modified_at - "DOM" * '1 day'::interval as __list_date,
  last_transaction_completed_at,
  CASE "Status"
    WHEN 'Closed' THEN "DOM"
    ELSE null::integer
  END as days_to_close,
  "CloseDate" as sold_date,
  "ClosePrice" as sold_price,
  "MLSNumber" AS mlsnum,
  "Status" AS status,
  "Status" = 'Under Deposit'::text OR "Status" = 'Deposit - Continue To Show'::text AS under_contract,
      CASE "Status"
          WHEN 'Deposit - Continue To Show'::text THEN 'Under Deposit'::text
          WHEN 'Under Deposit'::text THEN 'Under Deposit'::text
          ELSE NULL::text
      END AS under_contract_description,
  "ListPrice" AS price,
  COALESCE(array_length(__photo_urls, 1), 0) as image_count,
  "BedsTotal" AS beds,
  round("BathsTotal", 1) AS baths_total,
  CASE "TransactionType"
      WHEN 'Rent'::text  THEN 'for_rent'::text
      WHEN 'Lease'::text THEN 'for_rent'::text
      ELSE 'for_sale'::text
  END as listing_type,
  CASE "PropertyType"
      WHEN 'Commercial/Investment'::text THEN 'Other'::text
      WHEN 'Lots and Vacant Land'::text THEN 'Lots & Land'::text
      WHEN 'Multi-Family'::text THEN 'Multi Family'::text
      WHEN 'Residential'::text THEN
      CASE "PropertySubType"
          WHEN 'Condo'::text THEN 'Condo'::text
          ELSE 'Single Family'::text
      END
      ELSE NULL::text
  END AS type,
  "Remarks" AS remarks,
  (
      CASE
          WHEN "StreetNumber" IS NULL THEN ''::text
          ELSE "StreetNumber" || ' '::text
      END ||
      CASE
          WHEN "StreetNoExtension" IS NULL THEN ''::text
          ELSE "StreetNoExtension" || ' '::text
      END) || "StreetName" AS address_line1,
  btrim(initcap("City")) AS city,
  (btrim(initcap("City")) || ', '::text) || 'CT'::text AS city_st,
  "PostalCode" AS zip,
  'CT'::text AS state,
  (btrim(initcap("City")) || ', CT '::text) || "PostalCode" AS address_line2,
  "CountyOrParish" AS county,
  __geo_modified_at,
  __geo_latitude AS latitude,
  __geo_longitude AS longitude,
  "SqFtTotal" AS square_feet,
  "YearBuilt" AS year_built,
  "Acres" AS acres,
  "BasementType" && ARRAY['Full Basement'::text, 'Full Basement With Hatchway'::text, 'Full Basement With Walk-Out'::text, 'Partial Basement'::text, 'Partial Basement With Hatchway'::text, 'Partial Basement With Walk-Out'::text, 'Shared Basement'::text] AS basement,
  "FireplacesNum" > 0 AS fireplace,
  "ExteriorFeature" && ARRAY['Fence'::text, 'Fenced Area'::text, 'Fenced Yard'::text] AS fenced_yard,
  "DirectWaterfrontYN" AS waterfront,
  "Style" && ARRAY['Ranch'::text] AS ranch_style,
  "PoolYN" AS pool,
  "DeckTypeDescription" IS NOT NULL AND "DeckTypeDescription" <> 'No Deck'::text OR "ExteriorFeature" && ARRAY['Porch-Enclosed'::text, 'Porch-Heated'::text, 'Porch'::text, 'Porch-Screened'::text, 'Porch-Wrap Around'::text, 'Deck'::text] AS patio_deck_porch,
  NULL::boolean AS walk_in_closets,
  NULL::boolean AS double_vanity,
  "VirtualTour" AS virtual_tour,
  NULL::text AS __minor_area,
  NULL::text AS __major_area,
  btrim(initcap("SubdivisionName")) AS subdivision,
  "LastChangeTimestamp" AS modification_timestamp,
  true AS display_address,
  NULL::text AS school_district,
  "ElementarySchool" AS elementary_school,
  "MiddleSchool" AS middle_school,
  "SeniorHighSchool" AS high_school,
  "NumberOfGarages" > 0 AS garage,
  btrim(initcap("ListOfficeName")) AS office_name,
  "HeatType" AS "feature_heat[]",
  "CoolingSystem" AS feature_cooling,
  "ExteriorFeature" AS "feature_exterior_features[]",
  "InteriorFeature" AS "feature_interior_features[]",
  "AppliancesIncluded" AS "feature_appliances[]",
  "DeckTypeDescription" AS feature_deck,
  "LotDescription" AS "feature_lot_description[]",
  "WaterfrontDescription" AS "feature_waterfront_description[]",
  "YearBuiltDesc" AS "feature_year_built_description[]",
  "ZoningDescription" AS "feature_zoning_description[]",
  "BasementType" AS "feature_basement_finish_description[]",
  "EnergyFeatures" AS "feature_energy[]",
  "HOAFeeIncludes" AS "feature_hoa_includes[]",
  "HOAFeeMo" AS feature_hoa_fee,
  "DevelopmentType" AS feature_development_type,
  "RentalTerms" AS feature_rental_type,
  "FuelType" AS "feature_fuel_type[]",
  "SewageSystem" AS "feature_sewage_system[]",
  "WaterSource" AS "feature_water_source[]",
  "ParkGarageType" AS "feature_garage_type[]",
  "Taxes" AS feature_taxes,
  "OtherTaxes" AS feature_taxes_other,
  "Flooring" AS "feature_flooring[]",
  "PoolDescription" AS feature_pool_type,
  "Style" AS "feature_style[]",
  "AreaNum" AS feature_market_area,
  "AmenitiesIncluded" AS "feature_amenities_included[]"
 FROM
  ctmls."Property" p, ctmls.mutation m
 WHERE
  p."matrix_unique_id"::text = m.remote_id AND
  m.last_transaction_completed_at is not null
;
