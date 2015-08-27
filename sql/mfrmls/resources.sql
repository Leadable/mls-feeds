BEGIN;

  CREATE TABLE mfrmls."Property"() INHERITS (property);
    ALTER TABLE mfrmls."Property" ADD COLUMN "AWCRemarks" text;
    COMMENT ON COLUMN mfrmls."Property"."AWCRemarks" IS 'AWC Remarks';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ActiveStatusDate" text;
    COMMENT ON COLUMN mfrmls."Property"."ActiveStatusDate" IS 'Active Status Date';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AdditionalApplicantFee" integer;
    COMMENT ON COLUMN mfrmls."Property"."AdditionalApplicantFee" IS 'Additional Applicant Fee';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AdditionalLseRestrict" text;
    COMMENT ON COLUMN mfrmls."Property"."AdditionalLseRestrict" IS 'Additional Lse Restrict';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AdditionalMembershipAvailableYN" text;
    COMMENT ON COLUMN mfrmls."Property"."AdditionalMembershipAvailableYN" IS 'Additional Membership Available ';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AdditionalParcelYN" text;
    COMMENT ON COLUMN mfrmls."Property"."AdditionalParcelYN" IS 'Additional Parcel YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AdditionalPetFees" text;
    COMMENT ON COLUMN mfrmls."Property"."AdditionalPetFees" IS 'Additional Pet Fees';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AdditionalRooms" text[];
    COMMENT ON COLUMN mfrmls."Property"."AdditionalRooms" IS 'Additional Rooms';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AdditionalTaxIDs" text;
    COMMENT ON COLUMN mfrmls."Property"."AdditionalTaxIDs" IS 'Additional Tax I Ds';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Address" text;
    COMMENT ON COLUMN mfrmls."Property"."Address" IS 'Address';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AdjoiningProperty" text[];
    COMMENT ON COLUMN mfrmls."Property"."AdjoiningProperty" IS 'Adjoining Property';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AgentFax" text;
    COMMENT ON COLUMN mfrmls."Property"."AgentFax" IS 'Agent Fax';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AgentHomePage" text;
    COMMENT ON COLUMN mfrmls."Property"."AgentHomePage" IS 'Agent Home Page';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AgentOfficeExt" text;
    COMMENT ON COLUMN mfrmls."Property"."AgentOfficeExt" IS 'Agent Office Ext';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AgentPagerCell" text;
    COMMENT ON COLUMN mfrmls."Property"."AgentPagerCell" IS 'Agent Pager Cell';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AirConditioning" text[];
    COMMENT ON COLUMN mfrmls."Property"."AirConditioning" IS 'Air Conditioning';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AltAddress" text;
    COMMENT ON COLUMN mfrmls."Property"."AltAddress" IS 'Alt Address';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AlternateKeyFolioNum" text;
    COMMENT ON COLUMN mfrmls."Property"."AlternateKeyFolioNum" IS 'Alternate Key Folio Num';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AnnualCDDFee" integer;
    COMMENT ON COLUMN mfrmls."Property"."AnnualCDDFee" IS 'Annual CDD Fee';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AnnualExpenses" integer;
    COMMENT ON COLUMN mfrmls."Property"."AnnualExpenses" IS 'Annual Expenses';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AnnualGrossIncome" integer;
    COMMENT ON COLUMN mfrmls."Property"."AnnualGrossIncome" IS 'Annual Gross Income';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AnnualNetIncome" decimal;
    COMMENT ON COLUMN mfrmls."Property"."AnnualNetIncome" IS 'Annual Net Income';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AnnualRent" decimal;
    COMMENT ON COLUMN mfrmls."Property"."AnnualRent" IS 'Annual Rent';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AnnualTotalScheduledIncome" integer;
    COMMENT ON COLUMN mfrmls."Property"."AnnualTotalScheduledIncome" IS 'Annual Total Scheduled Income';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AppliancesIncluded" text[];
    COMMENT ON COLUMN mfrmls."Property"."AppliancesIncluded" IS 'Appliances Included';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ApplicationFee" integer;
    COMMENT ON COLUMN mfrmls."Property"."ApplicationFee" IS 'Application Fee';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ApprovalProcess" text;
    COMMENT ON COLUMN mfrmls."Property"."ApprovalProcess" IS 'Approval Process';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ArchitecturalStyle" text[];
    COMMENT ON COLUMN mfrmls."Property"."ArchitecturalStyle" IS 'Architectural Style';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AssocApprReqYN" text;
    COMMENT ON COLUMN mfrmls."Property"."AssocApprReqYN" IS 'Assoc Appr Req YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AssocApprovReqYN" text;
    COMMENT ON COLUMN mfrmls."Property"."AssocApprovReqYN" IS 'Assoc Approv Req YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AssociationApplicationFee" integer;
    COMMENT ON COLUMN mfrmls."Property"."AssociationApplicationFee" IS 'Association Application Fee';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AssociationApprovalFee" integer;
    COMMENT ON COLUMN mfrmls."Property"."AssociationApprovalFee" IS 'Association Approval Fee';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AssociationFeeIncludes" text[];
    COMMENT ON COLUMN mfrmls."Property"."AssociationFeeIncludes" IS 'Association Fee Includes';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AuctionFirm_Website" text;
    COMMENT ON COLUMN mfrmls."Property"."AuctionFirm_Website" IS 'Auction Firm Website';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AuctionPropAccessYN" text;
    COMMENT ON COLUMN mfrmls."Property"."AuctionPropAccessYN" IS 'Auction Prop Access YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AuctionType" text;
    COMMENT ON COLUMN mfrmls."Property"."AuctionType" IS 'Auction Type';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AuctionYN" text;
    COMMENT ON COLUMN mfrmls."Property"."AuctionYN" IS 'Auction YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Availability" text;
    COMMENT ON COLUMN mfrmls."Property"."Availability" IS 'Availability';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AvailabilityCOM" text[];
    COMMENT ON COLUMN mfrmls."Property"."AvailabilityCOM" IS 'Availability COM';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AvgRent1Bed1Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."AvgRent1Bed1Bath" IS 'Avg Rent 1 Bed 1 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AvgRent2Bed1Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."AvgRent2Bed1Bath" IS 'Avg Rent 2 Bed 1 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AvgRent2Bed2Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."AvgRent2Bed2Bath" IS 'Avg Rent 2 Bed 2 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AvgRent3Bed1Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."AvgRent3Bed1Bath" IS 'Avg Rent 3 Bed 1 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "AvgRent3Bed2Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."AvgRent3Bed2Bath" IS 'Avg Rent 3 Bed 2 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN mfrmls."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN mfrmls."Property"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN mfrmls."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN mfrmls."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "BlockParcel" text;
    COMMENT ON COLUMN mfrmls."Property"."BlockParcel" IS 'Block Parcel';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "BuildingElevatorYN" text;
    COMMENT ON COLUMN mfrmls."Property"."BuildingElevatorYN" IS 'Building Elevator YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "BuildingNameNumber" text;
    COMMENT ON COLUMN mfrmls."Property"."BuildingNameNumber" IS 'Building Name Number';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "BuildingNumFloors" integer;
    COMMENT ON COLUMN mfrmls."Property"."BuildingNumFloors" IS 'Building Num Floors';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "BuyersPremium" text;
    COMMENT ON COLUMN mfrmls."Property"."BuyersPremium" IS 'Buyers Premium';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CAMPerSqFt" text;
    COMMENT ON COLUMN mfrmls."Property"."CAMPerSqFt" IS 'CAM Per Sq Ft';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CDDYN" text;
    COMMENT ON COLUMN mfrmls."Property"."CDDYN" IS 'CDDYN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CDOM" integer;
    COMMENT ON COLUMN mfrmls."Property"."CDOM" IS 'CDOM';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CanPropertyBeLsedYN" text;
    COMMENT ON COLUMN mfrmls."Property"."CanPropertyBeLsedYN" IS 'Can Property Be Lsed YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CeilingHeight" text;
    COMMENT ON COLUMN mfrmls."Property"."CeilingHeight" IS 'Ceiling Height';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CeilingType" text[];
    COMMENT ON COLUMN mfrmls."Property"."CeilingType" IS 'Ceiling Type';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ClassofSpace" text;
    COMMENT ON COLUMN mfrmls."Property"."ClassofSpace" IS 'Classof Space';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CloseDate" text;
    COMMENT ON COLUMN mfrmls."Property"."CloseDate" IS 'Close Date';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ClosePrice" decimal;
    COMMENT ON COLUMN mfrmls."Property"."ClosePrice" IS 'Close Price';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CoListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN mfrmls."Property"."CoListAgentDirectWorkPhone" IS 'Co List Agent Direct Work Phone';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CoListAgentFullName" text;
    COMMENT ON COLUMN mfrmls."Property"."CoListAgentFullName" IS 'Co List Agent Full Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CoListAgentMLSID" text;
    COMMENT ON COLUMN mfrmls."Property"."CoListAgentMLSID" IS 'Co List Agent MLSID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CoListOfficeMLSID" text;
    COMMENT ON COLUMN mfrmls."Property"."CoListOfficeMLSID" IS 'Co List Office MLSID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CoListOfficeName" text;
    COMMENT ON COLUMN mfrmls."Property"."CoListOfficeName" IS 'Co List Office Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CoSellingAgentFullName" text;
    COMMENT ON COLUMN mfrmls."Property"."CoSellingAgentFullName" IS 'Co Selling Agent Full Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CoSellingAgentMLSID" text;
    COMMENT ON COLUMN mfrmls."Property"."CoSellingAgentMLSID" IS 'Co Selling Agent MLSID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CoSellingOfficeMLSID" text;
    COMMENT ON COLUMN mfrmls."Property"."CoSellingOfficeMLSID" IS 'Co Selling Office MLSID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CoSellingOfficeName" text;
    COMMENT ON COLUMN mfrmls."Property"."CoSellingOfficeName" IS 'Co Selling Office Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CommunityFeatures" text[];
    COMMENT ON COLUMN mfrmls."Property"."CommunityFeatures" IS 'Community Features';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ComplexCommunityNameNCCB" text;
    COMMENT ON COLUMN mfrmls."Property"."ComplexCommunityNameNCCB" IS 'Complex Community Name NCCB';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ComplexDevelopmentName" text;
    COMMENT ON COLUMN mfrmls."Property"."ComplexDevelopmentName" IS 'Complex Development Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CondoEnvironmentYN" text;
    COMMENT ON COLUMN mfrmls."Property"."CondoEnvironmentYN" IS 'Condo Environment YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CondoFees" integer;
    COMMENT ON COLUMN mfrmls."Property"."CondoFees" IS 'Condo Fees';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CondoFeesTerm" text;
    COMMENT ON COLUMN mfrmls."Property"."CondoFeesTerm" IS 'Condo Fees Term';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CondoLandIncludedYN" text;
    COMMENT ON COLUMN mfrmls."Property"."CondoLandIncludedYN" IS 'Condo Land Included YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ConstructionStatus" text;
    COMMENT ON COLUMN mfrmls."Property"."ConstructionStatus" IS 'Construction Status';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ContractStatus" text[];
    COMMENT ON COLUMN mfrmls."Property"."ContractStatus" IS 'Contract Status';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ConvertedResidenceYN" text;
    COMMENT ON COLUMN mfrmls."Property"."ConvertedResidenceYN" IS 'Converted Residence YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Country" text;
    COMMENT ON COLUMN mfrmls."Property"."Country" IS 'Country';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CountyLandUseCode" integer;
    COMMENT ON COLUMN mfrmls."Property"."CountyLandUseCode" IS 'County Land Use Code';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN mfrmls."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CountyPropertyUseCode" integer;
    COMMENT ON COLUMN mfrmls."Property"."CountyPropertyUseCode" IS 'County Property Use Code';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CurrencyMonthlyRentAmt" decimal;
    COMMENT ON COLUMN mfrmls."Property"."CurrencyMonthlyRentAmt" IS 'Currency Monthly Rent Amt';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CurrentAdjacentUse" text[];
    COMMENT ON COLUMN mfrmls."Property"."CurrentAdjacentUse" IS 'Current Adjacent Use';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "CurrentPrice" decimal;
    COMMENT ON COLUMN mfrmls."Property"."CurrentPrice" IS 'Current Price';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN mfrmls."Property"."DOM" IS 'DOM';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DPRURL" text;
    COMMENT ON COLUMN mfrmls."Property"."DPRURL" IS 'DPRURL';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DPRURL2" text;
    COMMENT ON COLUMN mfrmls."Property"."DPRURL2" IS 'DPRURL 2';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DPRYN" text;
    COMMENT ON COLUMN mfrmls."Property"."DPRYN" IS 'DPRYN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DateAvailable" text;
    COMMENT ON COLUMN mfrmls."Property"."DateAvailable" IS 'Date Available';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DaysNoticetoTenantifnotRenew" text;
    COMMENT ON COLUMN mfrmls."Property"."DaysNoticetoTenantifnotRenew" IS 'Days Noticeto Tenantifnot Renew';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DaysToClosed" integer;
    COMMENT ON COLUMN mfrmls."Property"."DaysToClosed" IS 'Days To Closed';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DisasterMitigation" text[];
    COMMENT ON COLUMN mfrmls."Property"."DisasterMitigation" IS 'Disaster Mitigation';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Disclosures" text[];
    COMMENT ON COLUMN mfrmls."Property"."Disclosures" IS 'Disclosures';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DoorHeight" text;
    COMMENT ON COLUMN mfrmls."Property"."DoorHeight" IS 'Door Height';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DoorWidth" text;
    COMMENT ON COLUMN mfrmls."Property"."DoorWidth" IS 'Door Width';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "DrivingDirections" text;
    COMMENT ON COLUMN mfrmls."Property"."DrivingDirections" IS 'Driving Directions';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Easements" text;
    COMMENT ON COLUMN mfrmls."Property"."Easements" IS 'Easements';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "EasementsCOM" text;
    COMMENT ON COLUMN mfrmls."Property"."EasementsCOM" IS 'Easements COM';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "EavesHeight" text;
    COMMENT ON COLUMN mfrmls."Property"."EavesHeight" IS 'Eaves Height';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "EfficienciesNumberOf" integer;
    COMMENT ON COLUMN mfrmls."Property"."EfficienciesNumberOf" IS 'Efficiencies Number Of';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "EfficiencyAvgRent" integer;
    COMMENT ON COLUMN mfrmls."Property"."EfficiencyAvgRent" IS 'Efficiency Avg Rent';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ElectricalService" text[];
    COMMENT ON COLUMN mfrmls."Property"."ElectricalService" IS 'Electrical Service';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ElementarySchool" text;
    COMMENT ON COLUMN mfrmls."Property"."ElementarySchool" IS 'Elementary School';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "EndDateofLse" text;
    COMMENT ON COLUMN mfrmls."Property"."EndDateofLse" IS 'End Dateof Lse';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "EstAnnualMarketIncome" decimal;
    COMMENT ON COLUMN mfrmls."Property"."EstAnnualMarketIncome" IS 'Est Annual Market Income';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ExistLseTenantYN" text;
    COMMENT ON COLUMN mfrmls."Property"."ExistLseTenantYN" IS 'Exist Lse Tenant YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ExistingLeaseBuyoutAllow" integer;
    COMMENT ON COLUMN mfrmls."Property"."ExistingLeaseBuyoutAllow" IS 'Existing Lease Buyout Allow';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ExpectedClosingDate" text;
    COMMENT ON COLUMN mfrmls."Property"."ExpectedClosingDate" IS 'Expected Closing Date';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ExteriorConstruction" text[];
    COMMENT ON COLUMN mfrmls."Property"."ExteriorConstruction" IS 'Exterior Construction';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN mfrmls."Property"."ExteriorFeatures" IS 'Exterior Features';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Fences" text[];
    COMMENT ON COLUMN mfrmls."Property"."Fences" IS 'Fences';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FinancialSource" text;
    COMMENT ON COLUMN mfrmls."Property"."FinancialSource" IS 'Financial Source';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FinancingAvailable" text[];
    COMMENT ON COLUMN mfrmls."Property"."FinancingAvailable" IS 'Financing Available';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FinancingTerms" text;
    COMMENT ON COLUMN mfrmls."Property"."FinancingTerms" IS 'Financing Terms';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FireplaceDescription" text[];
    COMMENT ON COLUMN mfrmls."Property"."FireplaceDescription" IS 'Fireplace Description';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FireplaceYN" text;
    COMMENT ON COLUMN mfrmls."Property"."FireplaceYN" IS 'Fireplace YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FlexSpaceSqFt" integer;
    COMMENT ON COLUMN mfrmls."Property"."FlexSpaceSqFt" IS 'Flex Space Sq Ft';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FloodZoneCode" text;
    COMMENT ON COLUMN mfrmls."Property"."FloodZoneCode" IS 'Flood Zone Code';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FloorCovering" text[];
    COMMENT ON COLUMN mfrmls."Property"."FloorCovering" IS 'Floor Covering';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FloorNum" integer;
    COMMENT ON COLUMN mfrmls."Property"."FloorNum" IS 'Floor Num';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FloorsinUnit" integer;
    COMMENT ON COLUMN mfrmls."Property"."FloorsinUnit" IS 'Floorsin Unit';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ForLeaseYN" text;
    COMMENT ON COLUMN mfrmls."Property"."ForLeaseYN" IS 'For Lease YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Foundation" text[];
    COMMENT ON COLUMN mfrmls."Property"."Foundation" IS 'Foundation';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FreezerSpaceYN" text;
    COMMENT ON COLUMN mfrmls."Property"."FreezerSpaceYN" IS 'Freezer Space YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FrontExposure" text;
    COMMENT ON COLUMN mfrmls."Property"."FrontExposure" IS 'Front Exposure';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FrontFootage" integer;
    COMMENT ON COLUMN mfrmls."Property"."FrontFootage" IS 'Front Footage';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FrontageDescription" text[];
    COMMENT ON COLUMN mfrmls."Property"."FrontageDescription" IS 'Frontage Description';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Furnishings" text;
    COMMENT ON COLUMN mfrmls."Property"."Furnishings" IS 'Furnishings';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "FutureLandUse" text;
    COMMENT ON COLUMN mfrmls."Property"."FutureLandUse" IS 'Future Land Use';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "GarageCarport" text[];
    COMMENT ON COLUMN mfrmls."Property"."GarageCarport" IS 'Garage Carport';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "GarageDimensions" text;
    COMMENT ON COLUMN mfrmls."Property"."GarageDimensions" IS 'Garage Dimensions';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "GarageDoorHeight" text;
    COMMENT ON COLUMN mfrmls."Property"."GarageDoorHeight" IS 'Garage Door Height';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "GarageFeatures" text[];
    COMMENT ON COLUMN mfrmls."Property"."GarageFeatures" IS 'Garage Features';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "GreenCertifications" text[];
    COMMENT ON COLUMN mfrmls."Property"."GreenCertifications" IS 'Green Certifications';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "GreenEnergyFeatures" text[];
    COMMENT ON COLUMN mfrmls."Property"."GreenEnergyFeatures" IS 'Green Energy Features';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "GreenLandscaping" text[];
    COMMENT ON COLUMN mfrmls."Property"."GreenLandscaping" IS 'Green Landscaping';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "GreenSiteImprovements" text[];
    COMMENT ON COLUMN mfrmls."Property"."GreenSiteImprovements" IS 'Green Site Improvements';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "GreenWaterFeatures" text[];
    COMMENT ON COLUMN mfrmls."Property"."GreenWaterFeatures" IS 'Green Water Features';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "HERSIndex" integer;
    COMMENT ON COLUMN mfrmls."Property"."HERSIndex" IS 'HERS Index';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "HOACommonAssn" text;
    COMMENT ON COLUMN mfrmls."Property"."HOACommonAssn" IS 'HOA Common Assn';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "HOAFee" decimal;
    COMMENT ON COLUMN mfrmls."Property"."HOAFee" IS 'HOA Fee';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "HOAPaymentSchedule" text;
    COMMENT ON COLUMN mfrmls."Property"."HOAPaymentSchedule" IS 'HOA Payment Schedule';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "HeatingandFuel" text[];
    COMMENT ON COLUMN mfrmls."Property"."HeatingandFuel" IS 'Heatingand Fuel';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "HighSchool" text;
    COMMENT ON COLUMN mfrmls."Property"."HighSchool" IS 'High School';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "HomesteadYN" text;
    COMMENT ON COLUMN mfrmls."Property"."HomesteadYN" IS 'Homestead YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "HousingForOlderPersons" text[];
    COMMENT ON COLUMN mfrmls."Property"."HousingForOlderPersons" IS 'Housing For Older Persons';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "IDXOptInYN" text;
    COMMENT ON COLUMN mfrmls."Property"."IDXOptInYN" IS 'IDX Opt In YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "IDXVOWDisplayCommentsYN" text;
    COMMENT ON COLUMN mfrmls."Property"."IDXVOWDisplayCommentsYN" IS 'IDXVOW Display Comments YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "IndoorAirQuality" text[];
    COMMENT ON COLUMN mfrmls."Property"."IndoorAirQuality" IS 'Indoor Air Quality';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "InteriorFeatures" text[];
    COMMENT ON COLUMN mfrmls."Property"."InteriorFeatures" IS 'Interior Features';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "InteriorLayout" text[];
    COMMENT ON COLUMN mfrmls."Property"."InteriorLayout" IS 'Interior Layout';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "InternetYN" text;
    COMMENT ON COLUMN mfrmls."Property"."InternetYN" IS 'Internet YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "KitchenFeatures" text[];
    COMMENT ON COLUMN mfrmls."Property"."KitchenFeatures" IS 'Kitchen Features';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LPSqFt" decimal;
    COMMENT ON COLUMN mfrmls."Property"."LPSqFt" IS 'LP Sq Ft';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LSCListSide" text;
    COMMENT ON COLUMN mfrmls."Property"."LSCListSide" IS 'LSC List Side';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LSCSellSide" text;
    COMMENT ON COLUMN mfrmls."Property"."LSCSellSide" IS 'LSC Sell Side';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LandLeaseFee" integer;
    COMMENT ON COLUMN mfrmls."Property"."LandLeaseFee" IS 'Land Lease Fee';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LastDateAvailable" text;
    COMMENT ON COLUMN mfrmls."Property"."LastDateAvailable" IS 'Last Date Available';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LastMonthsRent" integer;
    COMMENT ON COLUMN mfrmls."Property"."LastMonthsRent" IS 'Last Months Rent';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LeaseFee" integer;
    COMMENT ON COLUMN mfrmls."Property"."LeaseFee" IS 'Lease Fee';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LeasePrice" decimal;
    COMMENT ON COLUMN mfrmls."Property"."LeasePrice" IS 'Lease Price';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LeasePricePerAcre" integer;
    COMMENT ON COLUMN mfrmls."Property"."LeasePricePerAcre" IS 'Lease Price Per Acre';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LeasePricePerYr" decimal;
    COMMENT ON COLUMN mfrmls."Property"."LeasePricePerYr" IS 'Lease Price Per Yr';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LeasePriceperSF" decimal;
    COMMENT ON COLUMN mfrmls."Property"."LeasePriceperSF" IS 'Lease Priceper SF';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LeaseRemarks" text;
    COMMENT ON COLUMN mfrmls."Property"."LeaseRemarks" IS 'Lease Remarks';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LeaseTerms" text[];
    COMMENT ON COLUMN mfrmls."Property"."LeaseTerms" IS 'Lease Terms';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LegalDescription" text;
    COMMENT ON COLUMN mfrmls."Property"."LegalDescription" IS 'Legal Description';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LegalSubdivisionName" text;
    COMMENT ON COLUMN mfrmls."Property"."LegalSubdivisionName" IS 'Legal Subdivision Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LengthofLease" integer;
    COMMENT ON COLUMN mfrmls."Property"."LengthofLease" IS 'Lengthof Lease';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN mfrmls."Property"."ListAgentDirectWorkPhone" IS 'List Agent Direct Work Phone';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListAgentEmail" text;
    COMMENT ON COLUMN mfrmls."Property"."ListAgentEmail" IS 'List Agent Email';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN mfrmls."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN mfrmls."Property"."ListAgentMLSID" IS 'List Agent MLSID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN mfrmls."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListOfficeHeadOffice_MUI" bigint;
    COMMENT ON COLUMN mfrmls."Property"."ListOfficeHeadOffice_MUI" IS 'List Office Head Office MUI';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN mfrmls."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN mfrmls."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN mfrmls."Property"."ListOfficePhone" IS 'List Office Phone';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN mfrmls."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN mfrmls."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListingContractDate" text;
    COMMENT ON COLUMN mfrmls."Property"."ListingContractDate" IS 'Listing Contract Date';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListingType" text;
    COMMENT ON COLUMN mfrmls."Property"."ListingType" IS 'Listing Type';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ListingwPhotoApprovedYN" text;
    COMMENT ON COLUMN mfrmls."Property"."ListingwPhotoApprovedYN" IS 'Listingw Photo Approved YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Location" text[];
    COMMENT ON COLUMN mfrmls."Property"."Location" IS 'Location';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LongTermYN" text;
    COMMENT ON COLUMN mfrmls."Property"."LongTermYN" IS 'Long Term YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LotDimensions" text;
    COMMENT ON COLUMN mfrmls."Property"."LotDimensions" IS 'Lot Dimensions';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LotNum" text;
    COMMENT ON COLUMN mfrmls."Property"."LotNum" IS 'Lot Num';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LotSizeAcres" decimal;
    COMMENT ON COLUMN mfrmls."Property"."LotSizeAcres" IS 'Lot Size Acres';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "LotSizeSqFt" integer;
    COMMENT ON COLUMN mfrmls."Property"."LotSizeSqFt" IS 'Lot Size Sq Ft';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MFRConsumerYN" text;
    COMMENT ON COLUMN mfrmls."Property"."MFRConsumerYN" IS 'MFR Consumer YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MHWidth" text;
    COMMENT ON COLUMN mfrmls."Property"."MHWidth" IS 'MH Width';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MLSAreaMajor" text;
    COMMENT ON COLUMN mfrmls."Property"."MLSAreaMajor" IS 'MLS Area Major';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN mfrmls."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MaintenanceIncludes" text[];
    COMMENT ON COLUMN mfrmls."Property"."MaintenanceIncludes" IS 'Maintenance Includes';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Management" text;
    COMMENT ON COLUMN mfrmls."Property"."Management" IS 'Management';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MandatoryFees" text[];
    COMMENT ON COLUMN mfrmls."Property"."MandatoryFees" IS 'Mandatory Fees';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MasterBathFeatures" text[];
    COMMENT ON COLUMN mfrmls."Property"."MasterBathFeatures" IS 'Master Bath Features';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MasterBedSize" text;
    COMMENT ON COLUMN mfrmls."Property"."MasterBedSize" IS 'Master Bed Size';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN mfrmls."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN mfrmls."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MaxPetWeight" integer;
    COMMENT ON COLUMN mfrmls."Property"."MaxPetWeight" IS 'Max Pet Weight';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MiddleorJuniorSchool" text;
    COMMENT ON COLUMN mfrmls."Property"."MiddleorJuniorSchool" IS 'Middleor Junior School';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MillageRate" decimal;
    COMMENT ON COLUMN mfrmls."Property"."MillageRate" IS 'Millage Rate';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MinimumDaysLeased" integer;
    COMMENT ON COLUMN mfrmls."Property"."MinimumDaysLeased" IS 'Minimum Days Leased';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MinimumLease" text;
    COMMENT ON COLUMN mfrmls."Property"."MinimumLease" IS 'Minimum Lease';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Miscellaneous" text[];
    COMMENT ON COLUMN mfrmls."Property"."Miscellaneous" IS 'Miscellaneous';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Miscellaneous2" text[];
    COMMENT ON COLUMN mfrmls."Property"."Miscellaneous2" IS 'Miscellaneous 2';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MoMaintAmtadditiontoHOA" integer;
    COMMENT ON COLUMN mfrmls."Property"."MoMaintAmtadditiontoHOA" IS 'Mo Maint Amtadditionto HOA';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ModelMake" text;
    COMMENT ON COLUMN mfrmls."Property"."ModelMake" IS 'Model Make';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ModelName" text;
    COMMENT ON COLUMN mfrmls."Property"."ModelName" IS 'Model Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MonthlyCondoFeeAmount" integer;
    COMMENT ON COLUMN mfrmls."Property"."MonthlyCondoFeeAmount" IS 'Monthly Condo Fee Amount';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MonthlyHOAAmount" decimal;
    COMMENT ON COLUMN mfrmls."Property"."MonthlyHOAAmount" IS 'Monthly HOA Amount';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "MthtoMthorWeeklyYN" text;
    COMMENT ON COLUMN mfrmls."Property"."MthtoMthorWeeklyYN" IS 'Mthto Mthor Weekly YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NetLeasableSqFt" integer;
    COMMENT ON COLUMN mfrmls."Property"."NetLeasableSqFt" IS 'Net Leasable Sq Ft';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NetOperatingIncome" integer;
    COMMENT ON COLUMN mfrmls."Property"."NetOperatingIncome" IS 'Net Operating Income';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NetOperatingIncomeType" text;
    COMMENT ON COLUMN mfrmls."Property"."NetOperatingIncomeType" IS 'Net Operating Income Type';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NewConstructionYN" text;
    COMMENT ON COLUMN mfrmls."Property"."NewConstructionYN" IS 'New Construction YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NonRepComp" text;
    COMMENT ON COLUMN mfrmls."Property"."NonRepComp" IS 'Non Rep Comp';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Num1Bed1Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."Num1Bed1Bath" IS 'Num 1 Bed 1 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Num2Bed1Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."Num2Bed1Bath" IS 'Num 2 Bed 1 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Num2Bed2Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."Num2Bed2Bath" IS 'Num 2 Bed 2 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Num3Bed1Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."Num3Bed1Bath" IS 'Num 3 Bed 1 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Num3Bed2Bath" integer;
    COMMENT ON COLUMN mfrmls."Property"."Num3Bed2Bath" IS 'Num 3 Bed 2 Bath';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumTimesperYear" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumTimesperYear" IS 'Num Timesper Year';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofAddParcels" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofAddParcels" IS 'Numof Add Parcels';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofBays" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofBays" IS 'Numof Bays';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofBaysDockHigh" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofBaysDockHigh" IS 'Numof Bays Dock High';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofBaysGradeLevel" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofBaysGradeLevel" IS 'Numof Bays Grade Level';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofConferenceMeetingRooms" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofConferenceMeetingRooms" IS 'Numof Conference Meeting Rooms';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofHotelMotelRms" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofHotelMotelRms" IS 'Numof Hotel Motel Rms';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofOffices" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofOffices" IS 'Numof Offices';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofOwnYrsPriortoLse" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofOwnYrsPriortoLse" IS 'Numof Own Yrs Priorto Lse';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofPets" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofPets" IS 'Numof Pets';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "NumofRestrooms" integer;
    COMMENT ON COLUMN mfrmls."Property"."NumofRestrooms" IS 'Numof Restrooms';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OffMarketDate" text;
    COMMENT ON COLUMN mfrmls."Property"."OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OffSeasonRent" integer;
    COMMENT ON COLUMN mfrmls."Property"."OffSeasonRent" IS 'Off Season Rent';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OfficeFax" text;
    COMMENT ON COLUMN mfrmls."Property"."OfficeFax" IS 'Office Fax';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OfficePrimaryBoardID" text;
    COMMENT ON COLUMN mfrmls."Property"."OfficePrimaryBoardID" IS 'Office Primary Board ID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OfficeRetailSpaceSqFt" integer;
    COMMENT ON COLUMN mfrmls."Property"."OfficeRetailSpaceSqFt" IS 'Office Retail Space Sq Ft';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OriginalEntryTimestamp" text;
    COMMENT ON COLUMN mfrmls."Property"."OriginalEntryTimestamp" IS 'Original Entry Timestamp';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN mfrmls."Property"."OriginalListPrice" IS 'Original List Price';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OtherExemptionsYN" text;
    COMMENT ON COLUMN mfrmls."Property"."OtherExemptionsYN" IS 'Other Exemptions YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OtherFees" text;
    COMMENT ON COLUMN mfrmls."Property"."OtherFees" IS 'Other Fees';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OtherFeesAmount" integer;
    COMMENT ON COLUMN mfrmls."Property"."OtherFeesAmount" IS 'Other Fees Amount';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OtherFeesTerm" text;
    COMMENT ON COLUMN mfrmls."Property"."OtherFeesTerm" IS 'Other Fees Term';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "OtherFeesYN" text;
    COMMENT ON COLUMN mfrmls."Property"."OtherFeesYN" IS 'Other Fees YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ParcelNumber" text;
    COMMENT ON COLUMN mfrmls."Property"."ParcelNumber" IS 'Parcel Number';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Parking" text[];
    COMMENT ON COLUMN mfrmls."Property"."Parking" IS 'Parking';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PetDeposit" integer;
    COMMENT ON COLUMN mfrmls."Property"."PetDeposit" IS 'Pet Deposit';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PetFeeNonRefundable" integer;
    COMMENT ON COLUMN mfrmls."Property"."PetFeeNonRefundable" IS 'Pet Fee Non Refundable';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PetRestrictions" text;
    COMMENT ON COLUMN mfrmls."Property"."PetRestrictions" IS 'Pet Restrictions';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PetRestrictionsYN" text;
    COMMENT ON COLUMN mfrmls."Property"."PetRestrictionsYN" IS 'Pet Restrictions YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PetSize" text;
    COMMENT ON COLUMN mfrmls."Property"."PetSize" IS 'Pet Size';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PetsAllowedYN" text;
    COMMENT ON COLUMN mfrmls."Property"."PetsAllowedYN" IS 'Pets Allowed YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN mfrmls."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN mfrmls."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PlannedUnitDevelopmentYN" text;
    COMMENT ON COLUMN mfrmls."Property"."PlannedUnitDevelopmentYN" IS 'Planned Unit Development YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PlatBookPage" text;
    COMMENT ON COLUMN mfrmls."Property"."PlatBookPage" IS 'Plat Book Page';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Pool" text[];
    COMMENT ON COLUMN mfrmls."Property"."Pool" IS 'Pool';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PoolDimensions" text;
    COMMENT ON COLUMN mfrmls."Property"."PoolDimensions" IS 'Pool Dimensions';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PoolType" text[];
    COMMENT ON COLUMN mfrmls."Property"."PoolType" IS 'Pool Type';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Porches" text;
    COMMENT ON COLUMN mfrmls."Property"."Porches" IS 'Porches';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN mfrmls."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN mfrmls."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PriceChangeTimestamp" text;
    COMMENT ON COLUMN mfrmls."Property"."PriceChangeTimestamp" IS 'Price Change Timestamp';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PricePerAcre" integer;
    COMMENT ON COLUMN mfrmls."Property"."PricePerAcre" IS 'Price Per Acre';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ProjectedCompletionDate" text;
    COMMENT ON COLUMN mfrmls."Property"."ProjectedCompletionDate" IS 'Projected Completion Date';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PropertyDescription" text[];
    COMMENT ON COLUMN mfrmls."Property"."PropertyDescription" IS 'Property Description';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PropertyStatus" text;
    COMMENT ON COLUMN mfrmls."Property"."PropertyStatus" IS 'Property Status';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PropertyStyle" text;
    COMMENT ON COLUMN mfrmls."Property"."PropertyStyle" IS 'Property Style';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PropertyStyleCOM" text[];
    COMMENT ON COLUMN mfrmls."Property"."PropertyStyleCOM" IS 'Property Style COM';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN mfrmls."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PropertyUse" text;
    COMMENT ON COLUMN mfrmls."Property"."PropertyUse" IS 'Property Use';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ProviderModificationTimestamp" text;
    COMMENT ON COLUMN mfrmls."Property"."ProviderModificationTimestamp" IS 'Provider Modification Timestamp';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "PublicRemarksNew" text;
    COMMENT ON COLUMN mfrmls."Property"."PublicRemarksNew" IS 'Public Remarks New';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Range" text;
    COMMENT ON COLUMN mfrmls."Property"."Range" IS 'Range';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RealtorInfo" text[];
    COMMENT ON COLUMN mfrmls."Property"."RealtorInfo" IS 'Realtor Info';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RealtorOnlyRemarks" text;
    COMMENT ON COLUMN mfrmls."Property"."RealtorOnlyRemarks" IS 'Realtor Only Remarks';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RecipSellAgentName" text;
    COMMENT ON COLUMN mfrmls."Property"."RecipSellAgentName" IS 'Recip Sell Agent Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RecipSellOfficeName" text;
    COMMENT ON COLUMN mfrmls."Property"."RecipSellOfficeName" IS 'Recip Sell Office Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RentConcession" integer;
    COMMENT ON COLUMN mfrmls."Property"."RentConcession" IS 'Rent Concession';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RentIncludes" text[];
    COMMENT ON COLUMN mfrmls."Property"."RentIncludes" IS 'Rent Includes';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RentalRateType" text;
    COMMENT ON COLUMN mfrmls."Property"."RentalRateType" IS 'Rental Rate Type';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RoadFrontage" text;
    COMMENT ON COLUMN mfrmls."Property"."RoadFrontage" IS 'Road Frontage';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RoadFrontageFt" integer;
    COMMENT ON COLUMN mfrmls."Property"."RoadFrontageFt" IS 'Road Frontage Ft';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Roof" text[];
    COMMENT ON COLUMN mfrmls."Property"."Roof" IS 'Roof';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "RoomCount" integer;
    COMMENT ON COLUMN mfrmls."Property"."RoomCount" IS 'Room Count';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SPLPRatio" decimal;
    COMMENT ON COLUMN mfrmls."Property"."SPLPRatio" IS 'SPLP Ratio';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SPSqFt" decimal;
    COMMENT ON COLUMN mfrmls."Property"."SPSqFt" IS 'SP Sq Ft';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SWSubdivCommunityName" text;
    COMMENT ON COLUMN mfrmls."Property"."SWSubdivCommunityName" IS 'SW Subdiv Community Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SWSubdivCondoNum" text;
    COMMENT ON COLUMN mfrmls."Property"."SWSubdivCondoNum" IS 'SW Subdiv Condo Num';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SeasonalRent" integer;
    COMMENT ON COLUMN mfrmls."Property"."SeasonalRent" IS 'Seasonal Rent';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Section" text;
    COMMENT ON COLUMN mfrmls."Property"."Section" IS 'Section';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SecurityDeposit" integer;
    COMMENT ON COLUMN mfrmls."Property"."SecurityDeposit" IS 'Security Deposit';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SellingAgentFullName" text;
    COMMENT ON COLUMN mfrmls."Property"."SellingAgentFullName" IS 'Selling Agent Full Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SellingAgentMLSID" text;
    COMMENT ON COLUMN mfrmls."Property"."SellingAgentMLSID" IS 'Selling Agent MLSID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SellingOfficeMLSID" text;
    COMMENT ON COLUMN mfrmls."Property"."SellingOfficeMLSID" IS 'Selling Office MLSID';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SellingOfficeName" text;
    COMMENT ON COLUMN mfrmls."Property"."SellingOfficeName" IS 'Selling Office Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ShowPropAddrOnInternetYN" text;
    COMMENT ON COLUMN mfrmls."Property"."ShowPropAddrOnInternetYN" IS 'Show Prop Addr On Internet YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SidewalkYN" text;
    COMMENT ON COLUMN mfrmls."Property"."SidewalkYN" IS 'Sidewalk YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SingleAgentComp" text;
    COMMENT ON COLUMN mfrmls."Property"."SingleAgentComp" IS 'Single Agent Comp';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SiteImprovements" text[];
    COMMENT ON COLUMN mfrmls."Property"."SiteImprovements" IS 'Site Improvements';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SoldRemarks" text;
    COMMENT ON COLUMN mfrmls."Property"."SoldRemarks" IS 'Sold Remarks';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SpaceType" text;
    COMMENT ON COLUMN mfrmls."Property"."SpaceType" IS 'Space Type';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SpecialListingType" text;
    COMMENT ON COLUMN mfrmls."Property"."SpecialListingType" IS 'Special Listing Type';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SpecialSaleProvision" text;
    COMMENT ON COLUMN mfrmls."Property"."SpecialSaleProvision" IS 'Special Sale Provision';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SpecialTaxDistTampaYN" text;
    COMMENT ON COLUMN mfrmls."Property"."SpecialTaxDistTampaYN" IS 'Special Tax Dist Tampa YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SqFtGross" integer;
    COMMENT ON COLUMN mfrmls."Property"."SqFtGross" IS 'Sq Ft Gross';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SqFtHeated" integer;
    COMMENT ON COLUMN mfrmls."Property"."SqFtHeated" IS 'Sq Ft Heated';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SqFtTotal" integer;
    COMMENT ON COLUMN mfrmls."Property"."SqFtTotal" IS 'Sq Ft Total';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SquareFootSource" text;
    COMMENT ON COLUMN mfrmls."Property"."SquareFootSource" IS 'Square Foot Source';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StateLandUseCode" integer;
    COMMENT ON COLUMN mfrmls."Property"."StateLandUseCode" IS 'State Land Use Code';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN mfrmls."Property"."StateOrProvince" IS 'StateOrProvince';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StatePropertyUseCode" integer;
    COMMENT ON COLUMN mfrmls."Property"."StatePropertyUseCode" IS 'State Property Use Code';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN mfrmls."Property"."Status" IS 'Status';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StatusChangeTimestamp" text;
    COMMENT ON COLUMN mfrmls."Property"."StatusChangeTimestamp" IS 'Status Change Timestamp';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StreetCity" text;
    COMMENT ON COLUMN mfrmls."Property"."StreetCity" IS 'Street City';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN mfrmls."Property"."StreetDirPrefix" IS 'Street Dir Prefix';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN mfrmls."Property"."StreetDirSuffix" IS 'Street Dir Suffix';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN mfrmls."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN mfrmls."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN mfrmls."Property"."StreetSuffix" IS 'Street Suffix';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "StudioDimensions" text;
    COMMENT ON COLUMN mfrmls."Property"."StudioDimensions" IS 'Studio Dimensions';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SubdivisionNum" text;
    COMMENT ON COLUMN mfrmls."Property"."SubdivisionNum" IS 'Subdivision Num';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "SubdivisionSectionNumber" integer;
    COMMENT ON COLUMN mfrmls."Property"."SubdivisionSectionNumber" IS 'Subdivision Section Number';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TaxYear" integer;
    COMMENT ON COLUMN mfrmls."Property"."TaxYear" IS 'Tax Year';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Taxes" integer;
    COMMENT ON COLUMN mfrmls."Property"."Taxes" IS 'Taxes';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TeamName" text;
    COMMENT ON COLUMN mfrmls."Property"."TeamName" IS 'Team Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TempOffMarketDate" text;
    COMMENT ON COLUMN mfrmls."Property"."TempOffMarketDate" IS 'Temp Off Market Date';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TotalAcreage" text;
    COMMENT ON COLUMN mfrmls."Property"."TotalAcreage" IS 'Total Acreage';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TotalMonthlyExpenses" integer;
    COMMENT ON COLUMN mfrmls."Property"."TotalMonthlyExpenses" IS 'Total Monthly Expenses';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TotalMonthlyRent" integer;
    COMMENT ON COLUMN mfrmls."Property"."TotalMonthlyRent" IS 'Total Monthly Rent';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TotalNumBuildings" integer;
    COMMENT ON COLUMN mfrmls."Property"."TotalNumBuildings" IS 'Total Num Buildings';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TotalUnits" integer;
    COMMENT ON COLUMN mfrmls."Property"."TotalUnits" IS 'Total Units';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Township" text;
    COMMENT ON COLUMN mfrmls."Property"."Township" IS 'Township';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TransBrokerComp" text;
    COMMENT ON COLUMN mfrmls."Property"."TransBrokerComp" IS 'Trans Broker Comp';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "TransportationAccess" text[];
    COMMENT ON COLUMN mfrmls."Property"."TransportationAccess" IS 'Transportation Access';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "UnitCount" integer;
    COMMENT ON COLUMN mfrmls."Property"."UnitCount" IS 'Unit Count';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN mfrmls."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Units" integer;
    COMMENT ON COLUMN mfrmls."Property"."Units" IS 'Units';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "UseCode" text;
    COMMENT ON COLUMN mfrmls."Property"."UseCode" IS 'Use Code';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Utilities" text[];
    COMMENT ON COLUMN mfrmls."Property"."Utilities" IS 'Utilities';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "VirtualTourLink" text;
    COMMENT ON COLUMN mfrmls."Property"."VirtualTourLink" IS 'Virtual Tour Link';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "VirtualTourURL2" text;
    COMMENT ON COLUMN mfrmls."Property"."VirtualTourURL2" IS 'Virtual Tour URL 2';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WarehouseSpaceHeated" integer;
    COMMENT ON COLUMN mfrmls."Property"."WarehouseSpaceHeated" IS 'Warehouse Space Heated';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WarehouseSpaceTotal" integer;
    COMMENT ON COLUMN mfrmls."Property"."WarehouseSpaceTotal" IS 'Warehouse Space Total';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterAccess" text[];
    COMMENT ON COLUMN mfrmls."Property"."WaterAccess" IS 'Water Access';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterAccessYN" text;
    COMMENT ON COLUMN mfrmls."Property"."WaterAccessYN" IS 'Water Access YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterExtras" text[];
    COMMENT ON COLUMN mfrmls."Property"."WaterExtras" IS 'Water Extras';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterExtrasYN" text;
    COMMENT ON COLUMN mfrmls."Property"."WaterExtrasYN" IS 'Water Extras YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterFrontage" text[];
    COMMENT ON COLUMN mfrmls."Property"."WaterFrontage" IS 'Water Frontage';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterFrontageYN" text;
    COMMENT ON COLUMN mfrmls."Property"."WaterFrontageYN" IS 'Water Frontage YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterName" text;
    COMMENT ON COLUMN mfrmls."Property"."WaterName" IS 'Water Name';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterView" text[];
    COMMENT ON COLUMN mfrmls."Property"."WaterView" IS 'Water View';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterViewYN" text;
    COMMENT ON COLUMN mfrmls."Property"."WaterViewYN" IS 'Water View YN';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WaterfrontFeet" integer;
    COMMENT ON COLUMN mfrmls."Property"."WaterfrontFeet" IS 'Waterfront Feet';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WeeklyRent" integer;
    COMMENT ON COLUMN mfrmls."Property"."WeeklyRent" IS 'Weekly Rent';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WeeksAvailable2011" text[];
    COMMENT ON COLUMN mfrmls."Property"."WeeksAvailable2011" IS 'Weeks Available 2011';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WeeksAvailable2012" text[];
    COMMENT ON COLUMN mfrmls."Property"."WeeksAvailable2012" IS 'Weeks Available 2012';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WeeksAvailable2013" text[];
    COMMENT ON COLUMN mfrmls."Property"."WeeksAvailable2013" IS 'Weeks Available 2013';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WeeksAvailable2014" text[];
    COMMENT ON COLUMN mfrmls."Property"."WeeksAvailable2014" IS 'Weeks Available 2014';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WeeksAvailable2015" text[];
    COMMENT ON COLUMN mfrmls."Property"."WeeksAvailable2015" IS 'Weeks Available 2015';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "WindowCoverings" text[];
    COMMENT ON COLUMN mfrmls."Property"."WindowCoverings" IS 'Window Coverings';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN mfrmls."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "YrsOfOwnerPriorToLeasingReqYN" text;
    COMMENT ON COLUMN mfrmls."Property"."YrsOfOwnerPriorToLeasingReqYN" IS 'Yrs Of Owner Prior To Leasing Re';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "Zoning" text;
    COMMENT ON COLUMN mfrmls."Property"."Zoning" IS 'Zoning';
     
    ALTER TABLE mfrmls."Property" ADD COLUMN "ZoningCompatibleYN" text;
    COMMENT ON COLUMN mfrmls."Property"."ZoningCompatibleYN" IS 'Zoning Compatible YN';
     

COMMIT;