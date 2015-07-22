BEGIN;

  CREATE TABLE mred."Property"() INHERITS (property);
    ALTER TABLE mred."Property" ADD COLUMN "A10F" text;
    COMMENT ON COLUMN mred."Property"."A10F" IS 'Addtl Room 10 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A10L" text;
    COMMENT ON COLUMN mred."Property"."A10L" IS 'Addtl Room 10 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A10N" text;
    COMMENT ON COLUMN mred."Property"."A10N" IS 'Addtl Room 10 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A10S" text;
    COMMENT ON COLUMN mred."Property"."A10S" IS 'Addtl Room 10 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A10W" text[];
    COMMENT ON COLUMN mred."Property"."A10W" IS 'Addtl Room 10 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "A1F" text;
    COMMENT ON COLUMN mred."Property"."A1F" IS 'Addtl Room 1 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A1L" text;
    COMMENT ON COLUMN mred."Property"."A1L" IS 'Addtl Room 1 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A1N" text;
    COMMENT ON COLUMN mred."Property"."A1N" IS 'Addtl Room 1 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A1S" text;
    COMMENT ON COLUMN mred."Property"."A1S" IS 'Addtl Room 1 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A1W" text[];
    COMMENT ON COLUMN mred."Property"."A1W" IS 'Addtl Room 1 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "A2F" text;
    COMMENT ON COLUMN mred."Property"."A2F" IS 'Addtl Room 2 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A2L" text;
    COMMENT ON COLUMN mred."Property"."A2L" IS 'Addtl Room 2 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A2N" text;
    COMMENT ON COLUMN mred."Property"."A2N" IS 'Addtl Room 2 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A2S" text;
    COMMENT ON COLUMN mred."Property"."A2S" IS 'Addtl Room 2 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A2W" text[];
    COMMENT ON COLUMN mred."Property"."A2W" IS 'Addtl Room 2 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "A3F" text;
    COMMENT ON COLUMN mred."Property"."A3F" IS 'Addtl Room 3 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A3L" text;
    COMMENT ON COLUMN mred."Property"."A3L" IS 'Addtl Room 3 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A3N" text;
    COMMENT ON COLUMN mred."Property"."A3N" IS 'Addtl Room 3 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A3S" text;
    COMMENT ON COLUMN mred."Property"."A3S" IS 'Addtl Room 3 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A3W" text[];
    COMMENT ON COLUMN mred."Property"."A3W" IS 'Addtl Room 3 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "A4F" text;
    COMMENT ON COLUMN mred."Property"."A4F" IS 'Addtl Room 4 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A4L" text;
    COMMENT ON COLUMN mred."Property"."A4L" IS 'Addtl Room 4 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A4N" text;
    COMMENT ON COLUMN mred."Property"."A4N" IS 'Addtl Room 4 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A4S" text;
    COMMENT ON COLUMN mred."Property"."A4S" IS 'Addtl Room 4 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A4W" text[];
    COMMENT ON COLUMN mred."Property"."A4W" IS 'Addtl Room 4 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "A5F" text;
    COMMENT ON COLUMN mred."Property"."A5F" IS 'Addtl Room 5 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A5L" text;
    COMMENT ON COLUMN mred."Property"."A5L" IS 'Addtl Room 5 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A5N" text;
    COMMENT ON COLUMN mred."Property"."A5N" IS 'Addtl Room 5 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A5S" text;
    COMMENT ON COLUMN mred."Property"."A5S" IS 'Addtl Room 5 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A5W" text[];
    COMMENT ON COLUMN mred."Property"."A5W" IS 'Addtl Room 5 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "A6F" text;
    COMMENT ON COLUMN mred."Property"."A6F" IS 'Addtl Room 6 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A6L" text;
    COMMENT ON COLUMN mred."Property"."A6L" IS 'Addtl Room 6 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A6N" text;
    COMMENT ON COLUMN mred."Property"."A6N" IS 'Addtl Room 6 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A6S" text;
    COMMENT ON COLUMN mred."Property"."A6S" IS 'Addtl Room 6 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A6W" text[];
    COMMENT ON COLUMN mred."Property"."A6W" IS 'Addtl Room 6 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "A7F" text;
    COMMENT ON COLUMN mred."Property"."A7F" IS 'Addtl Room 7 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A7L" text;
    COMMENT ON COLUMN mred."Property"."A7L" IS 'Addtl Room 7 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A7N" text;
    COMMENT ON COLUMN mred."Property"."A7N" IS 'Addtl Room 7 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A7S" text;
    COMMENT ON COLUMN mred."Property"."A7S" IS 'Addtl Room 7 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A7W" text[];
    COMMENT ON COLUMN mred."Property"."A7W" IS 'Addtl Room 7 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "A8F" text;
    COMMENT ON COLUMN mred."Property"."A8F" IS 'Addtl Room 8 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A8L" text;
    COMMENT ON COLUMN mred."Property"."A8L" IS 'Addtl Room 8 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A8N" text;
    COMMENT ON COLUMN mred."Property"."A8N" IS 'Addtl Room 8 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A8S" text;
    COMMENT ON COLUMN mred."Property"."A8S" IS 'Addtl Room 8 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A8W" text[];
    COMMENT ON COLUMN mred."Property"."A8W" IS 'Addtl Room 8 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "A9F" text;
    COMMENT ON COLUMN mred."Property"."A9F" IS 'Addtl Room 9 Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "A9L" text;
    COMMENT ON COLUMN mred."Property"."A9L" IS 'Addtl Room 9 Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "A9N" text;
    COMMENT ON COLUMN mred."Property"."A9N" IS 'Addtl Room 9 Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "A9S" text;
    COMMENT ON COLUMN mred."Property"."A9S" IS 'Addtl Room 9 Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "A9W" text[];
    COMMENT ON COLUMN mred."Property"."A9W" IS 'Addtl Room 9 Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "AAG" text[];
    COMMENT ON COLUMN mred."Property"."AAG" IS 'Approximate Age';
     
    ALTER TABLE mred."Property" ADD COLUMN "AAN" text;
    COMMENT ON COLUMN mred."Property"."AAN" IS 'Listing Agent Additional Info';
     
    ALTER TABLE mred."Property" ADD COLUMN "ACD" text[];
    COMMENT ON COLUMN mred."Property"."ACD" IS 'Air Conditioning';
     
    ALTER TABLE mred."Property" ADD COLUMN "ACR" decimal;
    COMMENT ON COLUMN mred."Property"."ACR" IS 'Acreage';
     
    ALTER TABLE mred."Property" ADD COLUMN "ADDITIONAL_ROOMS" text[];
    COMMENT ON COLUMN mred."Property"."ADDITIONAL_ROOMS" IS 'Additional Rooms';
     
    ALTER TABLE mred."Property" ADD COLUMN "ADDITIONAL_SALES_INFO" text[];
    COMMENT ON COLUMN mred."Property"."ADDITIONAL_SALES_INFO" IS 'Additional Sales Information';
     
    ALTER TABLE mred."Property" ADD COLUMN "ADDLMEDIATYPE1" text;
    COMMENT ON COLUMN mred."Property"."ADDLMEDIATYPE1" IS 'Additional Media Type 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "ADDLMEDIATYPE2" text;
    COMMENT ON COLUMN mred."Property"."ADDLMEDIATYPE2" IS 'Additional Media Type 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "ADDLMEDIAURL1" text;
    COMMENT ON COLUMN mred."Property"."ADDLMEDIAURL1" IS 'Additional Media URL 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "ADDLMEDIAURL2" text;
    COMMENT ON COLUMN mred."Property"."ADDLMEDIAURL2" IS 'Additional Media URL 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "ADI" text;
    COMMENT ON COLUMN mred."Property"."ADI" IS 'Property Address On Internet? (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "ADS" text;
    COMMENT ON COLUMN mred."Property"."ADS" IS 'Advertising Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "ADX" text;
    COMMENT ON COLUMN mred."Property"."ADX" IS 'Advertising Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "AGE" text[];
    COMMENT ON COLUMN mred."Property"."AGE" IS 'Age';
     
    ALTER TABLE mred."Property" ADD COLUMN "AGENTREMARKS" text;
    COMMENT ON COLUMN mred."Property"."AGENTREMARKS" IS 'Agent Remarks';
     
    ALTER TABLE mred."Property" ADD COLUMN "AIR" text[];
    COMMENT ON COLUMN mred."Property"."AIR" IS 'Air Conditioning';
     
    ALTER TABLE mred."Property" ADD COLUMN "AIS" text;
    COMMENT ON COLUMN mred."Property"."AIS" IS 'Financial Amounts for Individual Spaces (Rental Only) (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "ALLOW_COMMENTS_REVIEWS" text;
    COMMENT ON COLUMN mred."Property"."ALLOW_COMMENTS_REVIEWS" IS 'VOW Comments/Reviews (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "ALT_ELEMENTARY_NAME" text;
    COMMENT ON COLUMN mred."Property"."ALT_ELEMENTARY_NAME" IS '2nd/Alternate Elementary School';
     
    ALTER TABLE mred."Property" ADD COLUMN "ALT_HIGH_NAME" text;
    COMMENT ON COLUMN mred."Property"."ALT_HIGH_NAME" IS '2nd/Alternate High School';
     
    ALTER TABLE mred."Property" ADD COLUMN "ALT_JUNIORHIGH_NAME" text;
    COMMENT ON COLUMN mred."Property"."ALT_JUNIORHIGH_NAME" IS '2nd/Alternate Jr High/Middle School';
     
    ALTER TABLE mred."Property" ADD COLUMN "AMEN" text[];
    COMMENT ON COLUMN mred."Property"."AMEN" IS 'Park Amenities';
     
    ALTER TABLE mred."Property" ADD COLUMN "AML" text[];
    COMMENT ON COLUMN mred."Property"."AML" IS 'Land Amenities';
     
    ALTER TABLE mred."Property" ADD COLUMN "AMN" text[];
    COMMENT ON COLUMN mred."Property"."AMN" IS 'Area Amenities';
     
    ALTER TABLE mred."Property" ADD COLUMN "AMT" text;
    COMMENT ON COLUMN mred."Property"."AMT" IS 'Amt';
     
    ALTER TABLE mred."Property" ADD COLUMN "AN" text;
    COMMENT ON COLUMN mred."Property"."AN" IS 'Adjusted Net Income';
     
    ALTER TABLE mred."Property" ADD COLUMN "ANR" text;
    COMMENT ON COLUMN mred."Property"."ANR" IS 'Annual Rent For Real Estate';
     
    ALTER TABLE mred."Property" ADD COLUMN "ANS" text;
    COMMENT ON COLUMN mred."Property"."ANS" IS 'Adj Net Inc Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "ANY" integer;
    COMMENT ON COLUMN mred."Property"."ANY" IS 'Adj Net Income Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "AON" text;
    COMMENT ON COLUMN mred."Property"."AON" IS 'Agent Owned/Interest (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "AP" text;
    COMMENT ON COLUMN mred."Property"."AP" IS 'Accounts Payable';
     
    ALTER TABLE mred."Property" ADD COLUMN "AP1" text[];
    COMMENT ON COLUMN mred."Property"."AP1" IS 'Appliances/Features Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "AP2" text[];
    COMMENT ON COLUMN mred."Property"."AP2" IS 'Appliances/Features Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "AP3" text[];
    COMMENT ON COLUMN mred."Property"."AP3" IS 'Appliances/Features Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "AP4" text[];
    COMMENT ON COLUMN mred."Property"."AP4" IS 'Appliances/Features Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "APN" text;
    COMMENT ON COLUMN mred."Property"."APN" IS 'Alternate Phone Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "APP" text[];
    COMMENT ON COLUMN mred."Property"."APP" IS 'Appliances';
     
    ALTER TABLE mred."Property" ADD COLUMN "APS" text;
    COMMENT ON COLUMN mred."Property"."APS" IS 'Accts Payable Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "APT" integer;
    COMMENT ON COLUMN mred."Property"."APT" IS '# Of Apts';
     
    ALTER TABLE mred."Property" ADD COLUMN "APY" integer;
    COMMENT ON COLUMN mred."Property"."APY" IS 'Accts Payable Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "AR" text;
    COMMENT ON COLUMN mred."Property"."AR" IS 'Area';
     
    ALTER TABLE mred."Property" ADD COLUMN "ARC" text;
    COMMENT ON COLUMN mred."Property"."ARC" IS 'Accounts Receivable';
     
    ALTER TABLE mred."Property" ADD COLUMN "ARE" text;
    COMMENT ON COLUMN mred."Property"."ARE" IS 'Accts Rec Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "AREY" integer;
    COMMENT ON COLUMN mred."Property"."AREY" IS 'Accts Receivable Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "ARS" text;
    COMMENT ON COLUMN mred."Property"."ARS" IS 'Ann Rnt Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "ARY" integer;
    COMMENT ON COLUMN mred."Property"."ARY" IS 'Ann Rent for RE Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "ASC" text;
    COMMENT ON COLUMN mred."Property"."ASC" IS 'Association Fee';
     
    ALTER TABLE mred."Property" ADD COLUMN "ASF" integer;
    COMMENT ON COLUMN mred."Property"."ASF" IS 'Approx Sq Ft';
     
    ALTER TABLE mred."Property" ADD COLUMN "ASFSOURCE" text;
    COMMENT ON COLUMN mred."Property"."ASFSOURCE" IS 'Square Feet Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "ASM" integer;
    COMMENT ON COLUMN mred."Property"."ASM" IS 'Assessment/Association Dues $';
     
    ALTER TABLE mred."Property" ADD COLUMN "ASO" text;
    COMMENT ON COLUMN mred."Property"."ASO" IS 'Assoc Fee Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "ASQ" text;
    COMMENT ON COLUMN mred."Property"."ASQ" IS 'Approx Land Sq Footage';
     
    ALTER TABLE mred."Property" ADD COLUMN "AT1" integer;
    COMMENT ON COLUMN mred."Property"."AT1" IS '# Of Units - Apt. Type 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "AT2" integer;
    COMMENT ON COLUMN mred."Property"."AT2" IS '# Of Units - Apt. Type 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "AT3" integer;
    COMMENT ON COLUMN mred."Property"."AT3" IS '# Of Units - Apt. Type 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "AT4" integer;
    COMMENT ON COLUMN mred."Property"."AT4" IS '# Of Units - Apt. Type 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "AT5" integer;
    COMMENT ON COLUMN mred."Property"."AT5" IS '# Of Units - Apt. Type 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "AT6" integer;
    COMMENT ON COLUMN mred."Property"."AT6" IS '# Of Units - Apt. Type 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "AT7" integer;
    COMMENT ON COLUMN mred."Property"."AT7" IS '# Of Units - Apt. Type 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "ATB" text;
    COMMENT ON COLUMN mred."Property"."ATB" IS 'Financial Amounts for Total Building (Rental Only) (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "ATC" text[];
    COMMENT ON COLUMN mred."Property"."ATC" IS 'Attic';
     
    ALTER TABLE mred."Property" ADD COLUMN "ATD" integer;
    COMMENT ON COLUMN mred."Property"."ATD" IS 'Coop Annual Tax Deduction';
     
    ALTER TABLE mred."Property" ADD COLUMN "ATTDISCL" text;
    COMMENT ON COLUMN mred."Property"."ATTDISCL" IS 'Attached Disclosures';
     
    ALTER TABLE mred."Property" ADD COLUMN "AUCTION_DATE" text;
    COMMENT ON COLUMN mred."Property"."AUCTION_DATE" IS 'Auction Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "AUCT_PRICE_TYPE" text[];
    COMMENT ON COLUMN mred."Property"."AUCT_PRICE_TYPE" IS 'Auction Price Description';
     
    ALTER TABLE mred."Property" ADD COLUMN "AVAILABLE_DATE" text;
    COMMENT ON COLUMN mred."Property"."AVAILABLE_DATE" IS 'Available As Of';
     
    ALTER TABLE mred."Property" ADD COLUMN "AZ" text;
    COMMENT ON COLUMN mred."Property"."AZ" IS 'Additional Tipout Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "AZN" text;
    COMMENT ON COLUMN mred."Property"."AZN" IS 'Zoning Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "B2F" text;
    COMMENT ON COLUMN mred."Property"."B2F" IS '2nd Bedroom Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "B2L" text;
    COMMENT ON COLUMN mred."Property"."B2L" IS '2nd Bedroom Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "B2S" text;
    COMMENT ON COLUMN mred."Property"."B2S" IS '2nd Bedroom Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "B2W" text[];
    COMMENT ON COLUMN mred."Property"."B2W" IS '2nd Bedroom Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "B3F" text;
    COMMENT ON COLUMN mred."Property"."B3F" IS '3rd Bedroom Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "B3L" text;
    COMMENT ON COLUMN mred."Property"."B3L" IS '3rd Bedroom Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "B3S" text;
    COMMENT ON COLUMN mred."Property"."B3S" IS '3rd Bedroom Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "B3W" text[];
    COMMENT ON COLUMN mred."Property"."B3W" IS '3rd Bedroom Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "B4F" text;
    COMMENT ON COLUMN mred."Property"."B4F" IS '4th Bedroom Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "B4L" text;
    COMMENT ON COLUMN mred."Property"."B4L" IS '4th Bedroom Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "B4S" text;
    COMMENT ON COLUMN mred."Property"."B4S" IS '4th Bedroom Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "B4W" text[];
    COMMENT ON COLUMN mred."Property"."B4W" IS '4th Bedroom Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "B78" text;
    COMMENT ON COLUMN mred."Property"."B78" IS 'Built Before 1978 (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "BAG" text[];
    COMMENT ON COLUMN mred."Property"."BAG" IS 'Business Age';
     
    ALTER TABLE mred."Property" ADD COLUMN "BAK" text[];
    COMMENT ON COLUMN mred."Property"."BAK" IS 'Backup Info';
     
    ALTER TABLE mred."Property" ADD COLUMN "BAP" text;
    COMMENT ON COLUMN mred."Property"."BAP" IS 'Board Approval (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "BAS" text[];
    COMMENT ON COLUMN mred."Property"."BAS" IS 'Basement Description';
     
    ALTER TABLE mred."Property" ADD COLUMN "BAT" text[];
    COMMENT ON COLUMN mred."Property"."BAT" IS 'Bath Amenities';
     
    ALTER TABLE mred."Property" ADD COLUMN "BAY" text;
    COMMENT ON COLUMN mred."Property"."BAY" IS 'Bay Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "BB" text;
    COMMENT ON COLUMN mred."Property"."BB" IS 'Basement Bathrooms (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "BD3" text;
    COMMENT ON COLUMN mred."Property"."BD3" IS '3 Br Un In Bldg (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "BF" text;
    COMMENT ON COLUMN mred."Property"."BF" IS 'Buyer Entry Fee';
     
    ALTER TABLE mred."Property" ADD COLUMN "BID_RESERVE_PRICE" integer;
    COMMENT ON COLUMN mred."Property"."BID_RESERVE_PRICE" IS 'Opening Bid/Reserve Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "BIM" text[];
    COMMENT ON COLUMN mred."Property"."BIM" IS 'Bldg Improvements';
     
    ALTER TABLE mred."Property" ADD COLUMN "BLDG_ON_LAND" text;
    COMMENT ON COLUMN mred."Property"."BLDG_ON_LAND" IS 'Building(s) on Land';
     
    ALTER TABLE mred."Property" ADD COLUMN "BLT" text;
    COMMENT ON COLUMN mred."Property"."BLT" IS 'Approx Year Built';
     
    ALTER TABLE mred."Property" ADD COLUMN "BMD" text;
    COMMENT ON COLUMN mred."Property"."BMD" IS 'Back on Market Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "BMT" text[];
    COMMENT ON COLUMN mred."Property"."BMT" IS 'Basement';
     
    ALTER TABLE mred."Property" ADD COLUMN "BOARDNUM" text;
    COMMENT ON COLUMN mred."Property"."BOARDNUM" IS 'Board Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "BR" integer;
    COMMENT ON COLUMN mred."Property"."BR" IS 'Bedrooms (Above Grade)';
     
    ALTER TABLE mred."Property" ADD COLUMN "BR1" text;
    COMMENT ON COLUMN mred."Property"."BR1" IS '# Of Bdrms - Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "BR2" text;
    COMMENT ON COLUMN mred."Property"."BR2" IS '# Of Bdrms - Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "BR3" text;
    COMMENT ON COLUMN mred."Property"."BR3" IS '# Of Bdrms - Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "BR4" text;
    COMMENT ON COLUMN mred."Property"."BR4" IS '# Of Bdrms - Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "BR5" text;
    COMMENT ON COLUMN mred."Property"."BR5" IS '# Of Bdrms - Type 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "BR6" text;
    COMMENT ON COLUMN mred."Property"."BR6" IS '# Of Bdrms - Type 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "BR7" text;
    COMMENT ON COLUMN mred."Property"."BR7" IS '# Of Bdrms - Type 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "BRALL" integer;
    COMMENT ON COLUMN mred."Property"."BRALL" IS 'Bedrooms (All Levels)';
     
    ALTER TABLE mred."Property" ADD COLUMN "BRBELOW" integer;
    COMMENT ON COLUMN mred."Property"."BRBELOW" IS 'Bedrooms (Below Grade)';
     
    ALTER TABLE mred."Property" ADD COLUMN "BSQ" text;
    COMMENT ON COLUMN mred."Property"."BSQ" IS 'Approx Total Bldg Sq Ft';
     
    ALTER TABLE mred."Property" ADD COLUMN "BTH" decimal;
    COMMENT ON COLUMN mred."Property"."BTH" IS 'Total Full/Half Baths';
     
    ALTER TABLE mred."Property" ADD COLUMN "BTH1" integer;
    COMMENT ON COLUMN mred."Property"."BTH1" IS '# Of Full Bthrms - Type 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "BTH2" integer;
    COMMENT ON COLUMN mred."Property"."BTH2" IS '# Of Full Bthrms - Type 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "BTH3" integer;
    COMMENT ON COLUMN mred."Property"."BTH3" IS '# Of Full Bthrms - Type 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "BTH4" integer;
    COMMENT ON COLUMN mred."Property"."BTH4" IS '# Of Full Bthrms - Type 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "BTH5" integer;
    COMMENT ON COLUMN mred."Property"."BTH5" IS '# Of Full Bthrms - Type 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "BTH6" integer;
    COMMENT ON COLUMN mred."Property"."BTH6" IS '# Of Full Bthrms - Type 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "BTH7" integer;
    COMMENT ON COLUMN mred."Property"."BTH7" IS '# Of Full Bthrms - Type 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "BUN" text;
    COMMENT ON COLUMN mred."Property"."BUN" IS 'Business Name (If Confidential, Leave Blank)';
     
    ALTER TABLE mred."Property" ADD COLUMN "BUP" text;
    COMMENT ON COLUMN mred."Property"."BUP" IS 'Backup Package (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "BUT" text[];
    COMMENT ON COLUMN mred."Property"."BUT" IS 'Business Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "C35" integer;
    COMMENT ON COLUMN mred."Property"."C35" IS '3x5 Color';
     
    ALTER TABLE mred."Property" ADD COLUMN "C57" integer;
    COMMENT ON COLUMN mred."Property"."C57" IS '5x7 Color';
     
    ALTER TABLE mred."Property" ADD COLUMN "C810" integer;
    COMMENT ON COLUMN mred."Property"."C810" IS '8x10 Color';
     
    ALTER TABLE mred."Property" ADD COLUMN "CAA" text[];
    COMMENT ON COLUMN mred."Property"."CAA" IS 'Common Area Amenities';
     
    ALTER TABLE mred."Property" ADD COLUMN "CARS" numeric;
    COMMENT ON COLUMN mred."Property"."CARS" IS '# Of Cars';
     
    ALTER TABLE mred."Property" ADD COLUMN "CC" text;
    COMMENT ON COLUMN mred."Property"."CC" IS 'Cooperative  Compensation';
     
    ALTER TABLE mred."Property" ADD COLUMN "CEHMIF" integer;
    COMMENT ON COLUMN mred."Property"."CEHMIF" IS 'Ceiling Hgt Min Ft';
     
    ALTER TABLE mred."Property" ADD COLUMN "CEHMII" integer;
    COMMENT ON COLUMN mred."Property"."CEHMII" IS 'Ceiling Hgt Min In';
     
    ALTER TABLE mred."Property" ADD COLUMN "CEHMXF" integer;
    COMMENT ON COLUMN mred."Property"."CEHMXF" IS 'Ceiling Hgt Max Ft';
     
    ALTER TABLE mred."Property" ADD COLUMN "CEHMXI" integer;
    COMMENT ON COLUMN mred."Property"."CEHMXI" IS 'Ceiling Hgt Max In';
     
    ALTER TABLE mred."Property" ADD COLUMN "CG" text;
    COMMENT ON COLUMN mred."Property"."CG" IS 'Cost Of Goods Sold';
     
    ALTER TABLE mred."Property" ADD COLUMN "CGS" text;
    COMMENT ON COLUMN mred."Property"."CGS" IS 'Cost of Goods Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "CGY" integer;
    COMMENT ON COLUMN mred."Property"."CGY" IS 'Cost of Goods Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "CH" text;
    COMMENT ON COLUMN mred."Property"."CH" IS 'Ceiling Height (Ft)';
     
    ALTER TABLE mred."Property" ADD COLUMN "CIT" text;
    COMMENT ON COLUMN mred."Property"."CIT" IS 'City';
     
    ALTER TABLE mred."Property" ADD COLUMN "CLEAR" text;
    COMMENT ON COLUMN mred."Property"."CLEAR" IS 'Clear Span (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "CLN" text[];
    COMMENT ON COLUMN mred."Property"."CLN" IS 'Seller Needs';
     
    ALTER TABLE mred."Property" ADD COLUMN "CLOSEDDATE" text;
    COMMENT ON COLUMN mred."Property"."CLOSEDDATE" IS 'Closed Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "CLW" text[];
    COMMENT ON COLUMN mred."Property"."CLW" IS 'Seller Will';
     
    ALTER TABLE mred."Property" ADD COLUMN "CNS" text[];
    COMMENT ON COLUMN mred."Property"."CNS" IS 'Construction';
     
    ALTER TABLE mred."Property" ADD COLUMN "CNY" text;
    COMMENT ON COLUMN mred."Property"."CNY" IS 'County';
     
    ALTER TABLE mred."Property" ADD COLUMN "COLISTER" text;
    COMMENT ON COLUMN mred."Property"."COLISTER" IS 'Co-Lister ID';
     
    ALTER TABLE mred."Property" ADD COLUMN "COMPPAIDON" text;
    COMMENT ON COLUMN mred."Property"."COMPPAIDON" IS 'Compensation paid on';
     
    ALTER TABLE mred."Property" ADD COLUMN "COMTYP" text;
    COMMENT ON COLUMN mred."Property"."COMTYP" IS 'Property Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "CONTRACTDATE" text;
    COMMENT ON COLUMN mred."Property"."CONTRACTDATE" IS 'Contract Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "CONTTOSHOW" text;
    COMMENT ON COLUMN mred."Property"."CONTTOSHOW" IS 'Continue to Show?';
     
    ALTER TABLE mred."Property" ADD COLUMN "COUNTRY" text;
    COMMENT ON COLUMN mred."Property"."COUNTRY" IS 'Country';
     
    ALTER TABLE mred."Property" ADD COLUMN "CP" text;
    COMMENT ON COLUMN mred."Property"."CP" IS 'Compass Point';
     
    ALTER TABLE mred."Property" ADD COLUMN "CPR" numeric;
    COMMENT ON COLUMN mred."Property"."CPR" IS 'Cap Rate (%)';
     
    ALTER TABLE mred."Property" ADD COLUMN "CRP" text;
    COMMENT ON COLUMN mred."Property"."CRP" IS 'Corporate Limits';
     
    ALTER TABLE mred."Property" ADD COLUMN "CRRI" text;
    COMMENT ON COLUMN mred."Property"."CRRI" IS 'Call Broker For Confidential Rent Roll Info? (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "CTGF" text;
    COMMENT ON COLUMN mred."Property"."CTGF" IS 'Contingency Flag';
     
    ALTER TABLE mred."Property" ADD COLUMN "CUO" text[];
    COMMENT ON COLUMN mred."Property"."CUO" IS 'Current Owner';
     
    ALTER TABLE mred."Property" ADD COLUMN "CURRENTLYLEASED" text;
    COMMENT ON COLUMN mred."Property"."CURRENTLYLEASED" IS 'Property Currently Being Leased';
     
    ALTER TABLE mred."Property" ADD COLUMN "CUU" text[];
    COMMENT ON COLUMN mred."Property"."CUU" IS 'Current Use';
     
    ALTER TABLE mred."Property" ADD COLUMN "DAY" integer;
    COMMENT ON COLUMN mred."Property"."DAY" IS '# Of Days For Bd Apprvl';
     
    ALTER TABLE mred."Property" ADD COLUMN "DAYS" text;
    COMMENT ON COLUMN mred."Property"."DAYS" IS '# Of Days';
     
    ALTER TABLE mred."Property" ADD COLUMN "DBL" text;
    COMMENT ON COLUMN mred."Property"."DBL" IS 'Doublewide (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "DEED_GARAGE_COST" integer;
    COMMENT ON COLUMN mred."Property"."DEED_GARAGE_COST" IS 'Deeded Garage Cost';
     
    ALTER TABLE mred."Property" ADD COLUMN "DEED_PARKING_COST" integer;
    COMMENT ON COLUMN mred."Property"."DEED_PARKING_COST" IS 'Deeded Parking Cost';
     
    ALTER TABLE mred."Property" ADD COLUMN "DELETEDDATE" text;
    COMMENT ON COLUMN mred."Property"."DELETEDDATE" IS 'Deleted Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "DID" integer;
    COMMENT ON COLUMN mred."Property"."DID" IS '# Of Drive In Doors';
     
    ALTER TABLE mred."Property" ADD COLUMN "DIM" text;
    COMMENT ON COLUMN mred."Property"."DIM" IS 'Lot Dimensions';
     
    ALTER TABLE mred."Property" ADD COLUMN "DIN" text;
    COMMENT ON COLUMN mred."Property"."DIN" IS 'Dining Room';
     
    ALTER TABLE mred."Property" ADD COLUMN "DIR" text;
    COMMENT ON COLUMN mred."Property"."DIR" IS 'Directions';
     
    ALTER TABLE mred."Property" ADD COLUMN "DISABILITY_ACCESS" text;
    COMMENT ON COLUMN mred."Property"."DISABILITY_ACCESS" IS 'Disability Access and/or Equipped';
     
    ALTER TABLE mred."Property" ADD COLUMN "DISABILITY_ACCESS_DETAILS" text[];
    COMMENT ON COLUMN mred."Property"."DISABILITY_ACCESS_DETAILS" IS 'Disability Access/Equipment Details';
     
    ALTER TABLE mred."Property" ADD COLUMN "DISTRICT" text;
    COMMENT ON COLUMN mred."Property"."DISTRICT" IS 'District';
     
    ALTER TABLE mred."Property" ADD COLUMN "DKS" text[];
    COMMENT ON COLUMN mred."Property"."DKS" IS 'Docks';
     
    ALTER TABLE mred."Property" ADD COLUMN "DOD" text;
    COMMENT ON COLUMN mred."Property"."DOD" IS 'Door Dimension (Width X Height) X (Feet.Inches)';
     
    ALTER TABLE mred."Property" ADD COLUMN "DPR" text;
    COMMENT ON COLUMN mred."Property"."DPR" IS 'Down Payment Resource';
     
    ALTER TABLE mred."Property" ADD COLUMN "DRF" text;
    COMMENT ON COLUMN mred."Property"."DRF" IS 'Dining Room Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "DRL" text;
    COMMENT ON COLUMN mred."Property"."DRL" IS 'Dining Room Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "DRN" text[];
    COMMENT ON COLUMN mred."Property"."DRN" IS 'Water Drainage';
     
    ALTER TABLE mred."Property" ADD COLUMN "DRS" text;
    COMMENT ON COLUMN mred."Property"."DRS" IS 'Dining Room Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "DRV" text[];
    COMMENT ON COLUMN mred."Property"."DRV" IS 'Driveway';
     
    ALTER TABLE mred."Property" ADD COLUMN "DRW" text[];
    COMMENT ON COLUMN mred."Property"."DRW" IS 'Dining Room Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "DRY" integer;
    COMMENT ON COLUMN mred."Property"."DRY" IS '# Of Dryers';
     
    ALTER TABLE mred."Property" ADD COLUMN "DSP" integer;
    COMMENT ON COLUMN mred."Property"."DSP" IS '# Of Disposals';
     
    ALTER TABLE mred."Property" ADD COLUMN "DSW" integer;
    COMMENT ON COLUMN mred."Property"."DSW" IS '# Of Dishwashers';
     
    ALTER TABLE mred."Property" ADD COLUMN "E" integer;
    COMMENT ON COLUMN mred."Property"."E" IS 'East';
     
    ALTER TABLE mred."Property" ADD COLUMN "EC" decimal;
    COMMENT ON COLUMN mred."Property"."EC" IS 'Estimated Cam/Sf';
     
    ALTER TABLE mred."Property" ADD COLUMN "EES" text;
    COMMENT ON COLUMN mred."Property"."EES" IS 'Elevator Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "EEX" text;
    COMMENT ON COLUMN mred."Property"."EEX" IS 'Elevator Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "EFT" integer;
    COMMENT ON COLUMN mred."Property"."EFT" IS '# Of Emp Full Time';
     
    ALTER TABLE mred."Property" ADD COLUMN "EGI" text;
    COMMENT ON COLUMN mred."Property"."EGI" IS 'Effective Gross Income';
     
    ALTER TABLE mred."Property" ADD COLUMN "ELC" text[];
    COMMENT ON COLUMN mred."Property"."ELC" IS 'Electricity';
     
    ALTER TABLE mred."Property" ADD COLUMN "ELCS" text[];
    COMMENT ON COLUMN mred."Property"."ELCS" IS 'Electrical Service';
     
    ALTER TABLE mred."Property" ADD COLUMN "ELEC" text;
    COMMENT ON COLUMN mred."Property"."ELEC" IS 'Electricity Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "ELS" text;
    COMMENT ON COLUMN mred."Property"."ELS" IS 'Electric Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "ENC" text[];
    COMMENT ON COLUMN mred."Property"."ENC" IS 'Known Encumbrances';
     
    ALTER TABLE mred."Property" ADD COLUMN "EPT" integer;
    COMMENT ON COLUMN mred."Property"."EPT" IS '# Of Emp Part Time';
     
    ALTER TABLE mred."Property" ADD COLUMN "EPY" integer;
    COMMENT ON COLUMN mred."Property"."EPY" IS 'Expense Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "EQP" text[];
    COMMENT ON COLUMN mred."Property"."EQP" IS 'Equipment';
     
    ALTER TABLE mred."Property" ADD COLUMN "EQY" text;
    COMMENT ON COLUMN mred."Property"."EQY" IS 'Equity';
     
    ALTER TABLE mred."Property" ADD COLUMN "ESS" text;
    COMMENT ON COLUMN mred."Property"."ESS" IS 'Extra Storage Spaces Available (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "EXISTING_BF" text;
    COMMENT ON COLUMN mred."Property"."EXISTING_BF" IS 'Existing Basement/Foundation';
     
    ALTER TABLE mred."Property" ADD COLUMN "EXP" text[];
    COMMENT ON COLUMN mred."Property"."EXP" IS 'Exposure';
     
    ALTER TABLE mred."Property" ADD COLUMN "EXS" text;
    COMMENT ON COLUMN mred."Property"."EXS" IS 'Total Annual Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "EXT" text[];
    COMMENT ON COLUMN mred."Property"."EXT" IS 'Exterior Building Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "EXT_PROP_FEATS" text[];
    COMMENT ON COLUMN mred."Property"."EXT_PROP_FEATS" IS 'Exterior Property Features';
     
    ALTER TABLE mred."Property" ADD COLUMN "FAP" text[];
    COMMENT ON COLUMN mred."Property"."FAP" IS 'Fees/Approvals';
     
    ALTER TABLE mred."Property" ADD COLUMN "FARM" text;
    COMMENT ON COLUMN mred."Property"."FARM" IS 'Farm';
     
    ALTER TABLE mred."Property" ADD COLUMN "FBT" text[];
    COMMENT ON COLUMN mred."Property"."FBT" IS 'Food/Beverage Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "FEE_LEASE_AMOUNT" integer;
    COMMENT ON COLUMN mred."Property"."FEE_LEASE_AMOUNT" IS 'Fee/Lease $';
     
    ALTER TABLE mred."Property" ADD COLUMN "FF" text;
    COMMENT ON COLUMN mred."Property"."FF" IS 'Front Footage';
     
    ALTER TABLE mred."Property" ADD COLUMN "FIN" text;
    COMMENT ON COLUMN mred."Property"."FIN" IS 'Finance Code';
     
    ALTER TABLE mred."Property" ADD COLUMN "FIREPLACE_LOCATION" text[];
    COMMENT ON COLUMN mred."Property"."FIREPLACE_LOCATION" IS 'Fireplace Location';
     
    ALTER TABLE mred."Property" ADD COLUMN "FLN" text;
    COMMENT ON COLUMN mred."Property"."FLN" IS 'Floor #';
     
    ALTER TABLE mred."Property" ADD COLUMN "FLO" text[];
    COMMENT ON COLUMN mred."Property"."FLO" IS 'Floor Finish';
     
    ALTER TABLE mred."Property" ADD COLUMN "FMT" text[];
    COMMENT ON COLUMN mred."Property"."FMT" IS 'Farms Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "FND" text[];
    COMMENT ON COLUMN mred."Property"."FND" IS 'Foundation';
     
    ALTER TABLE mred."Property" ADD COLUMN "FP" integer;
    COMMENT ON COLUMN mred."Property"."FP" IS '# Interior Fireplaces';
     
    ALTER TABLE mred."Property" ADD COLUMN "FPL" text[];
    COMMENT ON COLUMN mred."Property"."FPL" IS 'Fireplace Details';
     
    ALTER TABLE mred."Property" ADD COLUMN "FPR" text[];
    COMMENT ON COLUMN mred."Property"."FPR" IS 'Fire Protection';
     
    ALTER TABLE mred."Property" ADD COLUMN "FRANCHISOR_FEED" text;
    COMMENT ON COLUMN mred."Property"."FRANCHISOR_FEED" IS 'Franchisor Feed(y/n)';
     
    ALTER TABLE mred."Property" ADD COLUMN "FRE" integer;
    COMMENT ON COLUMN mred."Property"."FRE" IS '# Of Freight Elevators';
     
    ALTER TABLE mred."Property" ADD COLUMN "FREQ" text;
    COMMENT ON COLUMN mred."Property"."FREQ" IS 'Frequency';
     
    ALTER TABLE mred."Property" ADD COLUMN "FRF" text;
    COMMENT ON COLUMN mred."Property"."FRF" IS 'Family Room Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "FRL" text;
    COMMENT ON COLUMN mred."Property"."FRL" IS 'Family Room Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "FRR" text;
    COMMENT ON COLUMN mred."Property"."FRR" IS 'Furnished Rent Rate';
     
    ALTER TABLE mred."Property" ADD COLUMN "FRS" text;
    COMMENT ON COLUMN mred."Property"."FRS" IS 'Family Room Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "FRW" text[];
    COMMENT ON COLUMN mred."Property"."FRW" IS 'Family Room Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "FTG" text[];
    COMMENT ON COLUMN mred."Property"."FTG" IS 'Frontage/Access';
     
    ALTER TABLE mred."Property" ADD COLUMN "FUE" text;
    COMMENT ON COLUMN mred."Property"."FUE" IS 'Fuel Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "FULL_BATHS" integer;
    COMMENT ON COLUMN mred."Property"."FULL_BATHS" IS '# Full Baths';
     
    ALTER TABLE mred."Property" ADD COLUMN "FULL_BATHS_BLDG" integer;
    COMMENT ON COLUMN mred."Property"."FULL_BATHS_BLDG" IS '# Full Baths in Building';
     
    ALTER TABLE mred."Property" ADD COLUMN "FULL_BATHS_UNT1" integer;
    COMMENT ON COLUMN mred."Property"."FULL_BATHS_UNT1" IS '# Full Baths-Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "FULL_BATHS_UNT2" integer;
    COMMENT ON COLUMN mred."Property"."FULL_BATHS_UNT2" IS '# Full Baths-Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "FULL_BATHS_UNT3" integer;
    COMMENT ON COLUMN mred."Property"."FULL_BATHS_UNT3" IS '# Full Baths-Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "FULL_BATHS_UNT4" integer;
    COMMENT ON COLUMN mred."Property"."FULL_BATHS_UNT4" IS '# Full Baths-Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "FUR" text;
    COMMENT ON COLUMN mred."Property"."FUR" IS 'Avail Furnished (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "FUS" text;
    COMMENT ON COLUMN mred."Property"."FUS" IS 'Fuel Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "GAR" text[];
    COMMENT ON COLUMN mred."Property"."GAR" IS 'Garage Details';
     
    ALTER TABLE mred."Property" ADD COLUMN "GARAGE_ONSITE" text;
    COMMENT ON COLUMN mred."Property"."GARAGE_ONSITE" IS 'Garage On-Site';
     
    ALTER TABLE mred."Property" ADD COLUMN "GARAGE_OWNERSHIP" text;
    COMMENT ON COLUMN mred."Property"."GARAGE_OWNERSHIP" IS 'Garage Ownership';
     
    ALTER TABLE mred."Property" ADD COLUMN "GARAGE_TYPE" text[];
    COMMENT ON COLUMN mred."Property"."GARAGE_TYPE" IS 'Garage Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "GD" text[];
    COMMENT ON COLUMN mred."Property"."GD" IS 'Garage/Boat Slip Description';
     
    ALTER TABLE mred."Property" ADD COLUMN "GENPROPFEATS" text[];
    COMMENT ON COLUMN mred."Property"."GENPROPFEATS" IS 'General Property Features';
     
    ALTER TABLE mred."Property" ADD COLUMN "GEO" text[];
    COMMENT ON COLUMN mred."Property"."GEO" IS 'Geographic Locale';
     
    ALTER TABLE mred."Property" ADD COLUMN "GP" text;
    COMMENT ON COLUMN mred."Property"."GP" IS 'Gross Profit';
     
    ALTER TABLE mred."Property" ADD COLUMN "GPS" text;
    COMMENT ON COLUMN mred."Property"."GPS" IS 'Gross Profit Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "GPY" integer;
    COMMENT ON COLUMN mred."Property"."GPY" IS 'Gross Profit Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "GRA" text;
    COMMENT ON COLUMN mred."Property"."GRA" IS 'Gross Rentable Area';
     
    ALTER TABLE mred."Property" ADD COLUMN "GRE" text;
    COMMENT ON COLUMN mred."Property"."GRE" IS 'Gross Expenses $';
     
    ALTER TABLE mred."Property" ADD COLUMN "GREENDISCL" text;
    COMMENT ON COLUMN mred."Property"."GREENDISCL" IS 'Green Supporting Documents';
     
    ALTER TABLE mred."Property" ADD COLUMN "GREENFEAT" text[];
    COMMENT ON COLUMN mred."Property"."GREENFEAT" IS 'Green Features';
     
    ALTER TABLE mred."Property" ADD COLUMN "GREENSRC" text[];
    COMMENT ON COLUMN mred."Property"."GREENSRC" IS 'Energy/Green Building Rating Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "GRG" integer;
    COMMENT ON COLUMN mred."Property"."GRG" IS '# Of Garages';
     
    ALTER TABLE mred."Property" ADD COLUMN "GRI" text;
    COMMENT ON COLUMN mred."Property"."GRI" IS 'Gross Rental Income $';
     
    ALTER TABLE mred."Property" ADD COLUMN "GRID" integer;
    COMMENT ON COLUMN mred."Property"."GRID" IS 'Grid';
     
    ALTER TABLE mred."Property" ADD COLUMN "GRM" numeric;
    COMMENT ON COLUMN mred."Property"."GRM" IS 'Gross Rent Multiplier';
     
    ALTER TABLE mred."Property" ADD COLUMN "GS" text;
    COMMENT ON COLUMN mred."Property"."GS" IS 'Elementary School';
     
    ALTER TABLE mred."Property" ADD COLUMN "GSA" text;
    COMMENT ON COLUMN mred."Property"."GSA" IS 'Gross Sales Annual';
     
    ALTER TABLE mred."Property" ADD COLUMN "GSD" text;
    COMMENT ON COLUMN mred."Property"."GSD" IS 'Elementary Sch Dist';
     
    ALTER TABLE mred."Property" ADD COLUMN "GSE" text;
    COMMENT ON COLUMN mred."Property"."GSE" IS 'Gas $';
     
    ALTER TABLE mred."Property" ADD COLUMN "GSI" text;
    COMMENT ON COLUMN mred."Property"."GSI" IS 'Total Annual Income';
     
    ALTER TABLE mred."Property" ADD COLUMN "GSS" text;
    COMMENT ON COLUMN mred."Property"."GSS" IS 'Gr Sales Ann Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "GSY" integer;
    COMMENT ON COLUMN mred."Property"."GSY" IS 'Gross Sales Ann Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "HALF_BATHS" integer;
    COMMENT ON COLUMN mred."Property"."HALF_BATHS" IS '# Half Baths';
     
    ALTER TABLE mred."Property" ADD COLUMN "HALF_BATHS_BLDG" integer;
    COMMENT ON COLUMN mred."Property"."HALF_BATHS_BLDG" IS '# Half Baths in Building';
     
    ALTER TABLE mred."Property" ADD COLUMN "HALF_BATHS_UNT1" integer;
    COMMENT ON COLUMN mred."Property"."HALF_BATHS_UNT1" IS '# Half Baths-Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "HALF_BATHS_UNT2" integer;
    COMMENT ON COLUMN mred."Property"."HALF_BATHS_UNT2" IS '# Half Baths-Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "HALF_BATHS_UNT3" integer;
    COMMENT ON COLUMN mred."Property"."HALF_BATHS_UNT3" IS '# Half Baths-Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "HALF_BATHS_UNT4" integer;
    COMMENT ON COLUMN mred."Property"."HALF_BATHS_UNT4" IS '# Half Baths-Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "HBTH1" integer;
    COMMENT ON COLUMN mred."Property"."HBTH1" IS '# Of Half Bthrms - Type 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "HBTH2" integer;
    COMMENT ON COLUMN mred."Property"."HBTH2" IS '# Of Half Bthrms - Type 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "HBTH3" integer;
    COMMENT ON COLUMN mred."Property"."HBTH3" IS '# Of Half Bthrms - Type 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "HBTH4" integer;
    COMMENT ON COLUMN mred."Property"."HBTH4" IS '# Of Half Bthrms - Type 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "HBTH5" integer;
    COMMENT ON COLUMN mred."Property"."HBTH5" IS '# Of Half Bthrms - Type 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "HBTH6" integer;
    COMMENT ON COLUMN mred."Property"."HBTH6" IS '# Of Half Bthrms - Type 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "HBTH7" integer;
    COMMENT ON COLUMN mred."Property"."HBTH7" IS '# Of Half Bthrms - Type 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "HEA" text[];
    COMMENT ON COLUMN mred."Property"."HEA" IS 'Heat/Fuel';
     
    ALTER TABLE mred."Property" ADD COLUMN "HEM" text;
    COMMENT ON COLUMN mred."Property"."HEM" IS 'Holds Earnest Money';
     
    ALTER TABLE mred."Property" ADD COLUMN "HERS" integer;
    COMMENT ON COLUMN mred."Property"."HERS" IS 'HERS Index Score';
     
    ALTER TABLE mred."Property" ADD COLUMN "HPF" text;
    COMMENT ON COLUMN mred."Property"."HPF" IS 'Highest Parking Fee';
     
    ALTER TABLE mred."Property" ADD COLUMN "HS" text;
    COMMENT ON COLUMN mred."Property"."HS" IS 'High School';
     
    ALTER TABLE mred."Property" ADD COLUMN "HSD" text;
    COMMENT ON COLUMN mred."Property"."HSD" IS 'High Sch Dist';
     
    ALTER TABLE mred."Property" ADD COLUMN "HSN" text;
    COMMENT ON COLUMN mred."Property"."HSN" IS 'Street Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "HT" text;
    COMMENT ON COLUMN mred."Property"."HT" IS 'Heated/Unheated Garage';
     
    ALTER TABLE mred."Property" ADD COLUMN "HTE" text;
    COMMENT ON COLUMN mred."Property"."HTE" IS 'Heat $';
     
    ALTER TABLE mred."Property" ADD COLUMN "HVT" text[];
    COMMENT ON COLUMN mred."Property"."HVT" IS 'Heat/Ventilation';
     
    ALTER TABLE mred."Property" ADD COLUMN "IDX" text;
    COMMENT ON COLUMN mred."Property"."IDX" IS 'IDX Status';
     
    ALTER TABLE mred."Property" ADD COLUMN "IMPS" text[];
    COMMENT ON COLUMN mred."Property"."IMPS" IS 'Sewer';
     
    ALTER TABLE mred."Property" ADD COLUMN "IMPW" text[];
    COMMENT ON COLUMN mred."Property"."IMPW" IS 'Water';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN" text;
    COMMENT ON COLUMN mred."Property"."IN" IS 'Inventory';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN1" text;
    COMMENT ON COLUMN mred."Property"."IN1" IS 'Monthly Income - 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN1MAX" integer;
    COMMENT ON COLUMN mred."Property"."IN1MAX" IS 'Monthly Income Max - 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN2" text;
    COMMENT ON COLUMN mred."Property"."IN2" IS 'Monthly Income - 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN2MAX" integer;
    COMMENT ON COLUMN mred."Property"."IN2MAX" IS 'Monthly Income Max - 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN3" text;
    COMMENT ON COLUMN mred."Property"."IN3" IS 'Monthly Income - 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN3MAX" integer;
    COMMENT ON COLUMN mred."Property"."IN3MAX" IS 'Monthly Income Max - 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN4" text;
    COMMENT ON COLUMN mred."Property"."IN4" IS 'Monthly Income - 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN4MAX" integer;
    COMMENT ON COLUMN mred."Property"."IN4MAX" IS 'Monthly Income Max - 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN5" text;
    COMMENT ON COLUMN mred."Property"."IN5" IS 'Monthly Income - 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN5MAX" integer;
    COMMENT ON COLUMN mred."Property"."IN5MAX" IS 'Monthly Income Max - 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN6" text;
    COMMENT ON COLUMN mred."Property"."IN6" IS 'Monthly Income - 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN6MAX" integer;
    COMMENT ON COLUMN mred."Property"."IN6MAX" IS 'Monthly Income Max - 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN7" text;
    COMMENT ON COLUMN mred."Property"."IN7" IS 'Monthly Income - 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "IN7MAX" integer;
    COMMENT ON COLUMN mred."Property"."IN7MAX" IS 'Monthly Income Max - 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "INE" text;
    COMMENT ON COLUMN mred."Property"."INE" IS 'Insurance $';
     
    ALTER TABLE mred."Property" ADD COLUMN "INF" text[];
    COMMENT ON COLUMN mred."Property"."INF" IS 'General Information';
     
    ALTER TABLE mred."Property" ADD COLUMN "INFO" text[];
    COMMENT ON COLUMN mred."Property"."INFO" IS 'Information';
     
    ALTER TABLE mred."Property" ADD COLUMN "INP" text;
    COMMENT ON COLUMN mred."Property"."INP" IS 'Annual Parking Income';
     
    ALTER TABLE mred."Property" ADD COLUMN "INS" text;
    COMMENT ON COLUMN mred."Property"."INS" IS 'Insurance Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "INTERNETLISTING" text[];
    COMMENT ON COLUMN mred."Property"."INTERNETLISTING" IS 'Internet Listing';
     
    ALTER TABLE mred."Property" ADD COLUMN "INTERNET_AVM" text;
    COMMENT ON COLUMN mred."Property"."INTERNET_AVM" IS 'VOW AVM (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "INTLSTATE" text;
    COMMENT ON COLUMN mred."Property"."INTLSTATE" IS 'State';
     
    ALTER TABLE mred."Property" ADD COLUMN "INT_PROP_FEATS" text[];
    COMMENT ON COLUMN mred."Property"."INT_PROP_FEATS" IS 'Interior Property Features';
     
    ALTER TABLE mred."Property" ADD COLUMN "INV" text;
    COMMENT ON COLUMN mred."Property"."INV" IS 'Investment (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "INY" integer;
    COMMENT ON COLUMN mred."Property"."INY" IS 'Inventory Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "ISS" text;
    COMMENT ON COLUMN mred."Property"."ISS" IS 'Insurance Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "IVS" text;
    COMMENT ON COLUMN mred."Property"."IVS" IS 'Inventory Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "JAN" text;
    COMMENT ON COLUMN mred."Property"."JAN" IS 'Janitor Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "JAS" text;
    COMMENT ON COLUMN mred."Property"."JAS" IS 'Janitor Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "JH" text;
    COMMENT ON COLUMN mred."Property"."JH" IS 'Jr High/Middle School';
     
    ALTER TABLE mred."Property" ADD COLUMN "JHD" text;
    COMMENT ON COLUMN mred."Property"."JHD" IS 'Jr High/Middle Dist';
     
    ALTER TABLE mred."Property" ADD COLUMN "JNE" text;
    COMMENT ON COLUMN mred."Property"."JNE" IS 'Janitorial $';
     
    ALTER TABLE mred."Property" ADD COLUMN "KEL" text[];
    COMMENT ON COLUMN mred."Property"."KEL" IS 'Known Existing Liens';
     
    ALTER TABLE mred."Property" ADD COLUMN "KIT" text[];
    COMMENT ON COLUMN mred."Property"."KIT" IS 'Kitchen Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "KTF" text;
    COMMENT ON COLUMN mred."Property"."KTF" IS 'Kitchen Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "KTL" text;
    COMMENT ON COLUMN mred."Property"."KTL" IS 'Kitchen Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "KTS" text;
    COMMENT ON COLUMN mred."Property"."KTS" IS 'Kitchen Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "KTW" text[];
    COMMENT ON COLUMN mred."Property"."KTW" IS 'Kitchen Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAADDRESS2" text;
    COMMENT ON COLUMN mred."Property"."LAADDRESS2" IS 'Listing Agent Additional Address';
     
    ALTER TABLE mred."Property" ADD COLUMN "LACELLPHONE" text;
    COMMENT ON COLUMN mred."Property"."LACELLPHONE" IS 'Listing Agent Cell Phone';
     
    ALTER TABLE mred."Property" ADD COLUMN "LACITY" text;
    COMMENT ON COLUMN mred."Property"."LACITY" IS 'Listing Agent City';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAEMAIL" text;
    COMMENT ON COLUMN mred."Property"."LAEMAIL" IS 'Listing Agent Email Address';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAFAXNUMBER" text;
    COMMENT ON COLUMN mred."Property"."LAFAXNUMBER" IS 'Listing Agent Fax Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAFIRSTNAME" text;
    COMMENT ON COLUMN mred."Property"."LAFIRSTNAME" IS 'Listing Agent First Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAID" text;
    COMMENT ON COLUMN mred."Property"."LAID" IS 'Listing Agent ID';
     
    ALTER TABLE mred."Property" ADD COLUMN "LALASTNAME" text;
    COMMENT ON COLUMN mred."Property"."LALASTNAME" IS 'Listing Agent Last Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAOFFICEPHONE" text;
    COMMENT ON COLUMN mred."Property"."LAOFFICEPHONE" IS 'Listing Agent Office Phone';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAPAGERNUMBER" text;
    COMMENT ON COLUMN mred."Property"."LAPAGERNUMBER" IS 'Listing Agent Pager Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "LASTATE" text;
    COMMENT ON COLUMN mred."Property"."LASTATE" IS 'Listing Agent State';
     
    ALTER TABLE mred."Property" ADD COLUMN "LASTREETNAME" text;
    COMMENT ON COLUMN mred."Property"."LASTREETNAME" IS 'Listing Agent Street Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "LASTREETNUMBER" text;
    COMMENT ON COLUMN mred."Property"."LASTREETNUMBER" IS 'Listing Agent Street Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAT" decimal;
    COMMENT ON COLUMN mred."Property"."LAT" IS 'Latitude';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAUNDRYF" text[];
    COMMENT ON COLUMN mred."Property"."LAUNDRYF" IS 'Laundry Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAUNDRYL" text[];
    COMMENT ON COLUMN mred."Property"."LAUNDRYL" IS 'Laundry Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAUNDRYS" text;
    COMMENT ON COLUMN mred."Property"."LAUNDRYS" IS 'Laundry Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAUNDRYW" text[];
    COMMENT ON COLUMN mred."Property"."LAUNDRYW" IS 'Laundry Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "LAZIP" text;
    COMMENT ON COLUMN mred."Property"."LAZIP" IS 'Listing Agent Zip Code';
     
    ALTER TABLE mred."Property" ADD COLUMN "LD" text;
    COMMENT ON COLUMN mred."Property"."LD" IS 'List Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "LDR" text;
    COMMENT ON COLUMN mred."Property"."LDR" IS 'List Date Received';
     
    ALTER TABLE mred."Property" ADD COLUMN "LDS" text[];
    COMMENT ON COLUMN mred."Property"."LDS" IS 'Lot Description';
     
    ALTER TABLE mred."Property" ADD COLUMN "LE" text;
    COMMENT ON COLUMN mred."Property"."LE" IS 'Lease Expires';
     
    ALTER TABLE mred."Property" ADD COLUMN "LE1" text;
    COMMENT ON COLUMN mred."Property"."LE1" IS 'Lease Expiration Date 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "LE2" text;
    COMMENT ON COLUMN mred."Property"."LE2" IS 'Lease Expiration Date 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "LE3" text;
    COMMENT ON COLUMN mred."Property"."LE3" IS 'Lease Expiration Date 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "LE4" text;
    COMMENT ON COLUMN mred."Property"."LE4" IS 'Lease Expiration Date 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "LE5" text;
    COMMENT ON COLUMN mred."Property"."LE5" IS 'Lease Expiration Date 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "LE6" text;
    COMMENT ON COLUMN mred."Property"."LE6" IS 'Lease Expiration Date 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "LE7" text;
    COMMENT ON COLUMN mred."Property"."LE7" IS 'Lease Expiration Date 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "LEASEXD" text;
    COMMENT ON COLUMN mred."Property"."LEASEXD" IS 'Lease Expiration Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "LF" integer;
    COMMENT ON COLUMN mred."Property"."LF" IS 'Loss Factor';
     
    ALTER TABLE mred."Property" ADD COLUMN "LI" text;
    COMMENT ON COLUMN mred."Property"."LI" IS 'Land Incl (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "LIN" text;
    COMMENT ON COLUMN mred."Property"."LIN" IS 'Laundry Income (Annual)';
     
    ALTER TABLE mred."Property" ADD COLUMN "LIQ" text[];
    COMMENT ON COLUMN mred."Property"."LIQ" IS 'Living Quarters';
     
    ALTER TABLE mred."Property" ADD COLUMN "LIST" text;
    COMMENT ON COLUMN mred."Property"."LIST" IS 'Listing Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "LLE" text;
    COMMENT ON COLUMN mred."Property"."LLE" IS 'Last Lease Expiration (Date)';
     
    ALTER TABLE mred."Property" ADD COLUMN "LLP" integer;
    COMMENT ON COLUMN mred."Property"."LLP" IS 'Last List Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "LLTYP" text;
    COMMENT ON COLUMN mred."Property"."LLTYP" IS 'Property Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "LMT" integer;
    COMMENT ON COLUMN mred."Property"."LMT" IS 'Listing Market Time';
     
    ALTER TABLE mred."Property" ADD COLUMN "LN" text PRIMARY KEY;
    COMMENT ON COLUMN mred."Property"."LN" IS 'MLS #';
     
    ALTER TABLE mred."Property" ADD COLUMN "LND" text[];
    COMMENT ON COLUMN mred."Property"."LND" IS 'Land Description';
     
    ALTER TABLE mred."Property" ADD COLUMN "LNG" decimal;
    COMMENT ON COLUMN mred."Property"."LNG" IS 'Longitude';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOAN" integer;
    COMMENT ON COLUMN mred."Property"."LOAN" IS 'Loans';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOCAT" text[];
    COMMENT ON COLUMN mred."Property"."LOCAT" IS 'Location';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOCITY" text;
    COMMENT ON COLUMN mred."Property"."LOCITY" IS 'Listing Office City';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOCKBOX" text[];
    COMMENT ON COLUMN mred."Property"."LOCKBOX" IS 'Lock Box Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOEMAIL" text;
    COMMENT ON COLUMN mred."Property"."LOEMAIL" IS 'Listing Office Email Address';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOFAXNUMBER" text;
    COMMENT ON COLUMN mred."Property"."LOFAXNUMBER" IS 'Listing Office Fax Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOID" text;
    COMMENT ON COLUMN mred."Property"."LOID" IS 'Listing Office ID';
     
    ALTER TABLE mred."Property" ADD COLUMN "LONAME" text;
    COMMENT ON COLUMN mred."Property"."LONAME" IS 'Listing Office Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOPHONE" text;
    COMMENT ON COLUMN mred."Property"."LOPHONE" IS 'Listing Office Phone Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOSTATE" text;
    COMMENT ON COLUMN mred."Property"."LOSTATE" IS 'Listing Office State';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOSTREETNAME" text;
    COMMENT ON COLUMN mred."Property"."LOSTREETNAME" IS 'Listing Office Street Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOSTREETNUMBER" text;
    COMMENT ON COLUMN mred."Property"."LOSTREETNUMBER" IS 'Listing Office Street Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOWWW" text;
    COMMENT ON COLUMN mred."Property"."LOWWW" IS 'Listing Office Website';
     
    ALTER TABLE mred."Property" ADD COLUMN "LOZIP" text;
    COMMENT ON COLUMN mred."Property"."LOZIP" IS 'Listing Office Zip Code';
     
    ALTER TABLE mred."Property" ADD COLUMN "LO_LOCATION" text;
    COMMENT ON COLUMN mred."Property"."LO_LOCATION" IS 'List Office Location ID';
     
    ALTER TABLE mred."Property" ADD COLUMN "LP" integer;
    COMMENT ON COLUMN mred."Property"."LP" IS 'List Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "LPF" text;
    COMMENT ON COLUMN mred."Property"."LPF" IS 'Lowest Parking Fee';
     
    ALTER TABLE mred."Property" ADD COLUMN "LRF" text;
    COMMENT ON COLUMN mred."Property"."LRF" IS 'Living Room Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "LRL" text;
    COMMENT ON COLUMN mred."Property"."LRL" IS 'Living Room Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "LRP" integer;
    COMMENT ON COLUMN mred."Property"."LRP" IS 'Last Rent Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "LRS" text;
    COMMENT ON COLUMN mred."Property"."LRS" IS 'Living Room Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "LRT" text;
    COMMENT ON COLUMN mred."Property"."LRT" IS 'Lot Rental (Monthly)';
     
    ALTER TABLE mred."Property" ADD COLUMN "LRW" text[];
    COMMENT ON COLUMN mred."Property"."LRW" IS 'Living Room Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "LSF" integer;
    COMMENT ON COLUMN mred."Property"."LSF" IS 'Lot Sq Ft';
     
    ALTER TABLE mred."Property" ADD COLUMN "LSZ" text;
    COMMENT ON COLUMN mred."Property"."LSZ" IS 'Lot Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "LT" text;
    COMMENT ON COLUMN mred."Property"."LT" IS 'Lease Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "LT0" text;
    COMMENT ON COLUMN mred."Property"."LT0" IS 'Lease Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "LT1" text;
    COMMENT ON COLUMN mred."Property"."LT1" IS 'Lease Type 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "LT2" text;
    COMMENT ON COLUMN mred."Property"."LT2" IS 'Lease Type 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "LT3" text;
    COMMENT ON COLUMN mred."Property"."LT3" IS 'Lease Type 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "LT4" text;
    COMMENT ON COLUMN mred."Property"."LT4" IS 'Lease Type 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "LT5" text;
    COMMENT ON COLUMN mred."Property"."LT5" IS 'Lease Type 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "LT6" text;
    COMMENT ON COLUMN mred."Property"."LT6" IS 'Lease Type 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "LT7" text;
    COMMENT ON COLUMN mred."Property"."LT7" IS 'Lease Type 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "LX1" text;
    COMMENT ON COLUMN mred."Property"."LX1" IS 'Lease Exp Date (Mo/Yr) - Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "LX2" text;
    COMMENT ON COLUMN mred."Property"."LX2" IS 'Lease Exp Date (Mo/Yr) - Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "LX3" text;
    COMMENT ON COLUMN mred."Property"."LX3" IS 'Lease Exp Date (Mo/Yr) - Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "LX4" text;
    COMMENT ON COLUMN mred."Property"."LX4" IS 'Lease Exp Date (Mo/Yr) - Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "MAF" text;
    COMMENT ON COLUMN mred."Property"."MAF" IS 'Master Association Fee';
     
    ALTER TABLE mred."Property" ADD COLUMN "MAI" text[];
    COMMENT ON COLUMN mred."Property"."MAI" IS 'Assessment Includes';
     
    ALTER TABLE mred."Property" ADD COLUMN "MANAGECOMPANY" text;
    COMMENT ON COLUMN mred."Property"."MANAGECOMPANY" IS 'Management Company';
     
    ALTER TABLE mred."Property" ADD COLUMN "MANAGECONTACT" text;
    COMMENT ON COLUMN mred."Property"."MANAGECONTACT" IS 'Management Contact Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "MANAGEPHONE" text;
    COMMENT ON COLUMN mred."Property"."MANAGEPHONE" IS 'Management Phone';
     
    ALTER TABLE mred."Property" ADD COLUMN "MANAGINGBROKER" text;
    COMMENT ON COLUMN mred."Property"."MANAGINGBROKER" IS 'Managing Broker (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "MASTER_ASSOC_FEE" integer;
    COMMENT ON COLUMN mred."Property"."MASTER_ASSOC_FEE" IS 'Master Association Fee($)';
     
    ALTER TABLE mred."Property" ADD COLUMN "MAX" text;
    COMMENT ON COLUMN mred."Property"."MAX" IS 'Max Avail Sq Ft (Rentable)';
     
    ALTER TABLE mred."Property" ADD COLUMN "MBB" text[];
    COMMENT ON COLUMN mred."Property"."MBB" IS 'Master Bedroom Bath';
     
    ALTER TABLE mred."Property" ADD COLUMN "MBF" text;
    COMMENT ON COLUMN mred."Property"."MBF" IS 'Master Bedroom Flooring';
     
    ALTER TABLE mred."Property" ADD COLUMN "MBL" text;
    COMMENT ON COLUMN mred."Property"."MBL" IS 'Master Bedroom Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "MBS" text;
    COMMENT ON COLUMN mred."Property"."MBS" IS 'Master Bedroom Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "MBW" text[];
    COMMENT ON COLUMN mred."Property"."MBW" IS 'Master Bedroom Window Treatments';
     
    ALTER TABLE mred."Property" ADD COLUMN "MC" text;
    COMMENT ON COLUMN mred."Property"."MC" IS 'Market Code';
     
    ALTER TABLE mred."Property" ADD COLUMN "MGF" text;
    COMMENT ON COLUMN mred."Property"."MGF" IS 'Mgmnt Fee $';
     
    ALTER TABLE mred."Property" ADD COLUMN "MGS" text;
    COMMENT ON COLUMN mred."Property"."MGS" IS 'Management Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "MGT" text[];
    COMMENT ON COLUMN mred."Property"."MGT" IS 'Management';
     
    ALTER TABLE mred."Property" ADD COLUMN "MI" text[];
    COMMENT ON COLUMN mred."Property"."MI" IS 'Misc Inside';
     
    ALTER TABLE mred."Property" ADD COLUMN "MIN" text;
    COMMENT ON COLUMN mred."Property"."MIN" IS 'Min Avail Sq Ft (Rentable)';
     
    ALTER TABLE mred."Property" ADD COLUMN "MK" text;
    COMMENT ON COLUMN mred."Property"."MK" IS 'Brand Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "MNG" text;
    COMMENT ON COLUMN mred."Property"."MNG" IS 'Management Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "MNTH_RENTAL_PRICE" integer;
    COMMENT ON COLUMN mred."Property"."MNTH_RENTAL_PRICE" IS 'Monthly Rental Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "MO" text[];
    COMMENT ON COLUMN mred."Property"."MO" IS 'Misc Outside';
     
    ALTER TABLE mred."Property" ADD COLUMN "MOBILE_HOME_FEATS" text[];
    COMMENT ON COLUMN mred."Property"."MOBILE_HOME_FEATS" IS 'Mobile Home Features';
     
    ALTER TABLE mred."Property" ADD COLUMN "MOD" text;
    COMMENT ON COLUMN mred."Property"."MOD" IS 'Model';
     
    ALTER TABLE mred."Property" ADD COLUMN "MPN" text;
    COMMENT ON COLUMN mred."Property"."MPN" IS 'Multiple Pin Numbers (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "MPW" text;
    COMMENT ON COLUMN mred."Property"."MPW" IS 'Max Pet Weight';
     
    ALTER TABLE mred."Property" ADD COLUMN "MRI" text[];
    COMMENT ON COLUMN mred."Property"."MRI" IS 'Monthly Lot Rent Incl';
     
    ALTER TABLE mred."Property" ADD COLUMN "MSE" text;
    COMMENT ON COLUMN mred."Property"."MSE" IS 'Misc $';
     
    ALTER TABLE mred."Property" ADD COLUMN "MSI" text;
    COMMENT ON COLUMN mred."Property"."MSI" IS 'Annual Misc. Income';
     
    ALTER TABLE mred."Property" ADD COLUMN "MSTR_BRM_UNT1" text;
    COMMENT ON COLUMN mred."Property"."MSTR_BRM_UNT1" IS 'Master Bedroom Bath-Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "MSTR_BRM_UNT2" text;
    COMMENT ON COLUMN mred."Property"."MSTR_BRM_UNT2" IS 'Master Bedroom Bath-Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "MSTR_BRM_UNT3" text;
    COMMENT ON COLUMN mred."Property"."MSTR_BRM_UNT3" IS 'Master Bedroom Bath-Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "MSTR_BRM_UNT4" text;
    COMMENT ON COLUMN mred."Property"."MSTR_BRM_UNT4" IS 'Master Bedroom Bath-Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "MT" integer;
    COMMENT ON COLUMN mred."Property"."MT" IS 'Market Time';
     
    ALTER TABLE mred."Property" ADD COLUMN "N" integer;
    COMMENT ON COLUMN mred."Property"."N" IS 'North';
     
    ALTER TABLE mred."Property" ADD COLUMN "NC" text;
    COMMENT ON COLUMN mred."Property"."NC" IS 'New Construction';
     
    ALTER TABLE mred."Property" ADD COLUMN "NCO" text[];
    COMMENT ON COLUMN mred."Property"."NCO" IS 'New/Proposed Construction Options';
     
    ALTER TABLE mred."Property" ADD COLUMN "NDAR" text;
    COMMENT ON COLUMN mred."Property"."NDAR" IS 'Confidentiality Or Non-Disclosure Agreement Required? (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "NDK" integer;
    COMMENT ON COLUMN mred."Property"."NDK" IS '# Of TL Docks';
     
    ALTER TABLE mred."Property" ADD COLUMN "NFP" integer;
    COMMENT ON COLUMN mred."Property"."NFP" IS '# Of Fireplaces';
     
    ALTER TABLE mred."Property" ADD COLUMN "NO" text;
    COMMENT ON COLUMN mred."Property"."NO" IS 'Net Profit';
     
    ALTER TABLE mred."Property" ADD COLUMN "NOI" text;
    COMMENT ON COLUMN mred."Property"."NOI" IS 'Net Oper Income $';
     
    ALTER TABLE mred."Property" ADD COLUMN "NOS" text;
    COMMENT ON COLUMN mred."Property"."NOS" IS 'Net Profit Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "NOY" integer;
    COMMENT ON COLUMN mred."Property"."NOY" IS 'Net Operating Income Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "NO_GARAGE_SPACES" decimal;
    COMMENT ON COLUMN mred."Property"."NO_GARAGE_SPACES" IS '# Garage Spaces';
     
    ALTER TABLE mred."Property" ADD COLUMN "NO_PARKING_SPACES" integer;
    COMMENT ON COLUMN mred."Property"."NO_PARKING_SPACES" IS '# Parking Spaces';
     
    ALTER TABLE mred."Property" ADD COLUMN "NO_STORIES" integer;
    COMMENT ON COLUMN mred."Property"."NO_STORIES" IS '# Stories';
     
    ALTER TABLE mred."Property" ADD COLUMN "NRA" text;
    COMMENT ON COLUMN mred."Property"."NRA" IS 'Net Rentable Area';
     
    ALTER TABLE mred."Property" ADD COLUMN "OA" text;
    COMMENT ON COLUMN mred."Property"."OA" IS 'Owners Assoc (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "OAI" text;
    COMMENT ON COLUMN mred."Property"."OAI" IS 'Other Addl Income';
     
    ALTER TABLE mred."Property" ADD COLUMN "OD" text;
    COMMENT ON COLUMN mred."Property"."OD" IS 'Estimated Occupancy Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "OES" text;
    COMMENT ON COLUMN mred."Property"."OES" IS 'Other Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "OEX" text;
    COMMENT ON COLUMN mred."Property"."OEX" IS 'Other Expenses';
     
    ALTER TABLE mred."Property" ADD COLUMN "OFC" integer;
    COMMENT ON COLUMN mred."Property"."OFC" IS '# Of Offices';
     
    ALTER TABLE mred."Property" ADD COLUMN "OLP" integer;
    COMMENT ON COLUMN mred."Property"."OLP" IS 'Original List Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "OMD" text;
    COMMENT ON COLUMN mred."Property"."OMD" IS 'Off-Market Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "OMT" text;
    COMMENT ON COLUMN mred."Property"."OMT" IS 'Omt';
     
    ALTER TABLE mred."Property" ADD COLUMN "OPH" text;
    COMMENT ON COLUMN mred."Property"."OPH" IS 'Owner''s Phone';
     
    ALTER TABLE mred."Property" ADD COLUMN "ORP" decimal;
    COMMENT ON COLUMN mred."Property"."ORP" IS 'Original Rental Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "ORS" text;
    COMMENT ON COLUMN mred."Property"."ORS" IS 'Other Min Req Sq Ft (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "OSD" text;
    COMMENT ON COLUMN mred."Property"."OSD" IS 'Other Public Sch Dist';
     
    ALTER TABLE mred."Property" ADD COLUMN "OSQ" text;
    COMMENT ON COLUMN mred."Property"."OSQ" IS 'Approx Office Sq Ft';
     
    ALTER TABLE mred."Property" ADD COLUMN "OT" text;
    COMMENT ON COLUMN mred."Property"."OT" IS 'Othr Public Sch';
     
    ALTER TABLE mred."Property" ADD COLUMN "OTC" text;
    COMMENT ON COLUMN mred."Property"."OTC" IS 'Other Compensation';
     
    ALTER TABLE mred."Property" ADD COLUMN "OWB" text[];
    COMMENT ON COLUMN mred."Property"."OWB" IS 'Type Ownership (Business)';
     
    ALTER TABLE mred."Property" ADD COLUMN "OWN" text;
    COMMENT ON COLUMN mred."Property"."OWN" IS 'Ownership';
     
    ALTER TABLE mred."Property" ADD COLUMN "OWR" text;
    COMMENT ON COLUMN mred."Property"."OWR" IS 'Owner''s Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "OWS" text;
    COMMENT ON COLUMN mred."Property"."OWS" IS '% Common Area/Coop/Condo Ownership';
     
    ALTER TABLE mred."Property" ADD COLUMN "OWT" text[];
    COMMENT ON COLUMN mred."Property"."OWT" IS 'Ownership Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "PA" text;
    COMMENT ON COLUMN mred."Property"."PA" IS 'Park Approval (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "PAR" text[];
    COMMENT ON COLUMN mred."Property"."PAR" IS 'Parking Details';
     
    ALTER TABLE mred."Property" ADD COLUMN "PARK" text;
    COMMENT ON COLUMN mred."Property"."PARK" IS 'Park Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "PARKING_ONSITE" text;
    COMMENT ON COLUMN mred."Property"."PARKING_ONSITE" IS 'Parking On-Site';
     
    ALTER TABLE mred."Property" ADD COLUMN "PARKING_OWNERSHIP" text;
    COMMENT ON COLUMN mred."Property"."PARKING_OWNERSHIP" IS 'Parking Ownership';
     
    ALTER TABLE mred."Property" ADD COLUMN "PAR_FEE_LEASE_AMOUNT" integer;
    COMMENT ON COLUMN mred."Property"."PAR_FEE_LEASE_AMOUNT" IS 'Parking Fee/Lease $';
     
    ALTER TABLE mred."Property" ADD COLUMN "PET" text[];
    COMMENT ON COLUMN mred."Property"."PET" IS 'Pet Information';
     
    ALTER TABLE mred."Property" ADD COLUMN "PHO" text[];
    COMMENT ON COLUMN mred."Property"."PHO" IS 'Photo';
     
    ALTER TABLE mred."Property" ADD COLUMN "PHOTOCOUNT" integer;
    COMMENT ON COLUMN mred."Property"."PHOTOCOUNT" IS 'Photo Count';
     
    ALTER TABLE mred."Property" ADD COLUMN "PHOTODATE" text;
    COMMENT ON COLUMN mred."Property"."PHOTODATE" IS 'Photo Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "PIN" text;
    COMMENT ON COLUMN mred."Property"."PIN" IS 'Parcel Identification Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "PKI" text[];
    COMMENT ON COLUMN mred."Property"."PKI" IS 'Indoor Parking';
     
    ALTER TABLE mred."Property" ADD COLUMN "PKN" text[];
    COMMENT ON COLUMN mred."Property"."PKN" IS 'Parking';
     
    ALTER TABLE mred."Property" ADD COLUMN "PKO" text[];
    COMMENT ON COLUMN mred."Property"."PKO" IS 'Outdoor Parking';
     
    ALTER TABLE mred."Property" ADD COLUMN "PKS" integer;
    COMMENT ON COLUMN mred."Property"."PKS" IS '# Of Parking Spaces';
     
    ALTER TABLE mred."Property" ADD COLUMN "PNT" text;
    COMMENT ON COLUMN mred."Property"."PNT" IS 'Seller Concessions Amount/Points';
     
    ALTER TABLE mred."Property" ADD COLUMN "POO" integer;
    COMMENT ON COLUMN mred."Property"."POO" IS '% Owner Occupied';
     
    ALTER TABLE mred."Property" ADD COLUMN "POS" text[];
    COMMENT ON COLUMN mred."Property"."POS" IS 'Possession';
     
    ALTER TABLE mred."Property" ADD COLUMN "POST_DIRECTION" text;
    COMMENT ON COLUMN mred."Property"."POST_DIRECTION" IS 'Post Directional';
     
    ALTER TABLE mred."Property" ADD COLUMN "PPI" text[];
    COMMENT ON COLUMN mred."Property"."PPI" IS 'Proprietary Info';
     
    ALTER TABLE mred."Property" ADD COLUMN "PR" text;
    COMMENT ON COLUMN mred."Property"."PR" IS 'Gross Payroll';
     
    ALTER TABLE mred."Property" ADD COLUMN "PROPERTY_OFFERED" text;
    COMMENT ON COLUMN mred."Property"."PROPERTY_OFFERED" IS 'Property Offered';
     
    ALTER TABLE mred."Property" ADD COLUMN "PRS" text;
    COMMENT ON COLUMN mred."Property"."PRS" IS 'Gross Payroll Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "PRY" integer;
    COMMENT ON COLUMN mred."Property"."PRY" IS 'Gross Payroll Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "PTA" text;
    COMMENT ON COLUMN mred."Property"."PTA" IS 'Pets Allowed (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "PTU" text[];
    COMMENT ON COLUMN mred."Property"."PTU" IS 'Potential Use';
     
    ALTER TABLE mred."Property" ADD COLUMN "R1S" text;
    COMMENT ON COLUMN mred."Property"."R1S" IS 'Min Req/Sq Ft By Covenant (1 Story)';
     
    ALTER TABLE mred."Property" ADD COLUMN "R2S" text;
    COMMENT ON COLUMN mred."Property"."R2S" IS 'Min Req/Sq Ft By Covenant (2 Story)';
     
    ALTER TABLE mred."Property" ADD COLUMN "RD" text;
    COMMENT ON COLUMN mred."Property"."RD" IS 'Rented Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "RECORDMODDATE" text;
    COMMENT ON COLUMN mred."Property"."RECORDMODDATE" IS 'Updated Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "REF" integer;
    COMMENT ON COLUMN mred."Property"."REF" IS '# Of Refrigs';
     
    ALTER TABLE mred."Property" ADD COLUMN "REGION" text;
    COMMENT ON COLUMN mred."Property"."REGION" IS 'Region';
     
    ALTER TABLE mred."Property" ADD COLUMN "REI" text;
    COMMENT ON COLUMN mred."Property"."REI" IS 'Real Estate Included? (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "REMARKS" text;
    COMMENT ON COLUMN mred."Property"."REMARKS" IS 'Remarks';
     
    ALTER TABLE mred."Property" ADD COLUMN "REMARKSINTERNET" text;
    COMMENT ON COLUMN mred."Property"."REMARKSINTERNET" IS 'Remarks On Internet? (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "RENTAL_PROPERTY_TYPE" text;
    COMMENT ON COLUMN mred."Property"."RENTAL_PROPERTY_TYPE" IS 'Type of Rental Property';
     
    ALTER TABLE mred."Property" ADD COLUMN "RENTTYP" text;
    COMMENT ON COLUMN mred."Property"."RENTTYP" IS 'Property Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "RESTYP" text;
    COMMENT ON COLUMN mred."Property"."RESTYP" IS 'Property Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "RM1" text;
    COMMENT ON COLUMN mred."Property"."RM1" IS '# Of Rooms - Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "RM2" text;
    COMMENT ON COLUMN mred."Property"."RM2" IS '# Of Rooms - Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "RM3" text;
    COMMENT ON COLUMN mred."Property"."RM3" IS '# Of Rooms - Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "RM4" text;
    COMMENT ON COLUMN mred."Property"."RM4" IS '# Of Rooms - Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "RM5" text;
    COMMENT ON COLUMN mred."Property"."RM5" IS '# Of Rooms - Type 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "RM6" text;
    COMMENT ON COLUMN mred."Property"."RM6" IS '# Of Rooms - Type 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "RM7" text;
    COMMENT ON COLUMN mred."Property"."RM7" IS '# Of Rooms - Type 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "RME" text;
    COMMENT ON COLUMN mred."Property"."RME" IS 'Repairs / Maintenance $';
     
    ALTER TABLE mred."Property" ADD COLUMN "RMS" integer;
    COMMENT ON COLUMN mred."Property"."RMS" IS '# Rooms';
     
    ALTER TABLE mred."Property" ADD COLUMN "RMX" text;
    COMMENT ON COLUMN mred."Property"."RMX" IS 'On-Site/Resident Manager Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "RNG" integer;
    COMMENT ON COLUMN mred."Property"."RNG" IS '# Of Ranges';
     
    ALTER TABLE mred."Property" ADD COLUMN "RNP" decimal;
    COMMENT ON COLUMN mred."Property"."RNP" IS 'Rented Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "ROC" text[];
    COMMENT ON COLUMN mred."Property"."ROC" IS 'Roof Coverings';
     
    ALTER TABLE mred."Property" ADD COLUMN "ROF" text[];
    COMMENT ON COLUMN mred."Property"."ROF" IS 'Roof Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "ROM" text;
    COMMENT ON COLUMN mred."Property"."ROM" IS 'On-Site/Res Mgr Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "ROS" text[];
    COMMENT ON COLUMN mred."Property"."ROS" IS 'Roof Structure';
     
    ALTER TABLE mred."Property" ADD COLUMN "RP" decimal;
    COMMENT ON COLUMN mred."Property"."RP" IS 'Rental Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "RPM" text;
    COMMENT ON COLUMN mred."Property"."RPM" IS 'Repairs-Decor Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "RPS" text;
    COMMENT ON COLUMN mred."Property"."RPS" IS 'Repairs-Decor Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "RR" text;
    COMMENT ON COLUMN mred."Property"."RR" IS 'Recent Rehab (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "RRA" text[];
    COMMENT ON COLUMN mred."Property"."RRA" IS 'Rail Availability';
     
    ALTER TABLE mred."Property" ADD COLUMN "RSF" text[];
    COMMENT ON COLUMN mred."Property"."RSF" IS 'Road Surface';
     
    ALTER TABLE mred."Property" ADD COLUMN "RT1" text;
    COMMENT ON COLUMN mred."Property"."RT1" IS 'Rent $ - Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "RT2" text;
    COMMENT ON COLUMN mred."Property"."RT2" IS 'Rent $ - Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "RT3" text;
    COMMENT ON COLUMN mred."Property"."RT3" IS 'Rent $ - Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "RT4" text;
    COMMENT ON COLUMN mred."Property"."RT4" IS 'Rent $ - Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "RTI" text;
    COMMENT ON COLUMN mred."Property"."RTI" IS 'Total Rental Income $';
     
    ALTER TABLE mred."Property" ADD COLUMN "RU" text;
    COMMENT ON COLUMN mred."Property"."RU" IS 'Rental Unit';
     
    ALTER TABLE mred."Property" ADD COLUMN "RX1" text;
    COMMENT ON COLUMN mred."Property"."RX1" IS 'Reimbursed Monthly Expenses 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "RX2" text;
    COMMENT ON COLUMN mred."Property"."RX2" IS 'Reimbursed Monthly Expenses 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "RX3" text;
    COMMENT ON COLUMN mred."Property"."RX3" IS 'Reimbursed Monthly Expenses 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "RX4" text;
    COMMENT ON COLUMN mred."Property"."RX4" IS 'Reimbursed Monthly Expenses 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "RX5" text;
    COMMENT ON COLUMN mred."Property"."RX5" IS 'Reimbursed Monthly Expenses 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "RX6" text;
    COMMENT ON COLUMN mred."Property"."RX6" IS 'Reimbursed Monthly Expenses 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "RX7" text;
    COMMENT ON COLUMN mred."Property"."RX7" IS 'Reimbursed Monthly Expenses 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "S" integer;
    COMMENT ON COLUMN mred."Property"."S" IS 'South';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAADDRESS2" text;
    COMMENT ON COLUMN mred."Property"."SAADDRESS2" IS 'Selling Agent Additional Address';
     
    ALTER TABLE mred."Property" ADD COLUMN "SACELLPHONE" text;
    COMMENT ON COLUMN mred."Property"."SACELLPHONE" IS 'Selling Agent Cell Phone';
     
    ALTER TABLE mred."Property" ADD COLUMN "SACITY" text;
    COMMENT ON COLUMN mred."Property"."SACITY" IS 'Selling Agent City';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAEMAIL" text;
    COMMENT ON COLUMN mred."Property"."SAEMAIL" IS 'Selling Agent Email Address';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAFAXNUMBER" text;
    COMMENT ON COLUMN mred."Property"."SAFAXNUMBER" IS 'Selling Agent Fax Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAFIRSTNAME" text;
    COMMENT ON COLUMN mred."Property"."SAFIRSTNAME" IS 'Selling Agent First Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAI" text[];
    COMMENT ON COLUMN mred."Property"."SAI" IS 'Sale Includes';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAID" text;
    COMMENT ON COLUMN mred."Property"."SAID" IS 'Selling Agent ID';
     
    ALTER TABLE mred."Property" ADD COLUMN "SALASTNAME" text;
    COMMENT ON COLUMN mred."Property"."SALASTNAME" IS 'Selling Agent Last Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "SALE_OR_RENT" text;
    COMMENT ON COLUMN mred."Property"."SALE_OR_RENT" IS 'Offered for Sale or Rent';
     
    ALTER TABLE mred."Property" ADD COLUMN "SALE_OR_RENT_LN" text;
    COMMENT ON COLUMN mred."Property"."SALE_OR_RENT_LN" IS 'MLS # of Rental (if known)';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAOFFICEPHONE" text;
    COMMENT ON COLUMN mred."Property"."SAOFFICEPHONE" IS 'Selling Agent Office Phone';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAPAGERNUMBER" text;
    COMMENT ON COLUMN mred."Property"."SAPAGERNUMBER" IS 'Selling Agent Pager Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAS" text;
    COMMENT ON COLUMN mred."Property"."SAS" IS 'Special Assessments';
     
    ALTER TABLE mred."Property" ADD COLUMN "SASTATE" text;
    COMMENT ON COLUMN mred."Property"."SASTATE" IS 'Selling Agent State';
     
    ALTER TABLE mred."Property" ADD COLUMN "SASTREETNAME" text;
    COMMENT ON COLUMN mred."Property"."SASTREETNAME" IS 'Selling Agent Street Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "SASTREETNUMBER" text;
    COMMENT ON COLUMN mred."Property"."SASTREETNUMBER" IS 'Selling Agent Street Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "SAZIP" text;
    COMMENT ON COLUMN mred."Property"."SAZIP" IS 'Selling Agent Zip Code';
     
    ALTER TABLE mred."Property" ADD COLUMN "SC" text;
    COMMENT ON COLUMN mred."Property"."SC" IS 'Security Deposit';
     
    ALTER TABLE mred."Property" ADD COLUMN "SCE" text;
    COMMENT ON COLUMN mred."Property"."SCE" IS 'Scavenger $';
     
    ALTER TABLE mred."Property" ADD COLUMN "SCI" text[];
    COMMENT ON COLUMN mred."Property"."SCI" IS 'Special Compensation Info.';
     
    ALTER TABLE mred."Property" ADD COLUMN "SCS" text;
    COMMENT ON COLUMN mred."Property"."SCS" IS 'Scavenger Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "SCV" text;
    COMMENT ON COLUMN mred."Property"."SCV" IS 'Scavenger Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "SD1" text;
    COMMENT ON COLUMN mred."Property"."SD1" IS 'Sec Deposit $ - Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "SD2" text;
    COMMENT ON COLUMN mred."Property"."SD2" IS 'Sec Deposit $ - Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "SD3" text;
    COMMENT ON COLUMN mred."Property"."SD3" IS 'Sec Deposit $ - Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "SD4" text;
    COMMENT ON COLUMN mred."Property"."SD4" IS 'Sec Deposit $ - Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "SDP" text;
    COMMENT ON COLUMN mred."Property"."SDP" IS 'Security Deposit';
     
    ALTER TABLE mred."Property" ADD COLUMN "SEC" text[];
    COMMENT ON COLUMN mred."Property"."SEC" IS 'Seating Capacity';
     
    ALTER TABLE mred."Property" ADD COLUMN "SECURESHOWASSIST" text;
    COMMENT ON COLUMN mred."Property"."SECURESHOWASSIST" IS 'Secure ShowingAssist Instructions';
     
    ALTER TABLE mred."Property" ADD COLUMN "SELLERSCONC" text;
    COMMENT ON COLUMN mred."Property"."SELLERSCONC" IS 'Seller Concessions';
     
    ALTER TABLE mred."Property" ADD COLUMN "SHL" text;
    COMMENT ON COLUMN mred."Property"."SHL" IS 'Short Term Lease Ok (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "SHO" text;
    COMMENT ON COLUMN mred."Property"."SHO" IS 'Showing Instructions';
     
    ALTER TABLE mred."Property" ADD COLUMN "SHORT_SALE" text;
    COMMENT ON COLUMN mred."Property"."SHORT_SALE" IS 'Short Sale';
     
    ALTER TABLE mred."Property" ADD COLUMN "SLN" text;
    COMMENT ON COLUMN mred."Property"."SLN" IS 'Subdivision Lot Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "SMI" text;
    COMMENT ON COLUMN mred."Property"."SMI" IS 'Total Monthly Income';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOCITY" text;
    COMMENT ON COLUMN mred."Property"."SOCITY" IS 'Selling Office City';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOEMAIL" text;
    COMMENT ON COLUMN mred."Property"."SOEMAIL" IS 'Selling Office Email Address';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOFAXNUMBER" text;
    COMMENT ON COLUMN mred."Property"."SOFAXNUMBER" IS 'Selling Office Fax Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOID" text;
    COMMENT ON COLUMN mred."Property"."SOID" IS 'Selling Office ID';
     
    ALTER TABLE mred."Property" ADD COLUMN "SONAME" text;
    COMMENT ON COLUMN mred."Property"."SONAME" IS 'Selling Office Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOPHONE" text;
    COMMENT ON COLUMN mred."Property"."SOPHONE" IS 'Selling Office Phone Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOSTATE" text;
    COMMENT ON COLUMN mred."Property"."SOSTATE" IS 'Selling Office State';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOSTREETNAME" text;
    COMMENT ON COLUMN mred."Property"."SOSTREETNAME" IS 'Selling Office Street Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOSTREETNUMBER" text;
    COMMENT ON COLUMN mred."Property"."SOSTREETNUMBER" IS 'Selling Office Street Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOWWW" text;
    COMMENT ON COLUMN mred."Property"."SOWWW" IS 'Selling Office Website';
     
    ALTER TABLE mred."Property" ADD COLUMN "SOZIP" text;
    COMMENT ON COLUMN mred."Property"."SOZIP" IS 'Selling Office Zip Code';
     
    ALTER TABLE mred."Property" ADD COLUMN "SO_LOCATION" text;
    COMMENT ON COLUMN mred."Property"."SO_LOCATION" IS 'Sale Office Location ID';
     
    ALTER TABLE mred."Property" ADD COLUMN "SP" integer;
    COMMENT ON COLUMN mred."Property"."SP" IS 'Sale Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "SPEC_SVC_AREA" text;
    COMMENT ON COLUMN mred."Property"."SPEC_SVC_AREA" IS 'Special Service Area';
     
    ALTER TABLE mred."Property" ADD COLUMN "SPEC_SVC_FEE" integer;
    COMMENT ON COLUMN mred."Property"."SPEC_SVC_FEE" IS 'Special Service Area Fee';
     
    ALTER TABLE mred."Property" ADD COLUMN "SPI" text[];
    COMMENT ON COLUMN mred."Property"."SPI" IS 'Sale Price Includes';
     
    ALTER TABLE mred."Property" ADD COLUMN "SPL" text;
    COMMENT ON COLUMN mred."Property"."SPL" IS 'Supplies Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "SPS" text;
    COMMENT ON COLUMN mred."Property"."SPS" IS 'Supplies Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "SP_INCL_PARKING" text;
    COMMENT ON COLUMN mred."Property"."SP_INCL_PARKING" IS 'Is Parking Included in Price';
     
    ALTER TABLE mred."Property" ADD COLUMN "SR" text;
    COMMENT ON COLUMN mred."Property"."SR" IS 'Special Restrictions (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "SRR" text;
    COMMENT ON COLUMN mred."Property"."SRR" IS 'Short Term Rent Rate';
     
    ALTER TABLE mred."Property" ADD COLUMN "ST" text;
    COMMENT ON COLUMN mred."Property"."ST" IS 'Status';
     
    ALTER TABLE mred."Property" ADD COLUMN "STATE" text;
    COMMENT ON COLUMN mred."Property"."STATE" IS 'State';
     
    ALTER TABLE mred."Property" ADD COLUMN "STD" text;
    COMMENT ON COLUMN mred."Property"."STD" IS 'Status Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "STO" integer;
    COMMENT ON COLUMN mred."Property"."STO" IS '# Of Stores';
     
    ALTER TABLE mred."Property" ADD COLUMN "STR" text;
    COMMENT ON COLUMN mred."Property"."STR" IS 'Street Name';
     
    ALTER TABLE mred."Property" ADD COLUMN "STREETSUFFIX" text;
    COMMENT ON COLUMN mred."Property"."STREETSUFFIX" IS 'Street Suffix';
     
    ALTER TABLE mred."Property" ADD COLUMN "STRYS" text;
    COMMENT ON COLUMN mred."Property"."STRYS" IS '# Of Stories';
     
    ALTER TABLE mred."Property" ADD COLUMN "STS" text;
    COMMENT ON COLUMN mred."Property"."STS" IS 'Sales Taxes Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "STX" text;
    COMMENT ON COLUMN mred."Property"."STX" IS 'Sales Taxes';
     
    ALTER TABLE mred."Property" ADD COLUMN "STY" text;
    COMMENT ON COLUMN mred."Property"."STY" IS 'Style Of House';
     
    ALTER TABLE mred."Property" ADD COLUMN "SUB" text;
    COMMENT ON COLUMN mred."Property"."SUB" IS 'Subdivision';
     
    ALTER TABLE mred."Property" ADD COLUMN "SUBTPE" text;
    COMMENT ON COLUMN mred."Property"."SUBTPE" IS 'Sub Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "SXY" integer;
    COMMENT ON COLUMN mred."Property"."SXY" IS 'Sales Taxes Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "SZ" text;
    COMMENT ON COLUMN mred."Property"."SZ" IS 'Mobile Home Size';
     
    ALTER TABLE mred."Property" ADD COLUMN "TAE" text;
    COMMENT ON COLUMN mred."Property"."TAE" IS 'Total Annual Exp';
     
    ALTER TABLE mred."Property" ADD COLUMN "TAX" text;
    COMMENT ON COLUMN mred."Property"."TAX" IS 'Taxes';
     
    ALTER TABLE mred."Property" ADD COLUMN "TDY" integer;
    COMMENT ON COLUMN mred."Property"."TDY" IS 'Coop Tax Deduction Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "TEN" integer;
    COMMENT ON COLUMN mred."Property"."TEN" IS '# Of Tenants';
     
    ALTER TABLE mred."Property" ADD COLUMN "TLA" text;
    COMMENT ON COLUMN mred."Property"."TLA" IS 'Total Listed Lots Avail';
     
    ALTER TABLE mred."Property" ADD COLUMN "TLR" text[];
    COMMENT ON COLUMN mred."Property"."TLR" IS 'Lease Terms';
     
    ALTER TABLE mred."Property" ADD COLUMN "TMF" text[];
    COMMENT ON COLUMN mred."Property"."TMF" IS 'Type Multi-Family';
     
    ALTER TABLE mred."Property" ADD COLUMN "TMU" text;
    COMMENT ON COLUMN mred."Property"."TMU" IS 'Type-Multi';
     
    ALTER TABLE mred."Property" ADD COLUMN "TN1" text;
    COMMENT ON COLUMN mred."Property"."TN1" IS 'Tenant Name 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "TN2" text;
    COMMENT ON COLUMN mred."Property"."TN2" IS 'Tenant Name 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "TN3" text;
    COMMENT ON COLUMN mred."Property"."TN3" IS 'Tenant Name 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "TN4" text;
    COMMENT ON COLUMN mred."Property"."TN4" IS 'Tenant Name 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "TN5" text;
    COMMENT ON COLUMN mred."Property"."TN5" IS 'Tenant Name 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "TN6" text;
    COMMENT ON COLUMN mred."Property"."TN6" IS 'Tenant Name 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "TN7" text;
    COMMENT ON COLUMN mred."Property"."TN7" IS 'Tenant Name 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "TNU" text;
    COMMENT ON COLUMN mred."Property"."TNU" IS 'Total # Units in Building';
     
    ALTER TABLE mred."Property" ADD COLUMN "TO" text;
    COMMENT ON COLUMN mred."Property"."TO" IS 'Total Operating Expenses';
     
    ALTER TABLE mred."Property" ADD COLUMN "TOS" text;
    COMMENT ON COLUMN mred."Property"."TOS" IS 'Total Op Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "TOURURL" text;
    COMMENT ON COLUMN mred."Property"."TOURURL" IS 'Virtual Tour Url';
     
    ALTER TABLE mred."Property" ADD COLUMN "TOY" integer;
    COMMENT ON COLUMN mred."Property"."TOY" IS 'Total Op Exp Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "TP1" text[];
    COMMENT ON COLUMN mred."Property"."TP1" IS 'Tenant Pays - Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "TP2" text[];
    COMMENT ON COLUMN mred."Property"."TP2" IS 'Tenant Pays - Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "TP3" text[];
    COMMENT ON COLUMN mred."Property"."TP3" IS 'Tenant Pays - Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "TP4" text[];
    COMMENT ON COLUMN mred."Property"."TP4" IS 'Tenant Pays - Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "TPA" text[];
    COMMENT ON COLUMN mred."Property"."TPA" IS 'Tenant Pays';
     
    ALTER TABLE mred."Property" ADD COLUMN "TPC" text[];
    COMMENT ON COLUMN mred."Property"."TPC" IS 'Type Attached';
     
    ALTER TABLE mred."Property" ADD COLUMN "TPE" text[];
    COMMENT ON COLUMN mred."Property"."TPE" IS 'Type Detached';
     
    ALTER TABLE mred."Property" ADD COLUMN "TRM" text[];
    COMMENT ON COLUMN mred."Property"."TRM" IS 'Sale Terms';
     
    ALTER TABLE mred."Property" ADD COLUMN "TS1" integer;
    COMMENT ON COLUMN mred."Property"."TS1" IS 'Square Footage 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "TS2" integer;
    COMMENT ON COLUMN mred."Property"."TS2" IS 'Square Footage 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "TS3" integer;
    COMMENT ON COLUMN mred."Property"."TS3" IS 'Square Footage 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "TS4" integer;
    COMMENT ON COLUMN mred."Property"."TS4" IS 'Square Footage 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "TS5" integer;
    COMMENT ON COLUMN mred."Property"."TS5" IS 'Square Footage 5';
     
    ALTER TABLE mred."Property" ADD COLUMN "TS6" integer;
    COMMENT ON COLUMN mred."Property"."TS6" IS 'Square Footage 6';
     
    ALTER TABLE mred."Property" ADD COLUMN "TS7" integer;
    COMMENT ON COLUMN mred."Property"."TS7" IS 'Square Footage 7';
     
    ALTER TABLE mred."Property" ADD COLUMN "TWN" text;
    COMMENT ON COLUMN mred."Property"."TWN" IS 'Township';
     
    ALTER TABLE mred."Property" ADD COLUMN "TXC" text[];
    COMMENT ON COLUMN mred."Property"."TXC" IS 'Tax Exemptions';
     
    ALTER TABLE mred."Property" ADD COLUMN "TXF" decimal;
    COMMENT ON COLUMN mred."Property"."TXF" IS 'Estimated Tax/Sf';
     
    ALTER TABLE mred."Property" ADD COLUMN "TXS" text;
    COMMENT ON COLUMN mred."Property"."TXS" IS 'Tax Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "TXY" text;
    COMMENT ON COLUMN mred."Property"."TXY" IS 'Tax Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "TYL" text[];
    COMMENT ON COLUMN mred."Property"."TYL" IS 'Type Of Lease';
     
    ALTER TABLE mred."Property" ADD COLUMN "TYP" text;
    COMMENT ON COLUMN mred."Property"."TYP" IS 'Property Type';
     
    ALTER TABLE mred."Property" ADD COLUMN "TYPEOFPROP" text;
    COMMENT ON COLUMN mred."Property"."TYPEOFPROP" IS 'Type of Property';
     
    ALTER TABLE mred."Property" ADD COLUMN "TYPEOWN" text[];
    COMMENT ON COLUMN mred."Property"."TYPEOWN" IS 'Type Ownership/Title Offered';
     
    ALTER TABLE mred."Property" ADD COLUMN "TYR" integer;
    COMMENT ON COLUMN mred."Property"."TYR" IS 'Tax Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "UD" text;
    COMMENT ON COLUMN mred."Property"."UD" IS 'Update Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "UF1" text;
    COMMENT ON COLUMN mred."Property"."UF1" IS 'Floor # - Unit 1';
     
    ALTER TABLE mred."Property" ADD COLUMN "UF2" text;
    COMMENT ON COLUMN mred."Property"."UF2" IS 'Floor # - Unit 2';
     
    ALTER TABLE mred."Property" ADD COLUMN "UF3" text;
    COMMENT ON COLUMN mred."Property"."UF3" IS 'Floor # - Unit 3';
     
    ALTER TABLE mred."Property" ADD COLUMN "UF4" text;
    COMMENT ON COLUMN mred."Property"."UF4" IS 'Floor # - Unit 4';
     
    ALTER TABLE mred."Property" ADD COLUMN "UFL" text;
    COMMENT ON COLUMN mred."Property"."UFL" IS 'Unit Floor Level';
     
    ALTER TABLE mred."Property" ADD COLUMN "UN" text;
    COMMENT ON COLUMN mred."Property"."UN" IS 'Unit Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "UNC" text;
    COMMENT ON COLUMN mred."Property"."UNC" IS 'Unincorporated (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "UNT" text;
    COMMENT ON COLUMN mred."Property"."UNT" IS '# Of Units';
     
    ALTER TABLE mred."Property" ADD COLUMN "USE" text;
    COMMENT ON COLUMN mred."Property"."USE" IS 'Use';
     
    ALTER TABLE mred."Property" ADD COLUMN "USER" text;
    COMMENT ON COLUMN mred."Property"."USER" IS 'User (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "UTIL" text[];
    COMMENT ON COLUMN mred."Property"."UTIL" IS 'Utilities To Site';
     
    ALTER TABLE mred."Property" ADD COLUMN "UTL" text;
    COMMENT ON COLUMN mred."Property"."UTL" IS 'Utilities Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "UTS" text;
    COMMENT ON COLUMN mred."Property"."UTS" IS 'Utilities Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "UTY" integer;
    COMMENT ON COLUMN mred."Property"."UTY" IS 'Utilities Year';
     
    ALTER TABLE mred."Property" ADD COLUMN "VAC" integer;
    COMMENT ON COLUMN mred."Property"."VAC" IS 'Vacancy $ Amount';
     
    ALTER TABLE mred."Property" ADD COLUMN "VAP" integer;
    COMMENT ON COLUMN mred."Property"."VAP" IS 'Vacancy %';
     
    ALTER TABLE mred."Property" ADD COLUMN "VAS" text;
    COMMENT ON COLUMN mred."Property"."VAS" IS 'Vacancy Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "VIN" text;
    COMMENT ON COLUMN mred."Property"."VIN" IS 'Vehicle Identification Number';
     
    ALTER TABLE mred."Property" ADD COLUMN "VIRTUALPHOTOS" text;
    COMMENT ON COLUMN mred."Property"."VIRTUALPHOTOS" IS 'Are any property photos virtually staged?';
     
    ALTER TABLE mred."Property" ADD COLUMN "VPS" text;
    COMMENT ON COLUMN mred."Property"."VPS" IS 'Vacancy Percentage Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "VT" text;
    COMMENT ON COLUMN mred."Property"."VT" IS 'Virtual Tour';
     
    ALTER TABLE mred."Property" ADD COLUMN "VTDATE" text;
    COMMENT ON COLUMN mred."Property"."VTDATE" IS 'Virtual Tour Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "VTX" text;
    COMMENT ON COLUMN mred."Property"."VTX" IS 'Vehicle Tax';
     
    ALTER TABLE mred."Property" ADD COLUMN "W" integer;
    COMMENT ON COLUMN mred."Property"."W" IS 'West';
     
    ALTER TABLE mred."Property" ADD COLUMN "WAC" integer;
    COMMENT ON COLUMN mred."Property"."WAC" IS '# Of Window/Ac';
     
    ALTER TABLE mred."Property" ADD COLUMN "WDL" text;
    COMMENT ON COLUMN mred."Property"."WDL" IS 'Washer/Dryer Lsd (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "WF" text;
    COMMENT ON COLUMN mred."Property"."WF" IS 'Waterfront (Y/N)';
     
    ALTER TABLE mred."Property" ADD COLUMN "WSE" text;
    COMMENT ON COLUMN mred."Property"."WSE" IS 'Water/Sewer $';
     
    ALTER TABLE mred."Property" ADD COLUMN "WSH" integer;
    COMMENT ON COLUMN mred."Property"."WSH" IS '# Of Washers';
     
    ALTER TABLE mred."Property" ADD COLUMN "WTR" text;
    COMMENT ON COLUMN mred."Property"."WTR" IS 'Water Expense';
     
    ALTER TABLE mred."Property" ADD COLUMN "WTS" text;
    COMMENT ON COLUMN mred."Property"."WTS" IS 'Water Expense Source';
     
    ALTER TABLE mred."Property" ADD COLUMN "XD" text;
    COMMENT ON COLUMN mred."Property"."XD" IS 'Expiration Date';
     
    ALTER TABLE mred."Property" ADD COLUMN "ZP" text;
    COMMENT ON COLUMN mred."Property"."ZP" IS 'Zip Code';
     
    ALTER TABLE mred."Property" ADD COLUMN "ZP4" text;
    COMMENT ON COLUMN mred."Property"."ZP4" IS 'Addtl Zip';
     

COMMIT;