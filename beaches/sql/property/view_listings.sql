 -- View: beaches.view_listings
-- DROP VIEW beaches.view_listings;
DROP VIEW IF EXISTS beaches.view_listings CASCADE;
CREATE MATERIALIZED VIEW beaches.view_listings AS 
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
    "Property"."LIST_1" AS listing_id,
    "Property"."LIST_105" AS mlsnum,
    "Property"."LIST_15" AS status,
    "Property"."LIST_15" = 'Active Contingent'::text OR "Property"."LIST_15" = 'Pending'::text OR "Property"."LIST_15" = 'Closed'::text OR "Property"."LIST_15" = 'Contingent'::text AS under_contract,
    CASE "Property"."LIST_15"
        WHEN 'Pending'::text THEN 'Pending'::text
        WHEN 'Active Contingent'::text THEN 'Active Contingent'::text
        WHEN 'Contingent'::text THEN 'Contingent'::text
        WHEN 'Closed'::text THEN 'Closed'::text
        ELSE NULL::text
    END AS under_contract_description,
    COALESCE("Property".__image_count, "Property"."LIST_133", 0) AS image_count,
    "Property"."LIST_22" AS price,
    CASE __class_name
      WHEN 'A' THEN "LIST_125"
      WHEN 'F' THEN "LIST_125"
      WHEN 'B' THEN "LIST_125"
      WHEN 'C' THEN 0
    END as price_per_sqft,
    "Property"."LIST_66" AS beds,
        CASE "Property".__class_name
            WHEN 'A'::text THEN
            CASE "Property"."LIST_9"
                WHEN 'Condo Hotel'::text THEN 'Condo'::text
                WHEN 'Condo/Coop'::text THEN 'Condo'::text
                WHEN 'Mobile/Manufactured'::text THEN 'Single Family'::text
                WHEN 'Single Family Detached'::text THEN 'Single Family'::text
                WHEN 'Townhouse'::text THEN 'Townhouse'::text
                WHEN 'Villa'::text THEN 'Villa'::text
                ELSE 'Single Family'::text
            END
            WHEN 'F'::text THEN
            CASE "Property"."LIST_9"
                WHEN 'Apartment'::text THEN 'Rental Condo/Townhouse'::text
                WHEN 'Condo/Coop'::text THEN 'Rental Condo/Townhouse'::text
                WHEN 'Duplex/Triplex/Quadplex'::text THEN 'Rental Condo/Townhouse'::text
                WHEN 'Efficiency'::text THEN 'Rental Condo/Townhouse'::text
                WHEN 'Townhouse'::text THEN 'Rental Condo/Townhouse'::text
                WHEN 'Villa'::text THEN 'Rental Condo/Townhouse'::text
                WHEN 'Single Family Detached'::text THEN 'Rental Single Family'::text
                ELSE 'Rental Single Family'::text
            END
            WHEN 'C'::text THEN 'Lots & Land'::text
            WHEN 'B'::text THEN 'Multi-Family'::text
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


FROM beaches."Property"

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

    sysid::text as listing_id,
    "MLNumb_157" as mlsnum,
    "Status_246" as status,
    "Status_246" <> 'Active-Available' as under_contract,
    CASE "Status_246"
      WHEN 'Backup Contract-Call LA' THEN 'Backup Contract-Call LA'
      ELSE NULL::text
    END as under_contract_description,
    COALESCE("ImageC_113"::integer, 0) as __image_count,
    "ListPr_137" as price,
    CASE
      WHEN "TA_261" IS NOT NULL AND "TA_261" > 0 THEN "ListPr_137" / "TA_261"
      ELSE NULL
    END as price_per_sqft,
    "Bedroom_25" as beds,
    CASE "Property_1"
      WHEN 'Single Family' THEN 'Single Family'
      WHEN 'Condo/Co-Op/Villa/Townhouse' THEN
        CASE "TYPE_370"
          WHEN 'Townhouse' THEN 'Townhouse'
          WHEN 'Villa' THEN 'Villa'
          ELSE 'Condo'
        END
      WHEN 'Residential Land/Boat Docks' THEN 'Lots & Land'
      WHEN 'Residential Rental' THEN
        CASE "TYPE_588"
          WHEN 'Single' THEN 'Rental Single Family'
          ELSE 'Rental Condo/Townhouse'
        END
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
FROM ragfl."Property"
WITH DATA
;  

--ALTER TABLE beaches.view_listings OWNER TO u8vhnqc7ffdok2;
 
  
--
--
--  CASE __class_name
--    WHEN 'F' THEN "LIST_91"
--    WHEN 'A' THEN "LIST_91"
--    ELSE null::text
--  END as feature_master_first_floor,
--  CASE __class_name
--    WHEN 'F' THEN "LIST_95"
--    WHEN 'A' THEN "LIST_95"
--    ELSE null::text
--  END as feature_fireplaces,
--  CASE __class_name
--    WHEN 'F' THEN "FEAT20050315202052848323000000"
--    ELSE null::text
--  END as feature_insurance_required,
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229013951908212000000"
--    WHEN 'F' THEN "GF20050204151442817015000000"
--    ELSE null::text[]
--  END as "feature_attic[]",
--  "GF20050117004900905093000000" as "feature_lot_description",
--  CASE __class_name
--    WHEN 'B' THEN "LIST_89"
--    WHEN 'C' THEN "LIST_95"
--    WHEN 'A' THEN "LIST_96"
--    WHEN 'F' THEN
--      CASE
--        WHEN "GF20080717194649761951000000" is not null THEN 'Yes'
--        ELSE 'No'
--      END
--  END as feature_golf_frontage,
--  CASE __class_name
--    WHEN 'B' THEN "GF20080626200805511231000000"
--    WHEN 'C' THEN "GF20080722140021258646000000"
--    WHEN 'A' THEN "GF20080625182828701386000000"
--    WHEN 'F' THEN "GF20080717194649761951000000"
--  END as "feature_golf_frontage_type[]",
--  CASE __class_name
--    WHEN 'A' THEN "FEAT20041229154811048087000000"
--    WHEN 'B' THEN "FEAT20050117000935171000000000"
--    WHEN 'C' THEN null::text
--    WHEN 'F' THEN null::text
--  END as "feature_assoc_fee_init",
--  CASE __class_name
--    WHEN 'A' THEN "FEAT20041229154704918765000000"
--    WHEN 'B' THEN "FEAT20050117000934778271000000"
--    WHEN 'C' THEN null::text
--    WHEN 'F' THEN null::text
--  END as "feature_hoa_mandatory",
--  CASE __class_name
--    WHEN 'A' THEN "FEAT20080624145834273129000000"
--    WHEN 'B' THEN "FEAT20080626170825040476000000"
--    WHEN 'C' THEN "FEAT20080721142720371537000000"
--    WHEN 'F' THEN null::text
--  END as "feature_hoa",
--  CASE __class_name
--    WHEN 'A' THEN "FEAT20041229154739858947000000"
--    WHEN 'B' THEN "FEAT20050117000935140036000000"
--    WHEN 'C' THEN null::numeric 
--    WHEN 'F' THEN null::numeric
--  END as "feature_hoa_fee",
--  CASE __class_name
--    WHEN 'A' THEN "FEAT20041229154727118467000000"
--    WHEN 'B' THEN "FEAT20050117000934946675000000"
--    WHEN 'C' THEN null::text
--    WHEN 'F' THEN null::text
--  END as "feature_hoa_fee_period",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014247527913000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN "GF20050115071603868149000000"
--    WHEN 'F' THEN "GF20050204151443220906000000"
--  END as "feature_cooling[]",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229013839999312000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN "GF20050115071603634712000000"
--    WHEN 'F' THEN "GF20050204151442985934000000"
--  END as "feature_basement[]",

--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014408208394000000"
--    WHEN 'B' THEN "GF20050117000943833590000000"
--    WHEN 'C' THEN "GF20050115071612316860000000"
--    WHEN 'F' THEN "GF20050204151453653934000000"
--  END as "feature_waterfront[]",

--  "LIST_131" as feature_short_sale,
--  CASE __class_name
--    WHEN 'A' THEN "LIST_83"
--    WHEN 'B' THEN "LIST_83"
--    WHEN 'C' THEN "LIST_115"
--    WHEN 'F' THEN null::text
--  END as "feature_foreclosure",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014313407069000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN null::text[]
--    WHEN 'F' THEN "GF20050204151447843828000000"
--  END as "feature_lot_info[]",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229013742461586000000"
--    WHEN 'B' THEN "GF20050117000937814342000000"
--    WHEN 'C' THEN "GF20050116220728322237000000"
--    WHEN 'F' THEN "GF20050204151448215535000000"
--  END as "feature_misc[]",
--  CASE __class_name
--    WHEN 'A' THEN "FEAT20041229154825731292000000"
--    WHEN 'B' THEN "FEAT20050117000935294353000000"
--    WHEN 'C' THEN "FEAT20080721143212958578000000"
--    WHEN 'F' THEN null::text
--  END as "feature_fees_other",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014212366838000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN null::text[]
--    WHEN 'F' THEN "GF20050204151443955855000000"
--  END as "feature_equipment[]",
--  CASE __class_name
--    WHEN 'A' THEN "LIST_114"
--    WHEN 'B' THEN null::text
--    WHEN 'C' THEN "LIST_114"
--    WHEN 'F' THEN null::text
--  END as "feature_ownership",
--  CASE __class_name
--    WHEN 'A' THEN "LIST_72"
--    WHEN 'B' THEN null::text
--    WHEN 'C' THEN null::text
--    WHEN 'F' THEN "LIST_72"
--  END as "feature_garage_spaces",
--  "GF20050115071609617129000000" as "feature_garage_parking[]",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229013821919391000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN "GF20050115071609849847000000"
--    WHEN 'F' THEN "GF20050204151449982522000000"
--  END as "feature_roof[]",
--  "GF20050406004155042867000000" as "feature_rent_includes[]",
--  CASE __class_name
--    WHEN 'A' THEN "LIST_94"
--    WHEN 'B' THEN null::text
--    WHEN 'C' THEN "LIST_64"::text
--    WHEN 'F' THEN "LIST_94"
--  END as "feature_stories",
--  "LIST_58" as feature_unit_level,
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229013753121632000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN "GF20050115071605146783000000"
--    WHEN 'F' THEN "GF20050204151444571314000000"
--  END as "feature_exterior[]",
--  "GF20050117004911816459000000" as "feature_road_frontage[]",
--  "FEAT20050117002624225041000000" as "feature_pasture_acres",
--  "GF20050204152119751542000000" as "feature_rental_period[]",
--  "GF20050406003207215171000000" as "feature_lease_restrictions[]",
--  "LIST_45" as feature_taxes,
--  "FEAT20050315201358758736000000" as feature_security_deposit,
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014013701846000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN null::text[] 
--    WHEN 'F' THEN "GF20050204151449046168000000"
--  END as "feature_other_rooms[]",
--  CASE __class_name
--    WHEN 'C' THEN "LIST_65"
--    ELSE null::numeric
--  END as "feature_units",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229013931419127000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN null::text[]
--    WHEN 'F' THEN "GF20050204151447210443000000"
--  END as "feature_interior_features[]",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229013915363344000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN null::text[]
--    WHEN 'F' THEN "GF20050204151443583774000000"
--  END as "feature_exterior_features[]",
--  "FEAT20050117002604482603000000" as "feature_wooded_acres",
--  "LIST_71" as "feature_garage_type",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014343235216000000"
--    WHEN 'B' THEN null::text[]
--    WHEN 'C' THEN null::text[]
--    WHEN 'F' THEN "GF20050117005344507744000000"
--  END as "feature_hoa_includes[]",
--  "GF20050117004939726033000000" as "feature_improvements[]",
--  CASE __class_name
--    WHEN 'B' THEN "LIST_91"
--    ELSE null::text
--  END as "feature_current_use",
--  "GF20050117004952113165000000" as "feature_buildings[]",
--  "LIST_82" as feature_directions,
--  CASE __class_name
--    WHEN 'A' THEN "FEAT20041229154901834548000000"
--    WHEN 'B' THEN null::text
--    WHEN 'C' THEN "FEAT20050115071608697420000000"
--    WHEN 'F' THEN "FEAT20050204151448410165000000"
--  END as "feature_accessibility_features",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014355704840000000"
--    WHEN 'B' THEN "GF20050117000926864914000000"
--    WHEN 'C' THEN "GF20050115071602610330000000"
--    WHEN 'F' THEN "GF20050204151442011011000000"
--  END as "feature_community_amenities[]",
--  "FEAT20050117002725034747000000" as "feature_easement",
--  "GF20050117004925628440000000" as "feature_land_loc[]",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014324261989000000"
--    WHEN 'B' THEN "GF20050117000932711439000000"
--    WHEN 'C' THEN "GF20050116220715780718000000"
--    WHEN 'F' THEN "GF20050204151444844906000000"
--  END as "feature_fencing[]",
--  "FEAT20050117002433635596000000" as "feature_num_lots",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014003186266000000"
--    WHEN 'B' THEN null::text[] 
--    WHEN 'C' THEN "GF20050115071605734702000000"
--    WHEN 'F' THEN "GF20050204151445159144000000"
--  END as "feature_flooring[]",
--  "LIST_69" as "feature_baths_half",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014226330852000000"
--    WHEN 'B' THEN null::text[] 
--    WHEN 'C' THEN null::text[]
--    WHEN 'F' THEN "GF20050204151445597131000000"
--  END as "feature_fireplace[]",
--  CASE __class_name
--    WHEN 'A' THEN "GF20041229014235985855000000"
--    WHEN 'B' THEN null::text[] 
--    WHEN 'C' THEN "GF20050115071607356724000000"
--    WHEN 'F' THEN "GF20050204151446784062000000"
--  END as "feature_heating[]",
--  "LIST_122" as feature_garage_bays
--
