BEGIN;

  CREATE TABLE millmls."Property"() INHERITS (property);
    ALTER TABLE millmls."Property" ADD COLUMN "Address" text;
    COMMENT ON COLUMN millmls."Property"."Address" IS 'Street Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Agent_Remarks" text;
    COMMENT ON COLUMN millmls."Property"."Agent_Remarks" IS 'Special Remarks';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Apx_Acreage" numeric;
    COMMENT ON COLUMN millmls."Property"."Apx_Acreage" IS 'Apx Acreage';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Apx_SqFt" integer;
    COMMENT ON COLUMN millmls."Property"."Apx_SqFt" IS 'Apx SqFt';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Bd2_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Bd2_Lvl" IS 'Bedroom 2 Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Bd2_Size" text;
    COMMENT ON COLUMN millmls."Property"."Bd2_Size" IS 'Bedroom 2 Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Bd3_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Bd3_Lvl" IS 'Bedroom 3 Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Bd3_Size" text;
    COMMENT ON COLUMN millmls."Property"."Bd3_Size" IS 'Bedroom 3 Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Bd4_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Bd4_Lvl" IS 'Bedroom 4 Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Bd4_Size" text;
    COMMENT ON COLUMN millmls."Property"."Bd4_Size" IS 'Bedroom 4 Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Bd5_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Bd5_Lvl" IS 'Bedroom 5 Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Bd5_Size" text;
    COMMENT ON COLUMN millmls."Property"."Bd5_Size" IS 'Bedroom 5 Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Bedroom" integer;
    COMMENT ON COLUMN millmls."Property"."Bedroom" IS 'Bedrooms';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Brkfst_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Brkfst_Lvl" IS 'Breakfast Room Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Brkfst_Size" text;
    COMMENT ON COLUMN millmls."Property"."Brkfst_Size" IS 'Breakfast Room Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_A" text[];
    COMMENT ON COLUMN millmls."Property"."CF_A" IS 'Location';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_AA" text[];
    COMMENT ON COLUMN millmls."Property"."CF_AA" IS 'Financing Terms';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_B" text[];
    COMMENT ON COLUMN millmls."Property"."CF_B" IS 'Present Use';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_BB" text[];
    COMMENT ON COLUMN millmls."Property"."CF_BB" IS 'Keyx';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_C" text[];
    COMMENT ON COLUMN millmls."Property"."CF_C" IS 'Sale Includes';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_D" text[];
    COMMENT ON COLUMN millmls."Property"."CF_D" IS 'Heating System';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_E" text[];
    COMMENT ON COLUMN millmls."Property"."CF_E" IS 'Cooling System';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_F" text[];
    COMMENT ON COLUMN millmls."Property"."CF_F" IS 'Water';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_G" text[];
    COMMENT ON COLUMN millmls."Property"."CF_G" IS 'Sewage Type';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_H" text[];
    COMMENT ON COLUMN millmls."Property"."CF_H" IS 'Other Utilities';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_I" text[];
    COMMENT ON COLUMN millmls."Property"."CF_I" IS 'Road';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_J" text[];
    COMMENT ON COLUMN millmls."Property"."CF_J" IS 'Improvements';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_K" text[];
    COMMENT ON COLUMN millmls."Property"."CF_K" IS 'Ownership';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_L" text[];
    COMMENT ON COLUMN millmls."Property"."CF_L" IS 'Financing Terms';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_M" text[];
    COMMENT ON COLUMN millmls."Property"."CF_M" IS 'Keyx';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_N" text[];
    COMMENT ON COLUMN millmls."Property"."CF_N" IS 'Electrical Service';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_O" text[];
    COMMENT ON COLUMN millmls."Property"."CF_O" IS 'TV Service';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_P" text[];
    COMMENT ON COLUMN millmls."Property"."CF_P" IS 'Connections';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_Q" text[];
    COMMENT ON COLUMN millmls."Property"."CF_Q" IS 'Appliances Remain';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_R" text[];
    COMMENT ON COLUMN millmls."Property"."CF_R" IS 'Location';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_S" text[];
    COMMENT ON COLUMN millmls."Property"."CF_S" IS 'Road';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_T" text[];
    COMMENT ON COLUMN millmls."Property"."CF_T" IS 'Driveway';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_U" text[];
    COMMENT ON COLUMN millmls."Property"."CF_U" IS 'Pool';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_V" text[];
    COMMENT ON COLUMN millmls."Property"."CF_V" IS 'Boathouse/Shelter';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_W" text[];
    COMMENT ON COLUMN millmls."Property"."CF_W" IS 'Seawall';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_X" text[];
    COMMENT ON COLUMN millmls."Property"."CF_X" IS 'Improvements';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_Y" text[];
    COMMENT ON COLUMN millmls."Property"."CF_Y" IS 'Present Use';
     
    ALTER TABLE millmls."Property" ADD COLUMN "CF_Z" text[];
    COMMENT ON COLUMN millmls."Property"."CF_Z" IS 'Ownership';
     
    ALTER TABLE millmls."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN millmls."Property"."City" IS 'City';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Deck_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Deck_Lvl" IS 'Deck Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Deck_Size" text;
    COMMENT ON COLUMN millmls."Property"."Deck_Size" IS 'Deck Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Deed_Bk_Pg" text;
    COMMENT ON COLUMN millmls."Property"."Deed_Bk_Pg" IS 'Deed Book/Page';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Direction" text;
    COMMENT ON COLUMN millmls."Property"."Direction" IS 'Street Dir';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN millmls."Property"."Directions" IS 'Directions';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Dist_Property" text;
    COMMENT ON COLUMN millmls."Property"."Dist_Property" IS 'Distressed Property';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Dng_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Dng_Lvl" IS 'Dining Room Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Dng_Size" text;
    COMMENT ON COLUMN millmls."Property"."Dng_Size" IS 'Dining Room Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Elementary_School" text;
    COMMENT ON COLUMN millmls."Property"."Elementary_School" IS 'Elementary School';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Expire_Date" text;
    COMMENT ON COLUMN millmls."Property"."Expire_Date" IS 'Expire Date';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Full_Bath" integer;
    COMMENT ON COLUMN millmls."Property"."Full_Bath" IS 'Full Baths';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Garage_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Garage_Lvl" IS 'Garage/Carport Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Garage_Size" text;
    COMMENT ON COLUMN millmls."Property"."Garage_Size" IS 'Garage/Carport Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Grt_Rm_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Grt_Rm_Lvl" IS 'Great Room Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Grt_Rm_Size" text;
    COMMENT ON COLUMN millmls."Property"."Grt_Rm_Size" IS 'Great Room Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Half_Bath" integer;
    COMMENT ON COLUMN millmls."Property"."Half_Bath" IS 'Half Baths';
     
    ALTER TABLE millmls."Property" ADD COLUMN "High_School" text;
    COMMENT ON COLUMN millmls."Property"."High_School" IS 'High School';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Internet" boolean;
    COMMENT ON COLUMN millmls."Property"."Internet" IS 'Display on Internet';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Kit_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Kit_Lvl" IS 'Kitchen Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Kit_Size" text;
    COMMENT ON COLUMN millmls."Property"."Kit_Size" IS 'Kitchen Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN millmls."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE millmls."Property" ADD COLUMN "List_Date" text;
    COMMENT ON COLUMN millmls."Property"."List_Date" IS 'List Date';
     
    ALTER TABLE millmls."Property" ADD COLUMN "List_Price" integer;
    COMMENT ON COLUMN millmls."Property"."List_Price" IS 'List Price';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN millmls."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Lot_Dim" text;
    COMMENT ON COLUMN millmls."Property"."Lot_Dim" IS 'Lot Dimensions';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Lot_Num" text;
    COMMENT ON COLUMN millmls."Property"."Lot_Num" IS 'Lot #';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Lvg_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Lvg_Lvl" IS 'Living Room Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Lvg_Size" text;
    COMMENT ON COLUMN millmls."Property"."Lvg_Size" IS 'Living Room Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "MBd_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."MBd_Lvl" IS 'Master Bedroom Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "MBd_Size" text;
    COMMENT ON COLUMN millmls."Property"."MBd_Size" IS 'Master Bedroom Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "MLS_Area" text;
    COMMENT ON COLUMN millmls."Property"."MLS_Area" IS 'Area/County';
     
    ALTER TABLE millmls."Property" ADD COLUMN "MST_MLS_NUMBER" integer PRIMARY KEY;
    COMMENT ON COLUMN millmls."Property"."MST_MLS_NUMBER" IS 'MLS Number';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Map_Num" text;
    COMMENT ON COLUMN millmls."Property"."Map_Num" IS 'Map #';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Middle_School" text;
    COMMENT ON COLUMN millmls."Property"."Middle_School" IS 'Middle School';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Num_Closets" integer;
    COMMENT ON COLUMN millmls."Property"."Num_Closets" IS '# Closets';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Occupied" text;
    COMMENT ON COLUMN millmls."Property"."Occupied" IS 'Occupied';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Org_LP" integer;
    COMMENT ON COLUMN millmls."Property"."Org_LP" IS 'Original List Price';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Oth_Rm2_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Oth_Rm2_Lvl" IS 'Other Room 2 Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Oth_Rm2_Nm" text;
    COMMENT ON COLUMN millmls."Property"."Oth_Rm2_Nm" IS 'Other Room 2 Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Oth_Rm2_Size" text;
    COMMENT ON COLUMN millmls."Property"."Oth_Rm2_Size" IS 'Other Room 2 Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Oth_Rm_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Oth_Rm_Lvl" IS 'Other Room Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Oth_Rm_Nm" text;
    COMMENT ON COLUMN millmls."Property"."Oth_Rm_Nm" IS 'Other Room Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Oth_Rm_Size" text;
    COMMENT ON COLUMN millmls."Property"."Oth_Rm_Size" IS 'Other Room Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Owner_Nm" text;
    COMMENT ON COLUMN millmls."Property"."Owner_Nm" IS 'Owner Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Owner_Phn" text;
    COMMENT ON COLUMN millmls."Property"."Owner_Phn" IS 'Owner Phone';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Parcel" text;
    COMMENT ON COLUMN millmls."Property"."Parcel" IS 'Parcel';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Pending_Date" text;
    COMMENT ON COLUMN millmls."Property"."Pending_Date" IS 'Binding Agreement Date';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Plat_Bk_Pg" text;
    COMMENT ON COLUMN millmls."Property"."Plat_Bk_Pg" IS 'Plat Book/Page';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Porch_Lvl" text;
    COMMENT ON COLUMN millmls."Property"."Porch_Lvl" IS 'Porch Level';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Porch_Size" text;
    COMMENT ON COLUMN millmls."Property"."Porch_Size" IS 'Porch Size';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Property_Status" text;
    COMMENT ON COLUMN millmls."Property"."Property_Status" IS 'Property Status';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Property_Type" text;
    COMMENT ON COLUMN millmls."Property"."Property_Type" IS 'Property Type';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Rd_Frntg" text;
    COMMENT ON COLUMN millmls."Property"."Rd_Frntg" IS 'Road Frontage';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Remarks" text;
    COMMENT ON COLUMN millmls."Property"."Remarks" IS 'Public Remarks';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Selg_Side_Comm" text;
    COMMENT ON COLUMN millmls."Property"."Selg_Side_Comm" IS 'Selling Side Commission';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Selling_Date" text;
    COMMENT ON COLUMN millmls."Property"."Selling_Date" IS 'Date of Closing';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Selling_Price" integer;
    COMMENT ON COLUMN millmls."Property"."Selling_Price" IS 'Selling Price';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Selling_off_Number" integer;
    COMMENT ON COLUMN millmls."Property"."Selling_off_Number" IS 'Selling Office';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Site_Built" boolean;
    COMMENT ON COLUMN millmls."Property"."Site_Built" IS 'Site Built Area Only';
     
    ALTER TABLE millmls."Property" ADD COLUMN "State" text;
    COMMENT ON COLUMN millmls."Property"."State" IS 'State';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Stories" text;
    COMMENT ON COLUMN millmls."Property"."Stories" IS 'Stories/Levels';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Street_Num" text;
    COMMENT ON COLUMN millmls."Property"."Street_Num" IS 'Street #';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Subdivision" text;
    COMMENT ON COLUMN millmls."Property"."Subdivision" IS 'Subdivision';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Supplement_Remarks" text;
    COMMENT ON COLUMN millmls."Property"."Supplement_Remarks" IS 'Showing & Key Instructions';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Tax_Yr" text;
    COMMENT ON COLUMN millmls."Property"."Tax_Yr" IS 'Tax Year';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Taxes" text;
    COMMENT ON COLUMN millmls."Property"."Taxes" IS 'Apx Taxes';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Type_Listing" text;
    COMMENT ON COLUMN millmls."Property"."Type_Listing" IS 'Type Listing';
     
    ALTER TABLE millmls."Property" ADD COLUMN "VOWAddressDisplay" boolean;
    COMMENT ON COLUMN millmls."Property"."VOWAddressDisplay" IS 'VOWAddressDisplay';
     
    ALTER TABLE millmls."Property" ADD COLUMN "VOW_AVM" boolean;
    COMMENT ON COLUMN millmls."Property"."VOW_AVM" IS 'Allow AVM';
     
    ALTER TABLE millmls."Property" ADD COLUMN "VOW_Comments" boolean;
    COMMENT ON COLUMN millmls."Property"."VOW_Comments" IS 'Allow Comments';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Water_Depth" text;
    COMMENT ON COLUMN millmls."Property"."Water_Depth" IS 'Water Depth';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Waterfront" text;
    COMMENT ON COLUMN millmls."Property"."Waterfront" IS 'Waterfront';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Wtr_Frntg" text;
    COMMENT ON COLUMN millmls."Property"."Wtr_Frntg" IS 'Water Frontage';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Year_Built" integer;
    COMMENT ON COLUMN millmls."Property"."Year_Built" IS 'Year Built';
     
    ALTER TABLE millmls."Property" ADD COLUMN "ZipCode" text;
    COMMENT ON COLUMN millmls."Property"."ZipCode" IS 'Zip Code';
     
    ALTER TABLE millmls."Property" ADD COLUMN "Zoning" text;
    COMMENT ON COLUMN millmls."Property"."Zoning" IS 'Zoning';
     
    ALTER TABLE millmls."Property" ADD COLUMN "dom_computed" integer;
    COMMENT ON COLUMN millmls."Property"."dom_computed" IS 'Days on Market';
     
    ALTER TABLE millmls."Property" ADD COLUMN "finance_Code" text;
    COMMENT ON COLUMN millmls."Property"."finance_Code" IS 'Selling Financing';
     
    ALTER TABLE millmls."Property" ADD COLUMN "off_Number" integer;
    COMMENT ON COLUMN millmls."Property"."off_Number" IS 'Listing Office';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_email" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_email" IS 'LA Email';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_first_name" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_first_name" IS 'LA First Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_last_name" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_last_name" IS 'LA First Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_mail1" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_mail1" IS 'LA MAIL1';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_mail_city" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_mail_city" IS 'LA MAIL CITY';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_mail_state" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_mail_state" IS 'LA MAIL STATE';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_mail_zip" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_mail_zip" IS 'LA MAIL ZIP';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_nrds" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_nrds" IS 'LA NRDS';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_phone1" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_phone1" IS 'LA Phone1';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_phone2" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_phone2" IS 'LA Phone2';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_la_url" text;
    COMMENT ON COLUMN millmls."Property"."rets_la_url" IS 'LA URL';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_list_agt_id" text;
    COMMENT ON COLUMN millmls."Property"."rets_list_agt_id" IS 'LA ID';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_listing_synd" text;
    COMMENT ON COLUMN millmls."Property"."rets_listing_synd" IS 'Listing Syndication Link';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_email" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_email" IS 'LO Email';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_mail1" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_mail1" IS 'LO MAIL1';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_mail_city" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_mail_city" IS 'LO MAIL CITY';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_mail_state" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_mail_state" IS 'LO MAIL STATE';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_mail_zip" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_mail_zip" IS 'LO MAIL ZIP';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_name" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_name" IS 'LO Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_nrds" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_nrds" IS 'LO NRDS';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_phone1" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_phone1" IS 'LO Phone1';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_phone2" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_phone2" IS 'LO Phone2';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_lo_url" text;
    COMMENT ON COLUMN millmls."Property"."rets_lo_url" IS 'LO URL';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_photo_count" integer;
    COMMENT ON COLUMN millmls."Property"."rets_photo_count" IS 'Photo Count';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_photo_timestamp" text;
    COMMENT ON COLUMN millmls."Property"."rets_photo_timestamp" IS 'Photo TimeStamp';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_email" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_email" IS 'SA Email';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_first_name" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_first_name" IS 'SA First Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_last_name" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_last_name" IS 'SA Last Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_mail1" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_mail1" IS 'SA MAIL1';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_mail_city" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_mail_city" IS 'SA MAIL CITY';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_mail_state" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_mail_state" IS 'SA MAIL STATE';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_mail_zip" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_mail_zip" IS 'SA MAIL ZIP';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_nrds" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_nrds" IS 'SA NRDS';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_phone1" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_phone1" IS 'SA Phone1';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_phone2" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_phone2" IS 'SA Phone2';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_sa_url" text;
    COMMENT ON COLUMN millmls."Property"."rets_sa_url" IS 'SA URL';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_selling_agt_id" text;
    COMMENT ON COLUMN millmls."Property"."rets_selling_agt_id" IS 'SA ID';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_email" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_email" IS 'SO Email';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_mail1" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_mail1" IS 'SO MAIL1';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_mail_city" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_mail_city" IS 'SO MAIL CITY';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_mail_state" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_mail_state" IS 'SO MAIL STATE';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_mail_zip" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_mail_zip" IS 'SO MAIL ZIP';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_name" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_name" IS 'SO Name';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_nrds" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_nrds" IS 'SO NRDS';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_phone1" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_phone1" IS 'SO Phone1';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_phone2" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_phone2" IS 'SO Phone2';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_so_url" text;
    COMMENT ON COLUMN millmls."Property"."rets_so_url" IS 'SO URL';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_status" text;
    COMMENT ON COLUMN millmls."Property"."rets_status" IS 'RETS STATUS';
     
    ALTER TABLE millmls."Property" ADD COLUMN "rets_synd_exclude_channels" text;
    COMMENT ON COLUMN millmls."Property"."rets_synd_exclude_channels" IS 'lstng synd ex ch';
     
    ALTER TABLE millmls."Property" ADD COLUMN "sys_Last_Modified" text;
    COMMENT ON COLUMN millmls."Property"."sys_Last_Modified" IS 'sys_Last_Modified';
     
    ALTER TABLE millmls."Property" ADD COLUMN "sys_New" text;
    COMMENT ON COLUMN millmls."Property"."sys_New" IS 'sys_New';
     
    ALTER TABLE millmls."Property" ADD COLUMN "sys_Off_Market" text;
    COMMENT ON COLUMN millmls."Property"."sys_Off_Market" IS 'sys_Off_Market';
     
    ALTER TABLE millmls."Property" ADD COLUMN "sys_Pending" text;
    COMMENT ON COLUMN millmls."Property"."sys_Pending" IS 'sys_Pending';
     
    ALTER TABLE millmls."Property" ADD COLUMN "sys_PriceChange" text;
    COMMENT ON COLUMN millmls."Property"."sys_PriceChange" IS 'sys_PriceChange';
     
    ALTER TABLE millmls."Property" ADD COLUMN "sys_Under" text;
    COMMENT ON COLUMN millmls."Property"."sys_Under" IS 'sys_Under';
     
    ALTER TABLE millmls."Property" ADD COLUMN "sys_Withdraw" text;
    COMMENT ON COLUMN millmls."Property"."sys_Withdraw" IS 'sys_Withdraw';
     

COMMIT;