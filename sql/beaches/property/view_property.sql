 -- View: beaches.view_listings
-- DROP VIEW beaches.view_listings;
DROP VIEW IF EXISTS beaches.view_property CASCADE;
CREATE VIEW beaches.view_property AS 
 SELECT 'beaches'::text AS mls,
    "Property".__removed_at,
    "Property".__removed_at IS NULL AS __active,
    "Property".__inserted_at AS age,
    "Property".__inserted_at,
    "Property".__modified_at,
    "Property".__price_updated_at,
    "Property"."UNBRANDEDIDXVIRTUALTOUR" AS virtual_tour,
    "Property".__price_history_times,
    "Property".__price_history_vals,
    "Property".__percent_reduced,
    "Property".__status_updated_at,
    "Property".__status_history_times,
    "Property".__status_history_vals,
    "Property".__geo_geom,
    "Property".__geo_outlier,
    __photo_urls,
    "Property"."LIST_132"::timestamp as __list_date,
    "Property"."LIST_1" AS id,
    "Property"."LIST_1" AS listing_id,
    "Property"."LIST_105" AS mlsnum,
    "Property"."LIST_15" AS status,
    "Property"."LIST_12" AS sold_date,
    "Property"."LIST_23" AS sold_price,
    "Property"."LIST_15" = 'Active Contingent'::text OR "Property"."LIST_15" = 'Pending'::text OR "Property"."LIST_15" = 'Contingent'::text AS under_contract,
    CASE "Property"."LIST_15"
        WHEN 'Pending'::text THEN 'Pending'::text
        WHEN 'Active Contingent'::text THEN 'Active Contingent'::text
        WHEN 'Contingent'::text THEN 'Contingent'::text
        ELSE NULL::text
    END AS under_contract_description,
    CASE "Property".__class_name
        WHEN 'F'::text THEN
        CASE "Property"."LIST_15"
            WHEN 'Pending'::text           THEN 'for_rent'::text
            WHEN 'Active Contingent'::text THEN 'for_rent'::text
            WHEN 'Contingent'::text        THEN 'for_rent'::text
            WHEN 'Active'::text            THEN 'for_rent'::text
            WHEN 'Closed'::text            THEN 'leased'::text
            ELSE NULL::text
        END
        ELSE
        CASE "Property"."LIST_15"
            WHEN 'Pending'::text           THEN 'for_sale'::text
            WHEN 'Active Contingent'::text THEN 'for_sale'::text
            WHEN 'Contingent'::text        THEN 'for_sale'::text
            WHEN 'Active'::text            THEN 'for_sale'::text
            WHEN 'Closed'::text            THEN 'sold'::text
            ELSE NULL::text
        END
    END AS listing_type,
    COALESCE("Property".__image_count, "Property"."LIST_133", 0) AS image_count,
    "Property"."LIST_22" AS price,
    CASE __class_name
      WHEN 'A' THEN "LIST_125"
      WHEN 'F' THEN "LIST_125"
      WHEN 'B' THEN "LIST_125"
      WHEN 'C' THEN 0
    END as price_per_sqft,
    "Property"."LIST_66" AS beds,
        CASE
            WHEN "Property".__class_name IN ('A'::text, 'F'::text) THEN
            CASE "Property"."LIST_9"
                WHEN 'Condo Hotel'::text THEN 'Condo'::text
                WHEN 'Condo/Coop'::text THEN 'Condo'::text
                WHEN 'Mobile/Manufactured'::text THEN 'Single Family'::text
                WHEN 'Single Family Detached'::text THEN 'Single Family'::text
                WHEN 'Townhouse'::text THEN 'Townhouse'::text
                WHEN 'Villa'::text THEN 'Villa'::text
                ELSE 'Single Family'::text
            END
            WHEN "Property".__class_name = 'C'::text THEN 'Lots & Land'::text
            WHEN "Property".__class_name = 'B'::text THEN 'Multi-Family'::text
            ELSE 'Single Family'::text
        END AS type,
    "Property"."LIST_68" AS baths_total,
    "Property"."LIST_78" AS remarks,
    ((("Property"."LIST_31" || ' '::text) ||
        CASE
            WHEN "Property"."LIST_33" IS NULL THEN ''::text
            ELSE "Property"."LIST_33" || ' '::text
        END) || "Property"."LIST_34") ||
        CASE
            WHEN "Property"."LIST_37" IS NULL THEN ''::text
            ELSE ' '::text || "Property"."LIST_37"
        END AS address_line1,
    'FL'::text AS state,
    ((initcap("Property"."LIST_39") || ', FL'::text) || ' '::text) || "substring"("Property"."LIST_43", 1, 5) AS address_line2,
    initcap("Property"."LIST_39") AS city,
    initcap("Property"."LIST_39") || ', FL'::text AS city_st,
    "substring"("Property"."LIST_43", 1, 5) AS zip,
    "Property"."LIST_41" AS county,
    "Property".__geo_modified_at,
    "Property".__geo_latitude AS latitude,
    "Property".__geo_longitude AS longitude,
    "Property"."LIST_48" AS square_feet,
    "Property"."LIST_53" AS year_built,
    "Property"."LIST_57" AS acres,
        CASE "Property".__class_name
            WHEN 'A'::text THEN "Property"."GF20121128203155695117000000" && ARRAY['Garage - Attached'::text, 'Garage - Building'::text, 'Garage - Detached'::text, 'Assigned'::text]
            WHEN 'F'::text THEN "Property"."GF20121206203003854226000000" && ARRAY['Garage - Attached'::text, 'Garage - Building'::text, 'Garage - Detached'::text, 'Assigned'::text] OR "Property"."GF20121207034326840518000000" && ARRAY['Garage - 1 Car'::text, 'Garage - 2 Car'::text]
            ELSE NULL::boolean
        END AS garage,
    NULL::boolean AS basement,
        CASE "Property".__class_name
            WHEN 'A'::text THEN "Property"."GF20121126194243819854000000" && ARRAY['Fireplace(s)'::text]
            WHEN 'F'::text THEN "Property"."GF20121206203003177597000000" && ARRAY['Fireplace(s)'::text]
            ELSE NULL::boolean
        END AS fireplace,
        CASE "Property".__class_name
            WHEN 'A'::text THEN "Property"."GF20121126194243919925000000" && ARRAY['Fence'::text]
            WHEN 'F'::text THEN "Property"."GF20121206203002756811000000" && ARRAY['Fence'::text, 'Fenced Yard'::text]
            ELSE NULL::boolean
        END AS fenced_yard,
    "Property"."LIST_108" = 'Yes'::text AS waterfront,
    "Property"."LIST_51" = 1::numeric OR "Property"."LIST_64" = 1.0 AS one_story,
    ("Property"."GF20121128194138408449000000" && ARRAY['None'::text]) IS NOT TRUE AND "Property"."GF20121128194138408449000000" IS NOT NULL OR ("Property"."GF20121206202431279127000000" && ARRAY['None'::text]) IS NOT TRUE AND "Property"."GF20121206202431279127000000" IS NOT NULL OR "Property"."LIST_109" = 'Yes'::text OR "Property"."GF20121207034326840518000000" && ARRAY['Community Pool'::text, 'Private Pool'::text] OR "Property"."GF20121128203214100844000000" && ARRAY['Pool'::text] OR "Property"."GF20121206202841357230000000" && ARRAY['Pool'::text] OR "Property"."GF20121206202431812853000000" && ARRAY['Pool'::text] OR "Property"."GF20121206203004466211000000" && ARRAY['Pool'::text] AS pool,
    "Property"."GF20121126194243919925000000" && ARRAY['Deck'::text, 'Open Patio'::text, 'Open Porch'::text, 'Screen Porch'::text, 'Screened Balcony'::text, 'Covered Balcony'::text, 'Screened Patio'::text, 'Wrap Porch'::text] OR "Property"."GF20121206202429990607000000" && ARRAY['Deck'::text, 'Open Patio'::text, 'Open Porch'::text, 'Screen Porch'::text, 'Screened Balcony'::text, 'Covered Balcony'::text, 'Screened Patio'::text, 'Wrap Porch'::text] OR "Property"."GF20121206203002756811000000" && ARRAY['Deck'::text, 'Open Patio'::text, 'Open Porch'::text, 'Screen Porch'::text, 'Screened Balcony'::text, 'Covered Balcony'::text, 'Screened Patio'::text, 'Wrap Porch'::text] AS patio_deck_porch,
    "Property"."GF20121211024909824726000000" && ARRAY['Walk-in Closets'::text] OR "Property"."GF20121211025107658704000000" && ARRAY['Walk-in Closets'::text] OR "Property"."GF20121126194243819854000000" && ARRAY['Walk-in Closet'::text] OR "Property"."GF20121206203003177597000000" && ARRAY['Walk-in Closet'::text] OR "Property"."GF20121211025107658704000000" && ARRAY['Walk-in Closets'::text] OR "Property"."GF20121211025151415154000000" && ARRAY['Walk-in Closets'::text] AS walk_in_closets,
    NULL::boolean AS double_vanity,
    "Property"."LIST_86" AS __minor_area,
    NULL::text AS __major_area,
    "Property"."LIST_77" AS subdivision,
    "Property"."LIST_87" AS modification_timestamp,
    "Property"."VOWAddr" AS display_address,
    --"" as school_district,
    "Property"."LIST_85" AS elementary_school,
    "Property"."LIST_32" AS middle_school,
    "Property"."LIST_73" AS high_school,
    "Property".selling_office_name AS office_name,
    CASE __class_name
      WHEN 'A' THEN "GF20121128190237228652000000"
      WHEN 'B' THEN "GF20121206202432253492000000"
      WHEN 'C' THEN "GF20121206202841857761000000"
      WHEN 'F' THEN "GF20121206203004843709000000"
      ELSE null::text[]
    END as "feature_view[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121126194243720208000000"
      WHEN 'B' THEN "GF20121206202432319685000000"
      WHEN 'C' THEN "GF20121206202841938447000000"
      WHEN 'F' THEN "GF20121206203004910529000000"
    END as "feature_waterfront[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121126194243751321000000"
      ELSE null::text[]
    END as "feature_design[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121126194243781619000000"
      WHEN 'F' THEN "GF20121206203003026714000000"
      ELSE null::text[]
    END as "feature_furnished[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121126194243786373000000"
      WHEN 'B' THEN "GF20121206202430480207000000"
      WHEN 'F' THEN "GF20121206203003104396000000"
      ELSE null::text[]
    END AS "feature_heating[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121126194243819854000000"
      WHEN 'F' THEN "GF20121206203003177597000000"
      ELSE null::text[]
    END as "feature_interior_features[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121126194243835004000000"
      WHEN 'B' THEN "GF20121206202429699010000000"
      WHEN 'C' THEN null::text[]
      WHEN 'F' THEN null::text[]
    END as "feature_construction[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121126194243841543000000"
      WHEN 'B' THEN "GF20121206202430370061000000"
      WHEN 'C' THEN null::text[]
      WHEN 'F' THEN "GF20121206203002977441000000"
    END as "feature_flooring[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121126194243845568000000"
      WHEN 'B' THEN "GF20121206202431346706000000"
      WHEN 'C' THEN null::text[]
      WHEN 'F' THEN null::text[]
    END as "feature_roof[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121126194243879313000000"
      WHEN 'B' THEN null::text[]
      WHEN 'C' THEN null::text[]
      WHEN 'F' THEN "GF20121206203004310572000000"
    END as "feature_security[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121128194138408449000000"
      WHEN 'B' THEN "GF20121206202431279127000000"
      WHEN 'C' THEN null::text[]
      WHEN 'F' THEN null::text[]
    END as "feature_private_pool[]",
    CASE __class_name
      WHEN 'A' THEN "GF20121128194227449710000000"
      WHEN 'B' THEN null::text[]
      WHEN 'C' THEN null::text[]
      WHEN 'F' THEN "GF20130917171925858182000000"
    END as "feature_master_bedroom_bath[]",

    "LIST_120" as "feature_association_fee",
    "LIST_59" as "feature_governing_body",
    "LIST_112" as "feature_pets_allowed",
    CASE __class_name
      WHEN 'A' THEN "GF20121128203307544548000000"
      WHEN 'B' THEN "GF20121206202431535736000000"
      WHEN 'F' THEN "GF20121206203004209266000000"
      ELSE null::text[]
    END as "feature_restrictions[]"


FROM beaches."Property" JOIN beaches.mutation ON beaches."Property"."LIST_1"::text = beaches.mutation.remote_id::text AND beaches.mutation.last_transaction_completed_at is not null

UNION

 SELECT 'beaches'::text AS mls,
    __removed_at,
    __removed_at IS NULL AS __active,
    __inserted_at AS age,
    __inserted_at,
    __modified_at,
    __price_updated_at,
    "Virtu_1223" AS virtual_tour,
    __price_history_times,
    __price_history_vals,
    __percent_reduced,
    __status_updated_at,
    __status_history_times,
    __status_history_vals,
    __geo_geom,
    __geo_outlier,
    __photo_urls,
    __inserted_at AS __list_date,
    sysid::text as id,
    sysid::text as listing_id,
    "MLNumb_157" as mlsnum,
    "Status_246" as status,
    "CloseDa_62" as sold_date,
    null::numeric as sold_price,
    "Status_246" <> 'Active-Available' as under_contract,
    CASE "Status_246"
      WHEN 'Backup Contract-Call LA' THEN 'Backup Contract-Call LA'
      ELSE NULL::text
    END as under_contract_description,
    CASE "Property".__class_name
        WHEN '6'::text THEN 'for_rent'::text
        ELSE 'for_sale'::text
    END AS listing_type,
    COALESCE("ImageC_113"::integer, 0) as __image_count,
    "ListPr_137" as price,
    CASE
      WHEN "TA_261" IS NOT NULL AND "TA_261" > 0 THEN "ListPr_137" / "TA_261"
      ELSE NULL
    END as price_per_sqft,
    "Bedroom_25" as beds,
    CASE "Property_1"
      WHEN 'Single Family' THEN 'Single Family'
      WHEN 'Condo/Co-Op/Villa/Townhouse' THEN "TYPE_370"
      WHEN 'Residential Land/Boat Docks' THEN 'Lots & Land'
      WHEN 'Residential Rental' THEN "TYPE_588"
    END as type,
    "FBTH_92" as baths_total,
    "REM_214" as remarks,
    "Addres_881" as address_line1,
    'FL'::text AS state,
    "City_N_922" || ', FL ' || "ZipCode_10" as address_line2,
    "City_N_922" as city,
    "City_N_922" || ', FL' as city_st,
    "ZipCode_10" as zip,
    "CountyI_61" as county,
    __geo_modified_at,            
    __geo_latitude AS latitude,
    __geo_longitude AS longitude,
    "TA_261" as square_feet,
    "Age_314" as year_built,
    "ACRES_455" as acres,
    CASE
      WHEN "GARAG_102" IS NOT NULL OR "GARAG2_103" IS NOT NULL THEN true
      ELSE NULL::boolean
    END as garage,
    null::boolean as basement,
    "INTER_116" && ARRAY['Fireplace'] as fireplace,
    "EXTER_87" && ARRAY['Fence'] as fenced_yard,
    "WTRFR_295" = 'Yes' as waterfront,
    "DESGN2_68" && ARRAY['One Story'] as one_story,
    COALESCE("POOL_191", 'No') = 'Yes' as pool,
    "EXTER_87" && ARRAY['Patio','Screened Patio/Porch','Open Porch','Wood Decking','Wraparound Porch'] as patio_deck_porch,
    "INTER_116" && ARRAY['Walk-In Closets'] as walk_in_closets,
    "MSBTH_162" && ARRAY['Dual Sinks'] as double_vanity,
    "Area_19"::text AS __minor_area,
    NULL::text AS __major_area,
    "SN_235" as subdivision,
    "LastTr_131"::text as modification_timestamp,
    "Addre_1488" = 'Yes' display_address,
    "ELEM_S_886" as elementary_school,
    "MIDD_S_891" as middle_school,
    "SR_SCH_893" as high_school,
    "OFFICE_165" as office_name,
    "VIEW_285" as "feature_view[]",
    "WTRFR2_296" as "feature_waterfront[]",
    "DESGN2_68" as "feature_design[]",
    CASE WHEN "FURN_99" IS NOT NULL THEN ARRAY["FURN_99"] ELSE NULL END as "feature_furnished[]",
    "HEAT_110" as "feature_heating[]",
    CASE __class_name
      WHEN '1' THEN "INTER_116"
      WHEN '6' THEN "INTER_116"
      WHEN '2' THEN "INTER_341"
      ELSE NULL::text[]
    END as "feature_interior_features[]",
    "CONST_53" as "feature_construction[]",
    CASE __class_name
      WHEN '1' THEN "FLOOR_96"
      WHEN '6' THEN "FLOOR_96"
      WHEN '2' THEN "FLOOR_336"
      WHEN '3' THEN "FLOOR_400"
      ELSE NULL::text[]
    END as "feature_flooring[]",
    "ROOF_219" as "feature_roof[]",
    CASE __class_name
      WHEN '2' THEN "SECUR_364"
      WHEN '6' THEN "SECUR_584"
      ELSE NULL::text[]
    END as "feature_security[]",
    CASE __class_name
      WHEN '1' THEN "POOL2_192"
      WHEN '3' THEN "POOL2_424"
      WHEN '6' THEN "POOL2_576"
      ELSE NULL::text[]
    END as "feature_private_pool[]",
    CASE __class_name
      WHEN '1' THEN "MSBTH_162"
      WHEN '2' THEN "MSBTH_353"
      ELSE NULL::text[]
    END as "feature_master_bedroom_bath[]",
    "FEE_93" as "feature_association_fee",
    "HOA_111"[0] as "feature_governing_body",
    "PETS_A_181" as "feature_pets_allowed",
    null::text[] as "feature_restrictions[]"
FROM ragfl."Property" JOIN ragfl.mutation ON ragfl."Property".sysid::text = ragfl.mutation.remote_id::text AND ragfl.mutation.last_transaction_completed_at is not null
;  
