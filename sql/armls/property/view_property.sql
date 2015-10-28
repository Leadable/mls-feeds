-- View: armls.view_property

DROP VIEW IF EXISTS armls.view_property CASCADE;
CREATE OR REPLACE VIEW armls.view_property AS 
 SELECT 'armls'::text AS mls,
    __removed_at,
    (__removed_at IS NULL AND "LIST_15" NOT IN ('Cancelled', 'Deleted', 'Expired')) AS __active,
    __inserted_at AS age,
    __inserted_at,
    __modified_at,
    __price_updated_at,
    "UNBRANDEDIDXVIRTUALTOUR" AS virtual_tour,
    __price_history_times,
    __price_history_vals,
    __percent_reduced,
    __status_updated_at,
    __status_history_times,
    __status_history_vals,
    __photo_urls,
    __geo_geom,
    __geo_outlier,
    __geo_places,
    "LIST_132" as __list_date,
    last_transaction_completed_at,
    date_part('day', "LIST_12"::timestamp without time zone - "LIST_132"::timestamp without time zone)::integer as days_to_close,
    "LIST_12" as sold_date,
    "LIST_23" as sold_price,
    CASE __class_name
        WHEN 'B'::text THEN
        CASE "LIST_15"
            WHEN 'Pending'::text           THEN 'for_rent'::text
            WHEN 'Temp Off Market'::text   THEN 'for_rent'::text
            WHEN 'Active'::text            THEN 'for_rent'::text
            WHEN 'Closed'::text            THEN 'leased'::text
            ELSE NULL::text
        END
        ELSE
        CASE "LIST_15"
            WHEN 'Pending'::text           THEN 'for_sale'::text
            WHEN 'Temp Off Market'::text   THEN 'for_sale'::text
            WHEN 'Active'::text            THEN 'for_sale'::text
            WHEN 'Closed'::text            THEN 'sold'::text
            ELSE NULL::text
        END
    END AS listing_type,
    "LIST_105" AS listing_id,
    "LIST_105" AS mlsnum,
    "LIST_15" AS status,
        CASE
            WHEN "LIST_19" = 'UCB (Under Contract-Backups)'::text THEN true
            WHEN "LIST_19" = 'No'::text THEN false
            ELSE false
        END AS under_contract,
    "LIST_19" AS under_contract_description,
    COALESCE("LIST_133", 0) AS image_count,
    "LIST_22" AS price,
    "LIST_66" AS beds,
        CASE __class_name
            WHEN 'A'::text THEN
            CASE
                WHEN "LIST_9" = 'Single Family - Detached'::text THEN 'Single Family'::text
                WHEN "LIST_9" = 'Patio Home'::text THEN 'Condo/Townhouse'::text
                WHEN "LIST_9" = 'Mfg/Mobile Housing'::text THEN 'Other'::text
                WHEN "LIST_9" = 'Modular/Pre-Fab'::text THEN 'Other'::text
                WHEN "LIST_9" = 'Gemini/Twin Home'::text THEN 'Condo/Townhouse'::text
                WHEN "LIST_9" = 'Loft Style'::text THEN 'Condo/Townhouse'::text
                WHEN "LIST_9" = 'Apartment Style/Flat'::text THEN 'Condo/Townhouse'::text
                WHEN "LIST_9" = 'Townhouse'::text THEN 'Condo/Townhouse'::text
                ELSE 'Other'::text
            END
            WHEN 'B'::text THEN 'Rental'::text
            WHEN 'C'::text THEN 'Lots & Land'::text
            WHEN 'F'::text THEN 'Other'::text
            ELSE 'Other'::text
        END AS type,
    "LIST_67" AS baths_total,
    "LIST_78" AS remarks,
    ((("LIST_31" || ' '::text) ||
        CASE
            WHEN "LIST_33" IS NULL THEN ''::text
            ELSE "LIST_33" || ' '::text
        END) || "LIST_34") ||
        CASE
            WHEN "LIST_37" IS NULL THEN ''::text
            ELSE ' '::text || "LIST_37"
        END AS address_line1,
    'AZ'::text AS state,
    ((initcap("LIST_39") || ', AZ'::text) || ' '::text) || "substring"("LIST_43", 1, 5) AS address_line2,
    initcap("LIST_39") AS city,
    initcap("LIST_39") || ', AZ'::text AS city_st,
    "substring"("LIST_43", 1, 5) AS zip,
    "LIST_41" AS county,
    __geo_modified_at,
    __geo_latitude AS latitude,
    __geo_longitude AS longitude,
    "LIST_48" AS square_feet,
    "LIST_53" AS year_built,
    "LIST_57" AS acres,
    "VOWAddr" AS display_address,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20110510163155967817000000" > 0::numeric
            WHEN 'B'::text THEN "FEAT20110510165207213719000000" > 0::numeric
            ELSE NULL::boolean
        END AS garage,
    "GF20100119182524591971000000" && ARRAY['Finished'::text, 'Full'::text, 'Partial'::text, 'Unfinished'::text, 'Walkout'::text] OR "GF20100119211058576575000000" && ARRAY['Finished'::text, 'Full'::text, 'Partial'::text, 'Unfinished'::text, 'Walkout'::text] AS basement,
    "GF20070913202500135759000000" && ARRAY['1 Fireplace'::text, '2 Fireplace'::text, '3+ Fireplace'::text, 'Exterior Fireplace'::text, 'Fireplace Family Rm'::text, 'Fireplace Living Rm'::text, 'Fireplace Master Bdr'::text, 'Freestnd Fireplace'::text, 'Gas Fireplace'::text, 'Two Way Fireplace'::text] OR "GF20071116203455656746000000" && ARRAY['1 Fireplace'::text, '2 Fireplace'::text, '3+ Fireplace'::text, 'Exterior Fireplace'::text, 'Fireplace Family Rm'::text, 'Fireplace Living Rm'::text, 'Fireplace Master Bdr'::text, 'Freestnd Fireplace'::text, 'Gas Fireplace'::text, 'Two Way Fireplace'::text] AS fireplace,
    ("GF20070914134205261619000000" && ARRAY['None'::text]) IS NOT TRUE AND "GF20070914134205261619000000" IS NOT NULL OR ("GF20071116203455542805000000" && ARRAY['None'::text]) IS NOT TRUE AND "GF20071116203455542805000000" IS NOT NULL OR ("GF20071117040445786956000000" && ARRAY['None'::text]) IS NOT TRUE AND "GF20071117040445786956000000" IS NOT NULL AS fenced_yard,
    "GF20070914134222636466000000" && ARRAY['Waterfront Lot'::text] OR "GF20071116203458450967000000" && ARRAY['Waterfront Lot'::text] OR "GF20071117035530068525000000" && ARRAY['Waterfront'::text] AS waterfront,
    "LIST_68" = 1 OR "LIST_68"::numeric = 1.0 AS one_story,
    "LIST_73" = 'Both Private & Community'::text OR "LIST_73" = 'Community'::text OR "LIST_73" = 'Private'::text AS pool,
    "LIST_73" AS feature_pool_type,
        CASE __class_name
            WHEN 'A'::text THEN "GF20070913202500135727000000"
            WHEN 'B'::text THEN "GF20071116203459550472000000"
            ELSE NULL::text[]
        END AS "feature_pool_features[]",
    "GF20070913202500131436000000" && ARRAY['Balcony/Deck(s)'::text, 'Covered Patio(s)'::text, 'Patio'::text, 'Screened in Patio(s)'::text] OR "GF20071116203455097260000000" && ARRAY['Balcony/Deck(s)'::text, 'Covered Patio(s)'::text, 'Patio'::text, 'Screened in Patio(s)'::text] AS patio_deck_porch,
    "GF20070913202500135794000000" && ARRAY['Mstr Bdr Walkin Clst'::text, 'Othr Bdr Walkin Clst'::text] OR "GF20071116203453881181000000" && ARRAY['Mstr Bdr Walkin Clst'::text, 'Othr Bdr Walkin Clst'::text] AS walk_in_closets,
    "GF20070913202500135695000000" && ARRAY['Double Sinks'::text] OR "GF20071116203457617516000000" && ARRAY['Double Sinks'::text] AS double_vanity,
    "LIST_131" AS subdivision,
    "LIST_87" AS modification_timestamp,
    NULL::text AS __minor_area,
    NULL::text AS __major_area,
    "LIST_111" AS elementary_school_distrct,
    "LIST_112" AS high_school_district,
    "LIST_108" AS elementary_school,
    "LIST_109" AS middle_school,
    "LIST_110" AS high_school,
    listing_office_name AS office_name,
    listing_member_name AS member_name,
    "LIST_82" AS feature_directions,
        CASE __class_name
            WHEN 'A'::text THEN "GF20080207202713312731000000"
            WHEN 'B'::text THEN "GF20100125194441384838000000"
            WHEN 'C'::text THEN "GF20080207202752466102000000"
            ELSE NULL::text[]
        END AS "feature_special_listing_conditions[]",
    "GF20080207202713312731000000" && ARRAY['Short Sale Aprvl Req'::text, 'Lender Approved SS'::text, 'Previously Aprved SS'::text] OR "GF20080207202752466102000000" && ARRAY['Short Sale Aprvl Req'::text, 'Lender Approved SS'::text, 'Previously Aprved SS'::text] AS feature_short_sale,
    "GF20080207202713312731000000" && ARRAY['Lender Owned/REO'::text, 'Pre-Foreclosure'::text] OR "GF20080207202752466102000000" && ARRAY['Lender Owned/REO'::text, 'Pre-Foreclosure'::text] AS feature_foreclosure,
    "GF20080207202713312731000000" && ARRAY['Age Rstrt (See Rmks)'::text, 'Age Restricted'::text] OR "GF20100125194441384838000000" && ARRAY['Age Rstrt (See Rmks)'::text, 'Age Restricted'::text] AS feature_senior_housing,
        CASE __class_name
            WHEN 'A'::text THEN "GF20121130191428826666000000"
            WHEN 'B'::text THEN "GF20121130192114417371000000"
            ELSE NULL::text[]
        END AS "feature_master_bedroom[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20070913202500135759000000"
            WHEN 'B'::text THEN "GF20071116203455656746000000"
            ELSE NULL::text[]
        END AS "feature_fireplaces[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20070913202500131436000000"
            WHEN 'B'::text THEN "GF20071116203455097260000000"
            ELSE NULL::text[]
        END AS "feature_exterior_features[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20070914134222636466000000"
            WHEN 'B'::text THEN "GF20071116203458450967000000"
            ELSE NULL::text[]
        END AS "feature_property_description[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20080207210325432062000000"
            WHEN 'B'::text THEN "GF20071116203458325054000000"
            WHEN 'C'::text THEN "GF20071117035530068525000000"
            ELSE NULL::text[]
        END AS "feature_community_features[]",
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20080207221436220503000000"
            WHEN 'B'::text THEN NULL::numeric
            WHEN 'C'::text THEN "FEAT20120127220433216437000000"
            ELSE NULL::numeric
        END AS feature_assoc_transfer_fee,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20070914205338315648000000"
            WHEN 'B'::text THEN "FEAT20071116192529063673000000"
            WHEN 'C'::text THEN "FEAT20120127220235522942000000"
            ELSE NULL::text
        END AS feature_hoa,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20070914205202933704000000"
            WHEN 'B'::text THEN "FEAT20110412222540943628000000"
            WHEN 'C'::text THEN "FEAT20120127220034630438000000"
            ELSE NULL::text
        END AS feature_hoa_mandatory,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20070914205229919954000000"
            WHEN 'B'::text THEN "FEAT20120127181504522660000000"
            WHEN 'C'::text THEN "FEAT20071201025833384891000000"
            ELSE NULL::numeric
        END AS feature_hoa_fee,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20110412230150339431000000"
            WHEN 'B'::text THEN "FEAT20120127181733696280000000"
            WHEN 'C'::text THEN "FEAT20120127222639346148000000"
            ELSE NULL::text
        END AS feature_hoa_fee_period,
        CASE __class_name
            WHEN 'A'::text THEN "GF20070914134415075069000000"
            ELSE NULL::text[]
        END AS "feature_hoa_rules_info[]",
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20110412225501566841000000"
            WHEN 'C'::text THEN "FEAT20120127222612720056000000"
            ELSE NULL::numeric
        END AS feature_hoa_2_fee,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20110412230150339431000000"
            WHEN 'C'::text THEN "FEAT20120127222639346148000000"
            ELSE NULL::text
        END AS feature_hoa_fee_2_period,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20120316180703890806000000"
            ELSE NULL::numeric
        END AS feature_hoa_total_monthly_fee_equiv,
        CASE __class_name
            WHEN 'A'::text THEN "GF20070914134018021136000000"
            WHEN 'B'::text THEN "GF20071116203454610486000000"
            WHEN 'F'::text THEN "GF20071121011754701803000000"
            ELSE NULL::text[]
        END AS "feature_cooling[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20100119182524591971000000"
            WHEN 'B'::text THEN "GF20100119211058576575000000"
            ELSE NULL::text[]
        END AS feature_basement,
        CASE __class_name
            WHEN 'A'::text THEN "GF20070914134516788720000000"
            ELSE NULL::text[]
        END AS feature_misc,
    "LIST_96" AS feature_ownership,
    "LIST_75" AS feature_taxes,
    "LIST_46" AS feature_geo_latitude,
    "LIST_47" AS feature_geo_longitude,
    "LIST_29" AS feature_map_code_grid,
    "LIST_88" AS feature_assessor_parcel_ltr,
    "LIST_80" AS feature_assessor_number,
        CASE __class_name
            WHEN 'A'::text THEN "LIST_90"
            WHEN 'B'::text THEN "LIST_90"
            ELSE NULL::text
        END AS feature_source_of_sqft,
    "LIST_71" AS feature_lot_approx_sqft_source,
        CASE __class_name
            WHEN 'A'::text THEN "LIST_122"
            WHEN 'B'::text THEN "LIST_122"
            WHEN 'C'::text THEN "LIST_117"
            ELSE NULL::numeric
        END AS feature_lot_approx_sqft,
    "LIST_114" AS feature_approx_sqft_range,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20110510163434654648000000"
            WHEN 'B'::text THEN "FEAT20110510165242171220000000"
            ELSE NULL::numeric
        END AS feature_carport_spaces,
        CASE __class_name
            WHEN 'A'::text THEN "GF20070914134345186288000000"
            ELSE NULL::text[]
        END AS "feature_hoa_includes[]",
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20070914205355469357000000"
            WHEN 'B'::text THEN "FEAT20071116192559950222000000"
            WHEN 'C'::text THEN "FEAT20120127220302856238000000"
            ELSE NULL::text
        END AS feature_hoa_telehphone,
        CASE __class_name
            WHEN 'C'::text THEN "GF20071117035349289855000000"
            ELSE NULL::text[]
        END AS "feature_existing_land_use[]",
        CASE __class_name
            WHEN 'F'::text THEN "GF20071121011759800083000000"
            ELSE NULL::text[]
        END AS "feature_sale_includes[]",
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20070914185941507638000000"
            ELSE NULL::text
        END AS feature_roof_year_updated,
        CASE __class_name
            WHEN 'B'::text THEN "GF20071116203458258024000000"
            ELSE NULL::text[]
        END AS "feature_non-refundable_deposit[]",
        CASE __class_name
            WHEN 'B'::text THEN "LIST_25"
            ELSE NULL::numeric
        END AS feature_monthly_rate_high_season,
        CASE __class_name
            WHEN 'B'::text THEN "LIST_24"
            ELSE NULL::numeric
        END AS feature_monthly_rate_low_season,
        CASE __class_name
            WHEN 'A'::text THEN "LIST_25"
            ELSE NULL::numeric
        END AS price_per_sqft,
        CASE __class_name
            WHEN 'A'::text THEN "LIST_121"
            WHEN 'B'::text THEN "LIST_121"
            ELSE NULL::numeric
        END AS feature_guest_house_sqft,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20110510163155967817000000"
            WHEN 'B'::text THEN "FEAT20110510165207213719000000"
            ELSE NULL::numeric
        END AS feature_garage_spaces,
        CASE __class_name
            WHEN 'F'::text THEN "LIST_121"
            ELSE NULL::numeric
        END AS feature_parking_total_spaces,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20110510163837118120000000"
            WHEN 'B'::text THEN "FEAT20110510165328434394000000"
            ELSE NULL::numeric
        END AS feature_parking_total_covered_spaces,
        CASE __class_name
            WHEN 'A'::text THEN "GF20070913202500135827000000"
            WHEN 'B'::text THEN "GF20071116202046057185000000"
            ELSE NULL::text[]
        END AS "feature_parking_features[]",
        CASE __class_name
            WHEN 'C'::text THEN "GF20071118031602694422000000"
            ELSE NULL::text[]
        END AS "feature_distance_to_sewer[]",
        CASE __class_name
            WHEN 'C'::text THEN "GF20071117035717107647000000"
            ELSE NULL::text[]
        END AS "feature_railroad[]",
        CASE __class_name
            WHEN 'C'::text THEN "GF20071117035554114779000000"
            ELSE NULL::text[]
        END AS "feature_elevation_source[]",
        CASE __class_name
            WHEN 'C'::text THEN "GF20071117035518930172000000"
            ELSE NULL::text[]
        END AS "feature_development_status[]",
    "LIST_51" AS feature_bedrooms_plus,
        CASE __class_name
            WHEN 'C'::text THEN "GF20071117035826649797000000"
            WHEN 'F'::text THEN "GF20071121011755488142000000"
            ELSE NULL::text[]
        END AS "feature_electric[]",
        CASE __class_name
            WHEN 'C'::text THEN "LIST_74"
            WHEN 'F'::text THEN "LIST_74"
            ELSE NULL::text
        END AS feature_zoning,
        CASE __class_name
            WHEN 'C'::text THEN "GF20071117035837834509000000"
            WHEN 'F'::text THEN "GF20071121011756642844000000"
            ELSE NULL::text[]
        END AS "feature_gas[]",
        CASE __class_name
            WHEN 'B'::text THEN "FEAT20071116193617886554000000"
            ELSE NULL::text
        END AS feature_floor_number,
        CASE __class_name
            WHEN 'B'::text THEN "FEAT20071116191422270600000000"
            ELSE NULL::numeric
        END AS feature_prepaid_last_month_rent,
    "LIST_32" AS feature_building_number,
    "LIST_91" AS feature_vacation_rental,
    "LIST_35" AS feature_unit_number,
    "LIST_86" AS feature_builder_name,
        CASE __class_name
            WHEN 'A'::text THEN "GF20070914133911514723000000"
            WHEN 'B'::text THEN "GF20071116202126800795000000"
            WHEN 'F'::text THEN "GF20071121011754872078000000"
            ELSE NULL::text[]
        END AS "feature_construction[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20121203210011223247000000"
            WHEN 'B'::text THEN "GF20121204145616473063000000"
            ELSE NULL::text[]
        END AS "feature_plumbing[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20070913202500135630000000"
            WHEN 'B'::text THEN "GF20071116203455818652000000"
            ELSE NULL::text[]
        END AS "feature_features[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20070914133933301536000000"
            WHEN 'B'::text THEN "GF20071116202155557280000000"
            WHEN 'F'::text THEN "GF20071121011754591668000000"
            ELSE NULL::text[]
        END AS "feature_construction_finish[]",
    "LIST_93" AS feature_auction,
        CASE __class_name
            WHEN 'A'::text THEN "FEAT20080123203731663536000000"
            WHEN 'B'::text THEN "FEAT20080204212017122314000000"
            WHEN 'C'::text THEN "FEAT20080204212516762546000000"
            WHEN 'F'::text THEN "FEAT20080207170735671566000000"
            ELSE NULL::text
        END AS feature_legal_info_lot_number,
    "LIST_92" AS feature_tax_municipality,
        CASE __class_name
            WHEN 'A'::text THEN "GF20121203210049255605000000"
            WHEN 'B'::text THEN "GF20121204145804258488000000"
            ELSE NULL::text[]
        END AS "feature_windows[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20070913202500135598000000"
            WHEN 'B'::text THEN "GF20071116203457283613000000"
            ELSE NULL::text[]
        END AS "feature_laundry[]",
    "LIST_113" AS feature_model,
        CASE __class_name
            WHEN 'A'::text THEN "GF20070914134051409501000000"
            WHEN 'B'::text THEN "GF20071116203455421778000000"
            ELSE NULL::text[]
        END AS "feature_energy_green_features[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20091106191417931128000000"
            WHEN 'B'::text THEN "GF20091106191554191155000000"
            ELSE NULL::text[]
        END AS "feature_accessibility_features[]",
        CASE __class_name
            WHEN 'A'::text THEN "GF20070914134004605295000000"
            WHEN 'B'::text THEN "GF20071116202243924929000000"
            WHEN 'F'::text THEN "GF20071121011758221722000000"
            ELSE NULL::text[]
        END AS "feature_roofing[]",
        CASE __class_name
            WHEN 'A'::text THEN "LIST_9"
            ELSE NULL::text
        END AS feature_mls_property_type,
        CASE __class_name
            WHEN 'A'::text THEN "GF20080207202713312731000000"
            WHEN 'C'::text THEN "GF20080207202752466102000000"
            WHEN 'B'::text THEN "GF20100125194441384838000000"
            ELSE NULL::text[]
        END AS feature_special_listing_cond
FROM
    armls."Property" p, armls.mutation m
WHERE
    p."LIST_1"::text = m.remote_id AND
    m.last_transaction_completed_at IS NOT NULL
;
