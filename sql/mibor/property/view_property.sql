DROP VIEW IF EXISTS mibor.view_property CASCADE;
CREATE OR REPLACE VIEW mibor.view_property AS
WITH rooms AS (
  SELECT
    "Listing_MUI",
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = 'Master Bedroom'))
        as rm_master_bedroom,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = '2nd Bedroom'))
        as rm_bedroom_2,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = '3rd Bedroom'))
        as rm_bedroom_3,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = '4th Bedroom'))
        as rm_bedroom_4,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = 'Breakfast Room'))
        as rm_breakfast_room,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = 'Dining Room'))
        as rm_dining_room,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = 'Family Room'))
        as rm_family_room,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = 'Great Room'))
        as rm_great_room,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = 'Living Room'))
        as rm_living_room,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = 'Bonus Room'))
        as rm_bonus_room_1,
    MAX((SELECT ARRAY["RoomDimensions", "RoomFloors", "RoomLevel"] WHERE "RoomType" = 'Kitchen'))
        as rm_kitchen,
    array_agg("RoomType")
        as room_types
    FROM
        mibor."PropertySubTable"
    GROUP BY 
        "Listing_MUI"
)
SELECT
    'mibor'::text as mls,
    __removed_at,
    (__removed_at is null AND "Status" NOT IN ('Expired', 'Withdrawn')) as __active,
    __class_name,
    __inserted_at as age,
    __inserted_at,
    __modified_at,
    __price_updated_at,
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
    __modified_at - "CDOM" * '1 day'::interval as __list_date,
    last_transaction_completed_at,
    "CDOM" as days_to_close,
    "Matrix_Unique_ID" as listing_id,
    "MLSNumber" as mlsnum,
    "CloseDate" as sold_date,
    "ClosePrice" as sold_price,
    ("Status" = 'Pending') as under_contract,
    CASE "Status"
        WHEN 'Pending' THEN 'Under Contract'
        ELSE NULL::text
    END as under_contract_description,
    "Status" as status,
    "ListPrice" as price,
    CASE
        WHEN "Status" = 'Leased' THEN 'leased'
        WHEN "Status" = 'Sold' THEN 'sold'
        WHEN "LeasePrice" IS NOT NULL THEN 'for_rent'
        ELSE 'for_sale'
    END as listing_type,
    COALESCE("PhotoCount", 0) as image_count,
    CASE "PropertyType"
        WHEN 'Residential' THEN
            CASE "PropertySubType"
                WHEN 'Condominium' THEN 'Condo'
                ELSE 'Single Family'
            END
        WHEN 'VacantLots/Land' THEN 'Lots & Land'
        ELSE null::text
    END as type,
    "BedsTotal" as beds,
    "BathsTotal" as baths_total,
    "PropertyDescription" as remarks,
    CASE
        WHEN "StreetNumber" is null THEN ''
        ELSE "StreetNumber"::text || ' '
    END
    ||
    CASE
        WHEN "StreetDirPrefix" is null THEN ''
        ELSE "StreetDirPrefix" || ' '
    END
    ||
        "StreetName"
    ||
    CASE
        WHEN "StreetSuffix" is null THEN ''
        ELSE ' ' || "StreetSuffix"
    END
    ||
    CASE
        WHEN "StreetDirSuffix" is null THEN ''
        ELSE ' ' || "StreetDirSuffix"
    END as address_line1,
    initcap("City") as city,
    initcap("City") || ', ' || upper("StateOrProvince") as city_st,
    "ZipCode" as zip,
    upper("StateOrProvince") as state,
    initcap("City") || ', ' || upper("StateOrProvince") || ' ' || "ZipCode" as address_line2,
    "CountyOrParish" as county,
    "Township" as township,
    __geo_modified_at,
    __geo_latitude as latitude,
    __geo_longitude as longitude,
    "TotalSqFt" as square_feet,
    "SqFtMainUpper" as feature_above_ground_sqft,
    "MainLevelSqFt" as main_level_sqft,
    "UpperSqFt" as upper_level_sqft,
    "SqFtSource" as sqft_src,
    "YearBuilt" as year_built,
    "Acres" as acres,
    "Basement" as basement,
    ("Fireplaces" > 0) as fireplace,
    ("Fence" IN ('Fence Full Rear', 'Fence Complete')) as fenced_yard,
    null::text as waterfront,
    ("ArchitecturalStyle" && ARRAY['Ranch']) as ranch_style,
    ("ExteriorAmenities" && ARRAY['Pool House', 'Pool Community', 'Pool Below Ground', 'Pool-Lap', 'Pool Above Ground', 'Pool-Indoor']) as pool,
    ("Porch" is not null) as patio_deck_porch,
    ("Interior" && ARRAY['Walk In Closet']) as walk_in_closets,
    ("AreasInterior" && ARRAY['2 Sinks Main Bath']) as double_vanity,
    COALESCE("VirtualTourLinkBranded", "VirtualTourLinkUnbranded", null::text) as virtual_tour,
    null::text as __minor_area,
    null::text as __major_area,
    trim(initcap("Subdivision")) as subdivision,
    "MatrixModifiedDT" as modification_timestamp,
    "AddressonPublicInternet" as display_address,
    "SchoolDistrict" as school_district,
    "Garage" as garage,
    "SellingOfficeName" as office_name,
    "Heat" as "feature_heat[]",
    "WaterHeater" as "feature_water_heater",
    't'::boolean as display_remarks,
    (select
    array_agg(CASE n
        WHEN 'Barn Horse' THEN 'Horse Barn'
        WHEN 'Barn Mini'  THEN 'Mini Barn'
        WHEN 'Barn Pole'  THEN 'Pole Barn'
        WHEN 'Driveway Asphalt'  THEN 'Asphalt Driveway'
        WHEN 'Driveway Concrete' THEN 'Concrete Driveway'
        WHEN 'Driveway Gravel'   THEN 'Gravel Driveway'
        WHEN 'Driveway Pavers'   THEN 'Paved Driveway'
        WHEN 'Fence Complete'    THEN 'Completely Fenced'
        WHEN 'Fence Full Rear'   THEN 'Fully Fenced Rear'
        WHEN 'Fence Partial'     THEN 'Partially Fenced'
        WHEN 'Fence Privacy'     THEN 'Privacy Fence'
        WHEN 'Pool Community'    THEN 'Community Pool'
        WHEN 'Tennis Community'  THEN 'Community Tennis'
        WHEN 'Water Feature Fountain' THEN 'Fountain'
        WHEN 'Exterior Handicap Accessible' THEN 'Handicap Accessible'
        ELSE n
    END) from unnest("ExteriorAmenities") as n) as "feature_exterior_features[]",
    "NumberofStories" as "feature_stories",
    "UnitEntryLevel" as "feature_entry_level",
    "FloorNumber" as "feature_floor_number",
    "GarageParkingDescription" as "feature_garage_desc[]",
    "GarageParkingOther" as "feature_garage_other[]",
    "ArchitecturalStyle" as "feature_style[]",
    "AssocMaintdBldgExterior" as "feature_assoc_maintains_ext",
    "ProhibitCommentsorReviews" as comments_disabled,
    "LotInformation" as "feature_lot_info[]", -- contains waterfront stuff
    "MandatoryFeeIncludes" as "feature_fee_includes[]",
    "MandatoryFee" as "feature_fee_mandatory",
    "Disclosures" as "feature_disclosures", -- bankowned, foreclosure, etc
    "DisclosureOther" as "feature_disclosures_other[]", -- 55+, AgentOwned, FixerUpper, FloodPlain
    "LotNumber" as "feature_lot_number",
    "LotSize" as "feature_lot_size",
    "MandatoryFeePaid" as "feature_mandatory_fee_interval",
    "RoadAccess" as "feature_road_access[]",
    "EatingArea" as "feature_eating_area[]",
    (select
    array_agg(CASE n
        WHEN '9 feet+Ceiling'      THEN '9Ft+ Ceilings'
        WHEN 'Daylite Windows'     THEN 'Daylight Window'
        WHEN 'Egress Windows'      THEN 'Egress Window'
        WHEN 'Plumbing Roughed In' THEN 'Plumbing Rough-ins'
        WHEN 'Under Tri Level'     THEN 'Under Tri-Level'
        ELSE n
    END) from unnest("BasementDescription") as n) as "feature_basement_desc[]",
    "FullBathsBasement" as "feature_basement_full_baths",
    "BathsHalf" as "feature_half_baths_total",
    "HalfBathsBasement" as "feature_basement_half_baths",
    "FullBathsMain" as "feature_main_full_baths",
    "HalfBathsMain" as "feature_main_half_baths",
    "FullBathsUpper" as "feature_upper_full_baths",
    "HalfBathsUpper" as "feature_upper_half_baths",
    "SemiAnnualPropertyTaxAmt" as "feature_tax_semi_annual",
    "TaxYear" as "feature_tax_year",
    "Township" as "feature_township",
    "Appliances" as "feature_appliances[]",
    "Equipment" as "feature_equipment[]",
    "Buildings" as "feature_buildings[]",
    "Fuel" as "feature_fuel[]",
    "Improvements" as "feature_improvements[]",
    "Zoning" as "feature_zoning",
    "Directions" as "feature_directions",
    "PotentialZoning" as "feature_zoning_potential",
    "PresentZoning" as "feature_zoning_present[]",
    "Topography" as "feature_topography[]",
    "FacilitiesNear" as "feature_facilities_near[]",
    "Water" as "feature_water[]",
    "RoomsTotal" as "feature_total_rooms",
    "TenantPays" as "feature_tenant_pays[]",
    "OwnerPays" as "feature_owner_pays[]",
    "SecurityDeposit" as "feature_security_deposit",
    (select
    array_agg(CASE n
        WHEN 'Built In Book Shelves' THEN 'Built-in Book Shelves'
        WHEN 'Ceiling Cathedral'     THEN 'Cathedral Ceilings'
        WHEN 'Ceiling Raised'        THEN 'Raised Ceilings'
        WHEN 'Ceiling Tray'          THEN 'Tray Ceilings'
        WHEN 'Ceiling Vaulted'       THEN 'Vaulted Ceilings'
        WHEN 'Hardwood Floors'       THEN 'Hardwood Floors'
        WHEN 'Screens Complete'      THEN 'Windows Completely Screened'
        WHEN 'Screens Some'          THEN 'Some Windows Screened'
        WHEN 'Storms Some'           THEN 'Some Storm Windows'
        WHEN 'Storms Complete'       THEN 'Complete Storm Windows'
        WHEN 'Walk In Closet'        THEN 'Walk-in Closet(s)'
        WHEN 'Wood Work Painted'     THEN 'Painted Wood Work'
        WHEN 'Wood Work Stained'     THEN 'Stained Wood Work'
        WHEN 'WoodWorkStain/Painted' THEN 'Stained/Painted Wood Work'
        WHEN 'WetBar'                THEN 'Wet Bar'
        WHEN 'Window Bay Bow'        THEN 'Bay Windows'
        WHEN 'Handicap Accessible Interior' THEN 'Handicap Accessible'
        ELSE n
    END) from unnest("Interior") as n) as "feature_interior_features[]",
    "Lifestyles" as "feature_type[]",
    "Furnished" as "feature_furnished",
    "MasterBedroomDescription" as "feature_master_bed_desc[]",
    (select
    array_agg(
        CASE n
            WHEN '2 Sinks Main Bath'       THEN 'Double Sinks'
            WHEN 'Family Room 2nd Story'   THEN 'Two Story Family Room'
            WHEN 'Foyer - 2 Story'         THEN 'Two Story Foyer'
            WHEN 'Foyer Large'             THEN 'Large Foyer'
            WHEN 'Foyer Small'             THEN 'Small Foyer'
            WHEN 'Great Room - 2 Story'    THEN 'Two Story Great Room'
            WHEN 'In-Law Quarters'         THEN 'In-law Quarters'
            WHEN 'Jack-n-Jill Bath'        THEN 'Jack & Jill Bathroom'
            WHEN 'Living Room - 2 Story'   THEN 'Two Story Living Room'
            WHEN 'Laundry Room Main Level' THEN 'Laundry Room Main'
            WHEN 'Loft'                    THEN 'Loft Area'
            WHEN 'Other Bedroom on Main'   THEN 'Other Bedroom Main'
        ELSE n
    END) from unnest(r.room_types || "AreasInterior") as n) as "feature_rooms[]",
    (select
    array_agg(CASE n
        WHEN 'Deck Main Level' THEN 'Deck Main'
        WHEN 'Multiple Decks' THEN 'Multiple Decks'
        WHEN 'Deck UP' THEN 'Deck Upper'
        WHEN 'Glass Enclosed Patio' THEN 'Glass-enclosed Patio'
        WHEN 'Open Porch' THEN 'Open Patio'
        -- WHEN 'Screened in Porch' THEN 'Screened Patio' NOTE: the lookup value for Screened in Porch and Screened in Patio are both 'Screened in Porch'
        WHEN 'Glass Enclosed Porch' THEN 'Glass-enclosed Porch'
        WHEN 'Porch Open' THEN 'Open Porch'
        WHEN 'Screened in Porch' THEN 'Screened Porch'
        WHEN 'Wrap Around Porch' THEN ''
        ELSE n
    END) from unnest("Porch") as n) as "feature_porch[]",
    "LeaseTerms" as "feature_lease_terms[]",
    "PetDeposit" as "feature_pet_deposit",
    "CondoDescriptionLocation" as "feature_location[]",
    "Pets" as "feature_pets[]",
    "Exterior" as "feature_exterior[]",
    "Cool" as "feature_cooling[]",
    "FireplaceDescription" as "feature_fireplace_desc[]",
    r.rm_master_bedroom,
    r.rm_bedroom_2,
    r.rm_bedroom_3,
    r.rm_bedroom_4,
    r.rm_breakfast_room,
    r.rm_dining_room,
    r.rm_family_room,
    r.rm_great_room,
    r.rm_living_room,
    r.rm_bonus_room_1,
    r.rm_kitchen
FROM
  mibor."Property" p
  LEFT OUTER JOIN rooms r ON p."Matrix_Unique_ID" = r."Listing_MUI",
  mibor.mutation m
WHERE
  p."Matrix_Unique_ID"::text = m.remote_id AND
  m.last_transaction_completed_at IS NOT NULL
;
