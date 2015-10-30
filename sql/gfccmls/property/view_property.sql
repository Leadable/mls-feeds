DROP VIEW IF EXISTS gfccmls.view_property CASCADE;
CREATE OR REPLACE VIEW gfccmls.view_property AS
SELECT
  'gfccmls'::text as mls,
  __removed_at,
  (__removed_at IS NULL AND COALESCE("Status", "STATUS") NOT IN ('Expired', 'Cancelled', 'Withdrawn')) as __active,
  __inserted_at as age,
  __inserted_at,
  __modified_at,
  __price_updated_at,
  coalesce("Tour_Url", "TOUR_URL") as virtual_tour,
  __price_history_times,
  __price_history_vals,
  __percent_reduced,
  __geo_geom,
  __geo_outlier,
  __status_updated_at,
  __status_history_times,
  __status_history_vals,
  __geo_places,
  __photo_urls,
  coalesce("Listingdate", "ListingDate") as __list_date,
  last_transaction_completed_at,
  "DOM" as days_to_close,
  coalesce("Closed_Date", "CLOSED_DATE") as sold_date,
  coalesce("ClosePrice", "Closeprice") as sold_price,
  "Matrix_Unique_ID" as listing_id,
  coalesce("Mlsnumber", "MLSNumber") as mlsnum,
  coalesce("Status", "STATUS") as status,
  (
   --("Status" = 'Pending' OR "Status" = 'Cont. To Show') OR
   --("STATUS" = 'Pending' OR "STATUS" = 'Cont. To Show')
   (coalesce("Status", "STATUS") = 'Pending' OR coalesce("Status", "STATUS") = 'Cont. To Show')
  ) as under_contract,
  CASE coalesce("Status", "STATUS")
    WHEN 'Pending' THEN 'Under Contract - Pending'
    WHEN 'Cont. To Show' THEN 'Under Contract - Continue to Show'
    ELSE NULL::text
  END as under_contract_description,
  COALESCE(array_length(__photo_urls, 1), 0) as image_count,
  coalesce("Listprice", "ListPrice") as price,
  coalesce("No_Bedrooms", "NO_BEDROOMS") as beds,
  CASE coalesce("Status", "STATUS")
    WHEN 'Sold'   THEN 'sold'
    WHEN 'Rented' THEN 'leased'
    ELSE
      CASE
        WHEN coalesce("RENT_TYPE", "Rent_Type") IS NOT NULL THEN 'for_rent'
        ELSE 'for_sale'
      END
  END as listing_type,
  CASE __class_name
    WHEN 'LAND' THEN 'Lots & Land'
    WHEN 'RESI' THEN "Prop_Type"
  END as type,
  coalesce("Full_Baths", "FULL_BATHS") as baths_total,
  coalesce("Public_Rmks", "PUBLIC_RMKS") as remarks,
  COALESCE("Street_No", "STREET_NO", '') || ' ' || initcap(COALESCE("Street_Dir", "STREET_DIR", '')) || ' ' || initcap(COALESCE("Street", "STREET", '')) || ' ' || initcap(COALESCE("Street_Post_Dir", "STREET_POST_DIR", '')) || ' ' || initcap(COALESCE("Street_Type", "STREET_TYPE", '')) || ' ' || COALESCE("Unit_No", "UNIT_NO", '') as address_line1,
  initcap("Town") || ', ' || (CASE coalesce("State", "STATE") WHEN 'CONNECTICUT' THEN 'CT' WHEN 'NEW YORK' THEN 'NY' END) || ' ' || COALESCE("Zip_Code", "ZIP_CODE") as address_line2,
  initcap("Town") as city,
  (CASE coalesce("State", "STATE")
    WHEN 'CONNECTICUT' THEN 'CT'
    WHEN 'NEW YORK' THEN 'NY'
  END) as state,
  initcap("Town") || (CASE coalesce("State", "STATE") WHEN 'CONNECTICUT' THEN ', CT' WHEN 'NEW YORK' THEN ', NY' END) as city_st,
  coalesce("Zip_Code", "ZIP_CODE") as zip,
  coalesce("County", "COUNTY") as county,
  null::text as township,
  __geo_modified_at,
  __geo_latitude as latitude,
  __geo_longitude as longitude,
  "Square_Feet" as square_feet,
  COALESCE("Year_Built", "YEAR_BUILT") as year_built,
  COALESCE("Acres", "ACRES") as acres,
  ("Basement" && ARRAY['FULL', 'WALK-OUT']) as basement,
  (coalesce("No_Fireplaces", "NO_FIREPLACES") > 0) as fireplace,
  (
    "Lot_Desc" && ARRAY['Fully Fenced', 'Partially Fenced'] OR
    "LOT_DESC" && ARRAY['Fully Fenced', 'Partially Fenced']
  ) as fenced_yard,
  coalesce("Direct_Waterfront", "DIRECT_WATERFRONT") as waterfront,
  ("Style" && ARRAY['Ranch']) as ranch_style,
  "SwimmingPoolYN" as pool,
  ("Exterior_Feat" && ARRAY['PATIO', 'DECK', 'PORCH']) as patio_deck_porch,
  ("Interior_Feat" && ARRAY['Walk-In Closet']) as walk_in_closets,
  null::text as double_vanity,
  null::text as __minor_area,
  null::text as __major_area,
  initcap(coalesce("Subdivision", "SUBDIVISION")) as subdivision,
  "MatrixModifiedDT" as modification_timestamp,
  COALESCE("Internet_Addr", "INTERNET_ADDR") as display_address,
  null::text as school_district,
  initcap(coalesce("Elem_School", "ELEM_SCHOOL")) as elementary_school,
  initcap(coalesce("Mid_School", "MID_SCHOOL")) as middle_school,
  initcap(coalesce("High_School", "HIGH_SCHOOL")) as high_school,
  ("Garage" > 0) as garage,
  "ListOfficeName" as office_name,
  trim(initcap("Complex_Name")) as complex,
  "Amenities" as "feature_amenities[]",
  coalesce("Assoc_Fee_Incl", "ASSOC_FEE_INCL") as "feature_association_fee_includes[]",
  CASE
    WHEN "Adult_Community" IS NULL THEN null::text
    WHEN "Adult_Community" IS TRUE THEN 'Yes'
    WHEN "Adult_Community" IS NOT TRUE THEN 'No'
  END as "feature_adult_community",
  "AtticFeatures" as "feature_attic_features[]",
  "Basement" as "feature_basement[]",
  "Cooling" as "feature_cooling[]",
  "EASEMENTS" as "feature_easements",
  "EnergyFeatures" as "feature_energy_feature[]",
  "Exterior" as "feature_exterior[]",
  "Exterior_Feat" as "feature_exterior_features[]",
  coalesce("Ho_Assoc_Fee", "HO_ASSOC_FEE") as "feature_hoa_fee",
  "HandicapFeatures" as "feature_accessibility_features[]",
  "Heating" as "feature_heating[]",
  "IMPROVEMENTS" as "feature_improvements[]",
  "Interior_Feat" as "feature_interior_features[]",
  coalesce("Lot_Desc", "LOT_DESC") as "feature_lot_description[]",
  coalesce("No_Fireplaces", "NO_FIREPLACES") as "feature_num_fireplaces",
  trim(initcap("Neighborhood")) as "feature_neighborhood",
  "New_Construction" as "feature_new_construction",
  "Other_Rooms" as "feature_rooms_other[]",
  "Parking" as "feature_parking[]",
  CASE
    WHEN "Pets_Allowed" IS NULL THEN null::text
    WHEN "Pets_Allowed" IS TRUE THEN 'Yes'
    WHEN "Pets_Allowed" IS NOT TRUE THEN 'No'
  END as "feature_pets_allowed",
  "PoolFeatures" as "feature_pool_features[]",
  "Rent_Type" as "feature_rent_type",
  "Roof" as "feature_roof[]",
  "Style" as "feature_style[]",
  coalesce("Tax_Amount", "TAX_AMOUNT") as "feature_tax_amount",
  coalesce("Tax_Year", "TAX_YEAR") as "feature_tax_year",
  "UTILITIES_AVAIL" as "feature_utilities_available",
  coalesce("Waterfront_Desc", "WATERFRONT_DESC") as "feature_waterfront_description[]",
  "Water" as "feature_water[]",
  coalesce("Zoning", "ZONING") as "feature_zoning",
  null::boolean as one_story
FROM
  gfccmls."Property" as p, gfccmls.mutation as m
WHERE
  p."Matrix_Unique_ID"::text = m.remote_id AND
  m.last_transaction_completed_at is not null
;
