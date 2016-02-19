-- grar2 mls view
DROP VIEW IF EXISTS grar2.view_property CASCADE;
CREATE OR REPLACE VIEW grar2.view_property AS
SELECT
  'grar2'::text as mls,
  __removed_at,
  (__removed_at is null) as __active,
  __inserted_at,
  __modified_at,
  __geo_modified_at,
  __price_updated_at,
  __percent_reduced,
  __geo_geom,
  __geo_outlier,
  __price_history_times,
  __price_history_vals,
  __inserted_at as age,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  __geo_places,
  __photo_urls,
  last_transaction_completed_at,
  "LIST_132"::timestamp as __list_date,
  "LIST_137" as days_to_close,
  "LIST_15" as status,
  "LIST_12" AS sold_date,
  "LIST_23" AS sold_price,
  CASE __class_name
        WHEN 'F'::text THEN
        CASE "LIST_15"
            WHEN 'Sold'::text THEN 'leased'::text
            ELSE 'for_rent'
        END
        ELSE
        CASE "LIST_15"
            WHEN 'Sold'::text THEN 'sold'::text
            ELSE 'for_sale'
        END
  END AS listing_type,
  "UNBRANDEDIDXVIRTUALTOUR" as virtual_tour,
  ("LIST_15" IN ('Active Contingent', 'Active Backup')) as under_contract,
  "LIST_15" as under_contract_description,
  "LIST_1" as listing_id,
  "LIST_3"::text as mlsnum,
  coalesce(__image_count, "LIST_133", 0) as image_count,
  "LIST_22" as price,
  "LIST_66" as beds,
  "listing_office_name" as office_name,
  "LIST_68" as baths_total,
  CASE __class_name
    WHEN 'A' THEN
      CASE "LIST_111"
        WHEN 'Condo/Coop' THEN 'Condo'
        WHEN 'Condominium' THEN 'Condo'
        ELSE 'Single Family'
      END
    WHEN 'B' THEN 'Lots & Land'
    WHEN 'E' THEN 'Multi Family'
    WHEN 'F' THEN
      CASE "LIST_111"
        WHEN 'Condo/Coop' THEN 'Condo'
        WHEN 'Condominium' THEN 'Condo'
        ELSE 'Single Family'
      END
  END as type,
  "LIST_78" as remarks,
  CASE -- street #
    WHEN "LIST_31" is null THEN ''
    ELSE "LIST_31"::text || ' '
  END
  ||
  CASE
    WHEN "LIST_33" is null THEN '' -- street direction
    ELSE "LIST_33" || ' '
  END
  ||
  "LIST_34" -- street name
  ||
  CASE
    WHEN "LIST_37" is null THEN '' -- street suffix
    ELSE ' ' || "LIST_37"
  END
  ||
  CASE
    WHEN "LIST_36" is null THEN '' -- street post dir
    ELSE ' ' || "LIST_36"
  END as address_line1,
  "LIST_39" || ', MI ' || "LIST_43" as address_line2,
  "LIST_39" || ', MI' as city_st,
  "LIST_39" as city,
  "LIST_43" as zip,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "LIST_48"::integer as square_feet,
  "LIST_53" as year_built,
  "LIST_159" as acres,
  "LIST_41" as county,
  'MI'::text as state,

  "LIST_77" as subdivision,
  initcap("LIST_56") as elementary_school,
  initcap("LIST_81") as middle_school,
  initcap("LIST_131") as high_school,
  "LIST_109" as school_district,

  (
    CASE __class_name
      WHEN 'A' THEN ("GF20140415143938559940000000" && ARRAY['Deck(s)', 'Patio', 'Porch(es)', 'Scrn Porch'])
      WHEN 'F' THEN ("GF20140417184332235335000000" && ARRAY['Deck', 'Patio/Porch Balcony'])
      ELSE false
    END
  ) as "patio_deck_porch",
  ("LIST_154" = 'Yes') as "basement",
  ("LIST_156" = 'Yes') as "fireplace",
  ("GF20140415143938559940000000" && ARRAY['Fenced Back']) as "fenced_yard",
  ("FEAT20140512163739669585000000" = 'Yes') as "waterfront",
  (
    "GF20140415141852549714000000" && ARRAY['View']
    OR "GF20140428125546133051000000" && ARRAY['View']
    OR "GF20140428154819906923000000" && ARRAY['View']
  ) as "water_view",
  (coalesce("FEAT20140606183302149023000000", "FEAT20140606183737313176000000") = 'Yes') as "garage",
  ("LIST_112" = 'Ranch') as "ranch_style",
  ("LIST_157" = '1') as "one_story",
  (coalesce("GF20140415144022952260000000", "GF20140417210330972201000000") is not null) as "pool",
  "LIST_87" as modification_timestamp,
  true as display_address,

  -- MF
  "LIST_160" as feature_parking_spaces_total,
  "FEAT20140505163910041634000000" as "feature_unit1_sqft",
  "FEAT20140505163931419556000000" as "feature_unit2_sqft",
  "FEAT20140505163941290142000000" as "feature_unit3_sqft",
  "FEAT20140505164022014988000000" as "feature_unit4_sqft",
  "FEAT20140505164042342542000000" as "feature_unit5_sqft",
  "FEAT20140505164104361141000000" as "feature_unit6_sqft",
  "FEAT20140505164115893615000000" as "feature_unit7_sqft",
  "FEAT20140505164126890845000000" as "feature_unit8_sqft",
  "FEAT20140508220016429743000000" as "feature_unit9_sqft",
  "FEAT20140508220025464151000000" as "feature_unit10_sqft",
  "FEAT20140508220034051332000000" as "feature_unit11_sqft",
  "FEAT20140508220043520061000000" as "feature_unit12_sqft",
  "GF20140505155704714720000000" as "feature_unit1[]",
  "GF20140505155913011263000000" as "feature_unit6[]",
  "GF20140505155732460583000000" as "feature_unit3[]",
  "FEAT20140512164827972104000000" as "feature_assoc_fee_approx",
  "GF20140505155721195148000000" as "feature_unit2[]",
  "LIST_158" as "feature_taxable_value",
  "GF20140508200030209562000000" as "feature_unit11[]",
  "GF20140505155824024071000000" as "feature_unit5[]",
  "GF20140508195729059023000000" as "feature_unit9[]",
  "GF20140508195848173493000000" as "feature_unit10[]",
  "FEAT20140505165702832702000000" as "feature_unit1_bathrooms",
  "FEAT20140505165725693447000000" as "feature_unit2_bathrooms",
  "FEAT20140505165938664776000000" as "feature_unit3_bathrooms",
  "FEAT20140505165956501199000000" as "feature_unit4_bathrooms",
  "FEAT20140505170102193534000000" as "feature_unit5_bathrooms",
  "FEAT20140505170111530551000000" as "feature_unit6_bathrooms",
  "FEAT20140505171142425651000000" as "feature_unit7_bathrooms",
  "FEAT20140505171151708272000000" as "feature_unit8_bathrooms",
  "FEAT20140508212050363332000000" as "feature_unit9_bathrooms",
  "FEAT20140508212100488535000000" as "feature_unit10_bathrooms",
  "FEAT20140508212109092100000000" as "feature_unit11_bathrooms",
  "FEAT20140508212119137733000000" as "feature_unit12_bathrooms",
  "FEAT20140505162745929889000000" as "feature_unit1_desc",
  "FEAT20140505162804125660000000" as "feature_unit2_desc",
  "FEAT20140505162818098538000000" as "feature_unit3_desc",
  "FEAT20140505162906583272000000" as "feature_unit4_desc",
  "FEAT20140505162918899221000000" as "feature_unit5_desc",
  "FEAT20140505162930867945000000" as "feature_unit6_desc",
  "FEAT20140505163106902901000000" as "feature_unit7_desc",
  "FEAT20140505163116733673000000" as "feature_unit8_desc",
  "FEAT20140508210459490640000000" as "feature_unit9_desc",
  "FEAT20140508210511011937000000" as "feature_unit10_desc",
  "FEAT20140508210522432906000000" as "feature_unit11_desc",
  "FEAT20140508210532675858000000" as "feature_unit12_desc",
  "FEAT20140505165505593430000000" as "feature_unit1_beds",
  "FEAT20140505165518221867000000" as "feature_unit2_beds",
  "FEAT20140505165526666517000000" as "feature_unit3_beds",
  "FEAT20140505165535882207000000" as "feature_unit4_beds",
  "FEAT20140505165546723742000000" as "feature_unit5_beds",
  "FEAT20140505165555783495000000" as "feature_unit6_beds",
  "FEAT20140505165607820612000000" as "feature_unit7_beds",
  "FEAT20140505165617573952000000" as "feature_unit8_beds",
  "FEAT20140508211539855846000000" as "feature_unit9_beds",
  "FEAT20140508211554400894000000" as "feature_unit10_beds",
  "FEAT20140508211603649613000000" as "feature_unit11_beds",
  "FEAT20140508211613832494000000" as "feature_unit12_beds",
  "FEAT20140417172011727301000000" as "feature_bedrooms_basement",
  "FEAT20140417171450421116000000" as "feature_baths_full_upper",
  "GF20140415143938559940000000" as "feature_exterior_features[]",
  CASE __class_name WHEN 'F' THEN null::text ELSE "LIST_86" END as "feature_lot_dimensions",
  "LIST_88" as "feature_area_sub",
  "LIST_29" as "feature_area_new",
  coalesce("GF20140415143235581075000000", "GF20140417184111885910000000", "GF20140428125540981838000000") as "feature_heat_type[]",
  "LIST_150" as "feature_has_parking",
  "GF20140415150322773100000000" as "feature_green_energy[]",
  coalesce("FEAT20140512163905892765000000", "FEAT20140512190633685019000000", "FEAT20140512193128278155000000") as "feature_water_frontage",
  CASE __class_name WHEN 'E' THEN "LIST_119" END as feature_units_total,
  coalesce("GF20140415143159030852000000", "GF20140417184208034020000000") as "feature_appliances[]",
  coalesce("GF20140415144108390298000000", "GF20140428125537555891000000") as "feature_driveway[]",
  "GF20140428213356159926000000" as "feature_extras[]",
  "LIST_74" as "feature_zoning",
  "LIST_95" as "feature_new_construction",
  coalesce("GF20140415144049902015000000", "GF20140422215858339761000000") as "feature_outbuildings[]",
  coalesce("GF20140415142417753659000000", "GF20140428125543803293000000") as "feature_roofing[]",
  "GF20140415144008481349000000" as "feature_landscaping[]",
  coalesce("GF20140415143215797157000000", "GF20140417184702536783000000", "GF20140428125540769343000000") as "feature_heat_source[]",
  CASE __class_name WHEN 'F' THEN null ELSE "LIST_50" END as feature_road_frontage,
  CASE __class_name WHEN 'F' THEN "LIST_127" END as feature_date_available,
  CASE __class_name WHEN 'F' THEN "LIST_97" END as feature_lease_w_buy_option,
  CASE __class_name WHEN 'F' THEN "LIST_124" END as feature_pet_fee,
  CASE __class_name WHEN 'F' THEN "LIST_145" END as feature_pets_allowed,
  CASE __class_name WHEN 'E' THEN "LIST_124" END as feature_number_of_floor_plans,
  CASE __class_name WHEN 'E' THEN "LIST_52" END as feature_buildings_approx_sqft,
  CASE __class_name WHEN 'E' THEN "LIST_122" END as feature_buildings_total,
  "FEAT20140417171611560276000000" as "feature_baths_full_main",
  "GF20140428213932444439000000" as "feature_tenant_pays[]",
  coalesce("GF20140415142618010666000000", "GF20140428125544934085000000") as "feature_sewer[]",
  CASE __class_name WHEN 'A' THEN "LIST_97" END as feature_income_property,
  CASE __class_name WHEN 'A' THEN "LIST_130" END as feature_condo_project_name,
  CASE __class_name WHEN 'A' THEN "LIST_130" END as feature_fireplace_count,
  coalesce("GF20140415142859819707000000", "GF20140422220957837495000000", "GF20140428125545323017000000") as "feature_utilities[]",
  coalesce("GF20140415142607149261000000", "GF20140422215748775879000000", "GF20140428125541965490000000") as "feature_lot_description[]",
  coalesce("GF20140415143328243498000000", "GF20140417210125563450000000", "GF20140428125535221680000000") as "feature_air_conditioning[]",
  "FEAT20140417171825825176000000" as "feature_baths_full_lower",
  coalesce("GF20140415141658660330000000", "GF20140417182736560765000000", "GF20140428125546687681000000", "GF20140428154811505310000000") as "feature_water_type[]",
  "GF20140415143408149984000000" as "feature_water_heater[]",
  "FEAT20140512165012357032000000" as "feature_assoc_fee_freq",
  coalesce("GF20140415142023307886000000", "GF20140428125536876980000000") as "feature_accessibility_features[]",
  coalesce("GF20140415144022952260000000", "GF20140417210330972201000000") as "feature_pool[]",
  "FEAT20140417171547990818000000" as "feature_bedrooms_main",
  "FEAT20140417171729899435000000" as "feature_bedroms_lower",
  "GF20140415143101042975000000" as "feature_kitchen[]",
  "LIST_80" as "feature_tax_id",
  "GF20140415142506616497000000" as "feature_windows[]",
  "FEAT20140512170813654573000000" as "feature_manufactured",
  "FEAT20140417171427455370000000" as "feature_bedrooms_upper",
  coalesce("GF20140415144121096635000000", "GF20140422215941303482000000","GF20140428125544755416000000") as "feature_street_type[]",
  coalesce("FEAT20140512164034487856000000", "FEAT20140512191354807384000000", "FEAT20140512193208325829000000", "FEAT20140605153952462064000000") as "feature_body_of_water",
  coalesce("GF20140415141852549714000000", "GF20140417182911576788000000", "GF20140428125546133051000000", "GF20140428154819906923000000") as "feature_water_amenities[]",
  coalesce("FEAT20140512163816856561000000", "FEAT20140512185840496056000000", "FEAT20140512193111783185000000", "FEAT20140605153800525262000000") as "feature_water_access",
  coalesce("GF20140415143035760173000000", "GF20140422220054951285000000", "GF20140428125545594268000000") as "feature_utilities_available[]",
  CASE
    WHEN "ROOM_AR_room_level" is not null OR "ROOM_AR_room_width" is not null OR "ROOM_AR_room_length" is not null
      THEN 'Level: ' || coalesce("ROOM_AR_room_level", '-') || ', ' || coalesce("ROOM_AR_room_length", '-') || 'L x ' || coalesce("ROOM_AR_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_additional",
  CASE
    WHEN "ROOM_B2_room_level" is not null OR "ROOM_B2_room_width" is not null OR "ROOM_B2_room_length" is not null THEN 'Level: ' || coalesce("ROOM_B2_room_level", '-') || ', ' || coalesce("ROOM_B2_room_length", '-') || 'L x ' || coalesce("ROOM_B2_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_bedroom2",
  CASE
    WHEN "ROOM_B3_room_level" is not null OR "ROOM_B3_room_width" is not null OR "ROOM_B3_room_length" is not null THEN 'Level: ' || coalesce("ROOM_B3_room_level", '-') || ', ' || coalesce("ROOM_B3_room_length", '-') || 'L x ' || coalesce("ROOM_B3_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_bedroom3",
  CASE
    WHEN "ROOM_B4_room_level" is not null OR "ROOM_B4_room_width" is not null OR "ROOM_B4_room_length" is not null THEN 'Level: ' || coalesce("ROOM_B4_room_level", '-') || ', ' || coalesce("ROOM_B4_room_length", '-') || 'L x ' || coalesce("ROOM_B4_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_bedroom4",
  CASE
    WHEN "ROOM_B5_room_level" is not null OR "ROOM_B5_room_width" is not null OR "ROOM_B5_room_length" is not null THEN 'Level: ' || coalesce("ROOM_B5_room_level", '-') || ', ' || coalesce("ROOM_B5_room_length", '-') || 'L x ' || coalesce("ROOM_B5_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_bedroom5",
  CASE
    WHEN "ROOM_DA_room_level" is not null OR "ROOM_DA_room_width" is not null OR "ROOM_DA_room_length" is not null THEN 'Level: ' || coalesce("ROOM_DA_room_level", '-') || ', ' || coalesce("ROOM_DA_room_length", '-') || 'L x ' || coalesce("ROOM_DA_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_dining",
  CASE
    WHEN "ROOM_DEN_room_level" is not null OR "ROOM_DEN_room_width" is not null OR "ROOM_DEN_room_length" is not null THEN 'Level: ' || coalesce("ROOM_DEN_room_level", '-') || ', ' || coalesce("ROOM_DEN_room_length", '-') || 'L x ' || coalesce("ROOM_DEN_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_den",
  CASE
    WHEN "ROOM_FDR_room_level" is not null OR "ROOM_FDR_room_width" is not null OR "ROOM_FDR_room_length" is not null THEN 'Level: ' || coalesce("ROOM_FDR_room_level", '-') || ', ' || coalesce("ROOM_FDR_room_length", '-') || 'L x ' || coalesce("ROOM_FDR_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_dining_formal",
  CASE
    WHEN "ROOM_K_room_level" is not null OR "ROOM_K_room_width" is not null OR "ROOM_K_room_length" is not null THEN 'Level: ' || coalesce("ROOM_K_room_level", '-') || ', ' || coalesce("ROOM_K_room_length", '-') || 'L x ' || coalesce("ROOM_K_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_kitchen",
  CASE
    WHEN "ROOM_LR_room_level" is not null OR "ROOM_LR_room_width" is not null OR "ROOM_LR_room_length" is not null THEN 'Level: ' || coalesce("ROOM_LR_room_level", '-') || ', ' || coalesce("ROOM_LR_room_length", '-') || 'L x ' || coalesce("ROOM_LR_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_laundry",
  CASE
    WHEN "ROOM_MBA_room_level" is not null OR "ROOM_MBA_room_width" is not null OR "ROOM_MBA_room_length" is not null THEN 'Level: ' || coalesce("ROOM_MBA_room_level", '-') || ', ' || coalesce("ROOM_MBA_room_length", '-') || 'L x ' || coalesce("ROOM_MBA_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_master_bath",
  CASE
    WHEN "ROOM_MBR_room_level" is not null OR "ROOM_MBR_room_width" is not null OR "ROOM_MBR_room_length" is not null THEN 'Level: ' || coalesce("ROOM_MBR_room_level", '-') || ', ' || coalesce("ROOM_MBR_room_length", '-') || 'L x ' || coalesce("ROOM_MBR_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_master_bedroom",
  CASE
    WHEN "ROOM_REC_room_level" is not null OR "ROOM_REC_room_width" is not null OR "ROOM_REC_room_length" is not null THEN 'Level: ' || coalesce("ROOM_REC_room_level", '-') || ', ' || coalesce("ROOM_REC_room_length", '-') || 'L x ' || coalesce("ROOM_REC_room_width", '-') || 'W'
    ELSE null::text
  END as "feature_room_rec",
  coalesce("GF20140415142704236952000000", "GF20140428125545831661000000") as "feature_water[]",
  "GF20140417184332235335000000" as "feature_amenities_other[]",
  "FEAT20140417171925618537000000" as "feature_baths_half_lower",
  "FEAT20140417171654388588000000" as "feature_baths_half_main",
  "FEAT20140417171514332045000000" as "feature_baths_half_upper",
  "LIST_69" as "feature_baths_half",
  coalesce("GF20140415141949653258000000", "GF20140417183149586741000000", "GF20140424213150127657000000", "GF20140428125535366267000000") as "feature_assoc_fee_includes[]",
  "GF20140417183056956535000000" as "feature_tenant_provides[]",
  "LIST_112" as "feature_style",
  "LIST_76" as "feature_tax_year",
  "LIST_75" as "feature_taxes_property_annual",
  "LIST_157" as "feature_stories",
  coalesce("GF20140415142550621482000000", "GF20140417205234978900000000", "GF20140428125544505231000000") as "feature_basement[]",
  coalesce("GF20140415142202344829000000", "GF20140428125538089052000000") as "feature_exterior_material[]",
  coalesce("GF20140415194112253328000000", "GF20140417183224055283000000") as "feature_garage[]",
  "FEAT20140512164925476141000000" as "feature_assoc_buy_in_fee",
  "LIST_94" as "feature_construction_status",
  "LIST_111" as "feature_property_sub_type",
  "FEAT20140417172042940895000000" as "feature_baths_full_basement",
  "FEAT20140417172114619122000000" as "feature_baths_half_basement",
  "GF20140428213921612445000000" as "feature_owner_pays[]",
  coalesce("GF20140415144154763554000000", "GF20140424213123713658000000", "GF20140428125534080726000000") as "feature_assoc_amenities[]",
  coalesce("FEAT20140512163739669585000000", "FEAT20140512185534448336000000", "FEAT20140512193031147855000000", "FEAT20140605153536464545000000") as "feature_waterfront",
  "GF20140415143120355779000000" as "feature_fireplace[]",
  "GF20140415143137717022000000" as "feature_additional_items[]"
FROM
  grar2."Property" p, grar2.mutation m
WHERE
  p."LIST_1"::text = m.remote_id AND
  m.last_transaction_completed_at is not null
;
