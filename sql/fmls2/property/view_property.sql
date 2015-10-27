-- View: fmls2.view_property

DROP VIEW IF EXISTS fmls2.view_property cascade;
CREATE OR REPLACE VIEW fmls2.view_property AS 
SELECT 
    'fmls2'::text AS mls,
    __removed_at,
    __removed_at IS NULL AS __active,
    __inserted_at,
    __modified_at,
    __geo_modified_at,
    __price_updated_at,
    __percent_reduced,
    __geo_geom,
    __geo_outlier,
    __price_history_times,
    __price_history_vals,
    __inserted_at AS age,
    __status_updated_at,
    __status_history_times,
    __status_history_vals,
    __geo_latitude AS latitude,
    __geo_longitude AS longitude,
    __geo_places,
    __photo_urls,
    __modified_at - "DOM" * '1 day'::interval as __list_date,
    last_transaction_completed_at,
    "DOM" as days_to_close,
    "CloseDate" as sold_date,
    "ClosePrice" as sold_price,
    CASE "Status"
        WHEN 'Leased' THEN 'leased'
        WHEN 'Sold'   THEN 'sold'
        ELSE
            CASE "PropertyType"
                WHEN 'Rental' THEN 'for_rent'
                ELSE 'for_sale'
            END
    END as listing_type,
    "Acres" AS acres,
    round(((COALESCE("BathsFull", 0)::text || '.'::text) || COALESCE("BathsHalf", 0))::numeric, 1) AS baths_total,
    "BedsTotal" AS beds,
    initcap("ListOfficeName") AS office_name,
    "ListPrice"::integer AS price,
    "MLSNumber" AS mlsnum,
    "Matrix_Unique_ID" AS listing_id,
        CASE "PropertyType"
            WHEN 'Res Developed Lots'::text THEN 'Residential Lots'::text
            WHEN 'Land/Farm'::text THEN 'Land'::text
            WHEN 'Multi-Dwelling Units'::text THEN 'Multi Family'::text
            WHEN 'Rental'::text THEN
            CASE "PropertySubType"
                WHEN 'Detached'::text THEN 'Townhouse'::text
                WHEN 'Attached'::text THEN 'Townhouse'::text
                WHEN 'Triplex'::text THEN 'Multi Family'::text
                WHEN 'Duplex'::text THEN 'Multi Family'::text
                WHEN 'Quadraplex'::text THEN 'Multi Family'::text
                WHEN 'Zero-Lot Line'::text THEN 'Townhouse'::text
                WHEN 'Single Fam Res'::text THEN 'Single Family'::text
                ELSE NULL::text
            END
            WHEN 'Residential Attached'::text THEN
            CASE "PropertySubType"
                WHEN 'Built As Townhouse'::text THEN 'Townhouse'::text
                WHEN 'Zero-Lot Line'::text THEN 'Townhouse'::text
                ELSE 'Condo'::text
            END
            WHEN 'Residential Detached'::text THEN 'Single Family'::text
            ELSE NULL::text
        END AS type,
    "PublicRemarksConsumerView" AS remarks,
    "SqFtTotal" AS square_feet,
    "Status" AS status,
    initcap("SubdComplex") AS subdivision,
    "VirtualTourLink" AS virtual_tour,
    "YearBuilt" AS year_built,
    "Status" = ANY (ARRAY['Contingent-Due Diligence'::text, 'Contingent-KO'::text, 'Contingent-Other'::text, 'Pending'::text, 'Pending Offer Approval'::text, 'Pending Sale'::text]) AS under_contract,
    "Status" AS under_contract_description,
    COALESCE(__image_count, "PhotoCount", 0) AS image_count,
    "LastChangeTimestamp" AS modification_timestamp,
    "AllowInternetDisplayYN" = true AS display_address,
    (((((COALESCE("StreetNumber", ''::text) || ' '::text) || COALESCE("StreetDirPrefix", ''::text)) || ' '::text) || COALESCE("StreetName", ''::text)) || ' '::text) || COALESCE("StreetSuffix", ''::text) AS address_line1,
    ("City" || ', GA '::text) || "PostalCode" AS address_line2,
    "City" || ', GA'::text AS city_st,
    "City" AS city,
    "PostalCode" AS zip,
    "CountyOrParish" AS county,
    COALESCE("FireplacesNum", 0) > 0 AS fireplace,
    "BasementDesc" && ARRAY['Daylight'::text, 'Full'::text, 'Partial'::text, 'Finished'::text, 'Unfinished'::text] AS basement,
    "BedroomDescription" && ARRAY['Bdrm On Main Lev'::text] AS bedroom_on_main,
    "BedroomDescription" && ARRAY['Mstr On Main'::text] AS master_on_main,
    "Exterior" && ARRAY['Deck'::text, 'Patio'::text, 'Walk out balcony'::text, 'Wrap-Around Porch'::text, 'Cov/Enclosed Porch'::text, 'Front Porch'::text] OR "RoomsDescription" && ARRAY['Screened Porch'::text] OR "DwellingRooms" && ARRAY['Screened Porch'::text] AS patio_deck_porch,
    "Interior" && ARRAY['Walk-In Closet(s)'::text] AS walk_in_closets,
    "Exterior" && ARRAY['Fenced Yard'::text] AS fenced_yard,
    "ParkingDesc" && ARRAY['1 Car Garage'::text, '2 Car Garage'::text, '3 Car Garage'::text, '4 + Car Garage'::text, 'Garage'::text] AS garage,
    "Stories" = '1 Story'::text AS one_story,
    "Amenities" && ARRAY['Swimming Pool'::text] OR "NeighborhoodAmenities" && ARRAY['Swimming Pool'::text] OR "Exterior" && ARRAY['Pool Screened/Enclosed'::text] OR "PoolonProperty" && ARRAY['Above Ground'::text, 'In Ground'::text, 'Heated Pool'::text] AS pool,
    "MasterBathFeatures" && ARRAY['Double Vanity'::text] AS double_vanity,
    "ElementarySchool" AS elementary_school,
    "MiddleSchool" AS middle_school,
    "HighSchool" AS high_school,
    "AnnualMasterAssocFeeDesc" AS feature_fee_assoc_annual_desc,
    "Amenities" AS "feature_amenities[]",
    "ApplianceDesc" AS "feature_appliances[]",
    "Architecture" AS "feature_architecture[]",
    "BasementDesc" AS "feature_basement[]",
    "BathroomDescription" AS "feature_bathroom[]",
    "BedroomDescription" AS "feature_bedroom_desc[]",
    "Boathouse" AS "feature_boathouse[]",
    "BuildingFaces" AS feature_buildingfaces,
    "ComplexBuildingAccess" AS "feature_complex_building_access[]",
    "ConstructionDesc" AS "feature_construction[]",
    "CoolingDescription" AS "feature_cooling[]",
    "DiningRoomDescription" AS "feature_dining_room[]",
    "Dock" AS "feature_dock[]",
    "EnergyFeatures" AS "feature_energy[]",
    "Exterior" AS "feature_exterior_features[]",
    "FireplaceFeaturesLocation" AS "feature_fireplace[]",
    "FloorDescription" AS "feature_floors[]",
    "FurnishedYN" AS feature_furnished,
    "HeatType" AS "feature_heat[]",
    "HomeWarranty" AS feature_home_warranty,
    "InitiationFee" AS feature_initiation_fee,
    "Interior" AS "feature_interior[]",
    "KitchenFeatures" AS "feature_kitchen[]",
    "LakeName" AS feature_lake_name,
    "LaundryFeaturesLocation" AS "feature_laundry[]",
    "LotDesc" AS "feature_lot_desc[]",
    "ApproximateLotSize" AS feature_lot_size,
    "MasterBathFeatures" AS "feature_master_bath[]",
    "MonthlyAssocFee" AS feature_monthly_association_fee,
    "NeighborhoodAmenities" AS "feature_neighborhood_amenities[]",
    "ParkingDesc" AS "feature_parking[]",
    "PetsAllowed" AS feature_pets_allowed,
    "PoolonProperty" AS feature_pool,
    "RoadType" AS "feature_road_type[]",
    "RoofType" AS "feature_roof[]",
    "RoomsDescription" AS "feature_rooms_description[]",
    "SearchArea" AS feature_area,
    "Setting" AS "feature_setting[]",
    "SewerDesc" AS "feature_sewer[]",
    "SpecialCircumstances" AS "feature_special_circumstances[]",
    "Stories" AS feature_stories,
    "Style" AS "feature_style[]",
    "TaxYear" AS feature_tax_year,
    "Taxes" AS feature_taxes,
    "UnitFaces" AS feature_unit_faces,
    "UnitLevels" AS feature_unit_levels,
    "UnitLocationDesc" AS "feature_unit_location[]"
FROM
    fmls2."Property" p, fmls2.mutation m
WHERE
    p."StateOrProvince" = 'Georgia'::text AND
    p."Matrix_Unique_ID"::text = m.remote_id AND
    m.last_transaction_completed_at is not null
;
