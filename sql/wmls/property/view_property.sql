DROP VIEW IF EXISTS wmls.view_property CASCADE;
CREATE OR REPLACE VIEW wmls.view_property AS
SELECT
  'wmls'::text as mls,
  __removed_at,
  (__removed_at IS NULL) as __active,
  __inserted_at  as age,
  __inserted_at,
  __modified_at,
  __price_updated_at,
  "UNBRANDEDIDXVIRTUALTOUR" as virtual_tour,
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
  "LIST_10" as __list_date,
  last_transaction_completed_at,
  "LIST_137" as days_to_close,
  "LIST_12" as sold_date,
  "LIST_23" as sold_price,
  CASE __class_name
    WHEN 'F' THEN
      CASE "LIST_15"
        WHEN 'Closed' THEN 'leased'
        ELSE 'for_rent'
      END
    ELSE
      CASE "LIST_15"
        WHEN 'Closed' THEN 'sold'
        ELSE 'for_sale'
      END
  END as listing_type,
  "LIST_1" as listing_id,
  "LIST_105" as mlsnum,
  "LIST_15" as status,
  false as under_contract,
  null::text as under_contract_description,
  coalesce("LIST_133", 0) as image_count,
  "LIST_22" as price,
  "LIST_66" as beds,
  CASE "LIST_55"
    WHEN 'Residential - Condo/Townhouse' THEN 'Condo/Townhouse'
    WHEN 'Residential - Single Family' THEN 'Single Family'
    WHEN 'Residential - Mobile Home/Manufactured' THEN null::text
    ELSE "LIST_55"
  END as type,
  "LIST_68" as baths_total,
  "LIST_78" as remarks,
  "LIST_31" || ' '
  || (CASE
       WHEN "LIST_33" is null THEN ''
       ELSE "LIST_33" || ' '
     END)
  || "LIST_34"
  || (CASE
       WHEN "LIST_37" is null THEN ''
       ELSE ' ' || "LIST_37"
     END)
  as address_line1,
  'VA'::text as state,
  initcap("LIST_39") || ', VA' || ' ' || substring("LIST_43" from 1 for 5) as address_line2,
  initcap("LIST_39") as city,
  initcap("LIST_39") || ', VA' as city_st,
  substring("LIST_43" from 1 for 5) as zip,
  null::text as county,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "LIST_48" as square_feet,
  "LIST_53" as year_built,
  "LIST_57" as acres,
  ("LIST_71" IN ('Attached', 'Detached', 'Both', 'Side/Rear Load', 'Workshop Area')) as garage,
  (
    ("GF20050204151442985934000000" && ARRAY['Finished', 'Full', 'Partial', 'Partially Finished', 'Walk-Out'])
    or ("GF20050115071603634712000000" && ARRAY['Finished', 'Full', 'Partial', 'Partially Finished', 'Walk-Out'])
    or ("GF20041229013839999312000000" && ARRAY['Finished', 'Full', 'Partial', 'Partially Finished', 'Walk-Out'])
  ) as basement,
  (CASE __class_name
    WHEN 'F' THEN ("LIST_95" IN ('1', '2', '3', '4+'))
    WHEN 'A' THEN ("LIST_95" IN ('1', '2', '3', '4+'))
    ELSE null::boolean
  END) as fireplace,
  (
    ((("GF20041229014324261989000000" && ARRAY['None']) is not true) and "GF20041229014324261989000000" is not null)
    or ((("GF20041229014324261989000000" && ARRAY['None']) is not true) and "GF20041229014324261989000000" is not null)
    or ((("GF20050117000932711439000000" && ARRAY['None']) is not true) and "GF20050117000932711439000000" is not null)
    or ((("GF20050204151444844906000000" && ARRAY['None']) is not true) and "GF20050204151444844906000000" is not null)
  ) as fenced_yard,
  ("LIST_73" = 'Yes') as waterfront,
  (
    ("LIST_94" = '1')
    or ("LIST_64" = 1.0)
  ) as one_story,
  (
    --community feat all
    ("GF20041229014355704840000000" && ARRAY['Pool'])
    or ("GF20050115071602610330000000" && ARRAY['Pool'])
    or ("GF20050117000926864914000000" && ARRAY['Pool'])
    or ("GF20050204151442011011000000" && ARRAY['Pool'])

    -- ext feat resi
    or ("GF20041229013915363344000000" && ARRAY['Pool-Above Ground', 'Pool-Heated', 'Pool-In Ground'])
  ) as pool,
  (
    -- ext feat resi/rental 
    ("GF20041229013915363344000000" && ARRAY['Deck','Patio','Porch(es)','Screened Porch'])
    or ("GF20050204151443583774000000" && ARRAY['Deck','Patio','Porch(es)','Screened Porch'])
  ) as patio_deck_porch,
  (
    -- int feat resi/rental 
    ("GF20041229013931419127000000" && ARRAY['Walk-in Closet'])
    or ("GF20050204151447210443000000" && ARRAY['Walk-in Closet'])
  ) as walk_in_closets,
  null::text as double_vanity,
  null::text as __minor_area,
  null::text as __major_area,
  "LIST_77" as subdivision,
  "LIST_87"  as modification_timestamp,
  "VOWAddr" as display_address,
  --"" as school_district,
  coalesce("FEAT20041229155232368223000000","FEAT20050117000940042208000000","FEAT20050115071610073909000000","FEAT20050204151450295501000000") as elementary_school,
  coalesce("FEAT20041229155249477807000000","FEAT20050117000941427550000000","FEAT20050115071610935786000000","FEAT20050204151452257958000000") as middle_school,
  coalesce("FEAT20041229155300519093000000","FEAT20050117000942569358000000","FEAT20050115071611532901000000","FEAT20050204151451534493000000") as high_school,
  listing_office_name as office_name,
  CASE __class_name
    WHEN 'F' THEN "LIST_91"
    WHEN 'A' THEN "LIST_91"
    ELSE null::text
  END as feature_master_first_floor,
  CASE __class_name
    WHEN 'F' THEN "LIST_95"
    WHEN 'A' THEN "LIST_95"
    ELSE null::text
  END as feature_fireplaces,
  CASE __class_name
    WHEN 'F' THEN "FEAT20050315202052848323000000"
    ELSE null::text
  END as feature_insurance_required,
  CASE __class_name
    WHEN 'A' THEN "GF20041229013951908212000000"
    WHEN 'F' THEN "GF20050204151442817015000000"
    ELSE null::text[]
  END as "feature_attic[]",
  "GF20050117004900905093000000" as "feature_lot_description",
  CASE __class_name
    WHEN 'B' THEN "LIST_89"
    WHEN 'C' THEN "LIST_95"
    WHEN 'A' THEN "LIST_96"
    WHEN 'F' THEN
      CASE
        WHEN "GF20080717194649761951000000" is not null THEN 'Yes'
        ELSE 'No'
      END
  END as feature_golf_frontage,
  CASE __class_name
    WHEN 'B' THEN "GF20080626200805511231000000"
    WHEN 'C' THEN "GF20080722140021258646000000"
    WHEN 'A' THEN "GF20080625182828701386000000"
    WHEN 'F' THEN "GF20080717194649761951000000"
  END as "feature_golf_frontage_type[]",
  CASE __class_name
    WHEN 'A' THEN "FEAT20041229154811048087000000"
    WHEN 'B' THEN "FEAT20050117000935171000000000"
    WHEN 'C' THEN null::text
    WHEN 'F' THEN null::text
  END as "feature_assoc_fee_init",
  CASE __class_name
    WHEN 'A' THEN "FEAT20041229154704918765000000"
    WHEN 'B' THEN "FEAT20050117000934778271000000"
    WHEN 'C' THEN null::text
    WHEN 'F' THEN null::text
  END as "feature_hoa_mandatory",
  CASE __class_name
    WHEN 'A' THEN "FEAT20080624145834273129000000"
    WHEN 'B' THEN "FEAT20080626170825040476000000"
    WHEN 'C' THEN "FEAT20080721142720371537000000"
    WHEN 'F' THEN null::text
  END as "feature_hoa",
  CASE __class_name
    WHEN 'A' THEN "FEAT20041229154739858947000000"
    WHEN 'B' THEN "FEAT20050117000935140036000000"
    WHEN 'C' THEN null::numeric 
    WHEN 'F' THEN null::numeric
  END as "feature_hoa_fee",
  CASE __class_name
    WHEN 'A' THEN "FEAT20041229154727118467000000"
    WHEN 'B' THEN "FEAT20050117000934946675000000"
    WHEN 'C' THEN null::text
    WHEN 'F' THEN null::text
  END as "feature_hoa_fee_period",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014247527913000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN "GF20050115071603868149000000"
    WHEN 'F' THEN "GF20050204151443220906000000"
  END as "feature_cooling[]",
  CASE __class_name
    WHEN 'A' THEN "GF20041229013839999312000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN "GF20050115071603634712000000"
    WHEN 'F' THEN "GF20050204151442985934000000"
  END as "feature_basement[]",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014408208394000000"
    WHEN 'B' THEN "GF20050117000943833590000000"
    WHEN 'C' THEN "GF20050115071612316860000000"
    WHEN 'F' THEN "GF20050204151453653934000000"
  END as "feature_waterfront[]",
  "LIST_131" as feature_short_sale,
  CASE __class_name
    WHEN 'A' THEN "LIST_83"
    WHEN 'B' THEN "LIST_83"
    WHEN 'C' THEN "LIST_115"
    WHEN 'F' THEN null::text
  END as "feature_foreclosure",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014313407069000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN null::text[]
    WHEN 'F' THEN "GF20050204151447843828000000"
  END as "feature_lot_info[]",
  CASE __class_name
    WHEN 'A' THEN "GF20041229013742461586000000"
    WHEN 'B' THEN "GF20050117000937814342000000"
    WHEN 'C' THEN "GF20050116220728322237000000"
    WHEN 'F' THEN "GF20050204151448215535000000"
  END as "feature_misc[]",
  CASE __class_name
    WHEN 'A' THEN "FEAT20041229154825731292000000"
    WHEN 'B' THEN "FEAT20050117000935294353000000"
    WHEN 'C' THEN "FEAT20080721143212958578000000"
    WHEN 'F' THEN null::text
  END as "feature_fees_other",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014212366838000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN null::text[]
    WHEN 'F' THEN "GF20050204151443955855000000"
  END as "feature_equipment[]",
  CASE __class_name
    WHEN 'A' THEN "LIST_114"
    WHEN 'B' THEN null::text
    WHEN 'C' THEN "LIST_114"
    WHEN 'F' THEN null::text
  END as "feature_ownership",
  CASE __class_name
    WHEN 'A' THEN "LIST_72"
    WHEN 'B' THEN null::text
    WHEN 'C' THEN null::text
    WHEN 'F' THEN "LIST_72"
  END as "feature_garage_spaces",
  "GF20050115071609617129000000" as "feature_garage_parking[]",
  CASE __class_name
    WHEN 'A' THEN "GF20041229013821919391000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN "GF20050115071609849847000000"
    WHEN 'F' THEN "GF20050204151449982522000000"
  END as "feature_roof[]",
  "GF20050406004155042867000000" as "feature_rent_includes[]",
  CASE __class_name
    WHEN 'A' THEN "LIST_94"
    WHEN 'B' THEN null::text
    WHEN 'C' THEN "LIST_64"::text
    WHEN 'F' THEN "LIST_94"
  END as "feature_stories",
  "LIST_58" as feature_unit_level,
  CASE __class_name
    WHEN 'A' THEN "GF20041229013753121632000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN "GF20050115071605146783000000"
    WHEN 'F' THEN "GF20050204151444571314000000"
  END as "feature_exterior[]",
  "GF20050117004911816459000000" as "feature_road_frontage[]",
  "FEAT20050117002624225041000000" as "feature_pasture_acres",
  "GF20050204152119751542000000" as "feature_rental_period[]",
  "GF20050406003207215171000000" as "feature_lease_restrictions[]",
  "LIST_45" as feature_taxes,
  "FEAT20050315201358758736000000" as feature_security_deposit,
  CASE __class_name
    WHEN 'A' THEN "GF20041229014013701846000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN null::text[] 
    WHEN 'F' THEN "GF20050204151449046168000000"
  END as "feature_other_rooms[]",
  CASE __class_name
    WHEN 'C' THEN "LIST_65"
    ELSE null::numeric
  END as "feature_units",
  CASE __class_name
    WHEN 'A' THEN "GF20041229013931419127000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN null::text[]
    WHEN 'F' THEN "GF20050204151447210443000000"
  END as "feature_interior_features[]",
  CASE __class_name
    WHEN 'A' THEN "GF20041229013915363344000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN null::text[]
    WHEN 'F' THEN "GF20050204151443583774000000"
  END as "feature_exterior_features[]",
  "FEAT20050117002604482603000000" as "feature_wooded_acres",
  "LIST_71" as "feature_garage_type",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014343235216000000"
    WHEN 'B' THEN null::text[]
    WHEN 'C' THEN null::text[]
    WHEN 'F' THEN "GF20050117005344507744000000"
  END as "feature_hoa_includes[]",
  "GF20050117004939726033000000" as "feature_improvements[]",
  CASE __class_name
    WHEN 'B' THEN "LIST_91"
    ELSE null::text
  END as "feature_current_use",
  "GF20050117004952113165000000" as "feature_buildings[]",
  "LIST_82" as feature_directions,
  CASE __class_name
    WHEN 'A' THEN "FEAT20041229154901834548000000"
    WHEN 'B' THEN null::text
    WHEN 'C' THEN "FEAT20050115071608697420000000"
    WHEN 'F' THEN "FEAT20050204151448410165000000"
  END as "feature_accessibility_features",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014355704840000000"
    WHEN 'B' THEN "GF20050117000926864914000000"
    WHEN 'C' THEN "GF20050115071602610330000000"
    WHEN 'F' THEN "GF20050204151442011011000000"
  END as "feature_community_amenities[]",
  "FEAT20050117002725034747000000" as "feature_easement",
  "GF20050117004925628440000000" as "feature_land_loc[]",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014324261989000000"
    WHEN 'B' THEN "GF20050117000932711439000000"
    WHEN 'C' THEN "GF20050116220715780718000000"
    WHEN 'F' THEN "GF20050204151444844906000000"
  END as "feature_fencing[]",
  "FEAT20050117002433635596000000" as "feature_num_lots",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014003186266000000"
    WHEN 'B' THEN null::text[] 
    WHEN 'C' THEN "GF20050115071605734702000000"
    WHEN 'F' THEN "GF20050204151445159144000000"
  END as "feature_flooring[]",
  "LIST_69" as "feature_baths_half",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014226330852000000"
    WHEN 'B' THEN null::text[] 
    WHEN 'C' THEN null::text[]
    WHEN 'F' THEN "GF20050204151445597131000000"
  END as "feature_fireplace[]",
  CASE __class_name
    WHEN 'A' THEN "GF20041229014235985855000000"
    WHEN 'B' THEN null::text[] 
    WHEN 'C' THEN "GF20050115071607356724000000"
    WHEN 'F' THEN "GF20050204151446784062000000"
  END as "feature_heating[]",
  "LIST_122" as feature_garage_bays
FROM
  wmls."Property" p, wmls.mutation m
WHERE
  p."LIST_1"::text = m.remote_id AND
  m.last_transaction_completed_at IS NOT NULL
;

