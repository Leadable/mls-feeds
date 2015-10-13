BEGIN;

  CREATE TABLE gfccmls."Property"() INHERITS (property);
    ALTER TABLE gfccmls."Property" ADD COLUMN "ACC_FINANCING" text[];
    COMMENT ON COLUMN gfccmls."Property"."ACC_FINANCING" IS 'ACC_FINANCING';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ACRES" decimal;
    COMMENT ON COLUMN gfccmls."Property"."ACRES" IS 'ACRES';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "AMENITIES" text[];
    COMMENT ON COLUMN gfccmls."Property"."AMENITIES" IS 'AMENITIES';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "APPLIANCES" text[];
    COMMENT ON COLUMN gfccmls."Property"."APPLIANCES" IS 'APPLIANCES';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ASSESSMENT" integer;
    COMMENT ON COLUMN gfccmls."Property"."ASSESSMENT" IS 'ASSESSMENT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ASSOC_FEE_INCL" text[];
    COMMENT ON COLUMN gfccmls."Property"."ASSOC_FEE_INCL" IS 'ASSOC_FEE_INCL';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ATTIC" boolean;
    COMMENT ON COLUMN gfccmls."Property"."ATTIC" IS 'ATTIC';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Acc_Financing" text[];
    COMMENT ON COLUMN gfccmls."Property"."Acc_Financing" IS 'Acc_Financing';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Acres" decimal;
    COMMENT ON COLUMN gfccmls."Property"."Acres" IS 'Acres';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Adult_Community" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Adult_Community" IS 'Adult_Community';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Amenities" text[];
    COMMENT ON COLUMN gfccmls."Property"."Amenities" IS 'Amenities';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Appliances" text[];
    COMMENT ON COLUMN gfccmls."Property"."Appliances" IS 'Appliances';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Assessment" integer;
    COMMENT ON COLUMN gfccmls."Property"."Assessment" IS 'Assessment';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Assoc_Fee_Incl" text[];
    COMMENT ON COLUMN gfccmls."Property"."Assoc_Fee_Incl" IS 'Assoc_Fee_Incl';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Attic" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Attic" IS 'Attic';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "AtticFeatures" text[];
    COMMENT ON COLUMN gfccmls."Property"."AtticFeatures" IS 'AtticFeatures';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "BASEMENT" text[];
    COMMENT ON COLUMN gfccmls."Property"."BASEMENT" IS 'BASEMENT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Basement" text[];
    COMMENT ON COLUMN gfccmls."Property"."Basement" IS 'Basement';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CLOSED_DATE" text;
    COMMENT ON COLUMN gfccmls."Property"."CLOSED_DATE" IS 'CLOSED_DATE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CM_EXTERIOR_FEAT" text[];
    COMMENT ON COLUMN gfccmls."Property"."CM_EXTERIOR_FEAT" IS 'CM_EXTERIOR_FEAT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "COLOR" text;
    COMMENT ON COLUMN gfccmls."Property"."COLOR" IS 'COLOR';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "COMPLEX_NAME" text;
    COMMENT ON COLUMN gfccmls."Property"."COMPLEX_NAME" IS 'COMPLEX_NAME';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "COOLING" text[];
    COMMENT ON COLUMN gfccmls."Property"."COOLING" IS 'COOLING';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "COUNTY" text;
    COMMENT ON COLUMN gfccmls."Property"."COUNTY" IS 'COUNTY';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "COVERED_SPACES" integer;
    COMMENT ON COLUMN gfccmls."Property"."COVERED_SPACES" IS 'COVERED_SPACES';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ClosePrice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."ClosePrice" IS 'ClosePrice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Closed_Date" text;
    COMMENT ON COLUMN gfccmls."Property"."Closed_Date" IS 'Closed_Date';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Closeprice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."Closeprice" IS 'Closeprice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN gfccmls."Property"."CoListAgentDirectWorkPhone" IS 'CoListAgentDirectWorkPhone';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoListAgentEmail" text;
    COMMENT ON COLUMN gfccmls."Property"."CoListAgentEmail" IS 'CoListAgentEmail';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoListAgentFullName" text;
    COMMENT ON COLUMN gfccmls."Property"."CoListAgentFullName" IS 'CoListAgentFullName';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoListAgentMLSID" text;
    COMMENT ON COLUMN gfccmls."Property"."CoListAgentMLSID" IS 'CoListAgentMLSID';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoListAgent_MUI" bigint;
    COMMENT ON COLUMN gfccmls."Property"."CoListAgent_MUI" IS 'CoListAgent_MUI';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoListOfficeMLSID" text;
    COMMENT ON COLUMN gfccmls."Property"."CoListOfficeMLSID" IS 'CoListOfficeMLSID';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoListOfficeName" text;
    COMMENT ON COLUMN gfccmls."Property"."CoListOfficeName" IS 'CoListOfficeName';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoListOfficePhone" text;
    COMMENT ON COLUMN gfccmls."Property"."CoListOfficePhone" IS 'CoListOfficePhone';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoListOffice_MUI" bigint;
    COMMENT ON COLUMN gfccmls."Property"."CoListOffice_MUI" IS 'CoListOffice_MUI';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoSellingAgentDirectWorkPhone" text;
    COMMENT ON COLUMN gfccmls."Property"."CoSellingAgentDirectWorkPhone" IS 'CoSellingAgentDirectWorkPhone';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoSellingAgentEmail" text;
    COMMENT ON COLUMN gfccmls."Property"."CoSellingAgentEmail" IS 'CoSellingAgentEmail';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoSellingAgentFullName" text;
    COMMENT ON COLUMN gfccmls."Property"."CoSellingAgentFullName" IS 'CoSellingAgentFullName';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoSellingAgentMLSID" text;
    COMMENT ON COLUMN gfccmls."Property"."CoSellingAgentMLSID" IS 'CoSellingAgentMLSID';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoSellingAgent_MUI" bigint;
    COMMENT ON COLUMN gfccmls."Property"."CoSellingAgent_MUI" IS 'CoSellingAgent_MUI';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoSellingOfficeMLSID" text;
    COMMENT ON COLUMN gfccmls."Property"."CoSellingOfficeMLSID" IS 'CoSellingOfficeMLSID';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoSellingOfficeName" text;
    COMMENT ON COLUMN gfccmls."Property"."CoSellingOfficeName" IS 'CoSellingOfficeName';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoSellingOfficePhone" text;
    COMMENT ON COLUMN gfccmls."Property"."CoSellingOfficePhone" IS 'CoSellingOfficePhone';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CoSellingOffice_MUI" bigint;
    COMMENT ON COLUMN gfccmls."Property"."CoSellingOffice_MUI" IS 'CoSellingOffice_MUI';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Color" text;
    COMMENT ON COLUMN gfccmls."Property"."Color" IS 'Color';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Complex_Name" text;
    COMMENT ON COLUMN gfccmls."Property"."Complex_Name" IS 'Complex_Name';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Concessions" text;
    COMMENT ON COLUMN gfccmls."Property"."Concessions" IS 'Concessions';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Cooling" text[];
    COMMENT ON COLUMN gfccmls."Property"."Cooling" IS 'Cooling';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "County" text;
    COMMENT ON COLUMN gfccmls."Property"."County" IS 'County';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Covered_Spaces" integer;
    COMMENT ON COLUMN gfccmls."Property"."Covered_Spaces" IS 'Covered_Spaces';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "CurrentPrice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."CurrentPrice" IS 'CurrentPrice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Currentprice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."Currentprice" IS 'Currentprice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "DATE_ADDED" text;
    COMMENT ON COLUMN gfccmls."Property"."DATE_ADDED" IS 'DATE_ADDED';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "DIRECTIONS" text;
    COMMENT ON COLUMN gfccmls."Property"."DIRECTIONS" IS 'DIRECTIONS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "DIRECT_WATERFRONT" boolean;
    COMMENT ON COLUMN gfccmls."Property"."DIRECT_WATERFRONT" IS 'DIRECT_WATERFRONT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "DOCUMENTS" text[];
    COMMENT ON COLUMN gfccmls."Property"."DOCUMENTS" IS 'DOCUMENTS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN gfccmls."Property"."DOM" IS 'DOM';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Date_Added" text;
    COMMENT ON COLUMN gfccmls."Property"."Date_Added" IS 'Date_Added';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Direct_Waterfront" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Direct_Waterfront" IS 'Direct_Waterfront';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN gfccmls."Property"."Directions" IS 'Directions';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Documents" text[];
    COMMENT ON COLUMN gfccmls."Property"."Documents" IS 'Documents';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "EASEMENTS" text;
    COMMENT ON COLUMN gfccmls."Property"."EASEMENTS" IS 'EASEMENTS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ELEM_SCHOOL" text;
    COMMENT ON COLUMN gfccmls."Property"."ELEM_SCHOOL" IS 'ELEM_SCHOOL';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "EQUIPMENT_CODE" text;
    COMMENT ON COLUMN gfccmls."Property"."EQUIPMENT_CODE" IS 'EQUIPMENT_CODE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "EXTERIOR" text[];
    COMMENT ON COLUMN gfccmls."Property"."EXTERIOR" IS 'EXTERIOR';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "EXTERIOR_FEAT" text[];
    COMMENT ON COLUMN gfccmls."Property"."EXTERIOR_FEAT" IS 'EXTERIOR_FEAT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Elem_School" text;
    COMMENT ON COLUMN gfccmls."Property"."Elem_School" IS 'Elem_School';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "End_Unit" boolean;
    COMMENT ON COLUMN gfccmls."Property"."End_Unit" IS 'End_Unit';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "EnergyFeatures" text[];
    COMMENT ON COLUMN gfccmls."Property"."EnergyFeatures" IS 'EnergyFeatures';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "EstHeatedSQFTAboveGrade" integer;
    COMMENT ON COLUMN gfccmls."Property"."EstHeatedSQFTAboveGrade" IS 'EstHeatedSQFTAboveGrade';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "EstHeatedSQFTBelowGrade" integer;
    COMMENT ON COLUMN gfccmls."Property"."EstHeatedSQFTBelowGrade" IS 'EstHeatedSQFTBelowGrade';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Exterior" text[];
    COMMENT ON COLUMN gfccmls."Property"."Exterior" IS 'Exterior';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Exterior_Feat" text[];
    COMMENT ON COLUMN gfccmls."Property"."Exterior_Feat" IS 'Exterior_Feat';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "FINANCE_CODE" text;
    COMMENT ON COLUMN gfccmls."Property"."FINANCE_CODE" IS 'FINANCE_CODE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "FLOORING" text[];
    COMMENT ON COLUMN gfccmls."Property"."FLOORING" IS 'FLOORING';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "FOUNDATION" text[];
    COMMENT ON COLUMN gfccmls."Property"."FOUNDATION" IS 'FOUNDATION';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "FOUNDATION_DIMEN" text;
    COMMENT ON COLUMN gfccmls."Property"."FOUNDATION_DIMEN" IS 'FOUNDATION_DIMEN';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "FULL_BATHS" integer;
    COMMENT ON COLUMN gfccmls."Property"."FULL_BATHS" IS 'FULL_BATHS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Finance_Code" text;
    COMMENT ON COLUMN gfccmls."Property"."Finance_Code" IS 'Finance_Code';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Flooring" text[];
    COMMENT ON COLUMN gfccmls."Property"."Flooring" IS 'Flooring';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Foundation" text[];
    COMMENT ON COLUMN gfccmls."Property"."Foundation" IS 'Foundation';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Full_Baths" integer;
    COMMENT ON COLUMN gfccmls."Property"."Full_Baths" IS 'Full_Baths';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Furnished" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Furnished" IS 'Furnished';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "GARAGE" integer;
    COMMENT ON COLUMN gfccmls."Property"."GARAGE" IS 'GARAGE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "GROSS_INCOME" integer;
    COMMENT ON COLUMN gfccmls."Property"."GROSS_INCOME" IS 'GROSS_INCOME';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Garage" integer;
    COMMENT ON COLUMN gfccmls."Property"."Garage" IS 'Garage';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "HALF_BATHS" integer;
    COMMENT ON COLUMN gfccmls."Property"."HALF_BATHS" IS 'HALF_BATHS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "HEATING" text[];
    COMMENT ON COLUMN gfccmls."Property"."HEATING" IS 'HEATING';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "HIGH_SCHOOL" text;
    COMMENT ON COLUMN gfccmls."Property"."HIGH_SCHOOL" IS 'HIGH_SCHOOL';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "HO_ASSOC" boolean;
    COMMENT ON COLUMN gfccmls."Property"."HO_ASSOC" IS 'HO_ASSOC';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "HO_ASSOC_FEE" integer;
    COMMENT ON COLUMN gfccmls."Property"."HO_ASSOC_FEE" IS 'HO_ASSOC_FEE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Half_Baths" integer;
    COMMENT ON COLUMN gfccmls."Property"."Half_Baths" IS 'Half_Baths';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "HandicapFeatures" text[];
    COMMENT ON COLUMN gfccmls."Property"."HandicapFeatures" IS 'HandicapFeatures';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Heating" text[];
    COMMENT ON COLUMN gfccmls."Property"."Heating" IS 'Heating';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "High_School" text;
    COMMENT ON COLUMN gfccmls."Property"."High_School" IS 'High_School';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Ho_Assoc" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Ho_Assoc" IS 'Ho_Assoc';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Ho_Assoc_Fee" integer;
    COMMENT ON COLUMN gfccmls."Property"."Ho_Assoc_Fee" IS 'Ho_Assoc_Fee';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "HubbardClauseDate" text;
    COMMENT ON COLUMN gfccmls."Property"."HubbardClauseDate" IS 'HubbardClauseDate';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "IMPROVEMENTS" text[];
    COMMENT ON COLUMN gfccmls."Property"."IMPROVEMENTS" IS 'IMPROVEMENTS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "IND_SQUARE_FEET" integer;
    COMMENT ON COLUMN gfccmls."Property"."IND_SQUARE_FEET" IS 'IND_SQUARE_FEET';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "INTERIOR_FEAT" text[];
    COMMENT ON COLUMN gfccmls."Property"."INTERIOR_FEAT" IS 'INTERIOR_FEAT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "INTERNET_ADDR" boolean;
    COMMENT ON COLUMN gfccmls."Property"."INTERNET_ADDR" IS 'INTERNET_ADDR';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "INTERNET_LISTING" boolean;
    COMMENT ON COLUMN gfccmls."Property"."INTERNET_LISTING" IS 'INTERNET_LISTING';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "INVENTORY_CODE" text;
    COMMENT ON COLUMN gfccmls."Property"."INVENTORY_CODE" IS 'INVENTORY_CODE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Interior_Feat" text[];
    COMMENT ON COLUMN gfccmls."Property"."Interior_Feat" IS 'Interior_Feat';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "IntermediateSchool" text;
    COMMENT ON COLUMN gfccmls."Property"."IntermediateSchool" IS 'IntermediateSchool';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Internet_Addr" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Internet_Addr" IS 'Internet_Addr';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Internet_Listing" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Internet_Listing" IS 'Internet_Listing';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "LOCATION" text[];
    COMMENT ON COLUMN gfccmls."Property"."LOCATION" IS 'LOCATION';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "LOT_DESC" text[];
    COMMENT ON COLUMN gfccmls."Property"."LOT_DESC" IS 'LOT_DESC';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "LOT_SQUARE_FEET" integer;
    COMMENT ON COLUMN gfccmls."Property"."LOT_SQUARE_FEET" IS 'LOT_SQUARE_FEET';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "LastChangeType" text;
    COMMENT ON COLUMN gfccmls."Property"."LastChangeType" IS 'LastChangeType';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "LastListPrice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."LastListPrice" IS 'LastListPrice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Lastlistprice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."Lastlistprice" IS 'Lastlistprice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Laundry_Loc" text;
    COMMENT ON COLUMN gfccmls."Property"."Laundry_Loc" IS 'Laundry_Loc';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Levels_In_Unit" integer;
    COMMENT ON COLUMN gfccmls."Property"."Levels_In_Unit" IS 'Levels_In_Unit';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN gfccmls."Property"."ListAgentDirectWorkPhone" IS 'ListAgentDirectWorkPhone';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListAgentEmail" text;
    COMMENT ON COLUMN gfccmls."Property"."ListAgentEmail" IS 'ListAgentEmail';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN gfccmls."Property"."ListAgentFullName" IS 'ListAgentFullName';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN gfccmls."Property"."ListAgentMLSID" IS 'ListAgentMLSID';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN gfccmls."Property"."ListAgent_MUI" IS 'ListAgent_MUI';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN gfccmls."Property"."ListOfficeMLSID" IS 'ListOfficeMLSID';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN gfccmls."Property"."ListOfficeName" IS 'ListOfficeName';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN gfccmls."Property"."ListOfficePhone" IS 'ListOfficePhone';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN gfccmls."Property"."ListOffice_MUI" IS 'ListOffice_MUI';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."ListPrice" IS 'ListPrice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ListingDate" text;
    COMMENT ON COLUMN gfccmls."Property"."ListingDate" IS 'ListingDate';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Listingdate" text;
    COMMENT ON COLUMN gfccmls."Property"."Listingdate" IS 'Listingdate';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Listprice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."Listprice" IS 'Listprice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Lot_Desc" text[];
    COMMENT ON COLUMN gfccmls."Property"."Lot_Desc" IS 'Lot_Desc';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Lot_Square_Feet" integer;
    COMMENT ON COLUMN gfccmls."Property"."Lot_Square_Feet" IS 'Lot_Square_Feet';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "MID_SCHOOL" text;
    COMMENT ON COLUMN gfccmls."Property"."MID_SCHOOL" IS 'MID_SCHOOL';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "MISCELLANEOUS" text[];
    COMMENT ON COLUMN gfccmls."Property"."MISCELLANEOUS" IS 'MISCELLANEOUS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN gfccmls."Property"."MLSNumber" IS 'MLSNumber';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "MODEL_NAME" text;
    COMMENT ON COLUMN gfccmls."Property"."MODEL_NAME" IS 'MODEL_NAME';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "MU_TOT_RM" integer;
    COMMENT ON COLUMN gfccmls."Property"."MU_TOT_RM" IS 'MU_TOT_RM';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN gfccmls."Property"."MatrixModifiedDT" IS 'MatrixModifiedDT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN gfccmls."Property"."Matrix_Unique_ID" IS 'Matrix_Unique_ID';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Mid_School" text;
    COMMENT ON COLUMN gfccmls."Property"."Mid_School" IS 'Mid_School';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Miscellaneous" text[];
    COMMENT ON COLUMN gfccmls."Property"."Miscellaneous" IS 'Miscellaneous';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Mlsnumber" text;
    COMMENT ON COLUMN gfccmls."Property"."Mlsnumber" IS 'Mlsnumber';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Model_Name" text;
    COMMENT ON COLUMN gfccmls."Property"."Model_Name" IS 'Model_Name';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "NEW_CONSTRUCTION" text;
    COMMENT ON COLUMN gfccmls."Property"."NEW_CONSTRUCTION" IS 'NEW_CONSTRUCTION';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "NO_BEDROOMS" integer;
    COMMENT ON COLUMN gfccmls."Property"."NO_BEDROOMS" IS 'NO_BEDROOMS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "NO_EMPLOYEES" integer;
    COMMENT ON COLUMN gfccmls."Property"."NO_EMPLOYEES" IS 'NO_EMPLOYEES';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "NO_FIREPLACES" integer;
    COMMENT ON COLUMN gfccmls."Property"."NO_FIREPLACES" IS 'NO_FIREPLACES';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "NO_LOTS" integer;
    COMMENT ON COLUMN gfccmls."Property"."NO_LOTS" IS 'NO_LOTS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "NO_ROOMS" integer;
    COMMENT ON COLUMN gfccmls."Property"."NO_ROOMS" IS 'NO_ROOMS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "NO_STORIES" decimal;
    COMMENT ON COLUMN gfccmls."Property"."NO_STORIES" IS 'NO_STORIES';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "NO_TENANTS" integer;
    COMMENT ON COLUMN gfccmls."Property"."NO_TENANTS" IS 'NO_TENANTS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "NO_UNITS" integer;
    COMMENT ON COLUMN gfccmls."Property"."NO_UNITS" IS 'NO_UNITS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Neighborhood" text;
    COMMENT ON COLUMN gfccmls."Property"."Neighborhood" IS 'Neighborhood';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "New_Construction" text;
    COMMENT ON COLUMN gfccmls."Property"."New_Construction" IS 'New_Construction';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "No_Bedrooms" integer;
    COMMENT ON COLUMN gfccmls."Property"."No_Bedrooms" IS 'No_Bedrooms';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "No_Fireplaces" integer;
    COMMENT ON COLUMN gfccmls."Property"."No_Fireplaces" IS 'No_Fireplaces';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "No_Rooms" integer;
    COMMENT ON COLUMN gfccmls."Property"."No_Rooms" IS 'No_Rooms';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "No_Stories" decimal;
    COMMENT ON COLUMN gfccmls."Property"."No_Stories" IS 'No_Stories';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "No_Units" integer;
    COMMENT ON COLUMN gfccmls."Property"."No_Units" IS 'No_Units';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "OffMarketDate" text;
    COMMENT ON COLUMN gfccmls."Property"."OffMarketDate" IS 'OffMarketDate';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "OpenHousePublicCNT" integer;
    COMMENT ON COLUMN gfccmls."Property"."OpenHousePublicCNT" IS 'Open House Public CNT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "OpenhouseUpcoming" text;
    COMMENT ON COLUMN gfccmls."Property"."OpenhouseUpcoming" IS 'OpenhouseUpcoming';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."OriginalListPrice" IS 'OriginalListPrice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Originallistprice" decimal;
    COMMENT ON COLUMN gfccmls."Property"."Originallistprice" IS 'Originallistprice';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Other_Rooms" text[];
    COMMENT ON COLUMN gfccmls."Property"."Other_Rooms" IS 'Other_Rooms';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "PARKING" text[];
    COMMENT ON COLUMN gfccmls."Property"."PARKING" IS 'PARKING';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "PHOTOCOUNT" integer;
    COMMENT ON COLUMN gfccmls."Property"."PHOTOCOUNT" IS 'PHOTOCOUNT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "PROP_ID_NO" text;
    COMMENT ON COLUMN gfccmls."Property"."PROP_ID_NO" IS 'PROP_ID_NO';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "PROP_TYPE" text;
    COMMENT ON COLUMN gfccmls."Property"."PROP_TYPE" IS 'PROP_TYPE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "PUBLIC_RMKS" text;
    COMMENT ON COLUMN gfccmls."Property"."PUBLIC_RMKS" IS 'PUBLIC_RMKS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Parking" text[];
    COMMENT ON COLUMN gfccmls."Property"."Parking" IS 'Parking';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Pets" text;
    COMMENT ON COLUMN gfccmls."Property"."Pets" IS 'Pets';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Pets_Allowed" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Pets_Allowed" IS 'Pets_Allowed';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN gfccmls."Property"."PhotoModificationTimestamp" IS 'PhotoModificationTimestamp';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Photocount" integer;
    COMMENT ON COLUMN gfccmls."Property"."Photocount" IS 'Photocount';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Photomodificationtimestamp" text;
    COMMENT ON COLUMN gfccmls."Property"."Photomodificationtimestamp" IS 'Photomodificationtimestamp';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "PlannedUnitDevelopmentYN" boolean;
    COMMENT ON COLUMN gfccmls."Property"."PlannedUnitDevelopmentYN" IS 'PlannedUnitDevelopmentYN';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "PoolFeatures" text[];
    COMMENT ON COLUMN gfccmls."Property"."PoolFeatures" IS 'PoolFeatures';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Prop_Id_No" text;
    COMMENT ON COLUMN gfccmls."Property"."Prop_Id_No" IS 'Prop_Id_No';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Prop_Type" text;
    COMMENT ON COLUMN gfccmls."Property"."Prop_Type" IS 'Prop_Type';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Public_Rmks" text;
    COMMENT ON COLUMN gfccmls."Property"."Public_Rmks" IS 'Public_Rmks';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "RENT_TYPE" text;
    COMMENT ON COLUMN gfccmls."Property"."RENT_TYPE" IS 'RENT_TYPE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "REO_PROPERTY" boolean;
    COMMENT ON COLUMN gfccmls."Property"."REO_PROPERTY" IS 'REO_PROPERTY';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ROAD_FRONTAGE" text[];
    COMMENT ON COLUMN gfccmls."Property"."ROAD_FRONTAGE" IS 'ROAD_FRONTAGE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ROOF" text[];
    COMMENT ON COLUMN gfccmls."Property"."ROOF" IS 'ROOF';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Rent_Type" text;
    COMMENT ON COLUMN gfccmls."Property"."Rent_Type" IS 'Rent_Type';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Rental_Terms" text;
    COMMENT ON COLUMN gfccmls."Property"."Rental_Terms" IS 'Rental_Terms';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Reo_Property" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Reo_Property" IS 'Reo_Property';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Roof" text[];
    COMMENT ON COLUMN gfccmls."Property"."Roof" IS 'Roof';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SEP_UTIL" text[];
    COMMENT ON COLUMN gfccmls."Property"."SEP_UTIL" IS 'SEP_UTIL';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SQUARE_FEET" integer;
    COMMENT ON COLUMN gfccmls."Property"."SQUARE_FEET" IS 'SQUARE_FEET';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "STATE" text;
    COMMENT ON COLUMN gfccmls."Property"."STATE" IS 'STATE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "STATUS" text;
    COMMENT ON COLUMN gfccmls."Property"."STATUS" IS 'STATUS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "STREET" text;
    COMMENT ON COLUMN gfccmls."Property"."STREET" IS 'STREET';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "STREET_DIR" text;
    COMMENT ON COLUMN gfccmls."Property"."STREET_DIR" IS 'STREET_DIR';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "STREET_FRONTAGE" text;
    COMMENT ON COLUMN gfccmls."Property"."STREET_FRONTAGE" IS 'STREET_FRONTAGE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "STREET_NO" text;
    COMMENT ON COLUMN gfccmls."Property"."STREET_NO" IS 'STREET_NO';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "STREET_POST_DIR" text;
    COMMENT ON COLUMN gfccmls."Property"."STREET_POST_DIR" IS 'STREET_POST_DIR';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "STREET_TYPE" text;
    COMMENT ON COLUMN gfccmls."Property"."STREET_TYPE" IS 'STREET_TYPE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "STYLE" text[];
    COMMENT ON COLUMN gfccmls."Property"."STYLE" IS 'STYLE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SUBDIVISION" text;
    COMMENT ON COLUMN gfccmls."Property"."SUBDIVISION" IS 'SUBDIVISION';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SUB_PROP_TYPE" text;
    COMMENT ON COLUMN gfccmls."Property"."SUB_PROP_TYPE" IS 'SUB_PROP_TYPE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SellingAgentDirectWorkPhone" text;
    COMMENT ON COLUMN gfccmls."Property"."SellingAgentDirectWorkPhone" IS 'SellingAgentDirectWorkPhone';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SellingAgentEmail" text;
    COMMENT ON COLUMN gfccmls."Property"."SellingAgentEmail" IS 'SellingAgentEmail';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SellingAgentFullName" text;
    COMMENT ON COLUMN gfccmls."Property"."SellingAgentFullName" IS 'SellingAgentFullName';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SellingAgentMLSID" text;
    COMMENT ON COLUMN gfccmls."Property"."SellingAgentMLSID" IS 'SellingAgentMLSID';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SellingAgent_MUI" bigint;
    COMMENT ON COLUMN gfccmls."Property"."SellingAgent_MUI" IS 'SellingAgent_MUI';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SellingOfficeMLSID" text;
    COMMENT ON COLUMN gfccmls."Property"."SellingOfficeMLSID" IS 'SellingOfficeMLSID';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SellingOfficeName" text;
    COMMENT ON COLUMN gfccmls."Property"."SellingOfficeName" IS 'SellingOfficeName';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SellingOfficePhone" text;
    COMMENT ON COLUMN gfccmls."Property"."SellingOfficePhone" IS 'SellingOfficePhone';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SellingOffice_MUI" bigint;
    COMMENT ON COLUMN gfccmls."Property"."SellingOffice_MUI" IS 'SellingOffice_MUI';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Sewer" text[];
    COMMENT ON COLUMN gfccmls."Property"."Sewer" IS 'Sewer';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Square_Feet" integer;
    COMMENT ON COLUMN gfccmls."Property"."Square_Feet" IS 'Square_Feet';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "State" text;
    COMMENT ON COLUMN gfccmls."Property"."State" IS 'State';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN gfccmls."Property"."Status" IS 'Status';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "StatusChangeTimestamp" text;
    COMMENT ON COLUMN gfccmls."Property"."StatusChangeTimestamp" IS 'StatusChangeTimestamp';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Statuschangetimestamp" text;
    COMMENT ON COLUMN gfccmls."Property"."Statuschangetimestamp" IS 'Statuschangetimestamp';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Street" text;
    COMMENT ON COLUMN gfccmls."Property"."Street" IS 'Street';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Street_Dir" text;
    COMMENT ON COLUMN gfccmls."Property"."Street_Dir" IS 'Street_Dir';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Street_Frontage" text;
    COMMENT ON COLUMN gfccmls."Property"."Street_Frontage" IS 'Street_Frontage';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Street_No" text;
    COMMENT ON COLUMN gfccmls."Property"."Street_No" IS 'Street_No';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Street_Post_Dir" text;
    COMMENT ON COLUMN gfccmls."Property"."Street_Post_Dir" IS 'Street_Post_Dir';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Street_Type" text;
    COMMENT ON COLUMN gfccmls."Property"."Street_Type" IS 'Street_Type';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Style" text[];
    COMMENT ON COLUMN gfccmls."Property"."Style" IS 'Style';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Sub_Prop_Type" text;
    COMMENT ON COLUMN gfccmls."Property"."Sub_Prop_Type" IS 'Sub_Prop_Type';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Subdivision" text;
    COMMENT ON COLUMN gfccmls."Property"."Subdivision" IS 'Subdivision';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "SwimmingPoolYN" boolean;
    COMMENT ON COLUMN gfccmls."Property"."SwimmingPoolYN" IS 'SwimmingPoolYN';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "TAX_AMOUNT" integer;
    COMMENT ON COLUMN gfccmls."Property"."TAX_AMOUNT" IS 'TAX_AMOUNT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "TAX_YEAR" text;
    COMMENT ON COLUMN gfccmls."Property"."TAX_YEAR" IS 'TAX_YEAR';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "TOTAL_PARKING" integer;
    COMMENT ON COLUMN gfccmls."Property"."TOTAL_PARKING" IS 'TOTAL_PARKING';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "TOT_BATHS" integer;
    COMMENT ON COLUMN gfccmls."Property"."TOT_BATHS" IS 'TOT_BATHS';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "TOT_SQUARE_FEET" integer;
    COMMENT ON COLUMN gfccmls."Property"."TOT_SQUARE_FEET" IS 'TOT_SQUARE_FEET';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "TOUR_URL" text;
    COMMENT ON COLUMN gfccmls."Property"."TOUR_URL" IS 'TOUR_URL';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Tax_Amount" integer;
    COMMENT ON COLUMN gfccmls."Property"."Tax_Amount" IS 'Tax_Amount';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Tax_Year" text;
    COMMENT ON COLUMN gfccmls."Property"."Tax_Year" IS 'Tax_Year';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Tot_Baths" integer;
    COMMENT ON COLUMN gfccmls."Property"."Tot_Baths" IS 'Tot_Baths';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Tot_Square_Feet" integer;
    COMMENT ON COLUMN gfccmls."Property"."Tot_Square_Feet" IS 'Tot_Square_Feet';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "TotalPartialBaths" integer;
    COMMENT ON COLUMN gfccmls."Property"."TotalPartialBaths" IS 'TotalPartialBaths';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "TotalRoomCount" integer;
    COMMENT ON COLUMN gfccmls."Property"."TotalRoomCount" IS 'TotalRoomCount';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Tour_Url" text;
    COMMENT ON COLUMN gfccmls."Property"."Tour_Url" IS 'Tour_Url';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Town" text;
    COMMENT ON COLUMN gfccmls."Property"."Town" IS 'Town';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "UNIT_NO" text;
    COMMENT ON COLUMN gfccmls."Property"."UNIT_NO" IS 'UNIT_NO';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "UTILITIES_AVAIL" text[];
    COMMENT ON COLUMN gfccmls."Property"."UTILITIES_AVAIL" IS 'UTILITIES_AVAIL';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Unit_Floor_No" integer;
    COMMENT ON COLUMN gfccmls."Property"."Unit_Floor_No" IS 'Unit_Floor_No';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Unit_No" text;
    COMMENT ON COLUMN gfccmls."Property"."Unit_No" IS 'Unit_No';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Update_Date" text;
    COMMENT ON COLUMN gfccmls."Property"."Update_Date" IS 'Update_Date';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Utilities_Avail" text[];
    COMMENT ON COLUMN gfccmls."Property"."Utilities_Avail" IS 'Utilities_Avail';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "VIRTUAL_TOUR" boolean;
    COMMENT ON COLUMN gfccmls."Property"."VIRTUAL_TOUR" IS 'VIRTUAL_TOUR';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Virtual_Tour" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Virtual_Tour" IS 'Virtual_Tour';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "WARRANTY" boolean;
    COMMENT ON COLUMN gfccmls."Property"."WARRANTY" IS 'WARRANTY';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "WATERFRONT_DESC" text[];
    COMMENT ON COLUMN gfccmls."Property"."WATERFRONT_DESC" IS 'WATERFRONT_DESC';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Warranty" boolean;
    COMMENT ON COLUMN gfccmls."Property"."Warranty" IS 'Warranty';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Water" text[];
    COMMENT ON COLUMN gfccmls."Property"."Water" IS 'Water';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Waterfront_Desc" text[];
    COMMENT ON COLUMN gfccmls."Property"."Waterfront_Desc" IS 'Waterfront_Desc';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "YEAR_BUILT" integer;
    COMMENT ON COLUMN gfccmls."Property"."YEAR_BUILT" IS 'YEAR_BUILT';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Year_Built" integer;
    COMMENT ON COLUMN gfccmls."Property"."Year_Built" IS 'Year_Built';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ZIP4" text;
    COMMENT ON COLUMN gfccmls."Property"."ZIP4" IS 'ZIP4';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ZIP_CODE" text;
    COMMENT ON COLUMN gfccmls."Property"."ZIP_CODE" IS 'ZIP_CODE';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "ZONING" text;
    COMMENT ON COLUMN gfccmls."Property"."ZONING" IS 'ZONING';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Zip4" text;
    COMMENT ON COLUMN gfccmls."Property"."Zip4" IS 'Zip4';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Zip_Code" text;
    COMMENT ON COLUMN gfccmls."Property"."Zip_Code" IS 'Zip_Code';
     
    ALTER TABLE gfccmls."Property" ADD COLUMN "Zoning" text;
    COMMENT ON COLUMN gfccmls."Property"."Zoning" IS 'Zoning';
     

COMMIT;