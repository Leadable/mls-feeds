BEGIN;

  CREATE TABLE beaches."ActiveAgent"() ;
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_1" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_1" IS 'Office ID';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_5" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_5" IS 'Office Phone';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_10" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_10" IS 'Email';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_17" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_17" IS 'ShortID';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_3" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_3" IS 'First Name';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "OFFICESHORT" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."OFFICESHORT" IS 'Office Short ID';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "SYSTEM_ACCESS" boolean;
    COMMENT ON COLUMN beaches."ActiveAgent"."SYSTEM_ACCESS" IS 'System Access';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_18" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_18" IS 'Middle Name';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "TIMESTAMP" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."TIMESTAMP" IS 'Timestamp';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_21" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_21" IS 'Primary Phone';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_4" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_4" IS 'Last Name';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "STATUS" boolean;
    COMMENT ON COLUMN beaches."ActiveAgent"."STATUS" IS 'Active Status';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_19" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_19" IS 'Full Name';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_20" text;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_20" IS 'Board Code';
     
    ALTER TABLE beaches."ActiveAgent" ADD COLUMN "MEMBER_0" text PRIMARY KEY;
    COMMENT ON COLUMN beaches."ActiveAgent"."MEMBER_0" IS 'Agent ID';
     
  GRANT SELECT, UPDATE, INSERT ON TABLE beaches."ActiveAgent" TO GROUP beaches;
  CREATE TABLE beaches."Office"() ;
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_16" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_16" IS 'Board Code';
     
    ALTER TABLE beaches."Office" ADD COLUMN "IDXOPT" text;
    COMMENT ON COLUMN beaches."Office"."IDXOPT" IS 'IDX Opted In/Out';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_3" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_3" IS 'Office Phone';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_2" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_2" IS 'Name';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_10" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_10" IS 'Street1';
     
    ALTER TABLE beaches."Office" ADD COLUMN "BROKERSHORT" text;
    COMMENT ON COLUMN beaches."Office"."BROKERSHORT" IS 'Broker Short ID';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_13" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_13" IS 'State';
     
    ALTER TABLE beaches."Office" ADD COLUMN "TIMESTAMP" text;
    COMMENT ON COLUMN beaches."Office"."TIMESTAMP" IS 'Timestamp';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_0" text PRIMARY KEY;
    COMMENT ON COLUMN beaches."Office"."OFFICE_0" IS 'Office ID';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_14" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_14" IS 'Zip';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_12" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_12" IS 'City';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_15" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_15" IS 'ShortID';
     
    ALTER TABLE beaches."Office" ADD COLUMN "SYSTEM_ACCESS" boolean;
    COMMENT ON COLUMN beaches."Office"."SYSTEM_ACCESS" IS 'System Access';
     
    ALTER TABLE beaches."Office" ADD COLUMN "STATUS" boolean;
    COMMENT ON COLUMN beaches."Office"."STATUS" IS 'Active Status';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_8" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_8" IS 'Email';
     
    ALTER TABLE beaches."Office" ADD COLUMN "OFFICE_17" text;
    COMMENT ON COLUMN beaches."Office"."OFFICE_17" IS 'Company ID';
     
  GRANT SELECT, UPDATE, INSERT ON TABLE beaches."Office" TO GROUP beaches;
  CREATE TABLE beaches."OpenHouse"() ;
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "PHONE0" text;
    COMMENT ON COLUMN beaches."OpenHouse"."PHONE0" IS 'Agent Primary Phone';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "LIST22" decimal;
    COMMENT ON COLUMN beaches."OpenHouse"."LIST22" IS 'List Price';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "EVENT6" text;
    COMMENT ON COLUMN beaches."OpenHouse"."EVENT6" IS 'Modification Timestamp';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "EVENT8" text;
    COMMENT ON COLUMN beaches."OpenHouse"."EVENT8" IS 'Hosted By';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "EVENT100" text;
    COMMENT ON COLUMN beaches."OpenHouse"."EVENT100" IS 'Event Start';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "OFC0" text;
    COMMENT ON COLUMN beaches."OpenHouse"."OFC0" IS 'Listing Office ID';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "LIST1" text;
    COMMENT ON COLUMN beaches."OpenHouse"."LIST1" IS 'Unique Listing ID';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "ADD5" text;
    COMMENT ON COLUMN beaches."OpenHouse"."ADD5" IS 'City';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "EVENT200" text;
    COMMENT ON COLUMN beaches."OpenHouse"."EVENT200" IS 'Event End';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "MBR7" text;
    COMMENT ON COLUMN beaches."OpenHouse"."MBR7" IS 'Listing Agent LastName';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "MBR0" text;
    COMMENT ON COLUMN beaches."OpenHouse"."MBR0" IS 'Listing Agent ID';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "ADD0" text;
    COMMENT ON COLUMN beaches."OpenHouse"."ADD0" IS 'Street Address';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "PHONE1" text;
    COMMENT ON COLUMN beaches."OpenHouse"."PHONE1" IS 'Office Primary Phone';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "EVENT0" text PRIMARY KEY;
    COMMENT ON COLUMN beaches."OpenHouse"."EVENT0" IS 'Event Unique ID';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "LIST105" text;
    COMMENT ON COLUMN beaches."OpenHouse"."LIST105" IS 'Listing Number';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "EVENT10" text;
    COMMENT ON COLUMN beaches."OpenHouse"."EVENT10" IS 'Area';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "OFC3" text;
    COMMENT ON COLUMN beaches."OpenHouse"."OFC3" IS 'Listing Office Name';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "LIST29" text;
    COMMENT ON COLUMN beaches."OpenHouse"."LIST29" IS 'Listing Area';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "MBR5" text;
    COMMENT ON COLUMN beaches."OpenHouse"."MBR5" IS 'Listing Agent FirstName';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "ADD10" text;
    COMMENT ON COLUMN beaches."OpenHouse"."ADD10" IS 'State';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "EVENT9" text;
    COMMENT ON COLUMN beaches."OpenHouse"."EVENT9" IS 'Hosted Phone';
     
    ALTER TABLE beaches."OpenHouse" ADD COLUMN "OPEN_HOUSE_COMMENT" text;
    COMMENT ON COLUMN beaches."OpenHouse"."OPEN_HOUSE_COMMENT" IS 'Open House Comments';
     
  GRANT SELECT, UPDATE, INSERT ON TABLE beaches."OpenHouse" TO GROUP beaches;
  CREATE TABLE beaches."Property"() INHERITS (property);
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_OR1_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_OR1_room_length" IS 'Other Room Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155056435209000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155056435209000000" IS 'Unit 6: Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_117" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_117" IS 'LP Per ASV';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_12" text;
    COMMENT ON COLUMN beaches."Property"."LIST_12" IS 'Rented Date';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227211342123569000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227211342123569000000" IS 'Building Info: Door Height';
     
    ALTER TABLE beaches."Property" ADD COLUMN "coselling_member_phone" text;
    COMMENT ON COLUMN beaches."Property"."coselling_member_phone" IS 'CoSellingMemberPhone';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165756927327000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165756927327000000" IS 'Unit 4 Info: Half Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202935069920000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202935069920000000" IS 'Cooling';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203003177597000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203003177597000000" IS 'Interior Features';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203359274284000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203359274284000000" IS 'Cooling';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_123" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_123" IS 'Unit Floor #';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_48" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_48" IS 'SqFt - Living';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_15" text;
    COMMENT ON COLUMN beaches."Property"."LIST_15" IS 'Status';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165851095759000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165851095759000000" IS 'Unit 1 Info: Furnished';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_UR_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_UR_room_rem" IS 'Utility Room Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_member_phone" text;
    COMMENT ON COLUMN beaches."Property"."listing_member_phone" IS 'ListingMemberPhone';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033014363719000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033014363719000000" IS 'Location';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155313756060000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155313756060000000" IS 'Unit 4: Off Season Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227211504168891000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227211504168891000000" IS 'Building Info: Seating Capacity';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155459763060000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155459763060000000" IS 'Unit 7: Rent Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165742379878000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165742379878000000" IS 'Unit 3 Info: Half Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203004466211000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203004466211000000" IS 'Subdiv Amenities';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227211833783556000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227211833783556000000" IS 'Building Info: Miles to Expressway';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121228145959662728000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121228145959662728000000" IS 'Unit 6';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203004130697000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203004130697000000" IS 'Rooms';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_109" text;
    COMMENT ON COLUMN beaches."Property"."LIST_109" IS 'Private Pool';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_33" text;
    COMMENT ON COLUMN beaches."Property"."LIST_33" IS 'Street Dir';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_MB_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_MB_room_length" IS 'Master Bedroom Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_2" text;
    COMMENT ON COLUMN beaches."Property"."LIST_2" IS 'List Number Prefix';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_101" text;
    COMMENT ON COLUMN beaches."Property"."LIST_101" IS 'Management Co';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243845568000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243845568000000" IS 'Roof';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228145025715008000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228145025715008000000" IS 'Expenses: Miscellaneous';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228143958474731000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228143958474731000000" IS 'Monetary Info: Gross Oper Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202429621266000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202429621266000000" IS 'Cooling';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140515193530653223000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140515193530653223000000" IS 'Storm Protection: Panel Shutters';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_office_email" text;
    COMMENT ON COLUMN beaches."Property"."listing_office_email" IS 'ListingOfficeEmail';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202936574401000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202936574401000000" IS 'Possession';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_FR_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_FR_room_length" IS 'Family Room Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_4" text;
    COMMENT ON COLUMN beaches."Property"."LIST_4" IS 'MLS Approved';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204732235299000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204732235299000000" IS 'Rental Info: September';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202431346706000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202431346706000000" IS 'Roof';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154125162810000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154125162810000000" IS 'Unit 2: Full Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_0" text;
    COMMENT ON COLUMN beaches."Property"."LIST_0" IS 'MLS Identifier';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_LV_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_LV_room_length" IS 'Living Room Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228150142256837000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228150142256837000000" IS 'Unit 4: Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121205013839414797000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121205013839414797000000" IS 'Lease Info: Land Lease';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DA_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DA_room_width" IS 'Dining Area Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_86" text;
    COMMENT ON COLUMN beaches."Property"."LIST_86" IS 'Geo Area';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155321538104000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155321538104000000" IS 'Unit 3: Off Season Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227211413283292000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227211413283292000000" IS 'Building Info: # of Offices';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228150119205304000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228150119205304000000" IS 'Unit 2: Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032110757551000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032110757551000000" IS 'Avail Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212012359516131000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212012359516131000000" IS 'Elev at Sea Leval';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228141538045232000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228141538045232000000" IS 'Building Info: Seating Capacity';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033225595741000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033225595741000000" IS 'Expenses Incl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202432075264000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202432075264000000" IS 'Terms Considered';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121128235209424878000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121128235209424878000000" IS 'Boat Services: Dock Available';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155027600055000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155027600055000000" IS 'Unit 3: Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228150107369062000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228150107369062000000" IS 'Unit 1: Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033308089362000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033308089362000000" IS 'Avail Docs';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_118" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_118" IS 'Min Days for Lease';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_68" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_68" IS 'Baths - Full';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211025107658704000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211025107658704000000" IS 'Unit 3 Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_43" text;
    COMMENT ON COLUMN beaches."Property"."LIST_43" IS 'Zip Code';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212012012374000000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212012012374000000000" IS 'Utilities Avail';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_PB_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_PB_room_width" IS 'Patio/Balcony Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202431107780000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202431107780000000" IS 'Membership';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121205013909971304000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121205013909971304000000" IS 'Lease Info: Recreation Lease';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_MB_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_MB_room_width" IS 'Master Bedroom Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121129160105603599000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121129160105603599000000" IS 'Special Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DA_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DA_room_level" IS 'Dining Area Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_29" text;
    COMMENT ON COLUMN beaches."Property"."LIST_29" IS 'Area';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_64" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_64" IS '# of Stories';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_member_shortid" text;
    COMMENT ON COLUMN beaches."Property"."selling_member_shortid" IS 'SellingMemberShortId';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BA_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BA_room_width" IS 'Full Bath Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_126" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_126" IS 'Rented Price/SqFt';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204252432334000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204252432334000000" IS 'Rental Info: Furn Annual Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210031948632516000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210031948632516000000" IS 'Ceiling';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20131004121429113880000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20131004121429113880000000" IS 'Unit 8';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_GR_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_GR_room_level" IS 'Great Room Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_member_address" text;
    COMMENT ON COLUMN beaches."Property"."listing_member_address" IS 'ListingMemberAddress';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202937541928000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202937541928000000" IS 'Utilities';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BA_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BA_room_length" IS 'Full Bath Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203004209266000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203004209266000000" IS 'Restrict';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DA_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DA_room_rem" IS 'Dining Area Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20130814021610368182000000" boolean;
    COMMENT ON COLUMN beaches."Property"."FEAT20130814021610368182000000" IS 'Parking: Other - See Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033517950242000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033517950242000000" IS 'Fire Protect';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203002756811000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203002756811000000" IS 'Exterior Features';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_PB_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_PB_room_rem" IS 'Patio/Balcony Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204648276729000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204648276729000000" IS 'Rental Info: April';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20131004121644107567000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20131004121644107567000000" IS 'Unit 8: Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "coselling_member_email" text;
    COMMENT ON COLUMN beaches."Property"."coselling_member_email" IS 'CoSellingMemberEmail';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_74" text;
    COMMENT ON COLUMN beaches."Property"."LIST_74" IS 'Zoning';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_office_shortid" text;
    COMMENT ON COLUMN beaches."Property"."listing_office_shortid" IS 'ListingOfficeShortId';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DN_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DN_room_length" IS 'Dining Room Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20131004122115989264000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20131004122115989264000000" IS 'Unit 8: Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_member_url" text;
    COMMENT ON COLUMN beaches."Property"."selling_member_url" IS 'SellingMemberUrl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_B1_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_B1_room_width" IS 'Half Bath Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204622615353000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204622615353000000" IS 'Rental Info: January';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_40" text;
    COMMENT ON COLUMN beaches."Property"."LIST_40" IS 'State/Province';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032202398521000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032202398521000000" IS 'Fire Protect';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227175239658697000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227175239658697000000" IS 'Income & Expenses: Gross Operating Inc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033813826417000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033813826417000000" IS 'License';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121227164626728117000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121227164626728117000000" IS 'Unit 1 Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228141330591036000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228141330591036000000" IS 'Building Info: # of Offices';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155443618722000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155443618722000000" IS 'Unit 5: Rent Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_member_email" text;
    COMMENT ON COLUMN beaches."Property"."listing_member_email" IS 'ListingMemberEmail';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227175323892345000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227175323892345000000" IS 'Income & Expenses: Annual Net Oper Inc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144834605276000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144834605276000000" IS 'Expenses: Management';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_153" text;
    COMMENT ON COLUMN beaches."Property"."LIST_153" IS 'SqFt Source';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_MB_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_MB_room_level" IS 'Master Bedroom Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR4_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR4_room_width" IS 'Bedroom 4 Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128190049321246000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128190049321246000000" IS 'Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "colisting_member_phone" text;
    COMMENT ON COLUMN beaches."Property"."colisting_member_phone" IS 'CoListingMemberPhone';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212011913198640000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212011913198640000000" IS 'Bldgs Include';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228150302685332000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228150302685332000000" IS 'Unit 7: Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203337846630000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203337846630000000" IS 'Membership';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202841532905000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202841532905000000" IS 'Special Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204631585068000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204631585068000000" IS 'Rental Info: February';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321160102765192000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321160102765192000000" IS 'Storm Protection: Roll-Down Shutters';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154353803528000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154353803528000000" IS 'Unit 5: Half Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20131004121715739619000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20131004121715739619000000" IS 'Unit 8: # of Units';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121205014241434329000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121205014241434329000000" IS 'Mobile/Mfg''d Hm Info: Decal #';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154721588420000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154721588420000000" IS 'Unit 7: Ann Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154912728882000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154912728882000000" IS 'Unit 2: Ann Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202839083270000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202839083270000000" IS 'Boat Services';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_FL_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_FL_room_length" IS 'Florida Room Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_46" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_46" IS 'Geo Lat';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204701748902000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204701748902000000" IS 'Rental Info: June';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155418009250000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155418009250000000" IS 'Unit 2: Rent Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_office_url" text;
    COMMENT ON COLUMN beaches."Property"."listing_office_url" IS 'ListingOfficeUrl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_34" text;
    COMMENT ON COLUMN beaches."Property"."LIST_34" IS 'Street Name';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_115" text;
    COMMENT ON COLUMN beaches."Property"."LIST_115" IS 'Multiple Ofrs Acptd';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212427414084000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212427414084000000" IS 'Monetary Info: Annual Gross Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_KI_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_KI_room_length" IS 'Kitchen Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_104" text;
    COMMENT ON COLUMN beaches."Property"."LIST_104" IS 'Display on Public Websites';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_KI_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_KI_room_level" IS 'Kitchen Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_office_phone" text;
    COMMENT ON COLUMN beaches."Property"."selling_office_phone" IS 'SellingOfficePhone';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_UR_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_UR_room_width" IS 'Utility Room Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144951848504000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144951848504000000" IS 'Expenses: Trash';
     
    ALTER TABLE beaches."Property" ADD COLUMN "coselling_member_address" text;
    COMMENT ON COLUMN beaches."Property"."coselling_member_address" IS 'CoSellingMemberAddress';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202432253492000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202432253492000000" IS 'View';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20131004122154260837000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20131004122154260837000000" IS 'Unit 8: Rent Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212012111824567000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212012111824567000000" IS 'Miscellaneous';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_FR_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_FR_room_rem" IS 'Family Room Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033435812725000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033435812725000000" IS 'Miscellaneous 1';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321160712934648000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321160712934648000000" IS 'Equestrian Features: # of Stalls';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20131004122137592114000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20131004122137592114000000" IS 'Unit 8: Off Season Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170502399560000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170502399560000000" IS 'Unit 2 Info: SqFt';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032303651504000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032303651504000000" IS 'Comm Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_87" text;
    COMMENT ON COLUMN beaches."Property"."LIST_87" IS 'Timestamp';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204848261899000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204848261899000000" IS 'Rental Info: December';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121205014333222849000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121205014333222849000000" IS 'Mobile/Mfg''d Hm Info: Brand Name';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211025311002579000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211025311002579000000" IS 'Avail Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_97" text;
    COMMENT ON COLUMN beaches."Property"."LIST_97" IS 'MLS #';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212011824746523000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212011824746523000000" IS 'Develop Status';
     
    ALTER TABLE beaches."Property" ADD COLUMN "coselling_member_url" text;
    COMMENT ON COLUMN beaches."Property"."coselling_member_url" IS 'CoSellingMemberUrl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228143940136446000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228143940136446000000" IS 'Monetary Info: Gross Sched Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_PR_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_PR_room_width" IS 'Porch Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228145143907518000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228145143907518000000" IS 'Expenses: Maint & Repair';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228141956418528000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228141956418528000000" IS 'Building Info: Miles to Expressway';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212012200798860000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212012200798860000000" IS 'Soil Type';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154224153901000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154224153901000000" IS 'Unit 7: Full Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_47" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_47" IS 'Geo Lon';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204654956995000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204654956995000000" IS 'Rental Info: May';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202914323008000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202914323008000000" IS 'Heating';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_OR1_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_OR1_room_width" IS 'Other Room Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_PB_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_PB_room_length" IS 'Patio/Balcony Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243819854000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243819854000000" IS 'Interior Features';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_PR_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_PR_room_level" IS 'Porch Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_54" text;
    COMMENT ON COLUMN beaches."Property"."LIST_54" IS 'Short Sale Addendum';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121228145933917618000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121228145933917618000000" IS 'Unit 3';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121228145915105714000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121228145915105714000000" IS 'Unit 1';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_FL_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_FL_room_level" IS 'Florida Room Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_27" text;
    COMMENT ON COLUMN beaches."Property"."LIST_27" IS 'REO';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170223546124000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170223546124000000" IS 'Unit 4 Info: Monthly Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228141522363023000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228141522363023000000" IS 'Building Info: Interior Ceiling Hgt';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR2_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR2_room_rem" IS 'Bedroom 2 Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_7" text;
    COMMENT ON COLUMN beaches."Property"."LIST_7" IS 'Property Group ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154853060349000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154853060349000000" IS 'Unit 3: Ann Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_124" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_124" IS 'Garage Spaces';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202935671233000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202935671233000000" IS 'Flooring';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR4_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR4_room_rem" IS 'Bedroom 4 Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165100067673000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165100067673000000" IS 'Unit 3 Info: Bedrooms';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR5_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR5_room_length" IS 'Bedroom 5 Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121228145942310459000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121228145942310459000000" IS 'Unit 4';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_63" text;
    COMMENT ON COLUMN beaches."Property"."LIST_63" IS 'CoSelling Agent ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321155233891161000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321155233891161000000" IS 'Storm Protection: Impact Glass';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_KI_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_KI_room_width" IS 'Kitchen Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DE_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DE_room_length" IS 'Den Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_80" text;
    COMMENT ON COLUMN beaches."Property"."LIST_80" IS 'Parcel ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202915041661000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202915041661000000" IS 'Possession';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154144683049000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154144683049000000" IS 'Unit 4: Full Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_76" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_76" IS 'Tax Year';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_LV_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_LV_room_rem" IS 'Living Room Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154845614814000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154845614814000000" IS 'Unit 4: Ann Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "coselling_member_fax" text;
    COMMENT ON COLUMN beaches."Property"."coselling_member_fax" IS 'CoSellingMemberFax';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_23" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_23" IS 'Rented Price';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202937320302000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202937320302000000" IS 'Special Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321154926602283000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321154926602283000000" IS 'Equestrian Features: # of Barns';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155411234104000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155411234104000000" IS 'Unit 1: Rent Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154010395842000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154010395842000000" IS 'Unit 2: # of Units';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR3_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR3_room_length" IS 'Bedroom 3 Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_member_name" text;
    COMMENT ON COLUMN beaches."Property"."listing_member_name" IS 'ListingMemberName';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033248961257000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033248961257000000" IS 'Avail Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "colisting_member_email" text;
    COMMENT ON COLUMN beaches."Property"."colisting_member_email" IS 'CoListingMemberEmail';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228143906827998000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228143906827998000000" IS 'Monetary Info: Total Mrtg Balance';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202916054421000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202916054421000000" IS 'Utilities';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_49" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_49" IS 'SqFt - Total';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321155658124989000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321155658124989000000" IS 'Storm Protection: Panel Shutters';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202840610602000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202840610602000000" IS 'Membership';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170530215481000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170530215481000000" IS 'Unit 2 Info: Monthly Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170051830241000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170051830241000000" IS 'Unit 3 Info: Furnished';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228153939518098000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228153939518098000000" IS 'Unit 5: # of Units';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212559287029000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212559287029000000" IS 'Monetary Info: Cost of Sales';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243835004000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243835004000000" IS 'Construction';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_130" text;
    COMMENT ON COLUMN beaches."Property"."LIST_130" IS 'Development Name';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121205014222365857000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121205014222365857000000" IS 'Mobile/Mfg''d Hm Info: Mobile Home Size';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_127" text;
    COMMENT ON COLUMN beaches."Property"."LIST_127" IS 'Date Available';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DE_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DE_room_rem" IS 'Den Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211025047102135000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211025047102135000000" IS 'Unit 2 Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_77" text;
    COMMENT ON COLUMN beaches."Property"."LIST_77" IS 'Subdivision';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144155207443000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144155207443000000" IS 'Monetary Info: Net Oper Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154927948803000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154927948803000000" IS 'Unit 1: Ann Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203002461896000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203002461896000000" IS 'Cooling';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20130305140959216036000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20130305140959216036000000" IS 'Contingents';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212449139134000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212449139134000000" IS 'Monetary Info: Gross Oper Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR5_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR5_room_rem" IS 'Bedroom 5 Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121227164648718656000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121227164648718656000000" IS 'Unit 2 Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154116024380000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154116024380000000" IS 'Unit 1: Full Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203307544548000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203307544548000000" IS 'Restrict';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_96" text;
    COMMENT ON COLUMN beaches."Property"."LIST_96" IS 'HOPA';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203004740051000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203004740051000000" IS 'Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_105" text;
    COMMENT ON COLUMN beaches."Property"."LIST_105" IS 'Listing ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203004843709000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203004843709000000" IS 'View';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212507613058000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212507613058000000" IS 'Monetary Info: Total Expenses';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_member_phone" text;
    COMMENT ON COLUMN beaches."Property"."selling_member_phone" IS 'SellingMemberPhone';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_UR_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_UR_room_length" IS 'Utility Room Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_67" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_67" IS 'Baths - Total';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_120" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_120" IS 'HOA Fee/Month';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_52" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_52" IS 'Ttl Units in Complex';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121207034326840518000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121207034326840518000000" IS 'Miscellaneous';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_114" text;
    COMMENT ON COLUMN beaches."Property"."LIST_114" IS 'Bldg #';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121227164709811612000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121227164709811612000000" IS 'Unit 3 Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228143849385595000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228143849385595000000" IS 'Monetary Info: Ttl Assume Loans';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20131004122101346071000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20131004122101346071000000" IS 'Unit 8: Ann Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_22" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_22" IS 'Rental Price';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20130305141024716345000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20130305141024716345000000" IS 'Contingents';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202914938674000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202914938674000000" IS 'Parking';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20131004121920825897000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20131004121920825897000000" IS 'Unit 8: Full Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_112" text;
    COMMENT ON COLUMN beaches."Property"."LIST_112" IS 'Pets Allowed';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154258585861000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154258585861000000" IS 'Unit 6: Half Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211025129285277000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211025129285277000000" IS 'Unit 3 Parking';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_122" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_122" IS 'Dock #';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144115925394000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144115925394000000" IS 'Monetary Info: Vacancy Rate';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_133" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_133" IS 'Picture Count';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144922388596000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144922388596000000" IS 'Expenses: Insurance';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_office_address" text;
    COMMENT ON COLUMN beaches."Property"."selling_office_address" IS 'SellingOfficeAddress';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165115351510000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165115351510000000" IS 'Unit 4 Info: Bedrooms';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_3" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_3" IS 'List Number Main';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_37" text;
    COMMENT ON COLUMN beaches."Property"."LIST_37" IS 'Street Suffix';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228150253031892000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228150253031892000000" IS 'Unit 6: Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155340869917000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155340869917000000" IS 'Unit 1: Off Season Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211024909824726000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211024909824726000000" IS 'Unit 1 Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20140321160621922979000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20140321160621922979000000" IS 'Equestrian Features';
     
    ALTER TABLE beaches."Property" ADD COLUMN "colisting_member_fax" text;
    COMMENT ON COLUMN beaches."Property"."colisting_member_fax" IS 'CoListingMemberFax';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_106" text;
    COMMENT ON COLUMN beaches."Property"."LIST_106" IS 'Office ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321152710047280000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321152710047280000000" IS 'Equestrian Features: # of Barns';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_62" text;
    COMMENT ON COLUMN beaches."Property"."LIST_62" IS 'Selling Agent ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165050028336000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165050028336000000" IS 'Unit 2 Info: Bedrooms';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227211655246294000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227211655246294000000" IS 'Building Info: Miles to Beach';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212011743686236000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212011743686236000000" IS 'Location';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20130205152427545796000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20130205152427545796000000" IS 'Private Pool: Pool Size (W x L)';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144131654032000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144131654032000000" IS 'Monetary Info: Other Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203002310888000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203002310888000000" IS 'Boat Services';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_office_fax" text;
    COMMENT ON COLUMN beaches."Property"."selling_office_fax" IS 'SellingOfficeFax';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_8" text;
    COMMENT ON COLUMN beaches."Property"."LIST_8" IS 'Property Type';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202432319685000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202432319685000000" IS 'Waterfront';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204453924199000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204453924199000000" IS 'Rental Info: Unfur Off Season Rnt';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_office_url" text;
    COMMENT ON COLUMN beaches."Property"."selling_office_url" IS 'SellingOfficeUrl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_office_fax" text;
    COMMENT ON COLUMN beaches."Property"."listing_office_fax" IS 'ListingOfficeFax';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144849850194000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144849850194000000" IS 'Expenses: Accounting & Legal';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20140321154556237699000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20140321154556237699000000" IS 'Equestrian Features';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243751321000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243751321000000" IS 'Design';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155435275225000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155435275225000000" IS 'Unit 4: Rent Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202430480207000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202430480207000000" IS 'Heating';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_member_address" text;
    COMMENT ON COLUMN beaches."Property"."selling_member_address" IS 'SellingMemberAddress';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202429990607000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202429990607000000" IS 'Exterior Features';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_93" text;
    COMMENT ON COLUMN beaches."Property"."LIST_93" IS 'For Sale';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202914212504000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202914212504000000" IS 'Flooring';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155016249275000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155016249275000000" IS 'Unit 2: Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212012332663101000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212012332663101000000" IS 'Usage';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228145005508012000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228145005508012000000" IS 'Expenses: Utilities';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155255397322000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155255397322000000" IS 'Unit 6: Off Season Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "coselling_member_name" text;
    COMMENT ON COLUMN beaches."Property"."coselling_member_name" IS 'CoSellingMemberName';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228153917479224000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228153917479224000000" IS 'Unit 7: # of Units';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140515193409428740000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140515193409428740000000" IS 'Storm Protection: Electric/Power Shutters';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032031601627000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032031601627000000" IS 'Sale Includes';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_office_phone" text;
    COMMENT ON COLUMN beaches."Property"."listing_office_phone" IS 'ListingOfficePhone';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_95" text;
    COMMENT ON COLUMN beaches."Property"."LIST_95" IS 'Management Phone';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128194256026088000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128194256026088000000" IS 'Rooms';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_6" text;
    COMMENT ON COLUMN beaches."Property"."LIST_6" IS 'CoList Agent ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_5" text;
    COMMENT ON COLUMN beaches."Property"."LIST_5" IS 'Agent ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_75" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_75" IS 'Real Estate Taxes';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154838316596000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154838316596000000" IS 'Unit 5: Ann Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154414206789000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154414206789000000" IS 'Unit 2: Half Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_119" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_119" IS '# of Meters';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_LV_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_LV_room_level" IS 'Living Room Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227175302252820000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227175302252820000000" IS 'Income & Expenses: Annual Total Expense';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_FL_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_FL_room_width" IS 'Florida Room Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211025226683460000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211025226683460000000" IS 'Unit 4 Parking';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154134499206000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154134499206000000" IS 'Unit 3: Full Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211025246111452000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211025246111452000000" IS 'Tenant Pays';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_39" text;
    COMMENT ON COLUMN beaches."Property"."LIST_39" IS 'City';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155451456770000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155451456770000000" IS 'Unit 6: Rent Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_162" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_162" IS 'Document Count';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170555568155000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170555568155000000" IS 'Unit 1 Info: Lease Ends';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_131" text;
    COMMENT ON COLUMN beaches."Property"."LIST_131" IS 'Move-in Requirements';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121205014045517816000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121205014045517816000000" IS 'Lease Info: Lease Times p/Year';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_148" text;
    COMMENT ON COLUMN beaches."Property"."LIST_148" IS 'Membership Equity';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211024950069435000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211024950069435000000" IS 'Unit 2 Parking';
     
    ALTER TABLE beaches."Property" ADD COLUMN "UNBRANDEDIDXVIRTUALTOUR" text;
    COMMENT ON COLUMN beaches."Property"."UNBRANDEDIDXVIRTUALTOUR" IS 'UnBranded Virtual Tour';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170743365263000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170743365263000000" IS 'Unit 1 Info: SqFt';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203002864650000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203002864650000000" IS 'Equip/Appl Included';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144726491665000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144726491665000000" IS 'Monetary Info: Inc/Exp Stmnt Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212012307995894000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212012307995894000000" IS 'Trees';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121228150011364129000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121228150011364129000000" IS 'Unit 7';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_111" text;
    COMMENT ON COLUMN beaches."Property"."LIST_111" IS 'Waterfrontage';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_PR_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_PR_room_rem" IS 'Porch Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032127871857000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032127871857000000" IS 'Miscellaneous 1';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202914743943000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202914743943000000" IS 'Maintenance Fee Incl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243919925000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243919925000000" IS 'Exterior Features';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228145207443843000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228145207443843000000" IS 'Expenses: Common Area Maint';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_LF_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_LF_room_width" IS 'Loft Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212658054620000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212658054620000000" IS 'Monetary Info: Source of Expenses';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154209801697000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154209801697000000" IS 'Unit 6: Full Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321152634871753000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321152634871753000000" IS 'Equestrian Features: # of Stalls';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_16" text;
    COMMENT ON COLUMN beaches."Property"."LIST_16" IS 'Status Change Date';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_GR_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_GR_room_length" IS 'Great Room Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_73" text;
    COMMENT ON COLUMN beaches."Property"."LIST_73" IS 'High School';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20140321152154756346000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20140321152154756346000000" IS 'Equestrian Features';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202431248446000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202431248446000000" IS 'Possession';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202936296956000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202936296956000000" IS 'Maintenance Fee Incl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_59" text;
    COMMENT ON COLUMN beaches."Property"."LIST_59" IS 'Governing Bodies';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_member_fax" text;
    COMMENT ON COLUMN beaches."Property"."selling_member_fax" IS 'SellingMemberFax';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202915944331000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202915944331000000" IS 'Terms Considered';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR3_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR3_room_width" IS 'Bedroom 3 Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154021272636000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154021272636000000" IS 'Unit 1: # of Units';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_161" text;
    COMMENT ON COLUMN beaches."Property"."LIST_161" IS 'Document Timestamp';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_121" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_121" IS 'Application Fee';
     
    ALTER TABLE beaches."Property" ADD COLUMN "BOARDCODE" text;
    COMMENT ON COLUMN beaches."Property"."BOARDCODE" IS 'List Office Board Code';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR5_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR5_room_width" IS 'Bedroom 5 Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321160418630820000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321160418630820000000" IS 'Storm Protection: Electric/Power Shutters';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202937431318000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202937431318000000" IS 'Terms Considered';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202937679400000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202937679400000000" IS 'Waterfront';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_45" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_45" IS 'Mbrshp Equity Amount';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155245565733000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155245565733000000" IS 'Unit 7: Off Season Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203631453311000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203631453311000000" IS 'Window Treatments';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_office_name" text;
    COMMENT ON COLUMN beaches."Property"."listing_office_name" IS 'ListingOfficeName';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203004310572000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203004310572000000" IS 'Security';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210031919968945000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210031919968945000000" IS 'Land Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_office_address" text;
    COMMENT ON COLUMN beaches."Property"."listing_office_address" IS 'ListingOfficeAddress';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227211803599191000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227211803599191000000" IS 'Building Info: # of Bays';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144941199867000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144941199867000000" IS 'Expenses: R.E. Taxes';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_53" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_53" IS 'Year Built';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228145049104661000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228145049104661000000" IS 'Expenses: Total Expenses';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202430370061000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202430370061000000" IS 'Flooring';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_163" text;
    COMMENT ON COLUMN beaches."Property"."LIST_163" IS 'List Office Board ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212725929800000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212725929800000000" IS 'Monetary Info: Fixtures/Equipment';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_member_email" text;
    COMMENT ON COLUMN beaches."Property"."selling_member_email" IS 'SellingMemberEmail';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170318331974000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170318331974000000" IS 'Unit 2 Info: Lease Ends';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_69" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_69" IS 'Baths - Half';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_56" text;
    COMMENT ON COLUMN beaches."Property"."LIST_56" IS 'Lot Dimensions';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_82" text;
    COMMENT ON COLUMN beaches."Property"."LIST_82" IS 'Directions';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_31" text;
    COMMENT ON COLUMN beaches."Property"."LIST_31" IS 'Street #';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144903378327000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144903378327000000" IS 'Expenses: Advertising';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128194227449710000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128194227449710000000" IS 'Master Bedroom/Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165130834743000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165130834743000000" IS 'Unit 4 Info: Full Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154201501293000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154201501293000000" IS 'Unit 5: Full Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194244411580000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194244411580000000" IS 'Utilities';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121228145926063730000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121228145926063730000000" IS 'Unit 2';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212610982048000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212610982048000000" IS 'Monetary Info: Other Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243889344000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243889344000000" IS 'Terms Considered';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_member_url" text;
    COMMENT ON COLUMN beaches."Property"."listing_member_url" IS 'ListingMemberUrl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170248888741000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170248888741000000" IS 'Unit 4 Info: Lease Ends';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20130305141057035991000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20130305141057035991000000" IS 'Contingents';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165140328417000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165140328417000000" IS 'Unit 3 Info: Full Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228145108140836000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228145108140836000000" IS 'Expenses: Service';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203003026714000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203003026714000000" IS 'Furnished';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_26" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_26" IS 'Total Assessed Value';
     
    ALTER TABLE beaches."Property" ADD COLUMN "colisting_member_url" text;
    COMMENT ON COLUMN beaches."Property"."colisting_member_url" IS 'CoListingMemberUrl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128190237228652000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128190237228652000000" IS 'View';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_LF_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_LF_room_length" IS 'Loft Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121231212115765606000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121231212115765606000000" IS 'ADA Compliant';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144034116911000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144034116911000000" IS 'Monetary Info: Total Expenses';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121227155358211179000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121227155358211179000000" IS 'ADA Compliant';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204318929526000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204318929526000000" IS 'Rental Info: Furn Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212544890655000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212544890655000000" IS 'Monetary Info: Total Mrtg Balance';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_71" text;
    COMMENT ON COLUMN beaches."Property"."LIST_71" IS 'Short Sale';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_office_email" text;
    COMMENT ON COLUMN beaches."Property"."selling_office_email" IS 'SellingOfficeEmail';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR2_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR2_room_width" IS 'Bedroom 2 Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212355160226000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212355160226000000" IS 'Monetary Info: Ttl Assume Loans';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204525335245000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204525335245000000" IS 'Rental Info: Unfurn Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DN_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DN_room_rem" IS 'Dining Room Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202431535736000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202431535736000000" IS 'Restrict';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154423541852000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154423541852000000" IS 'Unit 1: Half Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR3_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR3_room_level" IS 'Bedroom 3 Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033551300773000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033551300773000000" IS 'Ceiling';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_147" text;
    COMMENT ON COLUMN beaches."Property"."LIST_147" IS 'Sale MLS ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "colisting_member_shortid" text;
    COMMENT ON COLUMN beaches."Property"."colisting_member_shortid" IS 'CoListingMemberShortId';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR1_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR1_room_length" IS 'Bedroom 1 Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202430654127000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202430654127000000" IS 'Lot Description';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170105604906000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170105604906000000" IS 'Unit 4 Info: Furnished';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121205013955141981000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121205013955141981000000" IS 'Lease Info: Min Days to Lease';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202841857761000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202841857761000000" IS 'View';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_61" text;
    COMMENT ON COLUMN beaches."Property"."LIST_61" IS 'Selling Agency ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210031859306151000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210031859306151000000" IS 'Type of Building';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204213247044000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204213247044000000" IS 'Rental Info: Pet Fee';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228141945056231000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228141945056231000000" IS 'Building Info: Miles to Beach';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154244640263000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154244640263000000" IS 'Unit 7: Half Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212011939214790000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212011939214790000000" IS 'Improvements';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203003104396000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203003104396000000" IS 'Heating';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR1_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR1_room_width" IS 'Bedroom 1 Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DN_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DN_room_width" IS 'Dining Room Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_GR_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_GR_room_width" IS 'Great Room Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_LF_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_LF_room_level" IS 'Loft Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20130305140913383704000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20130305140913383704000000" IS 'Contingents';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121207034401645617000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121207034401645617000000" IS 'Comm Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228153953273352000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228153953273352000000" IS 'Unit 4: # of Units';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204154327948000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204154327948000000" IS 'Rental Info: Last Month Deposit';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228145127514372000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228145127514372000000" IS 'Expenses: Supplies';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_72" text;
    COMMENT ON COLUMN beaches."Property"."LIST_72" IS 'Hardship Package';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243720208000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243720208000000" IS 'Waterfront';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155003865659000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155003865659000000" IS 'Unit 1: Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_GR_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_GR_room_rem" IS 'Great Room Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203002977441000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203002977441000000" IS 'Flooring';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128190158529252000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128190158529252000000" IS 'Mobile Features';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128194156807054000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128194156807054000000" IS 'Lot Description';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227171833310130000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227171833310130000000" IS 'Unit 3 Info: Monthly Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_35" text;
    COMMENT ON COLUMN beaches."Property"."LIST_35" IS 'Unit #';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155109244719000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155109244719000000" IS 'Unit 7: Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202915832531000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202915832531000000" IS 'Special Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_91" text;
    COMMENT ON COLUMN beaches."Property"."LIST_91" IS 'Business Type';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032004030746000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032004030746000000" IS 'Location';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202432180006000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202432180006000000" IS 'Utilities';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227211525945049000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227211525945049000000" IS 'Building Info: # of Loading Docks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_51" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_51" IS 'Total Floors in Bldg';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033611927253000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033611927253000000" IS 'Road';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202935157741000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202935157741000000" IS 'Construction';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033138992260000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033138992260000000" IS 'Sale Includes';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_132" text;
    COMMENT ON COLUMN beaches."Property"."LIST_132" IS 'Entry Timestamp';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_office_shortid" text;
    COMMENT ON COLUMN beaches."Property"."selling_office_shortid" IS 'SellingOfficeShortId';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243907252000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243907252000000" IS 'Taxes';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_113" text;
    COMMENT ON COLUMN beaches."Property"."LIST_113" IS 'Short Sale A/U';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_57" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_57" IS 'Acres';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154309379431000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154309379431000000" IS 'Unit 4: Half Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_member_fax" text;
    COMMENT ON COLUMN beaches."Property"."listing_member_fax" IS 'ListingMemberFax';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_85" text;
    COMMENT ON COLUMN beaches."Property"."LIST_85" IS 'Elementary School';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_110" text;
    COMMENT ON COLUMN beaches."Property"."LIST_110" IS 'Training Available';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203003854226000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203003854226000000" IS 'Parking';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_78" text;
    COMMENT ON COLUMN beaches."Property"."LIST_78" IS 'Public Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_PR_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_PR_room_length" IS 'Porch Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR3_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR3_room_rem" IS 'Bedroom 3 Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203536428561000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203536428561000000" IS 'Boat Services';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204751605885000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204751605885000000" IS 'Rental Info: November';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155425827751000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155425827751000000" IS 'Unit 3: Rent Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032219382370000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032219382370000000" IS 'Tenant Pays';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_LF_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_LF_room_rem" IS 'Loft Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202841774017000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202841774017000000" IS 'Utilities On Site';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202840172334000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202840172334000000" IS 'Lot Description';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033352612005000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033352612005000000" IS 'Lease Term Rem';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_32" text;
    COMMENT ON COLUMN beaches."Property"."LIST_32" IS 'Middle School';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033034262092000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033034262092000000" IS 'Type of Building';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202936671897000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202936671897000000" IS 'Roof';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_LV_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_LV_room_width" IS 'Living Room Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212329016412000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212329016412000000" IS 'Monetary Info: Assum Chattel Bal';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033414179386000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033414179386000000" IS 'Ownership';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DN_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DN_room_level" IS 'Dining Room Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202841653258000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202841653258000000" IS 'Terms Considered';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228150131464025000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228150131464025000000" IS 'Unit 3: Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "VOWAddr" boolean;
    COMMENT ON COLUMN beaches."Property"."VOWAddr" IS 'VOWAddressDisplay';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212011847002912000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212011847002912000000" IS 'Comp Plan Use';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211024929412648000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211024929412648000000" IS 'Unit 1 Parking';
     
    ALTER TABLE beaches."Property" ADD COLUMN "VOWComm" boolean;
    COMMENT ON COLUMN beaches."Property"."VOWComm" IS 'VOWConsumerComment';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154402787088000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154402787088000000" IS 'Unit 3: Half Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154736068731000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154736068731000000" IS 'Unit 6: Ann Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243841543000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243841543000000" IS 'Flooring';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165211548718000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165211548718000000" IS 'Unit 1 Info: Full Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202432035635000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202432035635000000" IS 'Taxes';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212012128917589000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212012128917589000000" IS 'Avail Docs';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202429699010000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202429699010000000" IS 'Construction';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202432413205000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202432413205000000" IS 'Window Treatments';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121228145949988804000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121228145949988804000000" IS 'Unit 5';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121209033454571173000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121209033454571173000000" IS 'Miscellaneous 2';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR5_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR5_room_level" IS 'Bedroom 5 Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202431279127000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202431279127000000" IS 'Private Pool';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR2_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR2_room_length" IS 'Bedroom 2 Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20140515192737500316000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20140515192737500316000000" IS 'Storm Protection';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202915149760000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202915149760000000" IS 'Roof';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212627704911000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212627704911000000" IS 'Monetary Info: Net Oper Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204741883892000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204741883892000000" IS 'Rental Info: October';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212856394893000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212856394893000000" IS 'Monetary Info: Insurance';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204340438095000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204340438095000000" IS 'Rental Info: Furn Off Season Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_58" text;
    COMMENT ON COLUMN beaches."Property"."LIST_58" IS 'Front Exp';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202913609761000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202913609761000000" IS 'Cooling';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243879313000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243879313000000" IS 'Security';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203004910529000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203004910529000000" IS 'Waterfront';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20140321155001646303000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20140321155001646303000000" IS 'Storm Protection';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032248421202000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032248421202000000" IS 'Lease';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_36" text;
    COMMENT ON COLUMN beaches."Property"."LIST_36" IS 'Street Post Dir';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228153930032152000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228153930032152000000" IS 'Unit 6: # of Units';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20131004121952502251000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20131004121952502251000000" IS 'Unit 8: Half Baths';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204719305693000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204719305693000000" IS 'Rental Info: August';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165537602365000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165537602365000000" IS 'Unit 1 Info: Half Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140515194433921267000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140515194433921267000000" IS 'Storm Protection: Permanent Generator';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155331603346000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155331603346000000" IS 'Unit 2: Off Season Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165733207664000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165733207664000000" IS 'Unit 2 Info: Half Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227211732273682000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227211732273682000000" IS 'Building Info: # of Employees';
     
    ALTER TABLE beaches."Property" ADD COLUMN "colisting_member_name" text;
    COMMENT ON COLUMN beaches."Property"."colisting_member_name" IS 'CoListingMemberName';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_B1_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_B1_room_length" IS 'Half Bath Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228144216205797000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228144216205797000000" IS 'Monetary Info: Source of Expenses';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_19" text;
    COMMENT ON COLUMN beaches."Property"."LIST_19" IS 'Contingent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140515193737175101000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140515193737175101000000" IS 'Storm Protection: Roll-Down Shutters';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212844508171000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212844508171000000" IS 'Monetary Info: Inventory';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_134" text;
    COMMENT ON COLUMN beaches."Property"."LIST_134" IS 'Picture Timestamp';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140515194210116897000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140515194210116897000000" IS 'Storm Protection: Other Protection';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140515193211844806000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140515193211844806000000" IS 'Storm Protection: Accordian Shutters';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227212804645302000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227212804645302000000" IS 'Monetary Info: Inc/Exp Stmnt Period';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_office_name" text;
    COMMENT ON COLUMN beaches."Property"."selling_office_name" IS 'SellingOfficeName';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206203003810971000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206203003810971000000" IS 'Membership';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_1" text PRIMARY KEY;
    COMMENT ON COLUMN beaches."Property"."LIST_1" IS 'Internal Listing ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202936970585000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202936970585000000" IS 'Security';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203448419411000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203448419411000000" IS 'Dining Area';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228141707970724000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228141707970724000000" IS 'Building Info: # of Bays';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155303348838000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155303348838000000" IS 'Unit 5: Off Season Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121227175716614834000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121227175716614834000000" IS 'Source of Expenses';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_FR_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_FR_room_width" IS 'Family Room Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321154856397684000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321154856397684000000" IS 'Equestrian Features: # of Stalls';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR4_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR4_room_length" IS 'Bedroom 4 Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228141728638669000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228141728638669000000" IS 'Building Info: Door Height';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204543063125000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204543063125000000" IS 'Rental Info: Unfurn Annual Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212012036130762000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212012036130762000000" IS 'Roads';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155047638721000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155047638721000000" IS 'Unit 5: Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204639885393000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204639885393000000" IS 'Rental Info: March';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170539278543000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170539278543000000" IS 'Unit 1 Info: Monthly Income';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_9" text;
    COMMENT ON COLUMN beaches."Property"."LIST_9" IS 'Type';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_168" text;
    COMMENT ON COLUMN beaches."Property"."LIST_168" IS 'List Agent Board Code';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032143719113000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032143719113000000" IS 'Miscellaneous 2';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121211025151415154000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121211025151415154000000" IS 'Unit 4 Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170152241865000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170152241865000000" IS 'Unit 4 Info: SqFt';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243786373000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243786373000000" IS 'Heating';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121227164720236810000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121227164720236810000000" IS 'Unit 4 Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228155038353401000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228155038353401000000" IS 'Unit 4: Seasonal Rent';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_81" text;
    COMMENT ON COLUMN beaches."Property"."LIST_81" IS 'Legal Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165153405893000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165153405893000000" IS 'Unit 2 Info: Full Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203514053297000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203514053297000000" IS 'Guest House';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202431973610000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202431973610000000" IS 'Special Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321155533741500000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321155533741500000000" IS 'Storm Protection: Accordian Shutters';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227171811857020000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227171811857020000000" IS 'Unit 3 Info: SqFt';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20130204201733780866000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20130204201733780866000000" IS 'Ground Cover';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202841357230000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202841357230000000" IS 'Subdiv Info';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DE_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DE_room_level" IS 'Den Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121207033556924996000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121207033556924996000000" IS 'Tenant Pays';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321160731963322000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321160731963322000000" IS 'Storm Protection: Other Protection';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20130205152346810345000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20130205152346810345000000" IS 'Private Pool: Pool Size (W x L)';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202935801841000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202935801841000000" IS 'Heating';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_FL_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_FL_room_rem" IS 'Florida Room Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_66" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_66" IS 'Total Bedrooms';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227211748376588000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227211748376588000000" IS 'Building Info: Bar Stools';
     
    ALTER TABLE beaches."Property" ADD COLUMN "VOWList" boolean;
    COMMENT ON COLUMN beaches."Property"."VOWList" IS 'VOWEntireListingDisplay';
     
    ALTER TABLE beaches."Property" ADD COLUMN "selling_member_name" text;
    COMMENT ON COLUMN beaches."Property"."selling_member_name" IS 'SellingMemberName';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121205014307024734000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121205014307024734000000" IS 'Mobile/Mfg''d Hm Info: Serial #';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_28" text;
    COMMENT ON COLUMN beaches."Property"."LIST_28" IS 'Terms of Sale';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202430943072000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202430943072000000" IS 'Maintenance Fee Incl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DA_room_length" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DA_room_length" IS 'Dining Area Length';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321161103935150000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321161103935150000000" IS 'Storm Protection: Permanent Generator';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228141754532717000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228141754532717000000" IS 'Building Info: # of Loading Docks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228150214842921000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228150214842921000000" IS 'Unit 5: Unit Desc';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202915449375000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202915449375000000" IS 'Security';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_FR_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_FR_room_level" IS 'Family Room Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20130917171925858182000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20130917171925858182000000" IS 'Master Bedroom/Bath';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20130103182729732508000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20130103182729732508000000" IS 'ADA Compliant';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203155695117000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203155695117000000" IS 'Parking';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202913690592000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202913690592000000" IS 'Construction';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20130305141131323666000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20130305141131323666000000" IS 'Contingents';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_65" integer;
    COMMENT ON COLUMN beaches."Property"."LIST_65" IS 'Total Units in Bldg';
     
    ALTER TABLE beaches."Property" ADD COLUMN "colisting_member_address" text;
    COMMENT ON COLUMN beaches."Property"."colisting_member_address" IS 'CoListingMemberAddress';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_MB_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_MB_room_rem" IS 'Master Bedroom Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_UR_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_UR_room_level" IS 'Utility Room Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202431812853000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202431812853000000" IS 'Subdiv Amenities';
     
    ALTER TABLE beaches."Property" ADD COLUMN "VOWAVM" boolean;
    COMMENT ON COLUMN beaches."Property"."VOWAVM" IS 'VOWAutomatedValuationDisplay';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202429285512000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202429285512000000" IS 'Boat Services';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165902292745000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165902292745000000" IS 'Unit 2 Info: Furnished';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204709932098000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204709932098000000" IS 'Rental Info: July';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121206202841938447000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121206202841938447000000" IS 'Waterfront';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_PB_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_PB_room_level" IS 'Patio/Balcony Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203214100844000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203214100844000000" IS 'Subdiv. Amenities';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140515193910666377000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140515193910666377000000" IS 'Storm Protection: Impact Glass';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228154001544152000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228154001544152000000" IS 'Unit 3: # of Units';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_50" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_50" IS 'Damage Deposit';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128194138408449000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128194138408449000000" IS 'Private Pool';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR2_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR2_room_level" IS 'Bedroom 2 Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_41" text;
    COMMENT ON COLUMN beaches."Property"."LIST_41" IS 'County';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_BR4_room_level" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_BR4_room_level" IS 'Bedroom 4 Room Level';
     
    ALTER TABLE beaches."Property" ADD COLUMN "coselling_member_shortid" text;
    COMMENT ON COLUMN beaches."Property"."coselling_member_shortid" IS 'CoSellingMemberShortId';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121126194243781619000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121126194243781619000000" IS 'Furnished';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210031838533711000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210031838533711000000" IS 'Use';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203245813130000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203245813130000000" IS 'Maintenance Fee Incl';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121228204141894186000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20121228204141894186000000" IS 'Rental Info: 1st Month Deposit';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321160736457388000000" decimal;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321160736457388000000" IS 'Equestrian Features: # of Barns';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227170309752492000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227170309752492000000" IS 'Unit 3 Info: Lease Ends';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203750698912000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203750698912000000" IS 'Possession';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121128203422637850000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121128203422637850000000" IS 'Equip/Appl Included';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_125" decimal;
    COMMENT ON COLUMN beaches."Property"."LIST_125" IS 'Rental Price/SqFt';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_KI_room_rem" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_KI_room_rem" IS 'Kitchen Room Remarks';
     
    ALTER TABLE beaches."Property" ADD COLUMN "ROOM_DE_room_width" text;
    COMMENT ON COLUMN beaches."Property"."ROOM_DE_room_width" IS 'Den Width';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20140321161032643134000000" text;
    COMMENT ON COLUMN beaches."Property"."FEAT20140321161032643134000000" IS 'Equestrian Features: Ring';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20121227165041425649000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20121227165041425649000000" IS 'Unit 1 Info: Bedrooms';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121212011728862864000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121212011728862864000000" IS 'Style';
     
    ALTER TABLE beaches."Property" ADD COLUMN "FEAT20130102140646336002000000" integer;
    COMMENT ON COLUMN beaches."Property"."FEAT20130102140646336002000000" IS 'Building Info: # of Tenants';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_167" text;
    COMMENT ON COLUMN beaches."Property"."LIST_167" IS 'List Agent Board ID';
     
    ALTER TABLE beaches."Property" ADD COLUMN "LIST_108" text;
    COMMENT ON COLUMN beaches."Property"."LIST_108" IS 'Waterfront';
     
    ALTER TABLE beaches."Property" ADD COLUMN "listing_member_shortid" text;
    COMMENT ON COLUMN beaches."Property"."listing_member_shortid" IS 'ListingMemberShortId';
     
    ALTER TABLE beaches."Property" ADD COLUMN "GF20121210032048203667000000" text[];
    COMMENT ON COLUMN beaches."Property"."GF20121210032048203667000000" IS 'Avail Docs';
     
  GRANT SELECT, UPDATE, INSERT ON TABLE beaches."Property" TO GROUP beaches;

COMMIT;
