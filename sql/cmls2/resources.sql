BEGIN;
     
  CREATE TABLE cmls2."Agent"() INHERITS (property);
    ALTER TABLE cmls2."Property" ADD COLUMN "AcresCleared" decimal;
    COMMENT ON COLUMN cmls2."Property"."AcresCleared" IS 'Acres Cleared';

    ALTER TABLE cmls2."Property" ADD COLUMN "AcresWooded" decimal;
    COMMENT ON COLUMN cmls2."Property"."AcresWooded" IS 'Acres Wooded';

    ALTER TABLE cmls2."Agent" ADD COLUMN "RatePlugAccessYN" boolean;
    COMMENT ON COLUMN cmls2."Agent"."RatePlugAccessYN" IS 'Rate Plug Access YN';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "FirstName" text;
    COMMENT ON COLUMN cmls2."Agent"."FirstName" IS 'First Name';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN cmls2."Agent"."MLSID" IS 'MLSID';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "Office_MUI" bigint;
    COMMENT ON COLUMN cmls2."Agent"."Office_MUI" IS 'Office MUI';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "LastName" text;
    COMMENT ON COLUMN cmls2."Agent"."LastName" IS 'Last Name';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "MiddleName" text;
    COMMENT ON COLUMN cmls2."Agent"."MiddleName" IS 'Middle Name';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "Designations" text;
    COMMENT ON COLUMN cmls2."Agent"."Designations" IS 'Designations';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls2."Agent"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "OfficeMLSID" text;
    COMMENT ON COLUMN cmls2."Agent"."OfficeMLSID" IS 'Office MLSID';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls2."Agent"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "AgentStatus" text;
    COMMENT ON COLUMN cmls2."Agent"."AgentStatus" IS 'Agent Status';
     
    ALTER TABLE cmls2."Agent" ADD COLUMN "TollFreePhone" text;
    COMMENT ON COLUMN cmls2."Agent"."TollFreePhone" IS 'Toll Free Phone';
     
  CREATE TABLE cmls2."Office"() INHERITS (property);
    ALTER TABLE cmls2."Office" ADD COLUMN "OfficeSyndication" text[];
    COMMENT ON COLUMN cmls2."Office"."OfficeSyndication" IS 'Office Syndication';
     
    ALTER TABLE cmls2."Office" ADD COLUMN "OfficeName" text;
    COMMENT ON COLUMN cmls2."Office"."OfficeName" IS 'Office Name';
     
    ALTER TABLE cmls2."Office" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN cmls2."Office"."MLSID" IS 'MLSID';
     
    ALTER TABLE cmls2."Office" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls2."Office"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE cmls2."Office" ADD COLUMN "OfficeStatus" text;
    COMMENT ON COLUMN cmls2."Office"."OfficeStatus" IS 'Office Status';
     
    ALTER TABLE cmls2."Office" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls2."Office"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
  CREATE TABLE cmls2."OpenHouse"() INHERITS (property);
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "EndTime" integer;
    COMMENT ON COLUMN cmls2."OpenHouse"."EndTime" IS 'End Time';
     
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "OpenHouseType" text;
    COMMENT ON COLUMN cmls2."OpenHouse"."OpenHouseType" IS 'Open House Type';
     
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "Refreshments" text[];
    COMMENT ON COLUMN cmls2."OpenHouse"."Refreshments" IS 'Refreshments';
     
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "Listing_MUI" bigint;
    COMMENT ON COLUMN cmls2."OpenHouse"."Listing_MUI" IS 'Listing MUI';
     
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "Description" text;
    COMMENT ON COLUMN cmls2."OpenHouse"."Description" IS 'Description';
     
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "ActiveYN" boolean;
    COMMENT ON COLUMN cmls2."OpenHouse"."ActiveYN" IS 'Active YN';
     
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "matrix_unique_id" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls2."OpenHouse"."matrix_unique_id" IS 'Matrix Unique Id';
     
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "OpenHouseDate" text;
    COMMENT ON COLUMN cmls2."OpenHouse"."OpenHouseDate" IS 'Open House Date';
     
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "StartTime" integer;
    COMMENT ON COLUMN cmls2."OpenHouse"."StartTime" IS 'Start Time';
     
    ALTER TABLE cmls2."OpenHouse" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls2."OpenHouse"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
  CREATE TABLE cmls2."Property"() INHERITS (property);
    ALTER TABLE cmls2."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN cmls2."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtMinimumLease" decimal;
    COMMENT ON COLUMN cmls2."Property"."SqFtMinimumLease" IS 'Sq Ft Minimum Lease';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtThird" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtThird" IS 'Sq Ft Third';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "RestrictionsDescription" text;
    COMMENT ON COLUMN cmls2."Property"."RestrictionsDescription" IS 'Restrictions Description';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN cmls2."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CDOM" integer;
    COMMENT ON COLUMN cmls2."Property"."CDOM" IS 'CDOM';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PermitInternetYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."PermitInternetYN" IS 'Permit Internet YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ClosePrice" decimal;
    COMMENT ON COLUMN cmls2."Property"."ClosePrice" IS 'Close Price';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CloseDate" text;
    COMMENT ON COLUMN cmls2."Property"."CloseDate" IS 'Close Date';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "FireplaceYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."FireplaceYN" IS 'Fireplace YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "LaundryLocation" text[];
    COMMENT ON COLUMN cmls2."Property"."LaundryLocation" IS 'Laundry Location';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Heating" text[];
    COMMENT ON COLUMN cmls2."Property"."Heating" IS 'Heating';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "DeedReference" text;
    COMMENT ON COLUMN cmls2."Property"."DeedReference" IS 'Deed Reference';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN cmls2."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StatusContractualSearchDate" text;
    COMMENT ON COLUMN cmls2."Property"."StatusContractualSearchDate" IS 'Status Contractual Search Date';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "LotDimension" text;
    COMMENT ON COLUMN cmls2."Property"."LotDimension" IS 'Lot Dimension';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CoListAgentMLSID" text;
    COMMENT ON COLUMN cmls2."Property"."CoListAgentMLSID" IS 'Co List Agent MLSID';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN cmls2."Property"."City" IS 'City';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "TransactionType" text;
    COMMENT ON COLUMN cmls2."Property"."TransactionType" IS 'Transaction Type';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "AdditionalInformation" text;
    COMMENT ON COLUMN cmls2."Property"."AdditionalInformation" IS 'Additional Information';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "RoomOther" text[];
    COMMENT ON COLUMN cmls2."Property"."RoomOther" IS 'Room Other';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN cmls2."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ParkingTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."ParkingTotal" IS 'Parking Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StreetNumberNumeric" integer;
    COMMENT ON COLUMN cmls2."Property"."StreetNumberNumeric" IS 'Street Number Numeric';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ExteriorConstruction" text[];
    COMMENT ON COLUMN cmls2."Property"."ExteriorConstruction" IS 'Exterior Construction';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN cmls2."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ProposedSpecialAssessmentYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."ProposedSpecialAssessmentYN" IS 'Proposed Special Assessment YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CommercialCooling" text[];
    COMMENT ON COLUMN cmls2."Property"."CommercialCooling" IS 'Commercial Cooling';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN cmls2."Property"."ListOfficePhone" IS 'List Office Phone';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Equipment" text[];
    COMMENT ON COLUMN cmls2."Property"."Equipment" IS 'Equipment';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "FinancingInformation" text;
    COMMENT ON COLUMN cmls2."Property"."FinancingInformation" IS 'Financing Information';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "LotFeatures" text[];
    COMMENT ON COLUMN cmls2."Property"."LotFeatures" IS 'Lot Features';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtUpper" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtUpper" IS 'Sq Ft Upper';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN cmls2."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "LeaseTerm" text[];
    COMMENT ON COLUMN cmls2."Property"."LeaseTerm" IS 'Lease Term';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Furnished" text;
    COMMENT ON COLUMN cmls2."Property"."Furnished" IS 'Furnished';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Easement" text[];
    COMMENT ON COLUMN cmls2."Property"."Easement" IS 'Easement';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CeilingHeightIN" integer;
    COMMENT ON COLUMN cmls2."Property"."CeilingHeightIN" IS 'Ceiling Height IN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Roof" text[];
    COMMENT ON COLUMN cmls2."Property"."Roof" IS 'Roof';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtUnheatedLower" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtUnheatedLower" IS 'Sq Ft Unheated Lower';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "NumberOfUnitsBuildings" integer;
    COMMENT ON COLUMN cmls2."Property"."NumberOfUnitsBuildings" IS 'Number Of Units Buildings';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN cmls2."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "FireplaceDescription" text[];
    COMMENT ON COLUMN cmls2."Property"."FireplaceDescription" IS 'Fireplace Description';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SellingOffice_MUI" bigint;
    COMMENT ON COLUMN cmls2."Property"."SellingOffice_MUI" IS 'Selling Office MUI';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "WaterHeater" text[];
    COMMENT ON COLUMN cmls2."Property"."WaterHeater" IS 'Water Heater';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PropertyFeatures" text[];
    COMMENT ON COLUMN cmls2."Property"."PropertyFeatures" IS 'Property Features';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN cmls2."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN cmls2."Property"."StreetDirSuffix" IS 'Street Dir Suffix';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtUnheatedBasement" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtUnheatedBasement" IS 'Sq Ft Unheated Basement';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SecondLivingQuarters" text[];
    COMMENT ON COLUMN cmls2."Property"."SecondLivingQuarters" IS 'Second Living Quarters';

    ALTER TABLE cmls2."Property" ADD COLUMN "SecondLivingQuartersHLA" integer;
    COMMENT ON COLUMN cmls2."Property"."SecondLivingQuartersHLA" IS 'Second Living Quarters HLA';

    ALTER TABLE cmls2."Property" ADD COLUMN "SecondLivingQuartersSqFt" integer;
    COMMENT ON COLUMN cmls2."Property"."SecondLivingQuartersSqFt" IS 'Second Living Quarters Sq Ft';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "AssociationFee" decimal;
    COMMENT ON COLUMN cmls2."Property"."AssociationFee" IS 'Association Fee';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CeilingHeightFT" integer;
    COMMENT ON COLUMN cmls2."Property"."CeilingHeightFT" IS 'Ceiling Height FT';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "VacancyRate" integer;
    COMMENT ON COLUMN cmls2."Property"."VacancyRate" IS 'Vacancy Rate';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN cmls2."Property"."ExteriorFeatures" IS 'Exterior Features';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN cmls2."Property"."Status" IS 'Status';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Inclusions" text[];
    COMMENT ON COLUMN cmls2."Property"."Inclusions" IS 'Inclusions';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN cmls2."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CoListAgent_MUI" bigint;
    COMMENT ON COLUMN cmls2."Property"."CoListAgent_MUI" IS 'Co List Agent MUI';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "AssociationFeeFrequency" text;
    COMMENT ON COLUMN cmls2."Property"."AssociationFeeFrequency" IS 'Association Fee Frequency';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CrossStreet" text;
    COMMENT ON COLUMN cmls2."Property"."CrossStreet" IS 'Cross Street';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN cmls2."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Model" text;
    COMMENT ON COLUMN cmls2."Property"."Model" IS 'Model';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "VOWAVMYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."VOWAVMYN" IS 'VOWAVMYN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "RoadFrontage" integer;
    COMMENT ON COLUMN cmls2."Property"."RoadFrontage" IS 'Road Frontage';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SellingAgent_MUI" bigint;
    COMMENT ON COLUMN cmls2."Property"."SellingAgent_MUI" IS 'Selling Agent MUI';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CeilingHeight" decimal;
    COMMENT ON COLUMN cmls2."Property"."CeilingHeight" IS 'Ceiling Height';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Flooring" text[];
    COMMENT ON COLUMN cmls2."Property"."Flooring" IS 'Flooring';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtMaximumLease" decimal;
    COMMENT ON COLUMN cmls2."Property"."SqFtMaximumLease" IS 'Sq Ft Maximum Lease';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListingFinancing" text[];
    COMMENT ON COLUMN cmls2."Property"."ListingFinancing" IS 'Listing Financing';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ConstructionStatus" text;
    COMMENT ON COLUMN cmls2."Property"."ConstructionStatus" IS 'Construction Status';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtUnheatedMain" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtUnheatedMain" IS 'Sq Ft Unheated Main';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "GrossScheduledIncome" decimal;
    COMMENT ON COLUMN cmls2."Property"."GrossScheduledIncome" IS 'Gross Scheduled Income';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Restrictions" text[];
    COMMENT ON COLUMN cmls2."Property"."Restrictions" IS 'Restrictions';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Table" text;
    COMMENT ON COLUMN cmls2."Property"."Table" IS 'Table';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN cmls2."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ElementarySchool" text;
    COMMENT ON COLUMN cmls2."Property"."ElementarySchool" IS 'Elementary School';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN cmls2."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN cmls2."Property"."DOM" IS 'DOM';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StreetViewParam" text;
    COMMENT ON COLUMN cmls2."Property"."StreetViewParam" IS 'Street View Param';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN cmls2."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SpecialListingConditions" text[];
    COMMENT ON COLUMN cmls2."Property"."SpecialListingConditions" IS 'Special Listing Conditions';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "FoundationDetails" text[];
    COMMENT ON COLUMN cmls2."Property"."FoundationDetails" IS 'Foundation Details';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN cmls2."Property"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtUnheatedUpper" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtUnheatedUpper" IS 'Sq Ft Unheated Upper';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtBasement" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtBasement" IS 'Sq Ft Basement';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "GreenHERSScore" integer;
    COMMENT ON COLUMN cmls2."Property"."GreenHERSScore" IS 'Green HERS Score';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CorrectionCount" integer;
    COMMENT ON COLUMN cmls2."Property"."CorrectionCount" IS 'Correction Count';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Documents" text[];
    COMMENT ON COLUMN cmls2."Property"."Documents" IS 'Documents';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtUnheatedTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtUnheatedTotal" IS 'Sq Ft Unheated Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN cmls2."Property"."ListAgentDirectWorkPhone" IS 'List Agent Direct Work Phone';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "LotSizeArea" decimal;
    COMMENT ON COLUMN cmls2."Property"."LotSizeArea" IS 'Lot Size Area';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "RATIO_CurrentPrice_By_Acre" decimal;
    COMMENT ON COLUMN cmls2."Property"."RATIO_CurrentPrice_By_Acre" IS 'RATIO Current Price By Acre';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "MiddleOrJuniorSchool" text;
    COMMENT ON COLUMN cmls2."Property"."MiddleOrJuniorSchool" IS 'Middle Or Junior School';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtTotal" IS 'Sq Ft Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SubdivisionName" text;
    COMMENT ON COLUMN cmls2."Property"."SubdivisionName" IS 'Subdivision Name';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN cmls2."Property"."StreetSuffix" IS 'Street Suffix';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "OwnerAgentYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."OwnerAgentYN" IS 'Owner Agent YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN cmls2."Property"."StreetDirPrefix" IS 'Street Dir Prefix';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN cmls2."Property"."PropertySubType" IS 'Property Sub Type';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CommunityFeatures" text[];
    COMMENT ON COLUMN cmls2."Property"."CommunityFeatures" IS 'Community Features';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SellingAgentMLSID" text;
    COMMENT ON COLUMN cmls2."Property"."SellingAgentMLSID" IS 'Selling Agent MLSID';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN cmls2."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "HighSchool" text;
    COMMENT ON COLUMN cmls2."Property"."HighSchool" IS 'High School';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN cmls2."Property"."StateOrProvince" IS 'State Or Province';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ComplexName" text;
    COMMENT ON COLUMN cmls2."Property"."ComplexName" IS 'Complex Name';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "GeocodeSource" text;
    COMMENT ON COLUMN cmls2."Property"."GeocodeSource" IS 'Geocode Source';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Miscellaneous" text[];
    COMMENT ON COLUMN cmls2."Property"."Miscellaneous" IS 'Miscellaneous';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "VirtualTourURLUnbranded" text;
    COMMENT ON COLUMN cmls2."Property"."VirtualTourURLUnbranded" IS 'Virtual Tour URL Unbranded';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SellerContribution" decimal;
    COMMENT ON COLUMN cmls2."Property"."SellerContribution" IS 'Seller Contribution';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StoriesTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."StoriesTotal" IS 'Stories Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "NumberOfDocksTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."NumberOfDocksTotal" IS 'Number Of Docks Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Parking" text[];
    COMMENT ON COLUMN cmls2."Property"."Parking" IS 'Parking';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN cmls2."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtBuildingMinimum" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtBuildingMinimum" IS 'Sq Ft Building Minimum';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListingServiceYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."ListingServiceYN" IS 'Listing Service YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Driveway" text[];
    COMMENT ON COLUMN cmls2."Property"."Driveway" IS 'Driveway';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN cmls2."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "InteriorFeatures" text[];
    COMMENT ON COLUMN cmls2."Property"."InteriorFeatures" IS 'Interior Features';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PublicRemarks" text;
    COMMENT ON COLUMN cmls2."Property"."PublicRemarks" IS 'Public Remarks';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "EntryLevel" text;
    COMMENT ON COLUMN cmls2."Property"."EntryLevel" IS 'Entry Level';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtUnheatedThird" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtUnheatedThird" IS 'Sq Ft Unheated Third';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "RailService" text;
    COMMENT ON COLUMN cmls2."Property"."RailService" IS 'Rail Service';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ContactName" text;
    COMMENT ON COLUMN cmls2."Property"."ContactName" IS 'Contact Name';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "InsideCityYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."InsideCityYN" IS 'Inside City YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN cmls2."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "AvailableDate" text;
    COMMENT ON COLUMN cmls2."Property"."AvailableDate" IS 'Available Date';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "NumberOfUnitsTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."NumberOfUnitsTotal" IS 'Number Of Units Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ZoningSpecification" text;
    COMMENT ON COLUMN cmls2."Property"."ZoningSpecification" IS 'Zoning Specification';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SellingOfficeMLSID" text;
    COMMENT ON COLUMN cmls2."Property"."SellingOfficeMLSID" IS 'Selling Office MLSID';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PetsAllowed" text;
    COMMENT ON COLUMN cmls2."Property"."PetsAllowed" IS 'Pets Allowed';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "DoorsWindows" text[];
    COMMENT ON COLUMN cmls2."Property"."DoorsWindows" IS 'Doors Windows';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PlatBookSlide" text;
    COMMENT ON COLUMN cmls2."Property"."PlatBookSlide" IS 'Plat Book Slide';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN cmls2."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PermitSyndicationYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."PermitSyndicationYN" IS 'Permit Syndication YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PlatReferenceSectionPages" text;
    COMMENT ON COLUMN cmls2."Property"."PlatReferenceSectionPages" IS 'Plat Reference Section Pages';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CommercialHeating" text[];
    COMMENT ON COLUMN cmls2."Property"."CommercialHeating" IS 'Commercial Heating';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "RValueWall" integer;
    COMMENT ON COLUMN cmls2."Property"."RValueWall" IS 'R Value Wall';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Country" text;
    COMMENT ON COLUMN cmls2."Property"."Country" IS 'Country';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Water" text[];
    COMMENT ON COLUMN cmls2."Property"."Water" IS 'Water';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "LandIncludedYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."LandIncludedYN" IS 'Land Included YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtMain" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtMain" IS 'Sq Ft Main';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtLower" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtLower" IS 'Sq Ft Lower';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtAdditional" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtAdditional" IS 'Sq Ft Additional';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "HabitableResidenceYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."HabitableResidenceYN" IS 'Habitable Residence YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN cmls2."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "NumberOfProjectedUnitsTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."NumberOfProjectedUnitsTotal" IS 'Number Of Projected Units Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "VOWConsumerCommentYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."VOWConsumerCommentYN" IS 'VOW Consumer Comment YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SyndicationRemarks" text;
    COMMENT ON COLUMN cmls2."Property"."SyndicationRemarks" IS 'Syndication Remarks';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "OtherIncome" decimal;
    COMMENT ON COLUMN cmls2."Property"."OtherIncome" IS 'Other Income';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "NumberOfDriveInDoorsTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."NumberOfDriveInDoorsTotal" IS 'Number Of Drive In Doors Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Sprinkler" text;
    COMMENT ON COLUMN cmls2."Property"."Sprinkler" IS 'Sprinkler';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "TenantPays" text[];
    COMMENT ON COLUMN cmls2."Property"."TenantPays" IS 'Tenant Pays';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "LotSizeUnits" text;
    COMMENT ON COLUMN cmls2."Property"."LotSizeUnits" IS 'Lot Size Units';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "DocumentManagerTotalCount" integer;
    COMMENT ON COLUMN cmls2."Property"."DocumentManagerTotalCount" IS 'Document Manager Total Count';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "OperatingExpense" decimal;
    COMMENT ON COLUMN cmls2."Property"."OperatingExpense" IS 'Operating Expense';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PropertySubTypeSecondary" text;
    COMMENT ON COLUMN cmls2."Property"."PropertySubTypeSecondary" IS 'Property Sub Type Secondary';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PermitAddressInternetYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."PermitAddressInternetYN" IS 'Permit Address Internet YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PotentialIncome" decimal;
    COMMENT ON COLUMN cmls2."Property"."PotentialIncome" IS 'Potential Income';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PendingDate" text;
    COMMENT ON COLUMN cmls2."Property"."PendingDate" IS 'Pending Date';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "BuilderName" text;
    COMMENT ON COLUMN cmls2."Property"."BuilderName" IS 'Builder Name';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Zoning" text;
    COMMENT ON COLUMN cmls2."Property"."Zoning" IS 'Zoning';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN cmls2."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "NumberOfRentalsTotal" integer;
    COMMENT ON COLUMN cmls2."Property"."NumberOfRentalsTotal" IS 'Number Of Rentals Total';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "GrossOperatingIncome" integer;
    COMMENT ON COLUMN cmls2."Property"."GrossOperatingIncome" IS 'Gross Operating Income';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "FloodPlain" text;
    COMMENT ON COLUMN cmls2."Property"."FloodPlain" IS 'Flood Plain';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN cmls2."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "NewConstructionYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."NewConstructionYN" IS 'New Construction YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ShowingPhoneNumber" text;
    COMMENT ON COLUMN cmls2."Property"."ShowingPhoneNumber" IS 'Showing Phone Number';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "UtilitiesCommercial" text[];
    COMMENT ON COLUMN cmls2."Property"."UtilitiesCommercial" IS 'Utilities Commercial';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "OutBuildingsYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."OutBuildingsYN" IS 'Out Buildings YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Sewer" text[];
    COMMENT ON COLUMN cmls2."Property"."Sewer" IS 'Sewer';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtAvailableMaximum" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtAvailableMaximum" IS 'Sq Ft Available Maximum';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ProposedSpecialAssessmentDescription" text;
    COMMENT ON COLUMN cmls2."Property"."ProposedSpecialAssessmentDescription" IS 'Proposed Special Assessment Desc';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "DepositPet" integer;
    COMMENT ON COLUMN cmls2."Property"."DepositPet" IS 'Deposit Pet';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CanSubdivideYN" boolean;
    COMMENT ON COLUMN cmls2."Property"."CanSubdivideYN" IS 'Can Subdivide YN';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls2."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "GreenCertification" text[];
    COMMENT ON COLUMN cmls2."Property"."GreenCertification" IS 'Green Certification';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN cmls2."Property"."ListAgentMLSID" IS 'List Agent MLSID';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "SqFtAvailableMinimum" integer;
    COMMENT ON COLUMN cmls2."Property"."SqFtAvailableMinimum" IS 'Sq Ft Available Minimum';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "UnitFloorLevel" text;
    COMMENT ON COLUMN cmls2."Property"."UnitFloorLevel" IS 'Unit Floor Level';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "RValueFloor" integer;
    COMMENT ON COLUMN cmls2."Property"."RValueFloor" IS 'R Value Floor';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ArchitecturalStyle" text[];
    COMMENT ON COLUMN cmls2."Property"."ArchitecturalStyle" IS 'Architectural Style';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls2."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "RValueCeiling" integer;
    COMMENT ON COLUMN cmls2."Property"."RValueCeiling" IS 'R Value Ceiling';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "ListingType" text;
    COMMENT ON COLUMN cmls2."Property"."ListingType" IS 'Listing Type';
     
    ALTER TABLE cmls2."Property" ADD COLUMN "CoListAgentFullName" text;
    COMMENT ON COLUMN cmls2."Property"."CoListAgentFullName" IS 'Co List Agent Full Name';

    CREATE TABLE cmls2."PropertySubTable"() INHERITS (property);
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "MonthlyRent" decimal;
    COMMENT ON COLUMN cmls2."PropertySubTable"."MonthlyRent" IS 'Monthly Rent';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls2."PropertySubTable"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "InputEntryOrder" integer;
    COMMENT ON COLUMN cmls2."PropertySubTable"."InputEntryOrder" IS 'Input Entry Order';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN cmls2."PropertySubTable"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "Listing_MUI" bigint;
    COMMENT ON COLUMN cmls2."PropertySubTable"."Listing_MUI" IS 'Listing MUI';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN cmls2."PropertySubTable"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN cmls2."PropertySubTable"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "RoomType" text[];
    COMMENT ON COLUMN cmls2."PropertySubTable"."RoomType" IS 'Room Type';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN cmls2."PropertySubTable"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "matrix_unique_id" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls2."PropertySubTable"."matrix_unique_id" IS 'Matrix Unique Id';
     
    ALTER TABLE cmls2."PropertySubTable" ADD COLUMN "RoomLevel" text;
    COMMENT ON COLUMN cmls2."PropertySubTable"."RoomLevel" IS 'Room Level';
     

COMMIT;