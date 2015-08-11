-- View: aarretsx.view_property

DROP VIEW aarretsx.view_property cascade;
CREATE OR REPLACE VIEW aarretsx.view_property AS 
 SELECT 'aarretsx'::text AS mls,
    "Property".__removed_at IS NULL AS __active,
    "Property".__removed_at,
    "Property".__inserted_at,
    "Property".__modified_at,
    last_transaction_completed_at,
    "Property".__price_updated_at,
    "Property".__price_history_times,
    "Property".__price_history_vals,
    "Property".__percent_reduced,
    "Property".__inserted_at AS age,
    "Property".__geo_geom,
    "Property".__geo_outlier,
    "Property".__geo_modified_at,
    "Property".__status_updated_at,
    "Property".__status_history_times,
    "Property".__status_history_vals,
    __photo_urls,
    CASE "Property"."Status"
        WHEN 'Active-Contingent'::text THEN 't'::boolean
        WHEN 'Active-LTC'::text        THEN 't'::boolean
        WHEN 'Pending'::text           THEN 't'::boolean
        ELSE 'f'::boolean
    END AS under_contract,
    CASE "Property"."Status"
        WHEN 'Active-Contingent'::text THEN "Property"."Status"
        WHEN 'Active-LTC'::text        THEN "Property"."Status"
        WHEN 'Pending'::text           THEN "Property"."Status"
        ELSE NULL::text
    END AS under_contract_description,
    CASE "Status"
        WHEN 'Rented'::text THEN 'leased'::text
        WHEN 'Sold'::text   THEN 'sold'::text
        ELSE
        CASE __class_name
            WHEN 'RENT'::text THEN 'for_rent'::text
            WHEN 'COMM'::text THEN
                CASE 'PropertyType'::text
                    WHEN 'Residential Lease'::text THEN 'for_rent'::text
                    WHEN 'Commercial Lease'::text  THEN 'for_rent'::text
                    ELSE 'for_sale'::text
                END
            ELSE 'for_sale'::text
        END
    END AS listing_type,
    CASE "Property"."SellingDate"
        WHEN '1800-01-01'::text THEN null::text
        ELSE "Property"."SellingDate"
    END AS sold_date,
    "Property"."SellingPrice" as sold_price,
    "Property"."VirtualTourURL" AS virtual_tour,
    "Property"."Status" AS status,
    "Property"."ListingRid"::text AS listing_id,
    "Property"."MLNumber"::text AS mlsnum,
    COALESCE("Property".__image_count, "Property"."PictureCount", 0) AS image_count,
    "Property"."ListingPrice" AS price,
        CASE COALESCE("Property"."SquareFootage", 0)
            WHEN 0 THEN NULL::numeric
            ELSE "Property"."ListingPrice" / "Property"."SquareFootage"::numeric
        END AS price_per_sqft,
    "Property"."Bedrooms" AS beds,
    "Property"."FullBathrooms" AS baths_total,
        CASE "Property"."PropertyType"
            WHEN 'Residential'::text THEN "Property"."PropertySubtype1"
            WHEN 'Rental'::text      THEN "Property"."PropertySubtype1"
            ELSE "Property"."PropertyType"
        END AS type,
    COALESCE("Property"."MarketingRemarks", ''::text) AS remarks,
    (((COALESCE("Property"."StreetNumber"::text, ''::text) ||
        CASE
            WHEN "Property"."StreetDirection" IS NULL THEN ' '::text
            WHEN "Property"."StreetDirection" = 'East'::text THEN ' E '::text
            WHEN "Property"."StreetDirection" = 'North'::text THEN ' N '::text
            WHEN "Property"."StreetDirection" = 'South'::text THEN ' S '::text
            WHEN "Property"."StreetDirection" = 'West'::text THEN ' W '::text
            WHEN "Property"."StreetDirection" = 'Northeast'::text THEN ' NE '::text
            WHEN "Property"."StreetDirection" = 'Northwest'::text THEN ' NW '::text
            WHEN "Property"."StreetDirection" = 'Southeast'::text THEN ' SE '::text
            WHEN "Property"."StreetDirection" = 'Southwest'::text THEN ' SW '::text
            ELSE NULL::text
        END) || "Property"."StreetName") ||
        CASE
            WHEN "Property"."StreetSuffix" IS NULL THEN ''::text
            ELSE ' '::text || "Property"."StreetSuffix"
        END) ||
        CASE
            WHEN "Property"."StreetPostDirection" IS NULL THEN ''::text
            WHEN "Property"."StreetPostDirection" = 'East'::text THEN ' E'::text
            WHEN "Property"."StreetPostDirection" = 'North'::text THEN ' N'::text
            WHEN "Property"."StreetPostDirection" = 'South'::text THEN ' S'::text
            WHEN "Property"."StreetPostDirection" = 'West'::text THEN ' W'::text
            WHEN "Property"."StreetPostDirection" = 'Northeast'::text THEN ' NE'::text
            WHEN "Property"."StreetPostDirection" = 'Northwest'::text THEN ' NW'::text
            WHEN "Property"."StreetPostDirection" = 'Southeast'::text THEN ' SE'::text
            WHEN "Property"."StreetPostDirection" = 'Southwest'::text THEN ' SW'::text
            ELSE NULL::text
        END AS address_line1,
    (((COALESCE("Property"."City", ''::text) || ', '::text) || COALESCE("Property"."State", 'MI'::text)) || ' '::text) || COALESCE("Property"."ZipCode", ''::text) AS address_line2,
    "Property"."City" AS city,
    COALESCE("Property"."State", 'MI'::text) AS state,
    "Property"."ZipCode" AS zip,
    "Property"."County" AS county,
    btrim(initcap("Property"."RESITNSP")) AS township,
    "Property".__geo_latitude AS latitude,
    "Property".__geo_longitude AS longitude,
    "Property"."SquareFootage" AS square_feet,
    "Property"."YearBuilt" AS year_built,
    "Property"."Acres" AS acres,
    "Property"."RESIBASE" && ARRAY['Full'::text, 'Michigan'::text, 'Partial'::text, 'Finished'::text, 'Full'::text, 'Partially Finished'::text] OR "Property"."RENTBASE" && ARRAY['Full'::text, 'Michigan'::text, 'Partial'::text, 'Finished'::text, 'Full'::text, 'Partially Finished'::text] AS basement,
    "Property"."RESIFIRP" IS NOT NULL OR "Property"."RENTFIRP" IS NOT NULL AS fireplace,
    "Property"."RESIOUTF" && ARRAY['Fenced'::text] OR "Property"."RENTOUTF" && ARRAY['Fenced'::text] AS fenced_yard,
    COALESCE("Property"."RESIWATF", "Property"."RENTWATF", "Property"."LOTLWATF") IS NOT NULL AS waterfront,
    "Property"."RESIGARG" && ARRAY['1 Car'::text, '1.5 Car'::text, '2 Car'::text, '2.5 Car'::text, '3+ Car'::text] OR "Property"."RENTGARG" && ARRAY['1 Car'::text, '1.5 Car'::text, '2 Car'::text, '2.5 Car'::text, '3+ Car'::text] AS garage,
    "Property"."RESISTTL" && ARRAY['Ranch'::text] OR "Property"."RENTSTTL" && ARRAY['Ranch'::text] AS ranch_style,
    "Property"."RESIPOLL" IS NOT NULL OR "Property"."RENTPOLL" IS NOT NULL AS pool,
    false AS patio_deck_porch,
    false AS walk_in_closets,
    false AS double_vanity,
    "Property"."Area" AS feature_mls_area,
    "Property"."HalfBathrooms" AS feature_half_baths,
    COALESCE("Property"."RESILAKE", "Property"."RENTLAKE", "Property"."LOTLLAKE") AS feature_lake,
    COALESCE("Property"."RESIWTRT", "Property"."RENTWTRT", "Property"."LOTLWTRT") AS "feature_water_extra[]",
    "Property"."PricePerSquareFoot" AS feature_price_per_sq_ft,
    COALESCE("Property"."RESIGARG", "Property"."RENTGARG") AS "feature_garage[]",
    COALESCE("Property"."RESIBASE", "Property"."RENTBASE") AS "feature_basement[]",
    COALESCE("Property"."RESICFAC", "Property"."RENTCFAC") AS "feature_community_facilities[]",
    COALESCE("Property"."RESICONC", "Property"."RENTCONC") AS "feature_construction[]",
    COALESCE("Property"."RESICTTP", "Property"."RENTCTTP", "Property"."LOTLCTTP") AS feature_municipality,
    COALESCE("Property"."RESIDRAP", "Property"."RENTDRAP") AS "feature_drapes[]",
    COALESCE("Property"."RESIFIRP", "Property"."RENTFIRP") AS "feature_fireplace[]",
    COALESCE("Property"."RESIFLOR", "Property"."RENTFLOR") AS "feature_floors[]",
    COALESCE("Property"."RESIHEAT", "Property"."RENTHEAT") AS "feature_heating[]",
    COALESCE("Property"."RESIIFEA", "Property"."RENTIFEA") AS "feature_interior_features[]",
    "Property"."RENTMINT" AS feature_min_lease,
    "Property"."RENTOFRN" AS "feature_owner_furnished[]",
    COALESCE("Property"."RESIOUTF", "Property"."RENTOUTF") AS "feature_exterior_features[]",
    "Property"."RENTPETS" AS feature_pets_ok,
    COALESCE("Property"."RESIPOLL", "Property"."RENTPOLL") AS "feature_pool[]",
    "Property"."RENTPRKS" AS feature_parking_spaces,
    "Property"."RENTRNTT" AS "feature_rental_type[]",
    COALESCE("Property"."RESISHOR", "Property"."RENTSHOR", "Property"."LOTLSHOR") AS feature_short_sale,
    COALESCE("Property"."RESISTTL", "Property"."RENTSTTL") AS "feature_style[]",
    COALESCE("Property"."RESISUMX", "Property"."RENTSUMX", "Property"."LOTLSUMX") AS feature_summer_taxes,
    COALESCE("Property"."RESITNSP", "Property"."RENTTNSP", "Property"."LOTLTNSP") AS feature_township,
    "Property"."RENTTRFN" AS "feature_tenant_furnished[]",
    COALESCE("Property"."RESIWINX", "Property"."RENTWINX", "Property"."LOTLWINX") AS feature_winter_taxes,
    "Property"."RESIAAMN" AS "feature_association_amenities[]",
    "Property"."RESIASFE" AS feature_association_fee,
    "Property"."RESIFEEP" AS feature_association_fee_freq,
    COALESCE("Property"."RESIAIRC", "Property"."RENTAIRC") AS "feature_air_conditioning[]",
    COALESCE("Property"."RESIAPPL", "Property"."RENTAPPL") AS "feature_appliances[]",
    COALESCE("Property"."RESINEWC", "Property"."RENTNEWC") AS feature_new_construction,
    COALESCE("Property"."RESIOWNS", "Property"."RENTOWNS", "Property"."LOTLOWNS") AS feature_ownership,
    COALESCE("Property"."RESIWATT", "Property"."RENTWATT", "Property"."LOTLWATT") AS "feature_water[]",
    "Property"."RESIDETA" = 'Yes'::text OR ("Property"."RENTRNTT" && ARRAY['Detached Condo'::text]) IS TRUE AS feature_detached,
    NULL::text AS __minor_area,
    NULL::text AS __major_area,
    NULL::text AS subdivision,
    NULL::text AS complex,
    COALESCE("Property"."RESIELEM"[1], "Property"."RENTELEM"[1]) AS elementary_school,
    COALESCE("Property"."RESIMIDD"[1], "Property"."RENTMIDD"[1]) AS middle_school,
    COALESCE("Property"."RESIHIGH"[1], "Property"."RENTHIGH"[1]) AS high_school,
    COALESCE("Property"."RESISCDT", "Property"."RENTSCDT") AS school_district,
    COALESCE("Property"."RESILAKE", "Property"."RENTLAKE", "Property"."LOTLLAKE") AS lake,
    "Property"."LastModifiedDateTime" AS modification_timestamp,
    true AS display_address
   FROM aarretsx."Property", aarretsx.mutation
  WHERE aarretsx."Property"."ListingRid"::text = aarretsx.mutation.remote_id and ("Property"."PropertyType" = ANY (ARRAY['Rental'::text, 'Residential'::text, 'Lots & Land'::text, 'Condo'::text, 'Income Property'::text])) AND "Property"."PropertySubtype1" <> 'Farm'::text AND "Property"."Association" = 'Ann Arbor Area MLS'::text
;
