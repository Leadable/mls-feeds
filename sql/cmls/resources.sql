BEGIN;
     
  CREATE TABLE cmls."Agent"() INHERITS (property);
    ALTER TABLE cmls."Property" ADD COLUMN "AcresCleared" decimal;
    COMMENT ON COLUMN cmls."Property"."AcresCleared" IS 'Acres Cleared';

    ALTER TABLE cmls."Property" ADD COLUMN "AcresWooded" decimal;
    COMMENT ON COLUMN cmls."Property"."AcresWooded" IS 'Acres Wooded';

    ALTER TABLE cmls."Agent" ADD COLUMN "RatePlugAccessYN" boolean;
    COMMENT ON COLUMN cmls."Agent"."RatePlugAccessYN" IS 'Rate Plug Access YN';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "FirstName" text;
    COMMENT ON COLUMN cmls."Agent"."FirstName" IS 'First Name';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN cmls."Agent"."MLSID" IS 'MLSID';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "Office_MUI" bigint;
    COMMENT ON COLUMN cmls."Agent"."Office_MUI" IS 'Office MUI';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "LastName" text;
    COMMENT ON COLUMN cmls."Agent"."LastName" IS 'Last Name';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "MiddleName" text;
    COMMENT ON COLUMN cmls."Agent"."MiddleName" IS 'Middle Name';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "Designations" text;
    COMMENT ON COLUMN cmls."Agent"."Designations" IS 'Designations';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls."Agent"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "OfficeMLSID" text;
    COMMENT ON COLUMN cmls."Agent"."OfficeMLSID" IS 'Office MLSID';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls."Agent"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "AgentStatus" text;
    COMMENT ON COLUMN cmls."Agent"."AgentStatus" IS 'Agent Status';
     
    ALTER TABLE cmls."Agent" ADD COLUMN "TollFreePhone" text;
    COMMENT ON COLUMN cmls."Agent"."TollFreePhone" IS 'Toll Free Phone';
     
  CREATE TABLE cmls."Office"() INHERITS (property);
    ALTER TABLE cmls."Office" ADD COLUMN "OfficeSyndication" text[];
    COMMENT ON COLUMN cmls."Office"."OfficeSyndication" IS 'Office Syndication';
     
    ALTER TABLE cmls."Office" ADD COLUMN "OfficeName" text;
    COMMENT ON COLUMN cmls."Office"."OfficeName" IS 'Office Name';
     
    ALTER TABLE cmls."Office" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN cmls."Office"."MLSID" IS 'MLSID';
     
    ALTER TABLE cmls."Office" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls."Office"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE cmls."Office" ADD COLUMN "OfficeStatus" text;
    COMMENT ON COLUMN cmls."Office"."OfficeStatus" IS 'Office Status';
     
    ALTER TABLE cmls."Office" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls."Office"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
  CREATE TABLE cmls."OpenHouse"() INHERITS (property);
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "EndTime" integer;
    COMMENT ON COLUMN cmls."OpenHouse"."EndTime" IS 'End Time';
     
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "OpenHouseType" text;
    COMMENT ON COLUMN cmls."OpenHouse"."OpenHouseType" IS 'Open House Type';
     
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "Refreshments" text[];
    COMMENT ON COLUMN cmls."OpenHouse"."Refreshments" IS 'Refreshments';
     
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "Listing_MUI" bigint;
    COMMENT ON COLUMN cmls."OpenHouse"."Listing_MUI" IS 'Listing MUI';
     
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "Description" text;
    COMMENT ON COLUMN cmls."OpenHouse"."Description" IS 'Description';
     
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "ActiveYN" boolean;
    COMMENT ON COLUMN cmls."OpenHouse"."ActiveYN" IS 'Active YN';
     
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "matrix_unique_id" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls."OpenHouse"."matrix_unique_id" IS 'Matrix Unique Id';
     
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "OpenHouseDate" text;
    COMMENT ON COLUMN cmls."OpenHouse"."OpenHouseDate" IS 'Open House Date';
     
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "StartTime" integer;
    COMMENT ON COLUMN cmls."OpenHouse"."StartTime" IS 'Start Time';
     
    ALTER TABLE cmls."OpenHouse" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls."OpenHouse"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
  CREATE TABLE cmls."Property"() INHERITS (property);
    ALTER TABLE cmls."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN cmls."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtMinimumLease" decimal;
    COMMENT ON COLUMN cmls."Property"."SqFtMinimumLease" IS 'Sq Ft Minimum Lease';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtThird" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtThird" IS 'Sq Ft Third';
     
    ALTER TABLE cmls."Property" ADD COLUMN "RestrictionsDescription" text;
    COMMENT ON COLUMN cmls."Property"."RestrictionsDescription" IS 'Restrictions Description';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN cmls."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CDOM" integer;
    COMMENT ON COLUMN cmls."Property"."CDOM" IS 'CDOM';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PermitInternetYN" boolean;
    COMMENT ON COLUMN cmls."Property"."PermitInternetYN" IS 'Permit Internet YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ClosePrice" decimal;
    COMMENT ON COLUMN cmls."Property"."ClosePrice" IS 'Close Price';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CloseDate" text;
    COMMENT ON COLUMN cmls."Property"."CloseDate" IS 'Close Date';
     
    ALTER TABLE cmls."Property" ADD COLUMN "FireplaceYN" boolean;
    COMMENT ON COLUMN cmls."Property"."FireplaceYN" IS 'Fireplace YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "LaundryLocation" text[];
    COMMENT ON COLUMN cmls."Property"."LaundryLocation" IS 'Laundry Location';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Heating" text[];
    COMMENT ON COLUMN cmls."Property"."Heating" IS 'Heating';
     
    ALTER TABLE cmls."Property" ADD COLUMN "DeedReference" text;
    COMMENT ON COLUMN cmls."Property"."DeedReference" IS 'Deed Reference';
     
    ALTER TABLE cmls."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN cmls."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StatusContractualSearchDate" text;
    COMMENT ON COLUMN cmls."Property"."StatusContractualSearchDate" IS 'Status Contractual Search Date';
     
    ALTER TABLE cmls."Property" ADD COLUMN "LotDimension" text;
    COMMENT ON COLUMN cmls."Property"."LotDimension" IS 'Lot Dimension';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CoListAgentMLSID" text;
    COMMENT ON COLUMN cmls."Property"."CoListAgentMLSID" IS 'Co List Agent MLSID';
     
    ALTER TABLE cmls."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN cmls."Property"."City" IS 'City';
     
    ALTER TABLE cmls."Property" ADD COLUMN "TransactionType" text;
    COMMENT ON COLUMN cmls."Property"."TransactionType" IS 'Transaction Type';
     
    ALTER TABLE cmls."Property" ADD COLUMN "AdditionalInformation" text;
    COMMENT ON COLUMN cmls."Property"."AdditionalInformation" IS 'Additional Information';
     
    ALTER TABLE cmls."Property" ADD COLUMN "RoomOther" text[];
    COMMENT ON COLUMN cmls."Property"."RoomOther" IS 'Room Other';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN cmls."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ParkingTotal" integer;
    COMMENT ON COLUMN cmls."Property"."ParkingTotal" IS 'Parking Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StreetNumberNumeric" integer;
    COMMENT ON COLUMN cmls."Property"."StreetNumberNumeric" IS 'Street Number Numeric';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ExteriorConstruction" text[];
    COMMENT ON COLUMN cmls."Property"."ExteriorConstruction" IS 'Exterior Construction';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN cmls."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ProposedSpecialAssessmentYN" boolean;
    COMMENT ON COLUMN cmls."Property"."ProposedSpecialAssessmentYN" IS 'Proposed Special Assessment YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CommercialCooling" text[];
    COMMENT ON COLUMN cmls."Property"."CommercialCooling" IS 'Commercial Cooling';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN cmls."Property"."ListOfficePhone" IS 'List Office Phone';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Equipment" text[];
    COMMENT ON COLUMN cmls."Property"."Equipment" IS 'Equipment';
     
    ALTER TABLE cmls."Property" ADD COLUMN "FinancingInformation" text;
    COMMENT ON COLUMN cmls."Property"."FinancingInformation" IS 'Financing Information';
     
    ALTER TABLE cmls."Property" ADD COLUMN "LotFeatures" text[];
    COMMENT ON COLUMN cmls."Property"."LotFeatures" IS 'Lot Features';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtUpper" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtUpper" IS 'Sq Ft Upper';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN cmls."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE cmls."Property" ADD COLUMN "LeaseTerm" text[];
    COMMENT ON COLUMN cmls."Property"."LeaseTerm" IS 'Lease Term';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Furnished" text;
    COMMENT ON COLUMN cmls."Property"."Furnished" IS 'Furnished';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Easement" text[];
    COMMENT ON COLUMN cmls."Property"."Easement" IS 'Easement';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CeilingHeightIN" integer;
    COMMENT ON COLUMN cmls."Property"."CeilingHeightIN" IS 'Ceiling Height IN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Roof" text[];
    COMMENT ON COLUMN cmls."Property"."Roof" IS 'Roof';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtUnheatedLower" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtUnheatedLower" IS 'Sq Ft Unheated Lower';
     
    ALTER TABLE cmls."Property" ADD COLUMN "NumberOfUnitsBuildings" integer;
    COMMENT ON COLUMN cmls."Property"."NumberOfUnitsBuildings" IS 'Number Of Units Buildings';
     
    ALTER TABLE cmls."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN cmls."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE cmls."Property" ADD COLUMN "FireplaceDescription" text[];
    COMMENT ON COLUMN cmls."Property"."FireplaceDescription" IS 'Fireplace Description';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SellingOffice_MUI" bigint;
    COMMENT ON COLUMN cmls."Property"."SellingOffice_MUI" IS 'Selling Office MUI';
     
    ALTER TABLE cmls."Property" ADD COLUMN "WaterHeater" text[];
    COMMENT ON COLUMN cmls."Property"."WaterHeater" IS 'Water Heater';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PropertyFeatures" text[];
    COMMENT ON COLUMN cmls."Property"."PropertyFeatures" IS 'Property Features';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN cmls."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN cmls."Property"."StreetDirSuffix" IS 'Street Dir Suffix';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtUnheatedBasement" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtUnheatedBasement" IS 'Sq Ft Unheated Basement';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SecondLivingQuarters" text[];
    COMMENT ON COLUMN cmls."Property"."SecondLivingQuarters" IS 'Second Living Quarters';

    ALTER TABLE cmls."Property" ADD COLUMN "SecondLivingQuartersHLA" integer;
    COMMENT ON COLUMN cmls."Property"."SecondLivingQuartersHLA" IS 'Second Living Quarters HLA';

    ALTER TABLE cmls."Property" ADD COLUMN "SecondLivingQuartersSqFt" integer;
    COMMENT ON COLUMN cmls."Property"."SecondLivingQuartersSqFt" IS 'Second Living Quarters Sq Ft';
     
    ALTER TABLE cmls."Property" ADD COLUMN "AssociationFee" decimal;
    COMMENT ON COLUMN cmls."Property"."AssociationFee" IS 'Association Fee';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CeilingHeightFT" integer;
    COMMENT ON COLUMN cmls."Property"."CeilingHeightFT" IS 'Ceiling Height FT';
     
    ALTER TABLE cmls."Property" ADD COLUMN "VacancyRate" integer;
    COMMENT ON COLUMN cmls."Property"."VacancyRate" IS 'Vacancy Rate';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN cmls."Property"."ExteriorFeatures" IS 'Exterior Features';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN cmls."Property"."Status" IS 'Status';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Inclusions" text[];
    COMMENT ON COLUMN cmls."Property"."Inclusions" IS 'Inclusions';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN cmls."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CoListAgent_MUI" bigint;
    COMMENT ON COLUMN cmls."Property"."CoListAgent_MUI" IS 'Co List Agent MUI';
     
    ALTER TABLE cmls."Property" ADD COLUMN "AssociationFeeFrequency" text;
    COMMENT ON COLUMN cmls."Property"."AssociationFeeFrequency" IS 'Association Fee Frequency';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CrossStreet" text;
    COMMENT ON COLUMN cmls."Property"."CrossStreet" IS 'Cross Street';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN cmls."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Model" text;
    COMMENT ON COLUMN cmls."Property"."Model" IS 'Model';
     
    ALTER TABLE cmls."Property" ADD COLUMN "VOWAVMYN" boolean;
    COMMENT ON COLUMN cmls."Property"."VOWAVMYN" IS 'VOWAVMYN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "RoadFrontage" integer;
    COMMENT ON COLUMN cmls."Property"."RoadFrontage" IS 'Road Frontage';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SellingAgent_MUI" bigint;
    COMMENT ON COLUMN cmls."Property"."SellingAgent_MUI" IS 'Selling Agent MUI';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CeilingHeight" decimal;
    COMMENT ON COLUMN cmls."Property"."CeilingHeight" IS 'Ceiling Height';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Flooring" text[];
    COMMENT ON COLUMN cmls."Property"."Flooring" IS 'Flooring';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtMaximumLease" decimal;
    COMMENT ON COLUMN cmls."Property"."SqFtMaximumLease" IS 'Sq Ft Maximum Lease';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListingFinancing" text[];
    COMMENT ON COLUMN cmls."Property"."ListingFinancing" IS 'Listing Financing';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ConstructionStatus" text;
    COMMENT ON COLUMN cmls."Property"."ConstructionStatus" IS 'Construction Status';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtUnheatedMain" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtUnheatedMain" IS 'Sq Ft Unheated Main';
     
    ALTER TABLE cmls."Property" ADD COLUMN "GrossScheduledIncome" decimal;
    COMMENT ON COLUMN cmls."Property"."GrossScheduledIncome" IS 'Gross Scheduled Income';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Restrictions" text[];
    COMMENT ON COLUMN cmls."Property"."Restrictions" IS 'Restrictions';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Table" text;
    COMMENT ON COLUMN cmls."Property"."Table" IS 'Table';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN cmls."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ElementarySchool" text;
    COMMENT ON COLUMN cmls."Property"."ElementarySchool" IS 'Elementary School';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN cmls."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE cmls."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN cmls."Property"."DOM" IS 'DOM';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StreetViewParam" text;
    COMMENT ON COLUMN cmls."Property"."StreetViewParam" IS 'Street View Param';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN cmls."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SpecialListingConditions" text[];
    COMMENT ON COLUMN cmls."Property"."SpecialListingConditions" IS 'Special Listing Conditions';
     
    ALTER TABLE cmls."Property" ADD COLUMN "FoundationDetails" text[];
    COMMENT ON COLUMN cmls."Property"."FoundationDetails" IS 'Foundation Details';
     
    ALTER TABLE cmls."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN cmls."Property"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtUnheatedUpper" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtUnheatedUpper" IS 'Sq Ft Unheated Upper';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtBasement" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtBasement" IS 'Sq Ft Basement';
     
    ALTER TABLE cmls."Property" ADD COLUMN "GreenHERSScore" integer;
    COMMENT ON COLUMN cmls."Property"."GreenHERSScore" IS 'Green HERS Score';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CorrectionCount" integer;
    COMMENT ON COLUMN cmls."Property"."CorrectionCount" IS 'Correction Count';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Documents" text[];
    COMMENT ON COLUMN cmls."Property"."Documents" IS 'Documents';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtUnheatedTotal" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtUnheatedTotal" IS 'Sq Ft Unheated Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN cmls."Property"."ListAgentDirectWorkPhone" IS 'List Agent Direct Work Phone';
     
    ALTER TABLE cmls."Property" ADD COLUMN "LotSizeArea" decimal;
    COMMENT ON COLUMN cmls."Property"."LotSizeArea" IS 'Lot Size Area';
     
    ALTER TABLE cmls."Property" ADD COLUMN "RATIO_CurrentPrice_By_Acre" decimal;
    COMMENT ON COLUMN cmls."Property"."RATIO_CurrentPrice_By_Acre" IS 'RATIO Current Price By Acre';
     
    ALTER TABLE cmls."Property" ADD COLUMN "MiddleOrJuniorSchool" text;
    COMMENT ON COLUMN cmls."Property"."MiddleOrJuniorSchool" IS 'Middle Or Junior School';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtTotal" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtTotal" IS 'Sq Ft Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SubdivisionName" text;
    COMMENT ON COLUMN cmls."Property"."SubdivisionName" IS 'Subdivision Name';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN cmls."Property"."StreetSuffix" IS 'Street Suffix';
     
    ALTER TABLE cmls."Property" ADD COLUMN "OwnerAgentYN" boolean;
    COMMENT ON COLUMN cmls."Property"."OwnerAgentYN" IS 'Owner Agent YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN cmls."Property"."StreetDirPrefix" IS 'Street Dir Prefix';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN cmls."Property"."PropertySubType" IS 'Property Sub Type';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CommunityFeatures" text[];
    COMMENT ON COLUMN cmls."Property"."CommunityFeatures" IS 'Community Features';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SellingAgentMLSID" text;
    COMMENT ON COLUMN cmls."Property"."SellingAgentMLSID" IS 'Selling Agent MLSID';
     
    ALTER TABLE cmls."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN cmls."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN cmls."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE cmls."Property" ADD COLUMN "HighSchool" text;
    COMMENT ON COLUMN cmls."Property"."HighSchool" IS 'High School';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN cmls."Property"."StateOrProvince" IS 'State Or Province';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ComplexName" text;
    COMMENT ON COLUMN cmls."Property"."ComplexName" IS 'Complex Name';
     
    ALTER TABLE cmls."Property" ADD COLUMN "GeocodeSource" text;
    COMMENT ON COLUMN cmls."Property"."GeocodeSource" IS 'Geocode Source';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Miscellaneous" text[];
    COMMENT ON COLUMN cmls."Property"."Miscellaneous" IS 'Miscellaneous';
     
    ALTER TABLE cmls."Property" ADD COLUMN "VirtualTourURLUnbranded" text;
    COMMENT ON COLUMN cmls."Property"."VirtualTourURLUnbranded" IS 'Virtual Tour URL Unbranded';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SellerContribution" decimal;
    COMMENT ON COLUMN cmls."Property"."SellerContribution" IS 'Seller Contribution';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StoriesTotal" integer;
    COMMENT ON COLUMN cmls."Property"."StoriesTotal" IS 'Stories Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "NumberOfDocksTotal" integer;
    COMMENT ON COLUMN cmls."Property"."NumberOfDocksTotal" IS 'Number Of Docks Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Parking" text[];
    COMMENT ON COLUMN cmls."Property"."Parking" IS 'Parking';
     
    ALTER TABLE cmls."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN cmls."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtBuildingMinimum" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtBuildingMinimum" IS 'Sq Ft Building Minimum';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListingServiceYN" boolean;
    COMMENT ON COLUMN cmls."Property"."ListingServiceYN" IS 'Listing Service YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Driveway" text[];
    COMMENT ON COLUMN cmls."Property"."Driveway" IS 'Driveway';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN cmls."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE cmls."Property" ADD COLUMN "InteriorFeatures" text[];
    COMMENT ON COLUMN cmls."Property"."InteriorFeatures" IS 'Interior Features';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PublicRemarks" text;
    COMMENT ON COLUMN cmls."Property"."PublicRemarks" IS 'Public Remarks';
     
    ALTER TABLE cmls."Property" ADD COLUMN "EntryLevel" text;
    COMMENT ON COLUMN cmls."Property"."EntryLevel" IS 'Entry Level';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtUnheatedThird" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtUnheatedThird" IS 'Sq Ft Unheated Third';
     
    ALTER TABLE cmls."Property" ADD COLUMN "RailService" text;
    COMMENT ON COLUMN cmls."Property"."RailService" IS 'Rail Service';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ContactName" text;
    COMMENT ON COLUMN cmls."Property"."ContactName" IS 'Contact Name';
     
    ALTER TABLE cmls."Property" ADD COLUMN "InsideCityYN" boolean;
    COMMENT ON COLUMN cmls."Property"."InsideCityYN" IS 'Inside City YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN cmls."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE cmls."Property" ADD COLUMN "AvailableDate" text;
    COMMENT ON COLUMN cmls."Property"."AvailableDate" IS 'Available Date';
     
    ALTER TABLE cmls."Property" ADD COLUMN "NumberOfUnitsTotal" integer;
    COMMENT ON COLUMN cmls."Property"."NumberOfUnitsTotal" IS 'Number Of Units Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ZoningSpecification" text;
    COMMENT ON COLUMN cmls."Property"."ZoningSpecification" IS 'Zoning Specification';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SellingOfficeMLSID" text;
    COMMENT ON COLUMN cmls."Property"."SellingOfficeMLSID" IS 'Selling Office MLSID';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PetsAllowed" text;
    COMMENT ON COLUMN cmls."Property"."PetsAllowed" IS 'Pets Allowed';
     
    ALTER TABLE cmls."Property" ADD COLUMN "DoorsWindows" text[];
    COMMENT ON COLUMN cmls."Property"."DoorsWindows" IS 'Doors Windows';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PlatBookSlide" text;
    COMMENT ON COLUMN cmls."Property"."PlatBookSlide" IS 'Plat Book Slide';
     
    ALTER TABLE cmls."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN cmls."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PermitSyndicationYN" boolean;
    COMMENT ON COLUMN cmls."Property"."PermitSyndicationYN" IS 'Permit Syndication YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PlatReferenceSectionPages" text;
    COMMENT ON COLUMN cmls."Property"."PlatReferenceSectionPages" IS 'Plat Reference Section Pages';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CommercialHeating" text[];
    COMMENT ON COLUMN cmls."Property"."CommercialHeating" IS 'Commercial Heating';
     
    ALTER TABLE cmls."Property" ADD COLUMN "RValueWall" integer;
    COMMENT ON COLUMN cmls."Property"."RValueWall" IS 'R Value Wall';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Country" text;
    COMMENT ON COLUMN cmls."Property"."Country" IS 'Country';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Water" text[];
    COMMENT ON COLUMN cmls."Property"."Water" IS 'Water';
     
    ALTER TABLE cmls."Property" ADD COLUMN "LandIncludedYN" boolean;
    COMMENT ON COLUMN cmls."Property"."LandIncludedYN" IS 'Land Included YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtMain" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtMain" IS 'Sq Ft Main';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtLower" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtLower" IS 'Sq Ft Lower';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtAdditional" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtAdditional" IS 'Sq Ft Additional';
     
    ALTER TABLE cmls."Property" ADD COLUMN "HabitableResidenceYN" boolean;
    COMMENT ON COLUMN cmls."Property"."HabitableResidenceYN" IS 'Habitable Residence YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN cmls."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE cmls."Property" ADD COLUMN "NumberOfProjectedUnitsTotal" integer;
    COMMENT ON COLUMN cmls."Property"."NumberOfProjectedUnitsTotal" IS 'Number Of Projected Units Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "VOWConsumerCommentYN" boolean;
    COMMENT ON COLUMN cmls."Property"."VOWConsumerCommentYN" IS 'VOW Consumer Comment YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SyndicationRemarks" text;
    COMMENT ON COLUMN cmls."Property"."SyndicationRemarks" IS 'Syndication Remarks';
     
    ALTER TABLE cmls."Property" ADD COLUMN "OtherIncome" decimal;
    COMMENT ON COLUMN cmls."Property"."OtherIncome" IS 'Other Income';
     
    ALTER TABLE cmls."Property" ADD COLUMN "NumberOfDriveInDoorsTotal" integer;
    COMMENT ON COLUMN cmls."Property"."NumberOfDriveInDoorsTotal" IS 'Number Of Drive In Doors Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Sprinkler" text;
    COMMENT ON COLUMN cmls."Property"."Sprinkler" IS 'Sprinkler';
     
    ALTER TABLE cmls."Property" ADD COLUMN "TenantPays" text[];
    COMMENT ON COLUMN cmls."Property"."TenantPays" IS 'Tenant Pays';
     
    ALTER TABLE cmls."Property" ADD COLUMN "LotSizeUnits" text;
    COMMENT ON COLUMN cmls."Property"."LotSizeUnits" IS 'Lot Size Units';
     
    ALTER TABLE cmls."Property" ADD COLUMN "DocumentManagerTotalCount" integer;
    COMMENT ON COLUMN cmls."Property"."DocumentManagerTotalCount" IS 'Document Manager Total Count';
     
    ALTER TABLE cmls."Property" ADD COLUMN "OperatingExpense" decimal;
    COMMENT ON COLUMN cmls."Property"."OperatingExpense" IS 'Operating Expense';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PropertySubTypeSecondary" text;
    COMMENT ON COLUMN cmls."Property"."PropertySubTypeSecondary" IS 'Property Sub Type Secondary';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PermitAddressInternetYN" boolean;
    COMMENT ON COLUMN cmls."Property"."PermitAddressInternetYN" IS 'Permit Address Internet YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PotentialIncome" decimal;
    COMMENT ON COLUMN cmls."Property"."PotentialIncome" IS 'Potential Income';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PendingDate" text;
    COMMENT ON COLUMN cmls."Property"."PendingDate" IS 'Pending Date';
     
    ALTER TABLE cmls."Property" ADD COLUMN "BuilderName" text;
    COMMENT ON COLUMN cmls."Property"."BuilderName" IS 'Builder Name';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Zoning" text;
    COMMENT ON COLUMN cmls."Property"."Zoning" IS 'Zoning';
     
    ALTER TABLE cmls."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN cmls."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE cmls."Property" ADD COLUMN "NumberOfRentalsTotal" integer;
    COMMENT ON COLUMN cmls."Property"."NumberOfRentalsTotal" IS 'Number Of Rentals Total';
     
    ALTER TABLE cmls."Property" ADD COLUMN "GrossOperatingIncome" integer;
    COMMENT ON COLUMN cmls."Property"."GrossOperatingIncome" IS 'Gross Operating Income';
     
    ALTER TABLE cmls."Property" ADD COLUMN "FloodPlain" text;
    COMMENT ON COLUMN cmls."Property"."FloodPlain" IS 'Flood Plain';
     
    ALTER TABLE cmls."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN cmls."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE cmls."Property" ADD COLUMN "NewConstructionYN" boolean;
    COMMENT ON COLUMN cmls."Property"."NewConstructionYN" IS 'New Construction YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ShowingPhoneNumber" text;
    COMMENT ON COLUMN cmls."Property"."ShowingPhoneNumber" IS 'Showing Phone Number';
     
    ALTER TABLE cmls."Property" ADD COLUMN "UtilitiesCommercial" text[];
    COMMENT ON COLUMN cmls."Property"."UtilitiesCommercial" IS 'Utilities Commercial';
     
    ALTER TABLE cmls."Property" ADD COLUMN "OutBuildingsYN" boolean;
    COMMENT ON COLUMN cmls."Property"."OutBuildingsYN" IS 'Out Buildings YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Sewer" text[];
    COMMENT ON COLUMN cmls."Property"."Sewer" IS 'Sewer';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtAvailableMaximum" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtAvailableMaximum" IS 'Sq Ft Available Maximum';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ProposedSpecialAssessmentDescription" text;
    COMMENT ON COLUMN cmls."Property"."ProposedSpecialAssessmentDescription" IS 'Proposed Special Assessment Desc';
     
    ALTER TABLE cmls."Property" ADD COLUMN "DepositPet" integer;
    COMMENT ON COLUMN cmls."Property"."DepositPet" IS 'Deposit Pet';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CanSubdivideYN" boolean;
    COMMENT ON COLUMN cmls."Property"."CanSubdivideYN" IS 'Can Subdivide YN';
     
    ALTER TABLE cmls."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE cmls."Property" ADD COLUMN "GreenCertification" text[];
    COMMENT ON COLUMN cmls."Property"."GreenCertification" IS 'Green Certification';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN cmls."Property"."ListAgentMLSID" IS 'List Agent MLSID';
     
    ALTER TABLE cmls."Property" ADD COLUMN "SqFtAvailableMinimum" integer;
    COMMENT ON COLUMN cmls."Property"."SqFtAvailableMinimum" IS 'Sq Ft Available Minimum';
     
    ALTER TABLE cmls."Property" ADD COLUMN "UnitFloorLevel" text;
    COMMENT ON COLUMN cmls."Property"."UnitFloorLevel" IS 'Unit Floor Level';
     
    ALTER TABLE cmls."Property" ADD COLUMN "RValueFloor" integer;
    COMMENT ON COLUMN cmls."Property"."RValueFloor" IS 'R Value Floor';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ArchitecturalStyle" text[];
    COMMENT ON COLUMN cmls."Property"."ArchitecturalStyle" IS 'Architectural Style';
     
    ALTER TABLE cmls."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE cmls."Property" ADD COLUMN "RValueCeiling" integer;
    COMMENT ON COLUMN cmls."Property"."RValueCeiling" IS 'R Value Ceiling';
     
    ALTER TABLE cmls."Property" ADD COLUMN "ListingType" text;
    COMMENT ON COLUMN cmls."Property"."ListingType" IS 'Listing Type';
     
    ALTER TABLE cmls."Property" ADD COLUMN "CoListAgentFullName" text;
    COMMENT ON COLUMN cmls."Property"."CoListAgentFullName" IS 'Co List Agent Full Name';

    CREATE TABLE cmls."PropertySubTable"() INHERITS (property);
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "MonthlyRent" decimal;
    COMMENT ON COLUMN cmls."PropertySubTable"."MonthlyRent" IS 'Monthly Rent';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN cmls."PropertySubTable"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "InputEntryOrder" integer;
    COMMENT ON COLUMN cmls."PropertySubTable"."InputEntryOrder" IS 'Input Entry Order';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN cmls."PropertySubTable"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "Listing_MUI" bigint;
    COMMENT ON COLUMN cmls."PropertySubTable"."Listing_MUI" IS 'Listing MUI';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN cmls."PropertySubTable"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN cmls."PropertySubTable"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "RoomType" text[];
    COMMENT ON COLUMN cmls."PropertySubTable"."RoomType" IS 'Room Type';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN cmls."PropertySubTable"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "matrix_unique_id" bigint PRIMARY KEY;
    COMMENT ON COLUMN cmls."PropertySubTable"."matrix_unique_id" IS 'Matrix Unique Id';
     
    ALTER TABLE cmls."PropertySubTable" ADD COLUMN "RoomLevel" text;
    COMMENT ON COLUMN cmls."PropertySubTable"."RoomLevel" IS 'Room Level';
     

COMMIT;