BEGIN;

  CREATE TABLE fmls2."Property"() INHERITS (property);
    ALTER TABLE fmls2."Property" ADD COLUMN "Acres" decimal;
    COMMENT ON COLUMN fmls2."Property"."Acres" IS 'Acres';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AgeDesc" text;
    COMMENT ON COLUMN fmls2."Property"."AgeDesc" IS 'Age Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AllowAddressDisplayYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."AllowAddressDisplayYN" IS 'Allow Address Display Y/N';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AllowInternetDisplayYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."AllowInternetDisplayYN" IS 'Allow Internet Display Y/N';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AlsoListedinFMLSForSaleYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."AlsoListedinFMLSForSaleYN" IS 'Also Listed in FMLS For Sale';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Amenities" text[];
    COMMENT ON COLUMN fmls2."Property"."Amenities" IS 'Amenities';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AnnualAssocFee" integer;
    COMMENT ON COLUMN fmls2."Property"."AnnualAssocFee" IS 'Annual Assoc Fee';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AnnualExpensesAmt" integer;
    COMMENT ON COLUMN fmls2."Property"."AnnualExpensesAmt" IS 'Annual Expenses $';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AnnualMasterAssocFee" integer;
    COMMENT ON COLUMN fmls2."Property"."AnnualMasterAssocFee" IS 'Annual Master Assoc. Fee';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AnnualMasterAssocFeeDesc" text;
    COMMENT ON COLUMN fmls2."Property"."AnnualMasterAssocFeeDesc" IS 'Annual Master Assoc. Fee Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AnnualUtilitiesAmt" integer;
    COMMENT ON COLUMN fmls2."Property"."AnnualUtilitiesAmt" IS 'Annual Utilities $';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ApplianceDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."ApplianceDesc" IS 'Appliance Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ApplicationFeePerAdultYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."ApplicationFeePerAdultYN" IS 'Application Fee Per Adult';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ApplicationFeePerFamilyYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."ApplicationFeePerFamilyYN" IS 'Application Fee Per Family';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ApproximateLotSize" text;
    COMMENT ON COLUMN fmls2."Property"."ApproximateLotSize" IS 'Approximate Lot Size';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Architecture" text;
    COMMENT ON COLUMN fmls2."Property"."Architecture" IS 'Architecture';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AssessmentDueContemplatedYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."AssessmentDueContemplatedYN" IS 'Assessment Due/Contemplated';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AssocFeeDesc" text;
    COMMENT ON COLUMN fmls2."Property"."AssocFeeDesc" IS 'Assoc Fee Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AssocFeeIncludes" text[];
    COMMENT ON COLUMN fmls2."Property"."AssocFeeIncludes" IS 'Assoc. Fee Includes';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "AssumableYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."AssumableYN" IS 'Assumable';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Availability" text;
    COMMENT ON COLUMN fmls2."Property"."Availability" IS 'Availability';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "BasementDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."BasementDesc" IS 'Basement Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "BathroomDescription" text[];
    COMMENT ON COLUMN fmls2."Property"."BathroomDescription" IS 'Bathroom Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN fmls2."Property"."BathsFull" IS 'Total Full Baths';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN fmls2."Property"."BathsHalf" IS 'Total Half Baths';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "BedroomDescription" text[];
    COMMENT ON COLUMN fmls2."Property"."BedroomDescription" IS 'Bedroom Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN fmls2."Property"."BedsTotal" IS 'Total Bedrooms';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Block" text;
    COMMENT ON COLUMN fmls2."Property"."Block" IS 'Block';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Boathouse" text[];
    COMMENT ON COLUMN fmls2."Property"."Boathouse" IS 'Boathouse';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "BuildingFaces" text;
    COMMENT ON COLUMN fmls2."Property"."BuildingFaces" IS 'Building Faces';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CPHBStatus" text;
    COMMENT ON COLUMN fmls2."Property"."CPHBStatus" IS 'CPHB Status';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CapRate" decimal;
    COMMENT ON COLUMN fmls2."Property"."CapRate" IS 'Cap Rate';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CertProfHomeBldrs" text;
    COMMENT ON COLUMN fmls2."Property"."CertProfHomeBldrs" IS 'Cert Prof Home Bldrs';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN fmls2."Property"."City" IS 'City';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CloseDate" text;
    COMMENT ON COLUMN fmls2."Property"."CloseDate" IS 'Closing Date';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ClosePrice" decimal;
    COMMENT ON COLUMN fmls2."Property"."ClosePrice" IS 'Sales Price';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CoListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN fmls2."Property"."CoListAgentDirectWorkPhone" IS 'Co-Listing Agent Phone';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CoListAgentFullName" text;
    COMMENT ON COLUMN fmls2."Property"."CoListAgentFullName" IS 'Co-Listing Agent Name';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CoListAgentMLSID" text;
    COMMENT ON COLUMN fmls2."Property"."CoListAgentMLSID" IS 'Co-Listing Agent ID';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CoListAgent_MUI" bigint;
    COMMENT ON COLUMN fmls2."Property"."CoListAgent_MUI" IS 'Co List Agent MUI';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CoListOfficeMLSID" text;
    COMMENT ON COLUMN fmls2."Property"."CoListOfficeMLSID" IS 'Co List Office MLSID';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CoListOfficeName" text;
    COMMENT ON COLUMN fmls2."Property"."CoListOfficeName" IS 'Co List Office Name';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CoListOfficePhone" text;
    COMMENT ON COLUMN fmls2."Property"."CoListOfficePhone" IS 'Co List Office Phone';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CoListOffice_MUI" bigint;
    COMMENT ON COLUMN fmls2."Property"."CoListOffice_MUI" IS 'Co List Office MUI';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ComplexBuildingAccess" text[];
    COMMENT ON COLUMN fmls2."Property"."ComplexBuildingAccess" IS 'Complex/Building Access';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ConstructionDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."ConstructionDesc" IS 'Construction Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CoolingDescription" text[];
    COMMENT ON COLUMN fmls2."Property"."CoolingDescription" IS 'Cooling Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CorrectionCount" integer;
    COMMENT ON COLUMN fmls2."Property"."CorrectionCount" IS 'Correction Count';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN fmls2."Property"."CountyOrParish" IS 'County';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CreditReportRequiredYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."CreditReportRequiredYN" IS 'Credit Report Required';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CurrentClassification" text;
    COMMENT ON COLUMN fmls2."Property"."CurrentClassification" IS 'Current Classification';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CurrentPrice" decimal;
    COMMENT ON COLUMN fmls2."Property"."CurrentPrice" IS 'Curr Price';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CurrentUse" text[];
    COMMENT ON COLUMN fmls2."Property"."CurrentUse" IS 'Current Use';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "CurrentZoning" text;
    COMMENT ON COLUMN fmls2."Property"."CurrentZoning" IS 'Current Zoning';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN fmls2."Property"."DOM" IS 'Days On Market';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "DPRURL" text;
    COMMENT ON COLUMN fmls2."Property"."DPRURL" IS 'DPR URL';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "DPRURL2" text;
    COMMENT ON COLUMN fmls2."Property"."DPRURL2" IS 'DPR URL 2';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "DPRYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."DPRYN" IS 'DPR Y/N';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Deposit" text;
    COMMENT ON COLUMN fmls2."Property"."Deposit" IS 'Deposit';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "DiningRoomDescription" text[];
    COMMENT ON COLUMN fmls2."Property"."DiningRoomDescription" IS 'Dining Room Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN fmls2."Property"."Directions" IS 'Directions';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "DisabilityAccess" text[];
    COMMENT ON COLUMN fmls2."Property"."DisabilityAccess" IS 'Disability Access ';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "District" text;
    COMMENT ON COLUMN fmls2."Property"."District" IS 'District';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Dock" text[];
    COMMENT ON COLUMN fmls2."Property"."Dock" IS 'Dock';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "DocumentsatOffice" text[];
    COMMENT ON COLUMN fmls2."Property"."DocumentsatOffice" IS 'Documents at Office';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "DuplicateMLSNumber" text;
    COMMENT ON COLUMN fmls2."Property"."DuplicateMLSNumber" IS 'Duplicate FMLS #';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "DwellingRooms" text[];
    COMMENT ON COLUMN fmls2."Property"."DwellingRooms" IS 'Dwelling Rooms';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ElementarySchool" text;
    COMMENT ON COLUMN fmls2."Property"."ElementarySchool" IS 'Elementary School';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "EnergyFeatures" text[];
    COMMENT ON COLUMN fmls2."Property"."EnergyFeatures" IS 'Energy Features';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Exterior" text[];
    COMMENT ON COLUMN fmls2."Property"."Exterior" IS 'Exterior';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "FireplaceFeaturesLocation" text[];
    COMMENT ON COLUMN fmls2."Property"."FireplaceFeaturesLocation" IS 'Fireplace Features/Location';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "FireplacesNum" integer;
    COMMENT ON COLUMN fmls2."Property"."FireplacesNum" IS 'Fireplaces #';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "FloorDescription" text[];
    COMMENT ON COLUMN fmls2."Property"."FloorDescription" IS 'Floor Description';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "FurnishedYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."FurnishedYN" IS 'Furnished';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "GreenBuildingCertifications" text[];
    COMMENT ON COLUMN fmls2."Property"."GreenBuildingCertifications" IS 'Green Building Certifications';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "GrossExpensesAmt" integer;
    COMMENT ON COLUMN fmls2."Property"."GrossExpensesAmt" IS 'Gross Expenses $';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "GrossIncomeAmt" integer;
    COMMENT ON COLUMN fmls2."Property"."GrossIncomeAmt" IS 'Gross Income $';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "HERSIndexRating" integer;
    COMMENT ON COLUMN fmls2."Property"."HERSIndexRating" IS 'HERS Index Rating';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "HERSIndexRatingAvailableYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."HERSIndexRatingAvailableYN" IS 'HERS Index Rating Available';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "HOARentRestrictionsYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."HOARentRestrictionsYN" IS 'HOA Rent Restrictions';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "HeatType" text[];
    COMMENT ON COLUMN fmls2."Property"."HeatType" IS 'Heat Type';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "HighSchool" text;
    COMMENT ON COLUMN fmls2."Property"."HighSchool" IS 'High School';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "HomeWarranty" text;
    COMMENT ON COLUMN fmls2."Property"."HomeWarranty" IS 'Home Warranty';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "HouseFaces" text;
    COMMENT ON COLUMN fmls2."Property"."HouseFaces" IS 'House Faces';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "HouseYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."HouseYN" IS 'House';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Improvements" text[];
    COMMENT ON COLUMN fmls2."Property"."Improvements" IS 'Improvements';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "InitiationFee" integer;
    COMMENT ON COLUMN fmls2."Property"."InitiationFee" IS 'Initiation Fee';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Interior" text[];
    COMMENT ON COLUMN fmls2."Property"."Interior" IS 'Interior';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "KitchenFeatures" text[];
    COMMENT ON COLUMN fmls2."Property"."KitchenFeatures" IS 'Kitchen Features';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LakeName" text;
    COMMENT ON COLUMN fmls2."Property"."LakeName" IS 'Lake Name';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LandlordExpenses" text[];
    COMMENT ON COLUMN fmls2."Property"."LandlordExpenses" IS 'Landlord Expenses';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LandlordUtilities" text[];
    COMMENT ON COLUMN fmls2."Property"."LandlordUtilities" IS 'Landlord Utilities';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Landlot" text;
    COMMENT ON COLUMN fmls2."Property"."Landlot" IS 'Landlot';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LastChangeTimestamp" text;
    COMMENT ON COLUMN fmls2."Property"."LastChangeTimestamp" IS 'Last Change Timestamp';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LastChangeType" text;
    COMMENT ON COLUMN fmls2."Property"."LastChangeType" IS 'Last Change Type';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LastListPrice" decimal;
    COMMENT ON COLUMN fmls2."Property"."LastListPrice" IS 'Previous List Price';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LastStatus" text;
    COMMENT ON COLUMN fmls2."Property"."LastStatus" IS 'Previous Status';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LaundryFeaturesLocation" text[];
    COMMENT ON COLUMN fmls2."Property"."LaundryFeaturesLocation" IS 'Laundry Features/Location';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LeasePrice" decimal;
    COMMENT ON COLUMN fmls2."Property"."LeasePrice" IS 'Lease Price';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LeaseTerm" text;
    COMMENT ON COLUMN fmls2."Property"."LeaseTerm" IS 'Lease Term';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LenderMediatedYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."LenderMediatedYN" IS 'Lender Mediated';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN fmls2."Property"."ListAgentDirectWorkPhone" IS 'List Agent Direct Work Phone';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN fmls2."Property"."ListAgentFullName" IS 'Listing Agent Name';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN fmls2."Property"."ListAgentMLSID" IS 'Listing Agent ID';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN fmls2."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListFirmCode" text;
    COMMENT ON COLUMN fmls2."Property"."ListFirmCode" IS 'List Firm Code';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN fmls2."Property"."ListOfficeMLSID" IS 'Listing Office Code';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN fmls2."Property"."ListOfficeName" IS 'Listing Office Name';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN fmls2."Property"."ListOfficePhone" IS 'Listing Office Phone';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN fmls2."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN fmls2."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LoadingDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."LoadingDesc" IS 'Loading Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LocationDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."LocationDesc" IS 'Location Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Lot" text;
    COMMENT ON COLUMN fmls2."Property"."Lot" IS 'Lot';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LotDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."LotDesc" IS 'Lot Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LotDimensions" text;
    COMMENT ON COLUMN fmls2."Property"."LotDimensions" IS 'Lot Dimensions';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LowerBedrooms" integer;
    COMMENT ON COLUMN fmls2."Property"."LowerBedrooms" IS 'Lower Bedrooms';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LowerFullBaths" integer;
    COMMENT ON COLUMN fmls2."Property"."LowerFullBaths" IS 'Lower Full Baths';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "LowerHalfBaths" integer;
    COMMENT ON COLUMN fmls2."Property"."LowerHalfBaths" IS 'Lower Half Baths';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN fmls2."Property"."MLSNumber" IS 'FMLS#';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MainBedrooms" integer;
    COMMENT ON COLUMN fmls2."Property"."MainBedrooms" IS 'Main Bedrooms';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MainDwellingStories" text;
    COMMENT ON COLUMN fmls2."Property"."MainDwellingStories" IS 'Main Dwelling Stories';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MainFullBaths" integer;
    COMMENT ON COLUMN fmls2."Property"."MainFullBaths" IS 'Main Full Baths';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MainHalfBaths" integer;
    COMMENT ON COLUMN fmls2."Property"."MainHalfBaths" IS 'Main Half Baths';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Management" text;
    COMMENT ON COLUMN fmls2."Property"."Management" IS 'Management';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MasterBathFeatures" text[];
    COMMENT ON COLUMN fmls2."Property"."MasterBathFeatures" IS 'Master Bath Features';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN fmls2."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN fmls2."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MiddleSchool" text;
    COMMENT ON COLUMN fmls2."Property"."MiddleSchool" IS 'Middle School';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Miscellaneous" text[];
    COMMENT ON COLUMN fmls2."Property"."Miscellaneous" IS 'Miscellaneous';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MiscellaneousEquipment" text[];
    COMMENT ON COLUMN fmls2."Property"."MiscellaneousEquipment" IS 'Miscellaneous Equipment';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MonthlyAssocFee" integer;
    COMMENT ON COLUMN fmls2."Property"."MonthlyAssocFee" IS 'Monthly Assoc Fee';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MoveInFeeAmt" decimal;
    COMMENT ON COLUMN fmls2."Property"."MoveInFeeAmt" IS 'Move In Fee $';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MoveInFeeYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."MoveInFeeYN" IS 'Move In Fee';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MoveOutFeeAmt" decimal;
    COMMENT ON COLUMN fmls2."Property"."MoveOutFeeAmt" IS 'Move Out Fee $';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "MoveOutFeeYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."MoveOutFeeYN" IS 'Move Out Fee';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "NOIAmt" integer;
    COMMENT ON COLUMN fmls2."Property"."NOIAmt" IS 'N.O.I. $';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "NeighborhoodAmenities" text[];
    COMMENT ON COLUMN fmls2."Property"."NeighborhoodAmenities" IS 'Neighborhood Amenities';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "NumBuildings" integer;
    COMMENT ON COLUMN fmls2."Property"."NumBuildings" IS '# Buildings';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "NumParkingSpaces" integer;
    COMMENT ON COLUMN fmls2."Property"."NumParkingSpaces" IS '# Parking Spaces';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "NumofUnits" integer;
    COMMENT ON COLUMN fmls2."Property"."NumofUnits" IS '# of Units';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "OfficeListWeb" text;
    COMMENT ON COLUMN fmls2."Property"."OfficeListWeb" IS 'Office List Web';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "OnSiteUtilities" text[];
    COMMENT ON COLUMN fmls2."Property"."OnSiteUtilities" IS 'On Site Utilities';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "OpenHouseCount" integer;
    COMMENT ON COLUMN fmls2."Property"."OpenHouseCount" IS 'Open House Count';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN fmls2."Property"."OriginalListPrice" IS 'Original List Price';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "OwnerFinancingYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."OwnerFinancingYN" IS 'Owner Financing?';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "OwnerSecondYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."OwnerSecondYN" IS 'Owner Second';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Ownership" text;
    COMMENT ON COLUMN fmls2."Property"."Ownership" IS 'Ownership';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ParcelNumber" text;
    COMMENT ON COLUMN fmls2."Property"."ParcelNumber" IS 'Parcel Number';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ParkingDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."ParkingDesc" IS 'Parking Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PendingDate" text;
    COMMENT ON COLUMN fmls2."Property"."PendingDate" IS 'Binding Agreement Date';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PerAdultAmt" text;
    COMMENT ON COLUMN fmls2."Property"."PerAdultAmt" IS 'Per Adult $';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PerFamilyAmt" text;
    COMMENT ON COLUMN fmls2."Property"."PerFamilyAmt" IS 'Per Family $';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PetDepositAmt" decimal;
    COMMENT ON COLUMN fmls2."Property"."PetDepositAmt" IS 'Pet Deposit Amt';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PetsAllowed" text;
    COMMENT ON COLUMN fmls2."Property"."PetsAllowed" IS 'Pets Allowed?';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN fmls2."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN fmls2."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PoolonProperty" text[];
    COMMENT ON COLUMN fmls2."Property"."PoolonProperty" IS 'Pool on Property?';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PossibleFinancingDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."PossibleFinancingDesc" IS 'Possible Financing Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PossibleUse" text[];
    COMMENT ON COLUMN fmls2."Property"."PossibleUse" IS 'Possible Use';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN fmls2."Property"."PostalCode" IS 'Zip Code';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN fmls2."Property"."PostalCodePlus4" IS 'ZipPlus4';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PresentUse" text[];
    COMMENT ON COLUMN fmls2."Property"."PresentUse" IS 'Present Use';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PriceAcreAmt" integer;
    COMMENT ON COLUMN fmls2."Property"."PriceAcreAmt" IS 'Price/Acre$';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PriceChangeTimestamp" text;
    COMMENT ON COLUMN fmls2."Property"."PriceChangeTimestamp" IS 'Price Change Date';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN fmls2."Property"."PropertySubType" IS 'Type';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PropertySubTypeCommercial" text[];
    COMMENT ON COLUMN fmls2."Property"."PropertySubTypeCommercial" IS 'Property Subtype Comm';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN fmls2."Property"."PropertyType" IS 'Property Category';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ProposedFinancing" text[];
    COMMENT ON COLUMN fmls2."Property"."ProposedFinancing" IS 'Proposed Financing';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ProviderKey" text;
    COMMENT ON COLUMN fmls2."Property"."ProviderKey" IS 'Provider Key';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ProviderModificationTimestamp" text;
    COMMENT ON COLUMN fmls2."Property"."ProviderModificationTimestamp" IS 'Provider Modification Timestamp';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "PublicRemarksConsumerView" text;
    COMMENT ON COLUMN fmls2."Property"."PublicRemarksConsumerView" IS 'Public Remarks-Consumer View';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "RecommendedZoning" text[];
    COMMENT ON COLUMN fmls2."Property"."RecommendedZoning" IS 'Recommended Zoning';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "ReservationDeposit" decimal;
    COMMENT ON COLUMN fmls2."Property"."ReservationDeposit" IS 'Reservation Deposit';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "RestrictionsRequirements" text[];
    COMMENT ON COLUMN fmls2."Property"."RestrictionsRequirements" IS 'Restrictions/Requirements';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "RoadFrontFeet" integer;
    COMMENT ON COLUMN fmls2."Property"."RoadFrontFeet" IS 'Road Front Feet';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "RoadSurface" text[];
    COMMENT ON COLUMN fmls2."Property"."RoadSurface" IS 'Road Surface';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "RoadType" text[];
    COMMENT ON COLUMN fmls2."Property"."RoadType" IS 'Road Type';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "RoofType" text[];
    COMMENT ON COLUMN fmls2."Property"."RoofType" IS 'Roof Type';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "RoomsDescription" text[];
    COMMENT ON COLUMN fmls2."Property"."RoomsDescription" IS 'Rooms Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SaleIncludes" text[];
    COMMENT ON COLUMN fmls2."Property"."SaleIncludes" IS 'Sale Includes';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SaleOptions" text[];
    COMMENT ON COLUMN fmls2."Property"."SaleOptions" IS 'Sale Options';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SchoolBusRouteElemYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."SchoolBusRouteElemYN" IS 'School Bus Route Elem';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SchoolBusRouteHighYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."SchoolBusRouteHighYN" IS 'School Bus Route High';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SchoolBusRouteMiddleYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."SchoolBusRouteMiddleYN" IS 'School Bus Route Middle';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SearchArea" text;
    COMMENT ON COLUMN fmls2."Property"."SearchArea" IS 'Search Area';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SectionGMD" text;
    COMMENT ON COLUMN fmls2."Property"."SectionGMD" IS 'Section/GMD';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SellFirmCode" text;
    COMMENT ON COLUMN fmls2."Property"."SellFirmCode" IS 'Sell Firm Code';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SellingAgentDirectWorkPhone" text;
    COMMENT ON COLUMN fmls2."Property"."SellingAgentDirectWorkPhone" IS 'Selling Agent Direct Work Phone';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SellingAgentFullName" text;
    COMMENT ON COLUMN fmls2."Property"."SellingAgentFullName" IS 'Selling Agent Full Name';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SellingAgentMLSID" text;
    COMMENT ON COLUMN fmls2."Property"."SellingAgentMLSID" IS 'Selling Agent ID';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SellingAgent_MUI" bigint;
    COMMENT ON COLUMN fmls2."Property"."SellingAgent_MUI" IS 'Selling Agent MUI';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SellingOfficeMLSID" text;
    COMMENT ON COLUMN fmls2."Property"."SellingOfficeMLSID" IS 'Selling Office Code';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SellingOfficeName" text;
    COMMENT ON COLUMN fmls2."Property"."SellingOfficeName" IS 'Selling Office Name';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SellingOfficePhone" text;
    COMMENT ON COLUMN fmls2."Property"."SellingOfficePhone" IS 'Selling Office Phone';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SellingOffice_MUI" bigint;
    COMMENT ON COLUMN fmls2."Property"."SellingOffice_MUI" IS 'Selling Office MUI';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Setting" text[];
    COMMENT ON COLUMN fmls2."Property"."Setting" IS 'Setting';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SewerDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."SewerDesc" IS 'Sewer Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SpecialCircumstances" text[];
    COMMENT ON COLUMN fmls2."Property"."SpecialCircumstances" IS 'Special Circumstances';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SqFtSource" text;
    COMMENT ON COLUMN fmls2."Property"."SqFtSource" IS 'SqFt Source';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SqFtTotal" integer;
    COMMENT ON COLUMN fmls2."Property"."SqFtTotal" IS 'Square Footage';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN fmls2."Property"."StateOrProvince" IS 'State';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN fmls2."Property"."Status" IS 'Status';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "StatusChangeTimestamp" text;
    COMMENT ON COLUMN fmls2."Property"."StatusChangeTimestamp" IS 'Status Change Date';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "StorageFacility" text[];
    COMMENT ON COLUMN fmls2."Property"."StorageFacility" IS 'Storage Facility';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Stories" text;
    COMMENT ON COLUMN fmls2."Property"."Stories" IS 'Stories';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN fmls2."Property"."StreetDirPrefix" IS 'Street Direction Prefix';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN fmls2."Property"."StreetDirSuffix" IS 'Street Directional Suffix';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN fmls2."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN fmls2."Property"."StreetNumber" IS 'Street Number Disp';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "StreetNumberNumeric" integer;
    COMMENT ON COLUMN fmls2."Property"."StreetNumberNumeric" IS 'Street Number Search';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN fmls2."Property"."StreetSuffix" IS 'Street Type';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Style" text[];
    COMMENT ON COLUMN fmls2."Property"."Style" IS 'Style';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SubdComplex" text;
    COMMENT ON COLUMN fmls2."Property"."SubdComplex" IS 'Subd/Complex';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SwimTennisFee" integer;
    COMMENT ON COLUMN fmls2."Property"."SwimTennisFee" IS 'Swim/Tennis Fee';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "SwimTennisFeeDue" text;
    COMMENT ON COLUMN fmls2."Property"."SwimTennisFeeDue" IS 'Swim/Tennis Fee Due';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TaxID" text;
    COMMENT ON COLUMN fmls2."Property"."TaxID" IS 'Tax ID';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TaxYear" integer;
    COMMENT ON COLUMN fmls2."Property"."TaxYear" IS 'Tax Year';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Taxes" integer;
    COMMENT ON COLUMN fmls2."Property"."Taxes" IS 'Taxes';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysAssociationFeeYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysAssociationFeeYN" IS 'Tenant Pays Association Fee';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysCableYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysCableYN" IS 'Tenant Pays Cable';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysElectricYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysElectricYN" IS 'Tenant Pays Electric';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysGarbageYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysGarbageYN" IS 'Tenant Pays Garbage';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysGasYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysGasYN" IS 'Tenant Pays Gas';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysLawnMaintYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysLawnMaintYN" IS 'Tenant Pays Lawn Maint';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysPestControlYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysPestControlYN" IS 'Tenant Pays Pest Control';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysSecuritySystemYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysSecuritySystemYN" IS 'Tenant Pays Security System';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysTelephoneYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysTelephoneYN" IS 'Tenant Pays Telephone';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TenantPaysWaterYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TenantPaysWaterYN" IS 'Tenant Pays Water';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "TennisonPropertyYN" boolean;
    COMMENT ON COLUMN fmls2."Property"."TennisonPropertyYN" IS 'Tennis on Property?';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Timber" text[];
    COMMENT ON COLUMN fmls2."Property"."Timber" IS 'Timber';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Topography" text[];
    COMMENT ON COLUMN fmls2."Property"."Topography" IS 'Topography';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Transportation" text[];
    COMMENT ON COLUMN fmls2."Property"."Transportation" IS 'Transportation';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "UnitCount" integer;
    COMMENT ON COLUMN fmls2."Property"."UnitCount" IS 'Unit Count';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "UnitFaces" text;
    COMMENT ON COLUMN fmls2."Property"."UnitFaces" IS 'Unit Faces';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "UnitLevels" text;
    COMMENT ON COLUMN fmls2."Property"."UnitLevels" IS 'Unit Levels';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "UnitLocationDesc" text[];
    COMMENT ON COLUMN fmls2."Property"."UnitLocationDesc" IS 'Unit Location/Desc';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN fmls2."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "UpperBedrooms" integer;
    COMMENT ON COLUMN fmls2."Property"."UpperBedrooms" IS 'Upper Bedrooms';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "UpperFullBaths" integer;
    COMMENT ON COLUMN fmls2."Property"."UpperFullBaths" IS 'Upper Full Baths';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "UpperHalfBaths" integer;
    COMMENT ON COLUMN fmls2."Property"."UpperHalfBaths" IS 'Upper Half Baths';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "UtilitiesAvailable" text[];
    COMMENT ON COLUMN fmls2."Property"."UtilitiesAvailable" IS 'Utilities Available';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "Vegetation" text[];
    COMMENT ON COLUMN fmls2."Property"."Vegetation" IS 'Vegetation';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "VirtualTourLink" text;
    COMMENT ON COLUMN fmls2."Property"."VirtualTourLink" IS 'Virtual Tour Link';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "VirtualTourLinkPP" text;
    COMMENT ON COLUMN fmls2."Property"."VirtualTourLinkPP" IS 'Virtual Tour Link PP';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "WaterOnLand" text[];
    COMMENT ON COLUMN fmls2."Property"."WaterOnLand" IS 'Water On Land';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "WaterSource" text[];
    COMMENT ON COLUMN fmls2."Property"."WaterSource" IS 'Water Source';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "WaterfrontFootage" integer;
    COMMENT ON COLUMN fmls2."Property"."WaterfrontFootage" IS 'Waterfront Footage';
     
    ALTER TABLE fmls2."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN fmls2."Property"."YearBuilt" IS 'Year Built';
     

COMMIT;