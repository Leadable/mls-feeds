-- View: crmls.view_listings

-- DROP VIEW crmls.view_listings;

CREATE OR REPLACE VIEW crmls.view_listings AS 
 SELECT 'crmls'::text AS mls,
    p.__removed_at,
    p.__removed_at IS NULL AND p."Status" <> 'Closed Sale'::text AS __active,
    p.__inserted_at - '03:00:00'::interval AS age,
    p.__inserted_at,
    p.__modified_at,
    p.__price_updated_at,
    p."VirtualTour" AS virtual_tour,
    p."MLSID" AS feature_source_mls,
    p.__price_history_times,
    p.__price_history_vals,
    p.__percent_reduced,
    p.__geo_geom,
    p.__geo_outlier,
    p.__status_updated_at,
    p.__status_history_times,
    p.__status_history_vals,
    -- ( SELECT array_agg("Media"."MediaURL" ORDER BY "Media"."MediaOrder") AS array_agg
    --        FROM crmls."Media"
    --       WHERE "Media"."ClassSourceKey" = p."SourceKey" AND "Media"."MediaType" = 'Image'::text AND NOT (EXISTS ( SELECT 1
    --                FROM crmls."Media" m
    --               WHERE m."ClassKey" = "Media"."ClassKey" AND m."MediaType" = "Media"."MediaType" AND m."MediaOrder" = "Media"."MediaOrder" AND m."TimestampModified" > "Media"."TimestampModified"))
    --       GROUP BY "Media"."ClassSourceKey") AS __photo_urls,
    p."SourceKey" AS listing_id,
    p."MLnumber" AS mlsnum,
    p."Status" AS status,
    p."Status" = 'Backup Offer'::text OR p."Status" = 'Pending Sale'::text OR p."Status" = 'Leased'::text AS under_contract,
        CASE p."Status"
            WHEN 'Backup Offer'::text THEN 'Under Contract'::text
            WHEN 'Pending Sale'::text THEN 'Under Contract'::text
            WHEN 'Leased'::text THEN 'Under Contract'::text
            ELSE NULL::text
        END AS under_contract_description,
    CASE p."Status"
        WHEN 'Leased'::text      THEN 'leased'::text
        WHEN 'Closed Sale'::text THEN 'sold'::text
        ELSE
            CASE
                WHEN p.__class_name = 'Commercial'::text AND 'PropertyType'::text = 'Commercial Lease' THEN 'for_rent'::text
                WHEN p.__class_name = 'ResidentialLease'::text                                         THEN 'for_rent'::text
                ELSE 'for_sale'::text
            END
    END AS listing_type,
    COALESCE(p.__image_count, 0) AS image_count,
    p."ListPrice" AS price,
    p."Bedrooms" AS beds,
        CASE p.__class_name
            WHEN 'Land'::text THEN 'Lots & Land'::text
            WHEN 'ResidentialLease'::text THEN 'Rental'::text
            WHEN 'Residential'::text THEN
            CASE p."PropertySubType"
                WHEN 'TownHouse'::text THEN 'Townhouse'::text
                WHEN 'Townhouse'::text THEN 'Townhouse'::text
                WHEN 'Single Family Residence'::text THEN 'Single Family'::text
                WHEN 'Condominium'::text THEN 'Condominium'::text
                WHEN 'Loft'::text THEN 'Condominium'::text
                WHEN 'Studio'::text THEN 'Condominium'::text
                WHEN 'Cabin'::text THEN 'Single Family'::text
                ELSE 'Other'::text
            END
            WHEN 'Commercial'::text THEN 'Commercial'::text
            WHEN 'ResidentialIncome'::text THEN 'Multi Family'::text
            ELSE NULL::text
        END AS type,
    COALESCE(p."BathsFull", 0) + COALESCE(p."BathsTqtr", 0) AS baths_total,
    p."PropertyDescription" AS remarks,
    btrim(btrim((((((((((COALESCE(p."StreetNumber"::text, ''::text) || ' '::text) || initcap(COALESCE(p."StreetDirection", ''::text))) || ' '::text) || initcap(COALESCE(p."StreetName", ''::text))) || ' '::text) || initcap(COALESCE(p."StreetDirectionSuffix", ''::text))) || ' '::text) || initcap(COALESCE(p."StreetSuffix", ''::text))) || ' '::text) || COALESCE(p."UnitNumber", ''::text))) AS address_line1,
    (p."City" || ', CA'::text) ||
        CASE
            WHEN p."PostalCode" IS NOT NULL THEN ' '::text || p."PostalCode"
            ELSE ''::text
        END AS address_line2,
    p."City" AS city,
    'CA'::text AS state,
    p."City" || ', CA'::text AS city_st,
    p."PostalCode" AS zip,
    p."County" AS county,
    NULL::text AS township,
    p.__geo_modified_at,
    p.__geo_latitude::numeric AS latitude,
    p.__geo_longitude::numeric AS longitude,
    p."SquareFootageStructure" AS square_feet,
    p."LotSquareFootage" AS lot_sqft,
    p."YearBuilt" AS year_built,
    p."Acres" AS acres,
    p."Rooms" && ARRAY['Basement'::text] AS basement,
    p."Fireplace" IS NOT NULL AND (p."Fireplace" && ARRAY['None'::text]) IS NOT TRUE AS fireplace,
    p."Fencing" IS NOT NULL AND (p."Fencing" && ARRAY['None'::text]) IS NOT TRUE AS fenced_yard,
    p."Pool" IS NOT NULL AND (p."Pool" && ARRAY['None'::text]) IS NOT TRUE AS pool,
    p."Patio" IS NOT NULL AND (p."Patio" && ARRAY['None'::text]) IS NOT TRUE AS patio_deck_porch,
    p."Rooms" && ARRAY['Walk-In Closet'::text] AS walk_in_closets,
    NULL::text AS double_vanity,
    NULL::text AS __minor_area,
    NULL::text AS __major_area,
    ltrim("substring"(p."Area", strpos(p."Area", ')'::text) + 1)) AS feature_area,
    NULL::text AS subdivision,
    p."TimestampModified" AS modification_timestamp,
    COALESCE(p."InternetSendAddressYN", true) AS display_address,
    p."SchoolDistrict" AS school_district,
    p."SchoolElementary" AS elementary_school,
    p."SchoolJuniorHigh" AS middle_school,
    p."SchoolHigh" AS high_school,
    p."Parking" && ARRAY['Garage'::text] AS garage,
    p."LO_Name" AS office_name,
    NULL::text AS complex,
    p."AccessibilityFeatures" AS "feature_accessibility[]",
    p."Appliances" AS "feature_appliances[]",
    p."Association" AS "feature_association_features[]",
    p."AssociationDues1" AS feature_association_dues1,
    p."AssociationDues1Frequency" AS feature_association_dues1_freq,
    p."AssociationDues2" AS feature_association_dues2,
    p."AssociationDues2Frequency" AS feature_association_dues2_freq,
    p."AssociationName1" AS feature_association_name,
    p."AssociationYN" AS feature_association_y_n,
    p."AttachedStructure" AS feature_attached,
    p."BathsHalf" AS feature_baths_half,
    p."BathsOqtr" AS feature_baths_o_qtr,
    p."BathsTqtr" AS "feature_baths_T_qtr",
    p."BlockNumber" AS feature_block_number,
    p."CDOM" AS feature_days_on_market,
    p."CommonWalls" AS "feature_common_walls[]",
    p."CommunityFeatures" AS "feature_community_features[]",
    p."ConstructionMaterials" AS "feature_construction_materials[]",
    p."Cooling" AS "feature_cooling[]",
    p."DirectionFaces" AS "feature_direction_faces[]",
    p."DoorFeatures" AS "feature_doors[]",
    p."EatingArea" AS "feature_eating_area[]",
    p."EntryLocation" AS "feature_entry_location[]",
    p."ExteriorFeatures" AS "feature_exterior_features[]",
    p."Fencing" AS "feature_fencing[]",
    p."Fireplace" AS "feature_fireplace[]",
    p."Floor" AS "feature_floors[]",
    p."Furnished" AS feature_furnished,
    p."GarageAttached" AS feature_garage_attached,
    p."GreenEnergyEfficient" AS "feature_green_energy[]",
    p."Heating" AS "feature_heating[]",
    p."Improvements" AS feature_improvements,
    p."InteriorFeatures" AS "feature_interior_features[]",
    p."LandFeeLease" AS feature_land_fees,
    p."Laundry" AS "feature_laundry[]",
    p."LotDimensions" AS feature_lot_dimensions,
    p."LotFeatures" AS feature_lot_feat,
    p."LotSquareFootage" AS feature_lot_sqft,
    p."NumberCarportSpaces" AS feature_carport_spots,
    p."NumberGarageSpaces" AS feature_garage_spots,
    p."NumberParkingSpaces" AS feature_parking_spots,
    p."OtherStructures" AS "feature_other_structures[]",
    p."Parking" AS "feature_parking[]",
    p."Patio" AS "feature_patio[]",
    p."PetsAllowed" AS "feature_pets_allowed[]",
    p."Pool" AS "feature_pool[]",
    p."PropertySubType" AS feature_property_sub_type,
    p."Roofing" AS "feature_roofing[]",
    p."Rooms" AS "feature_rooms[]",
    p."SecurityFeatures" AS "feature_security[]",
    p."SeniorYN"::text AS feature_senior_y_n,
    p."Spa" AS "feature_spa[]",
    p."Stories" AS feature_stories,
    p."Stories" = 'One Level'::text AS one_level,
    p."StructuralCondition" AS "feature_structural_condition[]",
    p."Style" AS "feature_style[]",
    p."Utilities" AS "feature_utilities[]",
    p."View" AS "feature_view[]",
    p."WindowFeatures" AS "feature_windows[]",
    p."BuildingStatus" AS feature_building_status,
    p."Caprate" AS feature_cap_rate,
    p."CoolingYN" AS feature_cooling_y_n,
    p."Foundation" AS "feature_foundation[]",
    p."GrossMultiplier" AS feature_gross_multiplier,
    p."GrossOperatingIncome" AS feature_gross_operating_income,
    p."GrossScheduledIncome" AS feature_gross_scheduled_income,
    p."MonthlyGrossIncome" AS feature_monthly_gross_income,
    p."NetOperatingIncome" AS feature_net_operating_income,
    p."NumberUnits" AS feature_number_buildings,
    p."NumberElectricMeters" AS feature_number_electric_meters,
    p."NumberGasMeters" AS feature_number_gas_meters,
    p."NumberWaterMeters" AS feature_number_water_meters,
    p."OfficeSquareFootage" AS feature_office_sqft,
    p."OperatingExpense" AS feature_operating_expense,
    p."ParkName" AS feature_park_name,
    p."ParkingSpacesTotal" AS feature_parking_spaces,
    p."TotalExpenses" AS feature_expenses_total,
        CASE
            WHEN p."Type1Units" IS NOT NULL OR p."Type1Bedrooms" IS NOT NULL OR p."Type1Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type1Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type1Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type1Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type1,
        CASE
            WHEN p."Type2Units" IS NOT NULL OR p."Type2Bedrooms" IS NOT NULL OR p."Type2Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type2Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type2Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type2Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type2,
        CASE
            WHEN p."Type3Units" IS NOT NULL OR p."Type3Bedrooms" IS NOT NULL OR p."Type3Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type3Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type3Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type3Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type3,
        CASE
            WHEN p."Type4Units" IS NOT NULL OR p."Type4Bedrooms" IS NOT NULL OR p."Type4Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type4Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type4Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type4Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type4,
        CASE
            WHEN p."Type5Units" IS NOT NULL OR p."Type5Bedrooms" IS NOT NULL OR p."Type5Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type5Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type5Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type5Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type5,
        CASE
            WHEN p."Type6Units" IS NOT NULL OR p."Type6Bedrooms" IS NOT NULL OR p."Type6Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type6Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type6Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type6Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type6,
        CASE
            WHEN p."Type7Units" IS NOT NULL OR p."Type7Bedrooms" IS NOT NULL OR p."Type7Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type7Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type7Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type7Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type7,
        CASE
            WHEN p."Type8Units" IS NOT NULL OR p."Type8Bedrooms" IS NOT NULL OR p."Type8Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type8Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type8Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type8Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type8,
        CASE
            WHEN p."Type9Units" IS NOT NULL OR p."Type9Bedrooms" IS NOT NULL OR p."Type9Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type9Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type9Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type9Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type9,
        CASE
            WHEN p."Type10Units" IS NOT NULL OR p."Type10Bedrooms" IS NOT NULL OR p."Type10Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type10Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type10Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type10Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type10,
        CASE
            WHEN p."Type11Units" IS NOT NULL OR p."Type11Bedrooms" IS NOT NULL OR p."Type11Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type11Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type11Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type11Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type11,
        CASE
            WHEN p."Type12Units" IS NOT NULL OR p."Type12Bedrooms" IS NOT NULL OR p."Type12Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type12Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type12Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type12Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type12,
        CASE
            WHEN p."Type13Units" IS NOT NULL OR p."Type13Bedrooms" IS NOT NULL OR p."Type13Baths" IS NOT NULL THEN (((('Units: '::text || COALESCE(p."Type13Units", '-'::text)) || ' Beds: '::text) || COALESCE(p."Type13Bedrooms"::text, '-'::text)) || ' Baths: '::text) || COALESCE(p."Type13Baths"::text, '-'::text)
            ELSE NULL::text
        END AS feature_type13,
    p."PropertyType" AS feature_comm_type
   FROM crmls."Property" p
  WHERE p."State" = 'CA'::text
;