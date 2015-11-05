BEGIN;

  CREATE TABLE mibor."Property"() INHERITS (property);
    ALTER TABLE mibor."Property" ADD COLUMN "Acres" text;
    COMMENT ON COLUMN mibor."Property"."Acres" IS 'Acres';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ActiveOpenHouseCount" integer;
    COMMENT ON COLUMN mibor."Property"."ActiveOpenHouseCount" IS 'Active Open House Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ActualExpenses" integer;
    COMMENT ON COLUMN mibor."Property"."ActualExpenses" IS 'Actual Expenses';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AddressonPublicInternet" boolean;
    COMMENT ON COLUMN mibor."Property"."AddressonPublicInternet" IS 'Addresson Public Internet';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AffectedbyDisclosures" boolean;
    COMMENT ON COLUMN mibor."Property"."AffectedbyDisclosures" IS 'Affectedby Disclosures';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AgentRemarks" text;
    COMMENT ON COLUMN mibor."Property"."AgentRemarks" IS 'Agent Remarks';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Amenities" text;
    COMMENT ON COLUMN mibor."Property"."Amenities" IS 'Amenities';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Anchor" text[];
    COMMENT ON COLUMN mibor."Property"."Anchor" IS 'Anchor';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Appliances" text[];
    COMMENT ON COLUMN mibor."Property"."Appliances" IS 'Appliances';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ArchitecturalStyle" text[];
    COMMENT ON COLUMN mibor."Property"."ArchitecturalStyle" IS 'Architectural Style';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Area" text;
    COMMENT ON COLUMN mibor."Property"."Area" IS 'Area';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AreasInterior" text[];
    COMMENT ON COLUMN mibor."Property"."AreasInterior" IS 'Areas Interior';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Assessment" text[];
    COMMENT ON COLUMN mibor."Property"."Assessment" IS 'Assessment';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AssocMaintdBldgExterior" boolean;
    COMMENT ON COLUMN mibor."Property"."AssocMaintdBldgExterior" IS 'Assoc Maintd Bldg Exterior';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AuctionCompanyLicenseNum" text;
    COMMENT ON COLUMN mibor."Property"."AuctionCompanyLicenseNum" IS 'Auction Company License Num';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AuctionCompanyName" text;
    COMMENT ON COLUMN mibor."Property"."AuctionCompanyName" IS 'Auction Company Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AuctionDate" text;
    COMMENT ON COLUMN mibor."Property"."AuctionDate" IS 'Auction Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AuctionManagersLicense" text;
    COMMENT ON COLUMN mibor."Property"."AuctionManagersLicense" IS 'Auction Managers License';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AuctionManagersName" text;
    COMMENT ON COLUMN mibor."Property"."AuctionManagersName" IS 'Auction Managers Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AuctionTime" text;
    COMMENT ON COLUMN mibor."Property"."AuctionTime" IS 'Auction Time';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AuctionType" text;
    COMMENT ON COLUMN mibor."Property"."AuctionType" IS 'Auction Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AutoParking" integer;
    COMMENT ON COLUMN mibor."Property"."AutoParking" IS 'Auto Parking';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AutoParkingCIN" text;
    COMMENT ON COLUMN mibor."Property"."AutoParkingCIN" IS 'Auto Parking CIN';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AutoSurface" text;
    COMMENT ON COLUMN mibor."Property"."AutoSurface" IS 'Auto Surface';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AvailableforShowing" boolean;
    COMMENT ON COLUMN mibor."Property"."AvailableforShowing" IS 'Availablefor Showing';
     
    ALTER TABLE mibor."Property" ADD COLUMN "AvailableforShowingDate" text;
    COMMENT ON COLUMN mibor."Property"."AvailableforShowingDate" IS 'Availablefor Showing Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BACAmount" text;
    COMMENT ON COLUMN mibor."Property"."BACAmount" IS 'BAC Amount';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BackOnMarketDate" text;
    COMMENT ON COLUMN mibor."Property"."BackOnMarketDate" IS 'Back On Market Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Basement" boolean;
    COMMENT ON COLUMN mibor."Property"."Basement" IS 'Basement';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BasementDescription" text[];
    COMMENT ON COLUMN mibor."Property"."BasementDescription" IS 'Basement Description';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BathAreas" decimal;
    COMMENT ON COLUMN mibor."Property"."BathAreas" IS 'Bath Areas';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN mibor."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN mibor."Property"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN mibor."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BaySize" text;
    COMMENT ON COLUMN mibor."Property"."BaySize" IS 'Bay Size';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN mibor."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BuilderProjectContrName" text;
    COMMENT ON COLUMN mibor."Property"."BuilderProjectContrName" IS 'Builder Project Contr Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BuildingCertification" text[];
    COMMENT ON COLUMN mibor."Property"."BuildingCertification" IS 'Building Certification';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BuildingInformation" text[];
    COMMENT ON COLUMN mibor."Property"."BuildingInformation" IS 'Building Information';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BuildingLevels" text[];
    COMMENT ON COLUMN mibor."Property"."BuildingLevels" IS 'Building Levels';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BuildingSize" integer;
    COMMENT ON COLUMN mibor."Property"."BuildingSize" IS 'Building Size';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BuildingType" text[];
    COMMENT ON COLUMN mibor."Property"."BuildingType" IS 'Building Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BuildingUtilities" text[];
    COMMENT ON COLUMN mibor."Property"."BuildingUtilities" IS 'Building Utilities';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Buildings" text[];
    COMMENT ON COLUMN mibor."Property"."Buildings" IS 'Buildings';
     
    ALTER TABLE mibor."Property" ADD COLUMN "BuyerAgencyCommission" text;
    COMMENT ON COLUMN mibor."Property"."BuyerAgencyCommission" IS 'Buyer Agency Commission';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CAMExpenses" integer;
    COMMENT ON COLUMN mibor."Property"."CAMExpenses" IS 'CAM Expenses';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CAMExpensesSF" decimal;
    COMMENT ON COLUMN mibor."Property"."CAMExpensesSF" IS 'CAM Expenses SF';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CDOM" integer;
    COMMENT ON COLUMN mibor."Property"."CDOM" IS 'CDOM';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CancelledDate" text;
    COMMENT ON COLUMN mibor."Property"."CancelledDate" IS 'Cancelled Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CapRate" decimal;
    COMMENT ON COLUMN mibor."Property"."CapRate" IS 'Cap Rate';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CeilingHeight" decimal;
    COMMENT ON COLUMN mibor."Property"."CeilingHeight" IS 'Ceiling Height';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CeilingHeight2" decimal;
    COMMENT ON COLUMN mibor."Property"."CeilingHeight2" IS 'Ceiling Height 2';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CenterName" text;
    COMMENT ON COLUMN mibor."Property"."CenterName" IS 'Center Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CertificationDate" text;
    COMMENT ON COLUMN mibor."Property"."CertificationDate" IS 'Certification Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CertificationRating" text;
    COMMENT ON COLUMN mibor."Property"."CertificationRating" IS 'Certification Rating';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CertifyingOrganization" text;
    COMMENT ON COLUMN mibor."Property"."CertifyingOrganization" IS 'Certifying Organization';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CircumstanceofSale" text;
    COMMENT ON COLUMN mibor."Property"."CircumstanceofSale" IS 'Circumstanceof Sale';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CircumstancesreSale" text;
    COMMENT ON COLUMN mibor."Property"."CircumstancesreSale" IS 'Circumstancesre Sale';
     
    ALTER TABLE mibor."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN mibor."Property"."City" IS 'City';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CloseDate" text;
    COMMENT ON COLUMN mibor."Property"."CloseDate" IS 'Close Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ClosePrice" decimal;
    COMMENT ON COLUMN mibor."Property"."ClosePrice" IS 'Close Price';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN mibor."Property"."CoListAgentDirectWorkPhone" IS 'Co List Agent Direct Work Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListAgentEmail" text;
    COMMENT ON COLUMN mibor."Property"."CoListAgentEmail" IS 'Co List Agent Email';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListAgentFullName" text;
    COMMENT ON COLUMN mibor."Property"."CoListAgentFullName" IS 'Co List Agent Full Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListAgentMLSID" text;
    COMMENT ON COLUMN mibor."Property"."CoListAgentMLSID" IS 'Co List Agent MLSID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListAgentPreferredPhone" text;
    COMMENT ON COLUMN mibor."Property"."CoListAgentPreferredPhone" IS 'Co List Agent Preferred Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListAgent_MUI" bigint;
    COMMENT ON COLUMN mibor."Property"."CoListAgent_MUI" IS 'Co List Agent MUI';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListOfficeMLSID" text;
    COMMENT ON COLUMN mibor."Property"."CoListOfficeMLSID" IS 'Co List Office MLSID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListOfficeName" text;
    COMMENT ON COLUMN mibor."Property"."CoListOfficeName" IS 'Co List Office Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListOfficePhone" text;
    COMMENT ON COLUMN mibor."Property"."CoListOfficePhone" IS 'Co List Office Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoListOffice_MUI" bigint;
    COMMENT ON COLUMN mibor."Property"."CoListOffice_MUI" IS 'Co List Office MUI';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoSellingAgentDirectWorkPhone" text;
    COMMENT ON COLUMN mibor."Property"."CoSellingAgentDirectWorkPhone" IS 'Co Selling Agent Direct Work Pho';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoSellingAgentEmail" text;
    COMMENT ON COLUMN mibor."Property"."CoSellingAgentEmail" IS 'Co Selling Agent Email';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoSellingAgentFullName" text;
    COMMENT ON COLUMN mibor."Property"."CoSellingAgentFullName" IS 'Co Selling Agent Full Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoSellingAgentMLSID" text;
    COMMENT ON COLUMN mibor."Property"."CoSellingAgentMLSID" IS 'Co Selling Agent MLSID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoSellingAgent_MUI" bigint;
    COMMENT ON COLUMN mibor."Property"."CoSellingAgent_MUI" IS 'Co Selling Agent MUI';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoSellingOfficeMLSID" text;
    COMMENT ON COLUMN mibor."Property"."CoSellingOfficeMLSID" IS 'Co Selling Office MLSID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoSellingOfficeName" text;
    COMMENT ON COLUMN mibor."Property"."CoSellingOfficeName" IS 'Co Selling Office Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoSellingOfficePhone" text;
    COMMENT ON COLUMN mibor."Property"."CoSellingOfficePhone" IS 'Co Selling Office Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CoSellingOffice_MUI" bigint;
    COMMENT ON COLUMN mibor."Property"."CoSellingOffice_MUI" IS 'Co Selling Office MUI';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CommissionDisclosures" text;
    COMMENT ON COLUMN mibor."Property"."CommissionDisclosures" IS 'Commission Disclosures';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ConditionalDate" text;
    COMMENT ON COLUMN mibor."Property"."ConditionalDate" IS 'Conditional Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CondoDescriptionLocation" text[];
    COMMENT ON COLUMN mibor."Property"."CondoDescriptionLocation" IS 'Condo Description Location';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Construction" text;
    COMMENT ON COLUMN mibor."Property"."Construction" IS 'Construction';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ConstructionStage" text;
    COMMENT ON COLUMN mibor."Property"."ConstructionStage" IS 'Construction Stage';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ConstructionStatus" text;
    COMMENT ON COLUMN mibor."Property"."ConstructionStatus" IS 'Construction Status';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ContactNum1Name" text;
    COMMENT ON COLUMN mibor."Property"."ContactNum1Name" IS 'Contact Num 1 Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ContactNum1Phone" text;
    COMMENT ON COLUMN mibor."Property"."ContactNum1Phone" IS 'Contact Num 1 Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ContactNum1Type" text[];
    COMMENT ON COLUMN mibor."Property"."ContactNum1Type" IS 'Contact Num 1 Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ContactNum2Name" text;
    COMMENT ON COLUMN mibor."Property"."ContactNum2Name" IS 'Contact Num 2 Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ContactNum2Phone" text;
    COMMENT ON COLUMN mibor."Property"."ContactNum2Phone" IS 'Contact Num 2 Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ContactNum2Type" text[];
    COMMENT ON COLUMN mibor."Property"."ContactNum2Type" IS 'Contact Num 2 Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Contingency" text;
    COMMENT ON COLUMN mibor."Property"."Contingency" IS 'Contingency';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ContingentDate" text;
    COMMENT ON COLUMN mibor."Property"."ContingentDate" IS 'Contingent Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Conversion" boolean;
    COMMENT ON COLUMN mibor."Property"."Conversion" IS 'Conversion';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Cool" text[];
    COMMENT ON COLUMN mibor."Property"."Cool" IS 'Cool';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CorrectionCount" integer;
    COMMENT ON COLUMN mibor."Property"."CorrectionCount" IS 'Correction Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN mibor."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE mibor."Property" ADD COLUMN "CurrentPrice" decimal;
    COMMENT ON COLUMN mibor."Property"."CurrentPrice" IS 'Current Price';
     
    ALTER TABLE mibor."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN mibor."Property"."DOM" IS 'DOM';
     
    ALTER TABLE mibor."Property" ADD COLUMN "DateAvailable" text;
    COMMENT ON COLUMN mibor."Property"."DateAvailable" IS 'Date Available';
     
    ALTER TABLE mibor."Property" ADD COLUMN "DevStatus" text[];
    COMMENT ON COLUMN mibor."Property"."DevStatus" IS 'Dev Status';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN mibor."Property"."Directions" IS 'Directions';
     
    ALTER TABLE mibor."Property" ADD COLUMN "DisclosureOther" text[];
    COMMENT ON COLUMN mibor."Property"."DisclosureOther" IS 'Disclosure Other';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Disclosures" text;
    COMMENT ON COLUMN mibor."Property"."Disclosures" IS 'Disclosures';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Divisible" boolean;
    COMMENT ON COLUMN mibor."Property"."Divisible" IS 'Divisible';
     
    ALTER TABLE mibor."Property" ADD COLUMN "DocumentManagerMLSCount" integer;
    COMMENT ON COLUMN mibor."Property"."DocumentManagerMLSCount" IS 'Document Manager MLS Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "DocumentManagerPublicCount" integer;
    COMMENT ON COLUMN mibor."Property"."DocumentManagerPublicCount" IS 'Document Manager Public Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "DocumentManagerTotalCount" integer;
    COMMENT ON COLUMN mibor."Property"."DocumentManagerTotalCount" IS 'Document Manager Total Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Documents" text[];
    COMMENT ON COLUMN mibor."Property"."Documents" IS 'Documents';
     
    ALTER TABLE mibor."Property" ADD COLUMN "EasementsPrivate" boolean;
    COMMENT ON COLUMN mibor."Property"."EasementsPrivate" IS 'Easements Private';
     
    ALTER TABLE mibor."Property" ADD COLUMN "EasementsPublic" boolean;
    COMMENT ON COLUMN mibor."Property"."EasementsPublic" IS 'Easements Public';
     
    ALTER TABLE mibor."Property" ADD COLUMN "EatingArea" text[];
    COMMENT ON COLUMN mibor."Property"."EatingArea" IS 'Eating Area';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ElectricalService" text;
    COMMENT ON COLUMN mibor."Property"."ElectricalService" IS 'Electrical Service';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Equipment" text[];
    COMMENT ON COLUMN mibor."Property"."Equipment" IS 'Equipment';
     
    ALTER TABLE mibor."Property" ADD COLUMN "EstimatedClosingDate" text;
    COMMENT ON COLUMN mibor."Property"."EstimatedClosingDate" IS 'Estimated Closing Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "EstimatedCompletionDate" text;
    COMMENT ON COLUMN mibor."Property"."EstimatedCompletionDate" IS 'Estimated Completion Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ExistingLease" boolean;
    COMMENT ON COLUMN mibor."Property"."ExistingLease" IS 'Existing Lease';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Expenses" integer;
    COMMENT ON COLUMN mibor."Property"."Expenses" IS 'Expenses';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ExpirationDate" text;
    COMMENT ON COLUMN mibor."Property"."ExpirationDate" IS 'Expiration Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Exterior" text[];
    COMMENT ON COLUMN mibor."Property"."Exterior" IS 'Exterior';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ExteriorAmenities" text[];
    COMMENT ON COLUMN mibor."Property"."ExteriorAmenities" IS 'Exterior Amenities';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FHACertified" boolean;
    COMMENT ON COLUMN mibor."Property"."FHACertified" IS 'FHA Certified';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FacilitiesNear" text[];
    COMMENT ON COLUMN mibor."Property"."FacilitiesNear" IS 'Facilities Near';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FacilitiesOn" text[];
    COMMENT ON COLUMN mibor."Property"."FacilitiesOn" IS 'Facilities On';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FeedbackEmail" text;
    COMMENT ON COLUMN mibor."Property"."FeedbackEmail" IS 'Feedback Email';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FeedbackPhoneNumber" text;
    COMMENT ON COLUMN mibor."Property"."FeedbackPhoneNumber" IS 'Feedback Phone Number';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Fence" text;
    COMMENT ON COLUMN mibor."Property"."Fence" IS 'Fence';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FireplaceDescription" text[];
    COMMENT ON COLUMN mibor."Property"."FireplaceDescription" IS 'Fireplace Description';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Fireplaces" integer;
    COMMENT ON COLUMN mibor."Property"."Fireplaces" IS 'Fireplaces';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FloorNumber" text;
    COMMENT ON COLUMN mibor."Property"."FloorNumber" IS 'Floor Number';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FloorSize" integer;
    COMMENT ON COLUMN mibor."Property"."FloorSize" IS 'Floor Size';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ForSaleMLSNum" integer;
    COMMENT ON COLUMN mibor."Property"."ForSaleMLSNum" IS 'For Sale MLS Num';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Foundation" text[];
    COMMENT ON COLUMN mibor."Property"."Foundation" IS 'Foundation';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Fuel" text[];
    COMMENT ON COLUMN mibor."Property"."Fuel" IS 'Fuel';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FullBathsBasement" integer;
    COMMENT ON COLUMN mibor."Property"."FullBathsBasement" IS 'Full Baths Basement';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FullBathsMain" integer;
    COMMENT ON COLUMN mibor."Property"."FullBathsMain" IS 'Full Baths Main';
     
    ALTER TABLE mibor."Property" ADD COLUMN "FullBathsUpper" integer;
    COMMENT ON COLUMN mibor."Property"."FullBathsUpper" IS 'Full Baths Upper';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Furnished" text;
    COMMENT ON COLUMN mibor."Property"."Furnished" IS 'Furnished';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Garage" boolean;
    COMMENT ON COLUMN mibor."Property"."Garage" IS 'Garage';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GarageParkingDescription" text[];
    COMMENT ON COLUMN mibor."Property"."GarageParkingDescription" IS 'Garage Parking Description';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GarageParkingOther" text[];
    COMMENT ON COLUMN mibor."Property"."GarageParkingOther" IS 'Garage Parking Other';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GasOnSite" boolean;
    COMMENT ON COLUMN mibor."Property"."GasOnSite" IS 'Gas On Site';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GreenCertificationYN" boolean;
    COMMENT ON COLUMN mibor."Property"."GreenCertificationYN" IS 'Green Certification YN';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GreenFeatures" text[];
    COMMENT ON COLUMN mibor."Property"."GreenFeatures" IS 'Green Features';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GrossAcres" decimal;
    COMMENT ON COLUMN mibor."Property"."GrossAcres" IS 'Gross Acres';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GrossAreaSQFT" integer;
    COMMENT ON COLUMN mibor."Property"."GrossAreaSQFT" IS 'Gross Area SQFT';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GrossOperatingIncome" integer;
    COMMENT ON COLUMN mibor."Property"."GrossOperatingIncome" IS 'Gross Operating Income';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GrossPotentialIncome" integer;
    COMMENT ON COLUMN mibor."Property"."GrossPotentialIncome" IS 'Gross Potential Income';
     
    ALTER TABLE mibor."Property" ADD COLUMN "GrossRentMultiplier" decimal;
    COMMENT ON COLUMN mibor."Property"."GrossRentMultiplier" IS 'Gross Rent Multiplier';
     
    ALTER TABLE mibor."Property" ADD COLUMN "HVAC" text;
    COMMENT ON COLUMN mibor."Property"."HVAC" IS 'HVAC';
     
    ALTER TABLE mibor."Property" ADD COLUMN "HalfBathsBasement" integer;
    COMMENT ON COLUMN mibor."Property"."HalfBathsBasement" IS 'Half Baths Basement';
     
    ALTER TABLE mibor."Property" ADD COLUMN "HalfBathsMain" integer;
    COMMENT ON COLUMN mibor."Property"."HalfBathsMain" IS 'Half Baths Main';
     
    ALTER TABLE mibor."Property" ADD COLUMN "HalfBathsUpper" integer;
    COMMENT ON COLUMN mibor."Property"."HalfBathsUpper" IS 'Half Baths Upper';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Heat" text[];
    COMMENT ON COLUMN mibor."Property"."Heat" IS 'Heat';
     
    ALTER TABLE mibor."Property" ADD COLUMN "IDXOptInYN" boolean;
    COMMENT ON COLUMN mibor."Property"."IDXOptInYN" IS 'IDX Opt In YN';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Improvements" text[];
    COMMENT ON COLUMN mibor."Property"."Improvements" IS 'Improvements';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Improvements_CHARACTER" text;
    COMMENT ON COLUMN mibor."Property"."Improvements_CHARACTER" IS 'Improvements CHARACTER';
     
    ALTER TABLE mibor."Property" ADD COLUMN "InspectionWarranties" text[];
    COMMENT ON COLUMN mibor."Property"."InspectionWarranties" IS 'Inspection Warranties';
     
    ALTER TABLE mibor."Property" ADD COLUMN "InsuranceExpenses" integer;
    COMMENT ON COLUMN mibor."Property"."InsuranceExpenses" IS 'Insurance Expenses';
     
    ALTER TABLE mibor."Property" ADD COLUMN "InsuranceExpensesSF" decimal;
    COMMENT ON COLUMN mibor."Property"."InsuranceExpensesSF" IS 'Insurance Expenses SF';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Interior" text[];
    COMMENT ON COLUMN mibor."Property"."Interior" IS 'Interior';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Intersection" text;
    COMMENT ON COLUMN mibor."Property"."Intersection" IS 'Intersection';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Interstate" text[];
    COMMENT ON COLUMN mibor."Property"."Interstate" IS 'Interstate';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Investment" boolean;
    COMMENT ON COLUMN mibor."Property"."Investment" IS 'Investment';
     
    ALTER TABLE mibor."Property" ADD COLUMN "IsDeleted" boolean;
    COMMENT ON COLUMN mibor."Property"."IsDeleted" IS 'Is Deleted';
     
    ALTER TABLE mibor."Property" ADD COLUMN "IsthereDirectSoliciting" boolean;
    COMMENT ON COLUMN mibor."Property"."IsthereDirectSoliciting" IS 'Isthere Direct Soliciting';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LandCharacteristics" text[];
    COMMENT ON COLUMN mibor."Property"."LandCharacteristics" IS 'Land Characteristics';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LandLease" boolean;
    COMMENT ON COLUMN mibor."Property"."LandLease" IS 'Land Lease';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LastChangeTimestamp" text;
    COMMENT ON COLUMN mibor."Property"."LastChangeTimestamp" IS 'Last Change Timestamp';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LastChangeType" text;
    COMMENT ON COLUMN mibor."Property"."LastChangeType" IS 'Last Change Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LastListPrice" decimal;
    COMMENT ON COLUMN mibor."Property"."LastListPrice" IS 'Last List Price';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LastStatus" text;
    COMMENT ON COLUMN mibor."Property"."LastStatus" IS 'Last Status';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Laundry" text[];
    COMMENT ON COLUMN mibor."Property"."Laundry" IS 'Laundry';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LeaseAmtSF" decimal;
    COMMENT ON COLUMN mibor."Property"."LeaseAmtSF" IS 'Lease Amt SF';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LeasePrice" decimal;
    COMMENT ON COLUMN mibor."Property"."LeasePrice" IS 'Lease Price';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LeaseTerminMonths" integer;
    COMMENT ON COLUMN mibor."Property"."LeaseTerminMonths" IS 'Lease Termin Months';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LeaseTerms" text[];
    COMMENT ON COLUMN mibor."Property"."LeaseTerms" IS 'Lease Terms';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LeaseType" text;
    COMMENT ON COLUMN mibor."Property"."LeaseType" IS 'Lease Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LeasedType" text;
    COMMENT ON COLUMN mibor."Property"."LeasedType" IS 'Leased Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Legal" text;
    COMMENT ON COLUMN mibor."Property"."Legal" IS 'Legal';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Levels" text;
    COMMENT ON COLUMN mibor."Property"."Levels" IS 'Levels';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Lifestyles" text[];
    COMMENT ON COLUMN mibor."Property"."Lifestyles" IS 'Lifestyles';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN mibor."Property"."ListAgentDirectWorkPhone" IS 'List Agent Direct Work Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListAgentEmail" text;
    COMMENT ON COLUMN mibor."Property"."ListAgentEmail" IS 'List Agent Email';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN mibor."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN mibor."Property"."ListAgentMLSID" IS 'List Agent MLSID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListAgentPreferredPhone" text;
    COMMENT ON COLUMN mibor."Property"."ListAgentPreferredPhone" IS 'List Agent Preferred Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN mibor."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN mibor."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN mibor."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN mibor."Property"."ListOfficePhone" IS 'List Office Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN mibor."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN mibor."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListingContractDate" text;
    COMMENT ON COLUMN mibor."Property"."ListingContractDate" IS 'Listing Contract Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ListingType" text;
    COMMENT ON COLUMN mibor."Property"."ListingType" IS 'Listing Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LotInformation" text[];
    COMMENT ON COLUMN mibor."Property"."LotInformation" IS 'Lot Information';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LotNumber" text;
    COMMENT ON COLUMN mibor."Property"."LotNumber" IS 'Lot Number';
     
    ALTER TABLE mibor."Property" ADD COLUMN "LotSize" text;
    COMMENT ON COLUMN mibor."Property"."LotSize" IS 'Lot Size';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN mibor."Property"."MLS" IS 'MLS';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN mibor."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MainLevelSqFt" integer;
    COMMENT ON COLUMN mibor."Property"."MainLevelSqFt" IS 'Main Level Sq Ft';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ManagementCompanyName" text;
    COMMENT ON COLUMN mibor."Property"."ManagementCompanyName" IS 'Management Company Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ManagementCompanyPhone" text;
    COMMENT ON COLUMN mibor."Property"."ManagementCompanyPhone" IS 'Management Company Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MandatoryFee" integer;
    COMMENT ON COLUMN mibor."Property"."MandatoryFee" IS 'Mandatory Fee';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MandatoryFeeIncludes" text[];
    COMMENT ON COLUMN mibor."Property"."MandatoryFeeIncludes" IS 'Mandatory Fee Includes';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MandatoryFeePaid" text;
    COMMENT ON COLUMN mibor."Property"."MandatoryFeePaid" IS 'Mandatory Fee Paid';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ManufFloors" text;
    COMMENT ON COLUMN mibor."Property"."ManufFloors" IS 'Manuf Floors';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ManufHVAC" text;
    COMMENT ON COLUMN mibor."Property"."ManufHVAC" IS 'Manuf HVAC';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ManufRestrooms" text;
    COMMENT ON COLUMN mibor."Property"."ManufRestrooms" IS 'Manuf Restrooms';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ManufactureSqFt" integer;
    COMMENT ON COLUMN mibor."Property"."ManufactureSqFt" IS 'Manufacture Sq Ft';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MasterBedroomDescription" text[];
    COMMENT ON COLUMN mibor."Property"."MasterBedroomDescription" IS 'Master Bedroom Description';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN mibor."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN mibor."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MaxContigSqFt" integer;
    COMMENT ON COLUMN mibor."Property"."MaxContigSqFt" IS 'Max Contig Sq Ft';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MinContigSqFt" integer;
    COMMENT ON COLUMN mibor."Property"."MinContigSqFt" IS 'Min Contig Sq Ft';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MinLeaseReq" integer;
    COMMENT ON COLUMN mibor."Property"."MinLeaseReq" IS 'Min Lease Req';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MinSF1Story" integer;
    COMMENT ON COLUMN mibor."Property"."MinSF1Story" IS 'Min SF 1 Story';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MinSF2Story" integer;
    COMMENT ON COLUMN mibor."Property"."MinSF2Story" IS 'Min SF 2 Story';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MinSpaceAvailSQFT" integer;
    COMMENT ON COLUMN mibor."Property"."MinSpaceAvailSQFT" IS 'Min Space Avail SQFT';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Miscellaneous" text[];
    COMMENT ON COLUMN mibor."Property"."Miscellaneous" IS 'Miscellaneous';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MultiTenants" boolean;
    COMMENT ON COLUMN mibor."Property"."MultiTenants" IS 'Multi Tenants';
     
    ALTER TABLE mibor."Property" ADD COLUMN "MultipleTaxID" text;
    COMMENT ON COLUMN mibor."Property"."MultipleTaxID" IS 'Multiple Tax ID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NetOperatingIncome" integer;
    COMMENT ON COLUMN mibor."Property"."NetOperatingIncome" IS 'Net Operating Income';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NewConstruction" text;
    COMMENT ON COLUMN mibor."Property"."NewConstruction" IS 'New Construction';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NewConstructionYN" boolean;
    COMMENT ON COLUMN mibor."Property"."NewConstructionYN" IS 'New Construction YN';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NonNTillableAcres" decimal;
    COMMENT ON COLUMN mibor."Property"."NonNTillableAcres" IS 'Non N Tillable Acres';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NumDocks" integer;
    COMMENT ON COLUMN mibor."Property"."NumDocks" IS 'Num Docks';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NumDriveIns" integer;
    COMMENT ON COLUMN mibor."Property"."NumDriveIns" IS 'Num Drive Ins';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NumParkingSpaces" integer;
    COMMENT ON COLUMN mibor."Property"."NumParkingSpaces" IS 'Num Parking Spaces';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NumberUnitsTotal" integer;
    COMMENT ON COLUMN mibor."Property"."NumberUnitsTotal" IS 'Number Units Total';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NumberofCarports" integer;
    COMMENT ON COLUMN mibor."Property"."NumberofCarports" IS 'Numberof Carports';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NumberofGarages" integer;
    COMMENT ON COLUMN mibor."Property"."NumberofGarages" IS 'Numberof Garages';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NumberofLots" integer;
    COMMENT ON COLUMN mibor."Property"."NumberofLots" IS 'Numberof Lots';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NumberofLotsinSubdv" integer;
    COMMENT ON COLUMN mibor."Property"."NumberofLotsinSubdv" IS 'Numberof Lotsin Subdv';
     
    ALTER TABLE mibor."Property" ADD COLUMN "NumberofStories" integer;
    COMMENT ON COLUMN mibor."Property"."NumberofStories" IS 'Numberof Stories';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OccupancyDate" text;
    COMMENT ON COLUMN mibor."Property"."OccupancyDate" IS 'Occupancy Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OffMarketDate" text;
    COMMENT ON COLUMN mibor."Property"."OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OfficeFeatures" text;
    COMMENT ON COLUMN mibor."Property"."OfficeFeatures" IS 'Office Features';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OfficeHVAC" text;
    COMMENT ON COLUMN mibor."Property"."OfficeHVAC" IS 'Office HVAC';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OfficePhoneExtension" integer;
    COMMENT ON COLUMN mibor."Property"."OfficePhoneExtension" IS 'Office Phone Extension';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OfficeRestrooms" text;
    COMMENT ON COLUMN mibor."Property"."OfficeRestrooms" IS 'Office Restrooms';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OfficeSqFt" integer;
    COMMENT ON COLUMN mibor."Property"."OfficeSqFt" IS 'Office Sq Ft';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OpenHouseCount" integer;
    COMMENT ON COLUMN mibor."Property"."OpenHouseCount" IS 'Open House Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OpenHousePublicCount" integer;
    COMMENT ON COLUMN mibor."Property"."OpenHousePublicCount" IS 'Open House Public Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OpenHousePublicUpcoming" text;
    COMMENT ON COLUMN mibor."Property"."OpenHousePublicUpcoming" IS 'Open House Public Upcoming';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OpenHouseUpcoming" text;
    COMMENT ON COLUMN mibor."Property"."OpenHouseUpcoming" IS 'Open House Upcoming';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OperatingExpense" text[];
    COMMENT ON COLUMN mibor."Property"."OperatingExpense" IS 'Operating Expense';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Operation" text[];
    COMMENT ON COLUMN mibor."Property"."Operation" IS 'Operation';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OptionalLevelBelowGrade" text;
    COMMENT ON COLUMN mibor."Property"."OptionalLevelBelowGrade" IS 'Optional Level Below Grade';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OptionalLevlSqFtBlwGrade" integer;
    COMMENT ON COLUMN mibor."Property"."OptionalLevlSqFtBlwGrade" IS 'Optional Levl Sq Ft Blw Grade';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Options" text[];
    COMMENT ON COLUMN mibor."Property"."Options" IS 'Options';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OriginalEntryTimestamp" text;
    COMMENT ON COLUMN mibor."Property"."OriginalEntryTimestamp" IS 'Original Entry Timestamp';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN mibor."Property"."OriginalListPrice" IS 'Original List Price';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OwnerPays" text[];
    COMMENT ON COLUMN mibor."Property"."OwnerPays" IS 'Owner Pays';
     
    ALTER TABLE mibor."Property" ADD COLUMN "OwnershipInterestTypes" text[];
    COMMENT ON COLUMN mibor."Property"."OwnershipInterestTypes" IS 'Ownership Interest Types';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ParcelNumber" text;
    COMMENT ON COLUMN mibor."Property"."ParcelNumber" IS 'Parcel Number';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ParkBuildingName" text;
    COMMENT ON COLUMN mibor."Property"."ParkBuildingName" IS 'Park Building Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ParkingSpacesperUnit" decimal;
    COMMENT ON COLUMN mibor."Property"."ParkingSpacesperUnit" IS 'Parking Spacesper Unit';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ParkingSurface" text;
    COMMENT ON COLUMN mibor."Property"."ParkingSurface" IS 'Parking Surface';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PastureAcres" decimal;
    COMMENT ON COLUMN mibor."Property"."PastureAcres" IS 'Pasture Acres';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PctOptionalLevelFinished" text;
    COMMENT ON COLUMN mibor."Property"."PctOptionalLevelFinished" IS 'Pct Optional Level Finished';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PendingDate" text;
    COMMENT ON COLUMN mibor."Property"."PendingDate" IS 'Pending Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PetDeposit" integer;
    COMMENT ON COLUMN mibor."Property"."PetDeposit" IS 'Pet Deposit';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Pets" text[];
    COMMENT ON COLUMN mibor."Property"."Pets" IS 'Pets';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN mibor."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN mibor."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Porch" text[];
    COMMENT ON COLUMN mibor."Property"."Porch" IS 'Porch';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Possession" text[];
    COMMENT ON COLUMN mibor."Property"."Possession" IS 'Possession';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PossessionCommercial" text;
    COMMENT ON COLUMN mibor."Property"."PossessionCommercial" IS 'Possession Commercial';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PossibleFinancing" text[];
    COMMENT ON COLUMN mibor."Property"."PossibleFinancing" IS 'Possible Financing';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN mibor."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN mibor."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PotentialZoning" text[];
    COMMENT ON COLUMN mibor."Property"."PotentialZoning" IS 'Potential Zoning';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PresentUse" text;
    COMMENT ON COLUMN mibor."Property"."PresentUse" IS 'Present Use';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PresentZoning" text[];
    COMMENT ON COLUMN mibor."Property"."PresentZoning" IS 'Present Zoning';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PriceAcre" integer;
    COMMENT ON COLUMN mibor."Property"."PriceAcre" IS 'Price Acre';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PriceChangeTimestamp" text;
    COMMENT ON COLUMN mibor."Property"."PriceChangeTimestamp" IS 'Price Change Timestamp';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PriceUnit" integer;
    COMMENT ON COLUMN mibor."Property"."PriceUnit" IS 'Price Unit';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ProhibitCommentsorReviews" boolean;
    COMMENT ON COLUMN mibor."Property"."ProhibitCommentsorReviews" IS 'Prohibit Commentsor Reviews';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ProhibitEstimatesofValue" boolean;
    COMMENT ON COLUMN mibor."Property"."ProhibitEstimatesofValue" IS 'Prohibit Estimatesof Value';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PropertyDesconInternet" boolean;
    COMMENT ON COLUMN mibor."Property"."PropertyDesconInternet" IS 'Property Descon Internet';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PropertyDescription" text;
    COMMENT ON COLUMN mibor."Property"."PropertyDescription" IS 'Property Description';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN mibor."Property"."PropertySubType" IS 'Property Sub Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN mibor."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ProposedLease" text[];
    COMMENT ON COLUMN mibor."Property"."ProposedLease" IS 'Proposed Lease';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ProposedTerm" text;
    COMMENT ON COLUMN mibor."Property"."ProposedTerm" IS 'Proposed Term';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ProposedUse" text[];
    COMMENT ON COLUMN mibor."Property"."ProposedUse" IS 'Proposed Use';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PublicInternet" boolean;
    COMMENT ON COLUMN mibor."Property"."PublicInternet" IS 'Public Internet';
     
    ALTER TABLE mibor."Property" ADD COLUMN "PublicTransportation" boolean;
    COMMENT ON COLUMN mibor."Property"."PublicTransportation" IS 'Public Transportation';
     
    ALTER TABLE mibor."Property" ADD COLUMN "QuarterBathsBasement" integer;
    COMMENT ON COLUMN mibor."Property"."QuarterBathsBasement" IS 'Quarter Baths Basement';
     
    ALTER TABLE mibor."Property" ADD COLUMN "QuarterBathsMain" integer;
    COMMENT ON COLUMN mibor."Property"."QuarterBathsMain" IS 'Quarter Baths Main';
     
    ALTER TABLE mibor."Property" ADD COLUMN "QuarterBathsTotal" integer;
    COMMENT ON COLUMN mibor."Property"."QuarterBathsTotal" IS 'Quarter Baths Total';
     
    ALTER TABLE mibor."Property" ADD COLUMN "QuarterBathsUpper" integer;
    COMMENT ON COLUMN mibor."Property"."QuarterBathsUpper" IS 'Quarter Baths Upper';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RATIO_ClosePrice_By_ListPrice" decimal;
    COMMENT ON COLUMN mibor."Property"."RATIO_ClosePrice_By_ListPrice" IS 'RATIO Close Price By List Price';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RATIO_ClosePrice_By_OriginalListPrice" decimal;
    COMMENT ON COLUMN mibor."Property"."RATIO_ClosePrice_By_OriginalListPrice" IS 'RATIO Close Price By Original Li';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RATIO_CurrentPrice_By_SQFT" decimal;
    COMMENT ON COLUMN mibor."Property"."RATIO_CurrentPrice_By_SQFT" IS 'RATIO Current Price By SQFT';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Rail" text;
    COMMENT ON COLUMN mibor."Property"."Rail" IS 'Rail';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ReleasedDate" text;
    COMMENT ON COLUMN mibor."Property"."ReleasedDate" IS 'Released Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RemainingTerm" text;
    COMMENT ON COLUMN mibor."Property"."RemainingTerm" IS 'Remaining Term';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RentIncludes" text[];
    COMMENT ON COLUMN mibor."Property"."RentIncludes" IS 'Rent Includes';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Residence" boolean;
    COMMENT ON COLUMN mibor."Property"."Residence" IS 'Residence';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RestrictionsPrivate" boolean;
    COMMENT ON COLUMN mibor."Property"."RestrictionsPrivate" IS 'Restrictions Private';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RestrictionsPublic" boolean;
    COMMENT ON COLUMN mibor."Property"."RestrictionsPublic" IS 'Restrictions Public';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RetailType" text;
    COMMENT ON COLUMN mibor."Property"."RetailType" IS 'Retail Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RoadAccess" text[];
    COMMENT ON COLUMN mibor."Property"."RoadAccess" IS 'Road Access';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RoadFrontage" text[];
    COMMENT ON COLUMN mibor."Property"."RoadFrontage" IS 'Road Frontage';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RoadSurface" text[];
    COMMENT ON COLUMN mibor."Property"."RoadSurface" IS 'Road Surface';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Roof" text;
    COMMENT ON COLUMN mibor."Property"."Roof" IS 'Roof';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RoomCount" integer;
    COMMENT ON COLUMN mibor."Property"."RoomCount" IS 'Room Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "RoomsTotal" integer;
    COMMENT ON COLUMN mibor."Property"."RoomsTotal" IS 'Rooms Total';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SPUnit" integer;
    COMMENT ON COLUMN mibor."Property"."SPUnit" IS 'SP Unit';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SanitarySewer" boolean;
    COMMENT ON COLUMN mibor."Property"."SanitarySewer" IS 'Sanitary Sewer';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SanitarySewerPipeSize" text;
    COMMENT ON COLUMN mibor."Property"."SanitarySewerPipeSize" IS 'Sanitary Sewer Pipe Size';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SchoolDistrict" text;
    COMMENT ON COLUMN mibor."Property"."SchoolDistrict" IS 'School District';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Section" text;
    COMMENT ON COLUMN mibor."Property"."Section" IS 'Section';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SecurityDeposit" integer;
    COMMENT ON COLUMN mibor."Property"."SecurityDeposit" IS 'Security Deposit';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellerPaidClosingCosts" integer;
    COMMENT ON COLUMN mibor."Property"."SellerPaidClosingCosts" IS 'Seller Paid Closing Costs';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellerPaidDiscountPoints" integer;
    COMMENT ON COLUMN mibor."Property"."SellerPaidDiscountPoints" IS 'Seller Paid Discount Points';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellingAgentDirectWorkPhone" text;
    COMMENT ON COLUMN mibor."Property"."SellingAgentDirectWorkPhone" IS 'Selling Agent Direct Work Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellingAgentEmail" text;
    COMMENT ON COLUMN mibor."Property"."SellingAgentEmail" IS 'Selling Agent Email';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellingAgentFullName" text;
    COMMENT ON COLUMN mibor."Property"."SellingAgentFullName" IS 'Selling Agent Full Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellingAgentMLSID" text;
    COMMENT ON COLUMN mibor."Property"."SellingAgentMLSID" IS 'Selling Agent MLSID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellingAgent_MUI" bigint;
    COMMENT ON COLUMN mibor."Property"."SellingAgent_MUI" IS 'Selling Agent MUI';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellingOfficeMLSID" text;
    COMMENT ON COLUMN mibor."Property"."SellingOfficeMLSID" IS 'Selling Office MLSID';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellingOfficeName" text;
    COMMENT ON COLUMN mibor."Property"."SellingOfficeName" IS 'Selling Office Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellingOfficePhone" text;
    COMMENT ON COLUMN mibor."Property"."SellingOfficePhone" IS 'Selling Office Phone';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SellingOffice_MUI" bigint;
    COMMENT ON COLUMN mibor."Property"."SellingOffice_MUI" IS 'Selling Office MUI';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SemiAnnualPropertyTaxAmt" integer;
    COMMENT ON COLUMN mibor."Property"."SemiAnnualPropertyTaxAmt" IS 'Semi Annual Property Tax Amt';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Sewer" text[];
    COMMENT ON COLUMN mibor."Property"."Sewer" IS 'Sewer';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ShowingsPhoneNumber" text;
    COMMENT ON COLUMN mibor."Property"."ShowingsPhoneNumber" IS 'Showings Phone Number';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Signage" text[];
    COMMENT ON COLUMN mibor."Property"."Signage" IS 'Signage';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Smoking" boolean;
    COMMENT ON COLUMN mibor."Property"."Smoking" IS 'Smoking';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SoilTest" text;
    COMMENT ON COLUMN mibor."Property"."SoilTest" IS 'Soil Test';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SoilType" text[];
    COMMENT ON COLUMN mibor."Property"."SoilType" IS 'Soil Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SoldTerms" text;
    COMMENT ON COLUMN mibor."Property"."SoldTerms" IS 'Sold Terms';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SoldTransactionType" text;
    COMMENT ON COLUMN mibor."Property"."SoldTransactionType" IS 'Sold Transaction Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SolidWaste" boolean;
    COMMENT ON COLUMN mibor."Property"."SolidWaste" IS 'Solid Waste';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SpaceAvailable" integer;
    COMMENT ON COLUMN mibor."Property"."SpaceAvailable" IS 'Space Available';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Sprinkler" text;
    COMMENT ON COLUMN mibor."Property"."Sprinkler" IS 'Sprinkler';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SqFtMainUpper" integer;
    COMMENT ON COLUMN mibor."Property"."SqFtMainUpper" IS 'Sq Ft Main Upper';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SqFtSource" text;
    COMMENT ON COLUMN mibor."Property"."SqFtSource" IS 'Sq Ft Source';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN mibor."Property"."StateOrProvince" IS 'State Or Province';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN mibor."Property"."Status" IS 'Status';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StatusChangeTimestamp" text;
    COMMENT ON COLUMN mibor."Property"."StatusChangeTimestamp" IS 'Status Change Timestamp';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StatusContractualSearchDate" text;
    COMMENT ON COLUMN mibor."Property"."StatusContractualSearchDate" IS 'Status Contractual Search Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StormDrain" boolean;
    COMMENT ON COLUMN mibor."Property"."StormDrain" IS 'Storm Drain';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN mibor."Property"."StreetDirPrefix" IS 'Street Dir Prefix';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN mibor."Property"."StreetDirSuffix" IS 'Street Dir Suffix';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN mibor."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN mibor."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StreetNumberAlpha" text;
    COMMENT ON COLUMN mibor."Property"."StreetNumberAlpha" IS 'Street Number Alpha';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StreetNumberNumeric" integer;
    COMMENT ON COLUMN mibor."Property"."StreetNumberNumeric" IS 'Street Number Numeric';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN mibor."Property"."StreetSuffix" IS 'Street Suffix';
     
    ALTER TABLE mibor."Property" ADD COLUMN "StreetViewParam" text;
    COMMENT ON COLUMN mibor."Property"."StreetViewParam" IS 'Street View Param';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Style2" text[];
    COMMENT ON COLUMN mibor."Property"."Style2" IS 'Style 2';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Subdivision" text;
    COMMENT ON COLUMN mibor."Property"."Subdivision" IS 'Subdivision';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SupplementCount" integer;
    COMMENT ON COLUMN mibor."Property"."SupplementCount" IS 'Supplement Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "SupplementModificationTimestamp" text;
    COMMENT ON COLUMN mibor."Property"."SupplementModificationTimestamp" IS 'Supplement Modification Timestam';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TaxExemption" text[];
    COMMENT ON COLUMN mibor."Property"."TaxExemption" IS 'Tax Exemption';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TaxInfoNAPropSplit" boolean;
    COMMENT ON COLUMN mibor."Property"."TaxInfoNAPropSplit" IS 'Tax Info NA Prop Split';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TaxYear" integer;
    COMMENT ON COLUMN mibor."Property"."TaxYear" IS 'Tax Year';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TempOffMarketDate" text;
    COMMENT ON COLUMN mibor."Property"."TempOffMarketDate" IS 'Temp Off Market Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TenantPays" text[];
    COMMENT ON COLUMN mibor."Property"."TenantPays" IS 'Tenant Pays';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ThreeQtrBathsBasement" integer;
    COMMENT ON COLUMN mibor."Property"."ThreeQtrBathsBasement" IS 'Three Qtr Baths Basement';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ThreeQtrBathsMain" integer;
    COMMENT ON COLUMN mibor."Property"."ThreeQtrBathsMain" IS 'Three Qtr Baths Main';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ThreeQtrBathsTotal" integer;
    COMMENT ON COLUMN mibor."Property"."ThreeQtrBathsTotal" IS 'Three Qtr Baths Total';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ThreeQtrBathsUpper" integer;
    COMMENT ON COLUMN mibor."Property"."ThreeQtrBathsUpper" IS 'Three Qtr Baths Upper';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TillableAcres" decimal;
    COMMENT ON COLUMN mibor."Property"."TillableAcres" IS 'Tillable Acres';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TollFreeNumber" text;
    COMMENT ON COLUMN mibor."Property"."TollFreeNumber" IS 'Toll Free Number';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Topography" text[];
    COMMENT ON COLUMN mibor."Property"."Topography" IS 'Topography';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TotalNumofAcres" decimal;
    COMMENT ON COLUMN mibor."Property"."TotalNumofAcres" IS 'Total Numof Acres';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TotalSqFt" integer;
    COMMENT ON COLUMN mibor."Property"."TotalSqFt" IS 'Total Sq Ft';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Township" text;
    COMMENT ON COLUMN mibor."Property"."Township" IS 'Township';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TrafficCount" integer;
    COMMENT ON COLUMN mibor."Property"."TrafficCount" IS 'Traffic Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TrafficYear" integer;
    COMMENT ON COLUMN mibor."Property"."TrafficYear" IS 'Traffic Year';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TransType" text[];
    COMMENT ON COLUMN mibor."Property"."TransType" IS 'Trans Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TruckParking" text;
    COMMENT ON COLUMN mibor."Property"."TruckParking" IS 'Truck Parking';
     
    ALTER TABLE mibor."Property" ADD COLUMN "TruckSurface" text;
    COMMENT ON COLUMN mibor."Property"."TruckSurface" IS 'Truck Surface';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Type" text[];
    COMMENT ON COLUMN mibor."Property"."Type" IS 'Type';
     
    ALTER TABLE mibor."Property" ADD COLUMN "UnitCount" integer;
    COMMENT ON COLUMN mibor."Property"."UnitCount" IS 'Unit Count';
     
    ALTER TABLE mibor."Property" ADD COLUMN "UnitEntryLevel" text;
    COMMENT ON COLUMN mibor."Property"."UnitEntryLevel" IS 'Unit Entry Level';
     
    ALTER TABLE mibor."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN mibor."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE mibor."Property" ADD COLUMN "UnitParking" text[];
    COMMENT ON COLUMN mibor."Property"."UnitParking" IS 'Unit Parking';
     
    ALTER TABLE mibor."Property" ADD COLUMN "UpperSqFt" integer;
    COMMENT ON COLUMN mibor."Property"."UpperSqFt" IS 'Upper Sq Ft';
     
    ALTER TABLE mibor."Property" ADD COLUMN "UsableAcres" decimal;
    COMMENT ON COLUMN mibor."Property"."UsableAcres" IS 'Usable Acres';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Utilities" text[];
    COMMENT ON COLUMN mibor."Property"."Utilities" IS 'Utilities';
     
    ALTER TABLE mibor."Property" ADD COLUMN "UtilityOptions" text[];
    COMMENT ON COLUMN mibor."Property"."UtilityOptions" IS 'Utility Options';
     
    ALTER TABLE mibor."Property" ADD COLUMN "UtilityPrimSewageDisp" text;
    COMMENT ON COLUMN mibor."Property"."UtilityPrimSewageDisp" IS 'Utility Prim Sewage Disp';
     
    ALTER TABLE mibor."Property" ADD COLUMN "UtilityPrimWaterSource" text;
    COMMENT ON COLUMN mibor."Property"."UtilityPrimWaterSource" IS 'Utility Prim Water Source';
     
    ALTER TABLE mibor."Property" ADD COLUMN "VariableRateCommission" boolean;
    COMMENT ON COLUMN mibor."Property"."VariableRateCommission" IS 'Variable Rate Commission';
     
    ALTER TABLE mibor."Property" ADD COLUMN "VirtualTourLinkBranded" text;
    COMMENT ON COLUMN mibor."Property"."VirtualTourLinkBranded" IS 'Virtual Tour Link Branded';
     
    ALTER TABLE mibor."Property" ADD COLUMN "VirtualTourLinkUnbranded" text;
    COMMENT ON COLUMN mibor."Property"."VirtualTourLinkUnbranded" IS 'Virtual Tour Link Unbranded';
     
    ALTER TABLE mibor."Property" ADD COLUMN "WarehouseSqFt" integer;
    COMMENT ON COLUMN mibor."Property"."WarehouseSqFt" IS 'Warehouse Sq Ft';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Water" text[];
    COMMENT ON COLUMN mibor."Property"."Water" IS 'Water';
     
    ALTER TABLE mibor."Property" ADD COLUMN "WaterHeater" text;
    COMMENT ON COLUMN mibor."Property"."WaterHeater" IS 'Water Heater';
     
    ALTER TABLE mibor."Property" ADD COLUMN "WaterPipe" boolean;
    COMMENT ON COLUMN mibor."Property"."WaterPipe" IS 'Water Pipe';
     
    ALTER TABLE mibor."Property" ADD COLUMN "WaterPipeSize" text;
    COMMENT ON COLUMN mibor."Property"."WaterPipeSize" IS 'Water Pipe Size';
     
    ALTER TABLE mibor."Property" ADD COLUMN "WebLink" text;
    COMMENT ON COLUMN mibor."Property"."WebLink" IS 'Web Link';
     
    ALTER TABLE mibor."Property" ADD COLUMN "WebLinkNum2" text;
    COMMENT ON COLUMN mibor."Property"."WebLinkNum2" IS 'Web Link Num 2';
     
    ALTER TABLE mibor."Property" ADD COLUMN "WithdrawnDate" text;
    COMMENT ON COLUMN mibor."Property"."WithdrawnDate" IS 'Withdrawn Date';
     
    ALTER TABLE mibor."Property" ADD COLUMN "WoodedAcres" decimal;
    COMMENT ON COLUMN mibor."Property"."WoodedAcres" IS 'Wooded Acres';
     
    ALTER TABLE mibor."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN mibor."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE mibor."Property" ADD COLUMN "YearRenovated" integer;
    COMMENT ON COLUMN mibor."Property"."YearRenovated" IS 'Year Renovated';
     
    ALTER TABLE mibor."Property" ADD COLUMN "YearTaxesPaid" integer;
    COMMENT ON COLUMN mibor."Property"."YearTaxesPaid" IS 'Year Taxes Paid';
     
    ALTER TABLE mibor."Property" ADD COLUMN "ZipCode" text;
    COMMENT ON COLUMN mibor."Property"."ZipCode" IS 'Zip Code';
     
    ALTER TABLE mibor."Property" ADD COLUMN "Zoning" text;
    COMMENT ON COLUMN mibor."Property"."Zoning" IS 'Zoning';
     

  CREATE TABLE mibor."PropertySubTable"() INHERITS (property);
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "InputEntryOrder" integer;
    COMMENT ON COLUMN mibor."PropertySubTable"."InputEntryOrder" IS 'Input Entry Order';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "IsDeleted" boolean;
    COMMENT ON COLUMN mibor."PropertySubTable"."IsDeleted" IS 'Is Deleted';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "Listing_MUI" bigint;
    COMMENT ON COLUMN mibor."PropertySubTable"."Listing_MUI" IS 'Listing MUI';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "RoomDimensions" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."RoomDimensions" IS 'Room Dimensions';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "RoomFloors" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."RoomFloors" IS 'Room Floors';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "RoomLevel" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."RoomLevel" IS 'Room Level';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "RoomType" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."RoomType" IS 'Room Type';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "RoomWindowTreatments" boolean;
    COMMENT ON COLUMN mibor."PropertySubTable"."RoomWindowTreatments" IS 'Room Window Treatments';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitBasement" boolean;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitBasement" IS 'Unit Basement';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitBedroom2" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitBedroom2" IS 'Unit Bedroom 2';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitBedroom3" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitBedroom3" IS 'Unit Bedroom 3';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitBedroom4" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitBedroom4" IS 'Unit Bedroom 4';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitBreakfastRoom" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitBreakfastRoom" IS 'Unit Breakfast Room';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitDiningRoom" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitDiningRoom" IS 'Unit Dining Room';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitFamilyRoom" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitFamilyRoom" IS 'Unit Family Room';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitGarage" boolean;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitGarage" IS 'Unit Garage';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitGreatRoom" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitGreatRoom" IS 'Unit Great Room';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitKitchen" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitKitchen" IS 'Unit Kitchen';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitLevels" decimal;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitLevels" IS 'Unit Levels';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitLivingRoom" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitLivingRoom" IS 'Unit Living Room';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitMasterBedroom" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitMasterBedroom" IS 'Unit Master Bedroom';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitMiscellaneous" text[];
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitMiscellaneous" IS 'Unit Miscellaneous';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitNumofBathrooms" decimal;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitNumofBathrooms" IS 'Unit Numof Bathrooms';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitNumofBedrooms" integer;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitNumofBedrooms" IS 'Unit Numof Bedrooms';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitNumofRooms" integer;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitNumofRooms" IS 'Unit Numof Rooms';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitNumofUnits" integer;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitNumofUnits" IS 'Unit Numof Units';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitOptRoom1Dim" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitOptRoom1Dim" IS 'Unit Opt Room 1 Dim';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitOptRoom2Dim" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitOptRoom2Dim" IS 'Unit Opt Room 2 Dim';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitOptRoom3Dim" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitOptRoom3Dim" IS 'Unit Opt Room 3 Dim';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitRent" integer;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitRent" IS 'Unit Rent';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitRentFrequency" text;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitRentFrequency" IS 'Unit Rent Frequency';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitSqFt" integer;
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitSqFt" IS 'Unit Sq Ft';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "UnitUtilities" text[];
    COMMENT ON COLUMN mibor."PropertySubTable"."UnitUtilities" IS 'Unit Utilities';
     
    ALTER TABLE mibor."PropertySubTable" ADD COLUMN "matrix_unique_id" bigint PRIMARY KEY;
    COMMENT ON COLUMN mibor."PropertySubTable"."matrix_unique_id" IS 'Matrix Unique Id';
     

COMMIT;

