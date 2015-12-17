BEGIN;

  CREATE TABLE wmls2."Property"() INHERITS (property);
    ALTER TABLE wmls2."Property" ADD COLUMN "Acres" decimal;
    COMMENT ON COLUMN wmls2."Property"."Acres" IS 'Acres';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AcresTaxable" integer;
    COMMENT ON COLUMN wmls2."Property"."AcresTaxable" IS 'Acres Taxable';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ActiveOpenHouseCount" integer;
    COMMENT ON COLUMN wmls2."Property"."ActiveOpenHouseCount" IS 'Active Open House Count';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AdditionalContacts" text;
    COMMENT ON COLUMN wmls2."Property"."AdditionalContacts" IS 'Additional Contacts';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AdditionalFee" decimal;
    COMMENT ON COLUMN wmls2."Property"."AdditionalFee" IS 'Additional Fee';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AdditionalFeeDescription" text;
    COMMENT ON COLUMN wmls2."Property"."AdditionalFeeDescription" IS 'Additional Fee Description';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AdditionalShowingInstruction" text;
    COMMENT ON COLUMN wmls2."Property"."AdditionalShowingInstruction" IS 'Additional Showing Instruction';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AdditionalVirtualTour" text;
    COMMENT ON COLUMN wmls2."Property"."AdditionalVirtualTour" IS 'Additional Virtual Tour';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AddlHOAYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."AddlHOAYN" IS 'Addl HOAYN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Address" text;
    COMMENT ON COLUMN wmls2."Property"."Address" IS 'Address';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AddressDisplayYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."AddressDisplayYN" IS 'Address Display YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AgentRelatedToSellerYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."AgentRelatedToSellerYN" IS 'Agent Related To Seller YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AgriculturalType" text[];
    COMMENT ON COLUMN wmls2."Property"."AgriculturalType" IS 'Agricultural Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AirDescription" text;
    COMMENT ON COLUMN wmls2."Property"."AirDescription" IS 'Air Description';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AirYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."AirYN" IS 'Air YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AllowableOnsite" text[];
    COMMENT ON COLUMN wmls2."Property"."AllowableOnsite" IS 'Allowable Onsite';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Amenity" text[];
    COMMENT ON COLUMN wmls2."Property"."Amenity" IS 'Amenity';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AmortizedOverNumYears" integer;
    COMMENT ON COLUMN wmls2."Property"."AmortizedOverNumYears" IS 'Amortized Over Num Years';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AmtFinSF" decimal;
    COMMENT ON COLUMN wmls2."Property"."AmtFinSF" IS 'Amt Fin SF';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AnchoredYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."AnchoredYN" IS 'Anchored YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AnnualTaxes" decimal;
    COMMENT ON COLUMN wmls2."Property"."AnnualTaxes" IS 'Annual Taxes';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AnticipatedCloseDate" text;
    COMMENT ON COLUMN wmls2."Property"."AnticipatedCloseDate" IS 'Anticipated Close Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ApplEquip" text[];
    COMMENT ON COLUMN wmls2."Property"."ApplEquip" IS 'Appl Equip';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ApplicationFeeDesc" text;
    COMMENT ON COLUMN wmls2."Property"."ApplicationFeeDesc" IS 'Application Fee Desc';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ApplicationFeePerApplicant" integer;
    COMMENT ON COLUMN wmls2."Property"."ApplicationFeePerApplicant" IS 'Application Fee Per Applicant';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ApplicationReqdYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."ApplicationReqdYN" IS 'Application Reqd YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Area" text;
    COMMENT ON COLUMN wmls2."Property"."Area" IS 'Area';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AssdImproved" integer;
    COMMENT ON COLUMN wmls2."Property"."AssdImproved" IS 'Assd Improved';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AssdLand" integer;
    COMMENT ON COLUMN wmls2."Property"."AssdLand" IS 'Assd Land';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AssdTotal" integer;
    COMMENT ON COLUMN wmls2."Property"."AssdTotal" IS 'Assd Total';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AssdYear" integer;
    COMMENT ON COLUMN wmls2."Property"."AssdYear" IS 'Assd Year';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AssociationYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."AssociationYN" IS 'Association YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AssumableYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."AssumableYN" IS 'Assumable YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AtGradeYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."AtGradeYN" IS 'At Grade YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AttachmentCount" integer;
    COMMENT ON COLUMN wmls2."Property"."AttachmentCount" IS 'Attachment Count';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Attic" text[];
    COMMENT ON COLUMN wmls2."Property"."Attic" IS 'Attic';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AvailabilityType" text;
    COMMENT ON COLUMN wmls2."Property"."AvailabilityType" IS 'Availability Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AvailableInfo" text[];
    COMMENT ON COLUMN wmls2."Property"."AvailableInfo" IS 'Available Info';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "AvmYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."AvmYN" IS 'Avm YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BackOnMarketDate" text;
    COMMENT ON COLUMN wmls2."Property"."BackOnMarketDate" IS 'Back On Market Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BasementType" text[];
    COMMENT ON COLUMN wmls2."Property"."BasementType" IS 'Basement Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BasementYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."BasementYN" IS 'Basement YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN wmls2."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN wmls2."Property"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN wmls2."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN wmls2."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Block" text;
    COMMENT ON COLUMN wmls2."Property"."Block" IS 'Block';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BodyOfWater" text;
    COMMENT ON COLUMN wmls2."Property"."BodyOfWater" IS 'Body Of Water';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BsmtFinishedSqft" integer;
    COMMENT ON COLUMN wmls2."Property"."BsmtFinishedSqft" IS 'Bsmt Finished Sqft';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BsmtUnfinishedSqft" integer;
    COMMENT ON COLUMN wmls2."Property"."BsmtUnfinishedSqft" IS 'Bsmt Unfinished Sqft';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BuildingClass" text;
    COMMENT ON COLUMN wmls2."Property"."BuildingClass" IS 'Building Class';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BuildingCondition" text[];
    COMMENT ON COLUMN wmls2."Property"."BuildingCondition" IS 'Building Condition';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "BuildingStructure" text[];
    COMMENT ON COLUMN wmls2."Property"."BuildingStructure" IS 'Building Structure';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CancelledDate" text;
    COMMENT ON COLUMN wmls2."Property"."CancelledDate" IS 'Cancelled Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CapRatePct" decimal;
    COMMENT ON COLUMN wmls2."Property"."CapRatePct" IS 'Cap Rate Pct';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CapRateType" text;
    COMMENT ON COLUMN wmls2."Property"."CapRateType" IS 'Cap Rate Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CashFlowType" text;
    COMMENT ON COLUMN wmls2."Property"."CashFlowType" IS 'Cash Flow Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CashOnCashPct" text;
    COMMENT ON COLUMN wmls2."Property"."CashOnCashPct" IS 'Cash On Cash Pct';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CashProffersYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."CashProffersYN" IS 'Cash Proffers YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CeilingHeight" decimal;
    COMMENT ON COLUMN wmls2."Property"."CeilingHeight" IS 'Ceiling Height';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN wmls2."Property"."City" IS 'City';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ClearCeilingHtFt" decimal;
    COMMENT ON COLUMN wmls2."Property"."ClearCeilingHtFt" IS 'Clear Ceiling Ht Ft';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CloseDate" text;
    COMMENT ON COLUMN wmls2."Property"."CloseDate" IS 'Close Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ClosePrice" decimal;
    COMMENT ON COLUMN wmls2."Property"."ClosePrice" IS 'Close Price';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN wmls2."Property"."CoListAgentDirectWorkPhone" IS 'Co List Agent Direct Work Phone';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListAgentEmail" text;
    COMMENT ON COLUMN wmls2."Property"."CoListAgentEmail" IS 'Co List Agent Email';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListAgentFullName" text;
    COMMENT ON COLUMN wmls2."Property"."CoListAgentFullName" IS 'Co List Agent Full Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListAgentMLSID" text;
    COMMENT ON COLUMN wmls2."Property"."CoListAgentMLSID" IS 'Co List Agent MLSID';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListAgent_MUI" bigint;
    COMMENT ON COLUMN wmls2."Property"."CoListAgent_MUI" IS 'Co List Agent MUI';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListOfficeMLSID" text;
    COMMENT ON COLUMN wmls2."Property"."CoListOfficeMLSID" IS 'Co List Office MLSID';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListOfficeName" text;
    COMMENT ON COLUMN wmls2."Property"."CoListOfficeName" IS 'Co List Office Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListOfficePhone" text;
    COMMENT ON COLUMN wmls2."Property"."CoListOfficePhone" IS 'Co List Office Phone';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListOffice_MUI" bigint;
    COMMENT ON COLUMN wmls2."Property"."CoListOffice_MUI" IS 'Co List Office MUI';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoListingAgentFax" text;
    COMMENT ON COLUMN wmls2."Property"."CoListingAgentFax" IS 'Co Listing Agent Fax';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoSellingAgentDirectWorkPhone" text;
    COMMENT ON COLUMN wmls2."Property"."CoSellingAgentDirectWorkPhone" IS 'Co Selling Agent Direct Work Pho';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoSellingAgentEmail" text;
    COMMENT ON COLUMN wmls2."Property"."CoSellingAgentEmail" IS 'Co Selling Agent Email';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoSellingAgentFullName" text;
    COMMENT ON COLUMN wmls2."Property"."CoSellingAgentFullName" IS 'Co Selling Agent Full Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoSellingAgentMLSID" text;
    COMMENT ON COLUMN wmls2."Property"."CoSellingAgentMLSID" IS 'Co Selling Agent MLSID';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoSellingAgent_MUI" bigint;
    COMMENT ON COLUMN wmls2."Property"."CoSellingAgent_MUI" IS 'Co Selling Agent MUI';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoSellingOfficeMLSID" text;
    COMMENT ON COLUMN wmls2."Property"."CoSellingOfficeMLSID" IS 'Co Selling Office MLSID';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoSellingOfficeName" text;
    COMMENT ON COLUMN wmls2."Property"."CoSellingOfficeName" IS 'Co Selling Office Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoSellingOfficePhone" text;
    COMMENT ON COLUMN wmls2."Property"."CoSellingOfficePhone" IS 'Co Selling Office Phone';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoSellingOffice_MUI" bigint;
    COMMENT ON COLUMN wmls2."Property"."CoSellingOffice_MUI" IS 'Co Selling Office MUI';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ColumnSpacingFt" decimal;
    COMMENT ON COLUMN wmls2."Property"."ColumnSpacingFt" IS 'Column Spacing Ft';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CommentsReviewsYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."CommentsReviewsYN" IS 'Comments Reviews YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CommercialExterior" text[];
    COMMENT ON COLUMN wmls2."Property"."CommercialExterior" IS 'Commercial Exterior';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CommercialSpaceCount" integer;
    COMMENT ON COLUMN wmls2."Property"."CommercialSpaceCount" IS 'Commercial Space Count';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ComplexCompleteYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."ComplexCompleteYN" IS 'Complex Complete YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ConditionalDate" text;
    COMMENT ON COLUMN wmls2."Property"."ConditionalDate" IS 'Conditional Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ConservationProgramType" text;
    COMMENT ON COLUMN wmls2."Property"."ConservationProgramType" IS 'Conservation Program Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ConservationProgramYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."ConservationProgramYN" IS 'Conservation Program YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Contingency" text;
    COMMENT ON COLUMN wmls2."Property"."Contingency" IS 'Contingency';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ContingentDate" text;
    COMMENT ON COLUMN wmls2."Property"."ContingentDate" IS 'Contingent Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Cooling" text[];
    COMMENT ON COLUMN wmls2."Property"."Cooling" IS 'Cooling';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CoolingDescription" text;
    COMMENT ON COLUMN wmls2."Property"."CoolingDescription" IS 'Cooling Description';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CountyCity" text;
    COMMENT ON COLUMN wmls2."Property"."CountyCity" IS 'County City';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN wmls2."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CraneClearanceUnderHook" decimal;
    COMMENT ON COLUMN wmls2."Property"."CraneClearanceUnderHook" IS 'Crane Clearance Under Hook';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CranesYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."CranesYN" IS 'Cranes YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CropAcres" decimal;
    COMMENT ON COLUMN wmls2."Property"."CropAcres" IS 'Crop Acres';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "CurrentPrice" decimal;
    COMMENT ON COLUMN wmls2."Property"."CurrentPrice" IS 'Current Price';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN wmls2."Property"."DOM" IS 'DOM';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DPResourceYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."DPResourceYN" IS 'DP Resource YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DebtServiceActualYearlyAmt" integer;
    COMMENT ON COLUMN wmls2."Property"."DebtServiceActualYearlyAmt" IS 'Debt Service Actual Yearly Amt';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DelayedShowingYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."DelayedShowingYN" IS 'Delayed Showing YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Deposit" integer;
    COMMENT ON COLUMN wmls2."Property"."Deposit" IS 'Deposit';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DevelopmentFeeAmt" decimal;
    COMMENT ON COLUMN wmls2."Property"."DevelopmentFeeAmt" IS 'Development Fee Amt';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DevelopmentFeeYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."DevelopmentFeeYN" IS 'Development Fee YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN wmls2."Property"."Directions" IS 'Directions';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DisabilityEquip" text[];
    COMMENT ON COLUMN wmls2."Property"."DisabilityEquip" IS 'Disability Equip';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DisabilityEquippedYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."DisabilityEquippedYN" IS 'Disability Equipped YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Disclosures" text[];
    COMMENT ON COLUMN wmls2."Property"."Disclosures" IS 'Disclosures';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DockHighYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."DockHighYN" IS 'Dock High YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DocsApproved" text[];
    COMMENT ON COLUMN wmls2."Property"."DocsApproved" IS 'Docs Approved';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DocsFiled" text[];
    COMMENT ON COLUMN wmls2."Property"."DocsFiled" IS 'Docs Filed';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "DocsReqd" text[];
    COMMENT ON COLUMN wmls2."Property"."DocsReqd" IS 'Docs Reqd';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Doors" text[];
    COMMENT ON COLUMN wmls2."Property"."Doors" IS 'Doors';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Drainage" text[];
    COMMENT ON COLUMN wmls2."Property"."Drainage" IS 'Drainage';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "EffectiveGrossOperatingExpenses" integer;
    COMMENT ON COLUMN wmls2."Property"."EffectiveGrossOperatingExpenses" IS 'Effective Gross Operating Expens';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Electric" text[];
    COMMENT ON COLUMN wmls2."Property"."Electric" IS 'Electric';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ElementarySchool" text;
    COMMENT ON COLUMN wmls2."Property"."ElementarySchool" IS 'Elementary School';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ElevatorYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."ElevatorYN" IS 'Elevator YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "EnergyEfficientAppraisalYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."EnergyEfficientAppraisalYN" IS 'Energy Efficient Appraisal YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "EnterpriseZoneYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."EnterpriseZoneYN" IS 'Enterprise Zone YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Equity" integer;
    COMMENT ON COLUMN wmls2."Property"."Equity" IS 'Equity';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Expenses" integer;
    COMMENT ON COLUMN wmls2."Property"."Expenses" IS 'Expenses';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ExpirationDate" text;
    COMMENT ON COLUMN wmls2."Property"."ExpirationDate" IS 'Expiration Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Exterior" text[];
    COMMENT ON COLUMN wmls2."Property"."Exterior" IS 'Exterior';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FarmType" text[];
    COMMENT ON COLUMN wmls2."Property"."FarmType" IS 'Farm Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FederalTaxCreditEligibilityYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."FederalTaxCreditEligibilityYN" IS 'Federal Tax Credit Eligibility Y';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Fee" decimal;
    COMMENT ON COLUMN wmls2."Property"."Fee" IS 'Fee';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FeeDesc" text[];
    COMMENT ON COLUMN wmls2."Property"."FeeDesc" IS 'Fee Desc';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FeeIncludes" text[];
    COMMENT ON COLUMN wmls2."Property"."FeeIncludes" IS 'Fee Includes';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FeePeriod" text;
    COMMENT ON COLUMN wmls2."Property"."FeePeriod" IS 'Fee Period';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FenceCondition" text[];
    COMMENT ON COLUMN wmls2."Property"."FenceCondition" IS 'Fence Condition';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FenceType" text[];
    COMMENT ON COLUMN wmls2."Property"."FenceType" IS 'Fence Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Fenced" text[];
    COMMENT ON COLUMN wmls2."Property"."Fenced" IS 'Fenced';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FencedYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."FencedYN" IS 'Fenced YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FinSF" integer;
    COMMENT ON COLUMN wmls2."Property"."FinSF" IS 'Fin SF';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FinSqFtIncludes" text;
    COMMENT ON COLUMN wmls2."Property"."FinSqFtIncludes" IS 'Fin Sq Ft Includes';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FinancingType" text[];
    COMMENT ON COLUMN wmls2."Property"."FinancingType" IS 'Financing Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Fireplace" text[];
    COMMENT ON COLUMN wmls2."Property"."Fireplace" IS 'Fireplace';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FloodPlain" text;
    COMMENT ON COLUMN wmls2."Property"."FloodPlain" IS 'Flood Plain';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Flooring" text[];
    COMMENT ON COLUMN wmls2."Property"."Flooring" IS 'Flooring';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FullBathBsmt" integer;
    COMMENT ON COLUMN wmls2."Property"."FullBathBsmt" IS 'Full Bath Bsmt';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FullBathBsmtDesc" text;
    COMMENT ON COLUMN wmls2."Property"."FullBathBsmtDesc" IS 'Full Bath Bsmt Desc';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FullBathLevel1" integer;
    COMMENT ON COLUMN wmls2."Property"."FullBathLevel1" IS 'Full Bath Level 1';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FullBathLevel1Desc" text;
    COMMENT ON COLUMN wmls2."Property"."FullBathLevel1Desc" IS 'Full Bath Level 1 Desc';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FullBathLevel2" integer;
    COMMENT ON COLUMN wmls2."Property"."FullBathLevel2" IS 'Full Bath Level 2';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FullBathLevel2Desc" text;
    COMMENT ON COLUMN wmls2."Property"."FullBathLevel2Desc" IS 'Full Bath Level 2 Desc';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FullBathLevel3" integer;
    COMMENT ON COLUMN wmls2."Property"."FullBathLevel3" IS 'Full Bath Level 3';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FullBathLevel3Desc" text;
    COMMENT ON COLUMN wmls2."Property"."FullBathLevel3Desc" IS 'Full Bath Level 3 Desc';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "FurnishedYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."FurnishedYN" IS 'Furnished YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "GarageType" text[];
    COMMENT ON COLUMN wmls2."Property"."GarageType" IS 'Garage Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "GarageYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."GarageYN" IS 'Garage YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "GolfFrontageView" text[];
    COMMENT ON COLUMN wmls2."Property"."GolfFrontageView" IS 'Golf Frontage View';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "GolfFrontageYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."GolfFrontageYN" IS 'Golf Frontage YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "GreenCertification" text[];
    COMMENT ON COLUMN wmls2."Property"."GreenCertification" IS 'Green Certification';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "GrossIncome" integer;
    COMMENT ON COLUMN wmls2."Property"."GrossIncome" IS 'Gross Income';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "GrossRentMultiplier" decimal;
    COMMENT ON COLUMN wmls2."Property"."GrossRentMultiplier" IS 'Gross Rent Multiplier';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "GvmtAssisSubsidyAccept" text;
    COMMENT ON COLUMN wmls2."Property"."GvmtAssisSubsidyAccept" IS 'Gvmt Assis Subsidy Accept';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HUDViolationDate" text;
    COMMENT ON COLUMN wmls2."Property"."HUDViolationDate" IS 'HUD Violation Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HalfBathBsmt" integer;
    COMMENT ON COLUMN wmls2."Property"."HalfBathBsmt" IS 'Half Bath Bsmt';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HalfBathLevel1" integer;
    COMMENT ON COLUMN wmls2."Property"."HalfBathLevel1" IS 'Half Bath Level 1';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HalfBathLevel2" integer;
    COMMENT ON COLUMN wmls2."Property"."HalfBathLevel2" IS 'Half Bath Level 2';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HalfBathLevel3" integer;
    COMMENT ON COLUMN wmls2."Property"."HalfBathLevel3" IS 'Half Bath Level 3';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HeatFuel" text[];
    COMMENT ON COLUMN wmls2."Property"."HeatFuel" IS 'Heat Fuel';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HeatFuelDescription" text;
    COMMENT ON COLUMN wmls2."Property"."HeatFuelDescription" IS 'Heat Fuel Description';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Heating" text[];
    COMMENT ON COLUMN wmls2."Property"."Heating" IS 'Heating';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HeatingCooling" text[];
    COMMENT ON COLUMN wmls2."Property"."HeatingCooling" IS 'Heating Cooling';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HeatingDescription" text;
    COMMENT ON COLUMN wmls2."Property"."HeatingDescription" IS 'Heating Description';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HighSchool" text;
    COMMENT ON COLUMN wmls2."Property"."HighSchool" IS 'High School';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HomeRating" integer;
    COMMENT ON COLUMN wmls2."Property"."HomeRating" IS 'Home Rating';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HomeWarranty" text;
    COMMENT ON COLUMN wmls2."Property"."HomeWarranty" IS 'Home Warranty';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "HospitalityType" text[];
    COMMENT ON COLUMN wmls2."Property"."HospitalityType" IS 'Hospitality Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "IDXOptInYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."IDXOptInYN" IS 'IDX Opt In YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "IndustrialType" text[];
    COMMENT ON COLUMN wmls2."Property"."IndustrialType" IS 'Industrial Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "InterestRatePct" integer;
    COMMENT ON COLUMN wmls2."Property"."InterestRatePct" IS 'Interest Rate Pct';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Interior" text[];
    COMMENT ON COLUMN wmls2."Property"."Interior" IS 'Interior';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "InternetDisplayYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."InternetDisplayYN" IS 'Internet Display YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "InternetPublicationOptOutYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."InternetPublicationOptOutYN" IS 'Internet Publication Opt Out YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "InvestorRentalCapYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."InvestorRentalCapYN" IS 'Investor Rental Cap YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Irrigation" text[];
    COMMENT ON COLUMN wmls2."Property"."Irrigation" IS 'Irrigation';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "IrrigationSource" text[];
    COMMENT ON COLUMN wmls2."Property"."IrrigationSource" IS 'Irrigation Source';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "IsDeleted" boolean;
    COMMENT ON COLUMN wmls2."Property"."IsDeleted" IS 'Is Deleted';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ItemsNotIncluded" text;
    COMMENT ON COLUMN wmls2."Property"."ItemsNotIncluded" IS 'Items Not Included';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LPSqFt" decimal;
    COMMENT ON COLUMN wmls2."Property"."LPSqFt" IS 'LP Sq Ft';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LandArea" integer;
    COMMENT ON COLUMN wmls2."Property"."LandArea" IS 'Land Area';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LandAreaType" text;
    COMMENT ON COLUMN wmls2."Property"."LandAreaType" IS 'Land Area Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LandFrontageFt" decimal;
    COMMENT ON COLUMN wmls2."Property"."LandFrontageFt" IS 'Land Frontage Ft';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LandType" text[];
    COMMENT ON COLUMN wmls2."Property"."LandType" IS 'Land Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LandUseAsmt" text;
    COMMENT ON COLUMN wmls2."Property"."LandUseAsmt" IS 'Land Use Asmt';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LastChangeTimestamp" text;
    COMMENT ON COLUMN wmls2."Property"."LastChangeTimestamp" IS 'Last Change Timestamp';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LastChangeType" text;
    COMMENT ON COLUMN wmls2."Property"."LastChangeType" IS 'Last Change Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LastImageTransDate" text;
    COMMENT ON COLUMN wmls2."Property"."LastImageTransDate" IS 'Last Image Trans Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LastListPrice" decimal;
    COMMENT ON COLUMN wmls2."Property"."LastListPrice" IS 'Last List Price';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LastStatus" text;
    COMMENT ON COLUMN wmls2."Property"."LastStatus" IS 'Last Status';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LeadDisclosure" text[];
    COMMENT ON COLUMN wmls2."Property"."LeadDisclosure" IS 'Lead Disclosure';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LeasePrice" decimal;
    COMMENT ON COLUMN wmls2."Property"."LeasePrice" IS 'Lease Price';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LeasePriceTerm" text;
    COMMENT ON COLUMN wmls2."Property"."LeasePriceTerm" IS 'Lease Price Term';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LeaseTerms" text;
    COMMENT ON COLUMN wmls2."Property"."LeaseTerms" IS 'Lease Terms';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LeaseWithBuyOptionYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."LeaseWithBuyOptionYN" IS 'Lease With Buy Option YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LeasedPurchasePendingDate" text;
    COMMENT ON COLUMN wmls2."Property"."LeasedPurchasePendingDate" IS 'Leased Purchase Pending Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LegalDescription" text;
    COMMENT ON COLUMN wmls2."Property"."LegalDescription" IS 'Legal Description';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LengthofTerm" text;
    COMMENT ON COLUMN wmls2."Property"."LengthofTerm" IS 'Lengthof Term';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LimitedRepresentationYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."LimitedRepresentationYN" IS 'Limited Representation YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN wmls2."Property"."ListAgentDirectWorkPhone" IS 'List Agent Direct Work Phone';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListAgentEmail" text;
    COMMENT ON COLUMN wmls2."Property"."ListAgentEmail" IS 'List Agent Email';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN wmls2."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN wmls2."Property"."ListAgentMLSID" IS 'List Agent MLSID';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN wmls2."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListDate" text;
    COMMENT ON COLUMN wmls2."Property"."ListDate" IS 'List Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN wmls2."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN wmls2."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN wmls2."Property"."ListOfficePhone" IS 'List Office Phone';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN wmls2."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN wmls2."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListType" text;
    COMMENT ON COLUMN wmls2."Property"."ListType" IS 'List Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListingAgentFax" text;
    COMMENT ON COLUMN wmls2."Property"."ListingAgentFax" IS 'Listing Agent Fax';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListingContractDate" text;
    COMMENT ON COLUMN wmls2."Property"."ListingContractDate" IS 'Listing Contract Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListingOfficeCode" text;
    COMMENT ON COLUMN wmls2."Property"."ListingOfficeCode" IS 'Listing Office Code';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListingOfficeFax" text;
    COMMENT ON COLUMN wmls2."Property"."ListingOfficeFax" IS 'Listing Office Fax';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListingOfficeName" text;
    COMMENT ON COLUMN wmls2."Property"."ListingOfficeName" IS 'Listing Office Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ListingOfficePhone" text;
    COMMENT ON COLUMN wmls2."Property"."ListingOfficePhone" IS 'Listing Office Phone';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Loading" text[];
    COMMENT ON COLUMN wmls2."Property"."Loading" IS 'Loading';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LoanPayoffYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."LoanPayoffYN" IS 'Loan Payoff YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LocationDescription" text[];
    COMMENT ON COLUMN wmls2."Property"."LocationDescription" IS 'Location Description';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Lot" text;
    COMMENT ON COLUMN wmls2."Property"."Lot" IS 'Lot';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LotDescription" text[];
    COMMENT ON COLUMN wmls2."Property"."LotDescription" IS 'Lot Description';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "LotDimensions" text;
    COMMENT ON COLUMN wmls2."Property"."LotDimensions" IS 'Lot Dimensions';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN wmls2."Property"."MLS" IS 'MLS';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN wmls2."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MaintenanceContractYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."MaintenanceContractYN" IS 'Maintenance Contract YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ManagementFirm" text;
    COMMENT ON COLUMN wmls2."Property"."ManagementFirm" IS 'Management Firm';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ManagementPhone" text;
    COMMENT ON COLUMN wmls2."Property"."ManagementPhone" IS 'Management Phone';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MapBook" text;
    COMMENT ON COLUMN wmls2."Property"."MapBook" IS 'Map Book';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MapCoordinates" text;
    COMMENT ON COLUMN wmls2."Property"."MapCoordinates" IS 'Map Coordinates';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN wmls2."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN wmls2."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MembershipReqdYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."MembershipReqdYN" IS 'Membership Reqd YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MiddleSchool" text;
    COMMENT ON COLUMN wmls2."Property"."MiddleSchool" IS 'Middle School';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MinimumDeposit" integer;
    COMMENT ON COLUMN wmls2."Property"."MinimumDeposit" IS 'Minimum Deposit';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MobileHomeCommunityTypeYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."MobileHomeCommunityTypeYN" IS 'Mobile Home Community Type YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ModelAvailableYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."ModelAvailableYN" IS 'Model Available YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ModelFurnishedYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."ModelFurnishedYN" IS 'Model Furnished YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MortgageBalance" integer;
    COMMENT ON COLUMN wmls2."Property"."MortgageBalance" IS 'Mortgage Balance';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MortgageRate" decimal;
    COMMENT ON COLUMN wmls2."Property"."MortgageRate" IS 'Mortgage Rate';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "MultiFamilyType" text[];
    COMMENT ON COLUMN wmls2."Property"."MultiFamilyType" IS 'Multi Family Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NaturalGas" text[];
    COMMENT ON COLUMN wmls2."Property"."NaturalGas" IS 'Natural Gas';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NeighborhoodName" text;
    COMMENT ON COLUMN wmls2."Property"."NeighborhoodName" IS 'Neighborhood Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NetLeaseYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."NetLeaseYN" IS 'Net Lease YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NetOperatingIncomeAmt" integer;
    COMMENT ON COLUMN wmls2."Property"."NetOperatingIncomeAmt" IS 'Net Operating Income Amt';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NetOperatingType" text;
    COMMENT ON COLUMN wmls2."Property"."NetOperatingType" IS 'Net Operating Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NewResale" text;
    COMMENT ON COLUMN wmls2."Property"."NewResale" IS 'New Resale';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NoShowingUntil" text;
    COMMENT ON COLUMN wmls2."Property"."NoShowingUntil" IS 'No Showing Until';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumCars" text;
    COMMENT ON COLUMN wmls2."Property"."NumCars" IS 'Num Cars';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumFP" integer;
    COMMENT ON COLUMN wmls2."Property"."NumFP" IS 'Num FP';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumLevels" decimal;
    COMMENT ON COLUMN wmls2."Property"."NumLevels" IS 'Num Levels';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumParkingSpacesAvailable" integer;
    COMMENT ON COLUMN wmls2."Property"."NumParkingSpacesAvailable" IS 'Num Parking Spaces Available';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumRoomsEntered" integer;
    COMMENT ON COLUMN wmls2."Property"."NumRoomsEntered" IS 'Num Rooms Entered';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumofAssignedSpaces" integer;
    COMMENT ON COLUMN wmls2."Property"."NumofAssignedSpaces" IS 'Numof Assigned Spaces';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumofCoUnits" integer;
    COMMENT ON COLUMN wmls2."Property"."NumofCoUnits" IS 'Numof Co Units';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumofMobileHomes" integer;
    COMMENT ON COLUMN wmls2."Property"."NumofMobileHomes" IS 'Numof Mobile Homes';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumofVacantSites" integer;
    COMMENT ON COLUMN wmls2."Property"."NumofVacantSites" IS 'Numof Vacant Sites';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "NumofWells" integer;
    COMMENT ON COLUMN wmls2."Property"."NumofWells" IS 'Numof Wells';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OccupancyDate" text;
    COMMENT ON COLUMN wmls2."Property"."OccupancyDate" IS 'Occupancy Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OccupiedBy" text;
    COMMENT ON COLUMN wmls2."Property"."OccupiedBy" IS 'Occupied By';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OffMarketDate" text;
    COMMENT ON COLUMN wmls2."Property"."OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OfficeType" text[];
    COMMENT ON COLUMN wmls2."Property"."OfficeType" IS 'Office Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OpenHouseCount" integer;
    COMMENT ON COLUMN wmls2."Property"."OpenHouseCount" IS 'Open House Count';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OpenHouseFlags" integer;
    COMMENT ON COLUMN wmls2."Property"."OpenHouseFlags" IS 'Open House Flags';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OpenHouseUpcoming" text;
    COMMENT ON COLUMN wmls2."Property"."OpenHouseUpcoming" IS 'Open House Upcoming';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OriginalEntryTimestamp" text;
    COMMENT ON COLUMN wmls2."Property"."OriginalEntryTimestamp" IS 'Original Entry Timestamp';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN wmls2."Property"."OriginalListPrice" IS 'Original List Price';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OtherAcres" decimal;
    COMMENT ON COLUMN wmls2."Property"."OtherAcres" IS 'Other Acres';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OtherAssumableInfo" text;
    COMMENT ON COLUMN wmls2."Property"."OtherAssumableInfo" IS 'Other Assumable Info';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OtherEnviron" text;
    COMMENT ON COLUMN wmls2."Property"."OtherEnviron" IS 'Other Environ';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OtherOfficeInformation" text[];
    COMMENT ON COLUMN wmls2."Property"."OtherOfficeInformation" IS 'Other Office Information';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OtherRetailInformation" text[];
    COMMENT ON COLUMN wmls2."Property"."OtherRetailInformation" IS 'Other Retail Information';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OtherSchool" text;
    COMMENT ON COLUMN wmls2."Property"."OtherSchool" IS 'Other School';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OwnedBy" text[];
    COMMENT ON COLUMN wmls2."Property"."OwnedBy" IS 'Owned By';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "OwnerAgentYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."OwnerAgentYN" IS 'Owner Agent YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Ownership" text[];
    COMMENT ON COLUMN wmls2."Property"."Ownership" IS 'Ownership';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PITI" integer;
    COMMENT ON COLUMN wmls2."Property"."PITI" IS 'PITI';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PUD" text;
    COMMENT ON COLUMN wmls2."Property"."PUD" IS 'PUD';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PaidBy" text;
    COMMENT ON COLUMN wmls2."Property"."PaidBy" IS 'Paid By';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ParcelCD" text;
    COMMENT ON COLUMN wmls2."Property"."ParcelCD" IS 'Parcel CD';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ParcelNumber" text;
    COMMENT ON COLUMN wmls2."Property"."ParcelNumber" IS 'Parcel Number';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Parking" text[];
    COMMENT ON COLUMN wmls2."Property"."Parking" IS 'Parking';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PastureAcres" decimal;
    COMMENT ON COLUMN wmls2."Property"."PastureAcres" IS 'Pasture Acres';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PctOccupied" decimal;
    COMMENT ON COLUMN wmls2."Property"."PctOccupied" IS 'Pct Occupied';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PendingDate" text;
    COMMENT ON COLUMN wmls2."Property"."PendingDate" IS 'Pending Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Pets" text;
    COMMENT ON COLUMN wmls2."Property"."Pets" IS 'Pets';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN wmls2."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN wmls2."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PoolDesc" text[];
    COMMENT ON COLUMN wmls2."Property"."PoolDesc" IS 'Pool Desc';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PoolYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."PoolYN" IS 'Pool YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Porch" text[];
    COMMENT ON COLUMN wmls2."Property"."Porch" IS 'Porch';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Possession" text[];
    COMMENT ON COLUMN wmls2."Property"."Possession" IS 'Possession';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PossibleUse" text[];
    COMMENT ON COLUMN wmls2."Property"."PossibleUse" IS 'Possible Use';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PostOffice" text;
    COMMENT ON COLUMN wmls2."Property"."PostOffice" IS 'Post Office';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN wmls2."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN wmls2."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PotentialUse" text;
    COMMENT ON COLUMN wmls2."Property"."PotentialUse" IS 'Potential Use';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PotentialZoning" text;
    COMMENT ON COLUMN wmls2."Property"."PotentialZoning" IS 'Potential Zoning';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PreQualLetterYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."PreQualLetterYN" IS 'Pre Qual Letter YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PreTaxCashFlowAmt" integer;
    COMMENT ON COLUMN wmls2."Property"."PreTaxCashFlowAmt" IS 'Pre Tax Cash Flow Amt';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Prefix" text;
    COMMENT ON COLUMN wmls2."Property"."Prefix" IS 'Prefix';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PriceChangeTimestamp" text;
    COMMENT ON COLUMN wmls2."Property"."PriceChangeTimestamp" IS 'Price Change Timestamp';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Profit" integer;
    COMMENT ON COLUMN wmls2."Property"."Profit" IS 'Profit';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PropertyDescription" text;
    COMMENT ON COLUMN wmls2."Property"."PropertyDescription" IS 'Property Description';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PropertyFaces" text;
    COMMENT ON COLUMN wmls2."Property"."PropertyFaces" IS 'Property Faces';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PropertyHighlights" text;
    COMMENT ON COLUMN wmls2."Property"."PropertyHighlights" IS 'Property Highlights';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN wmls2."Property"."PropertySubType" IS 'Property Sub Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN wmls2."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ProposedEquityAmt" integer;
    COMMENT ON COLUMN wmls2."Property"."ProposedEquityAmt" IS 'Proposed Equity Amt';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ProviderKey" text;
    COMMENT ON COLUMN wmls2."Property"."ProviderKey" IS 'Provider Key';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ProviderModificationTimestamp" text;
    COMMENT ON COLUMN wmls2."Property"."ProviderModificationTimestamp" IS 'Provider Modification Timestamp';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RailYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."RailYN" IS 'Rail YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RailroadFrontageYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."RailroadFrontageYN" IS 'Railroad Frontage YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RailroadSidingPossibleYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."RailroadSidingPossibleYN" IS 'Railroad Siding Possible YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RampYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."RampYN" IS 'Ramp YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ReleaseDate" text;
    COMMENT ON COLUMN wmls2."Property"."ReleaseDate" IS 'Release Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Remarks" text;
    COMMENT ON COLUMN wmls2."Property"."Remarks" IS 'Remarks';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RentIncludes" text[];
    COMMENT ON COLUMN wmls2."Property"."RentIncludes" IS 'Rent Includes';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RentPriceDesc" text;
    COMMENT ON COLUMN wmls2."Property"."RentPriceDesc" IS 'Rent Price Desc';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RentableSqFt" integer;
    COMMENT ON COLUMN wmls2."Property"."RentableSqFt" IS 'Rentable Sq Ft';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RentalRestrictions" text;
    COMMENT ON COLUMN wmls2."Property"."RentalRestrictions" IS 'Rental Restrictions';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Restrictions" text[];
    COMMENT ON COLUMN wmls2."Property"."Restrictions" IS 'Restrictions';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RetailType" text[];
    COMMENT ON COLUMN wmls2."Property"."RetailType" IS 'Retail Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RoadFrontage" integer;
    COMMENT ON COLUMN wmls2."Property"."RoadFrontage" IS 'Road Frontage';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RoadType" text[];
    COMMENT ON COLUMN wmls2."Property"."RoadType" IS 'Road Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Roof" text[];
    COMMENT ON COLUMN wmls2."Property"."Roof" IS 'Roof';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "RoomCount" integer;
    COMMENT ON COLUMN wmls2."Property"."RoomCount" IS 'Room Count';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SPSqFt" decimal;
    COMMENT ON COLUMN wmls2."Property"."SPSqFt" IS 'SP Sq Ft';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SaleTerms" text[];
    COMMENT ON COLUMN wmls2."Property"."SaleTerms" IS 'Sale Terms';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ScheduledGrossAmt" integer;
    COMMENT ON COLUMN wmls2."Property"."ScheduledGrossAmt" IS 'Scheduled Gross Amt';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ScheduledGrossType" text;
    COMMENT ON COLUMN wmls2."Property"."ScheduledGrossType" IS 'Scheduled Gross Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Section" text;
    COMMENT ON COLUMN wmls2."Property"."Section" IS 'Section';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellOrCoSellAgent" text;
    COMMENT ON COLUMN wmls2."Property"."SellOrCoSellAgent" IS 'Sell Or Co Sell Agent';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellingAgentDirectWorkPhone" text;
    COMMENT ON COLUMN wmls2."Property"."SellingAgentDirectWorkPhone" IS 'Selling Agent Direct Work Phone';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellingAgentEmail" text;
    COMMENT ON COLUMN wmls2."Property"."SellingAgentEmail" IS 'Selling Agent Email';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellingAgentFullName" text;
    COMMENT ON COLUMN wmls2."Property"."SellingAgentFullName" IS 'Selling Agent Full Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellingAgentMLSID" text;
    COMMENT ON COLUMN wmls2."Property"."SellingAgentMLSID" IS 'Selling Agent MLSID';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellingAgent_MUI" bigint;
    COMMENT ON COLUMN wmls2."Property"."SellingAgent_MUI" IS 'Selling Agent MUI';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellingOfficeMLSID" text;
    COMMENT ON COLUMN wmls2."Property"."SellingOfficeMLSID" IS 'Selling Office MLSID';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellingOfficeName" text;
    COMMENT ON COLUMN wmls2."Property"."SellingOfficeName" IS 'Selling Office Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellingOfficePhone" text;
    COMMENT ON COLUMN wmls2."Property"."SellingOfficePhone" IS 'Selling Office Phone';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SellingOffice_MUI" bigint;
    COMMENT ON COLUMN wmls2."Property"."SellingOffice_MUI" IS 'Selling Office MUI';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Sewer" text[];
    COMMENT ON COLUMN wmls2."Property"."Sewer" IS 'Sewer';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ShoppingCenterType" text[];
    COMMENT ON COLUMN wmls2."Property"."ShoppingCenterType" IS 'Shopping Center Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "ShowingInstructions" text;
    COMMENT ON COLUMN wmls2."Property"."ShowingInstructions" IS 'Showing Instructions';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Siding" text[];
    COMMENT ON COLUMN wmls2."Property"."Siding" IS 'Siding';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SignageIncludedYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."SignageIncludedYN" IS 'Signage Included YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SiteSize" integer;
    COMMENT ON COLUMN wmls2."Property"."SiteSize" IS 'Site Size';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SmokingYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."SmokingYN" IS 'Smoking YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Soil" text;
    COMMENT ON COLUMN wmls2."Property"."Soil" IS 'Soil';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SoilType" text[];
    COMMENT ON COLUMN wmls2."Property"."SoilType" IS 'Soil Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SoldTerms" text;
    COMMENT ON COLUMN wmls2."Property"."SoldTerms" IS 'Sold Terms';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SpaceCount" integer;
    COMMENT ON COLUMN wmls2."Property"."SpaceCount" IS 'Space Count';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SportsEntertainmentType" text[];
    COMMENT ON COLUMN wmls2."Property"."SportsEntertainmentType" IS 'Sports Entertainment Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Sprinklered" text;
    COMMENT ON COLUMN wmls2."Property"."Sprinklered" IS 'Sprinklered';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SqFtSource" text;
    COMMENT ON COLUMN wmls2."Property"."SqFtSource" IS 'Sq Ft Source';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SqFtTotal" integer;
    COMMENT ON COLUMN wmls2."Property"."SqFtTotal" IS 'Sq Ft Total';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN wmls2."Property"."StateOrProvince" IS 'State Or Province';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN wmls2."Property"."Status" IS 'Status';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StatusChangeTimestamp" text;
    COMMENT ON COLUMN wmls2."Property"."StatusChangeTimestamp" IS 'Status Change Timestamp';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StatusContractualSearchDate" text;
    COMMENT ON COLUMN wmls2."Property"."StatusContractualSearchDate" IS 'Status Contractual Search Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StorageYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."StorageYN" IS 'Storage YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN wmls2."Property"."StreetDirPrefix" IS 'Street Dir Prefix';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN wmls2."Property"."StreetDirSuffix" IS 'Street Dir Suffix';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN wmls2."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StreetNumDisplay" text;
    COMMENT ON COLUMN wmls2."Property"."StreetNumDisplay" IS 'Street Num Display';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN wmls2."Property"."StreetSuffix" IS 'Street Suffix';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "StreetViewParam" text;
    COMMENT ON COLUMN wmls2."Property"."StreetViewParam" IS 'Street View Param';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Structure" text[];
    COMMENT ON COLUMN wmls2."Property"."Structure" IS 'Structure';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Style" text[];
    COMMENT ON COLUMN wmls2."Property"."Style" IS 'Style';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Subdivision" text;
    COMMENT ON COLUMN wmls2."Property"."Subdivision" IS 'Subdivision';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Suffix" text;
    COMMENT ON COLUMN wmls2."Property"."Suffix" IS 'Suffix';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SupplementCount" integer;
    COMMENT ON COLUMN wmls2."Property"."SupplementCount" IS 'Supplement Count';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "SupplementModificationTimestamp" text;
    COMMENT ON COLUMN wmls2."Property"."SupplementModificationTimestamp" IS 'Supplement Modification Timestam';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Table" text;
    COMMENT ON COLUMN wmls2."Property"."Table" IS 'Table';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TaxMap" text;
    COMMENT ON COLUMN wmls2."Property"."TaxMap" IS 'Tax Map';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TaxYear" integer;
    COMMENT ON COLUMN wmls2."Property"."TaxYear" IS 'Tax Year';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Telecommunication" text[];
    COMMENT ON COLUMN wmls2."Property"."Telecommunication" IS 'Telecommunication';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TempOffMarketDate" text;
    COMMENT ON COLUMN wmls2."Property"."TempOffMarketDate" IS 'Temp Off Market Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Tenancy" text;
    COMMENT ON COLUMN wmls2."Property"."Tenancy" IS 'Tenancy';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TimeRemaining" text;
    COMMENT ON COLUMN wmls2."Property"."TimeRemaining" IS 'Time Remaining';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Tonnage" decimal;
    COMMENT ON COLUMN wmls2."Property"."Tonnage" IS 'Tonnage';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Topography" text[];
    COMMENT ON COLUMN wmls2."Property"."Topography" IS 'Topography';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TotalBuildingSqFt" integer;
    COMMENT ON COLUMN wmls2."Property"."TotalBuildingSqFt" IS 'Total Building Sq Ft';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TotalNumCommercialUnits" integer;
    COMMENT ON COLUMN wmls2."Property"."TotalNumCommercialUnits" IS 'Total Num Commercial Units';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TotalNumCoveredParkingSpaces" integer;
    COMMENT ON COLUMN wmls2."Property"."TotalNumCoveredParkingSpaces" IS 'Total Num Covered Parking Spaces';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TotalNumUncoveredParkingSpac" integer;
    COMMENT ON COLUMN wmls2."Property"."TotalNumUncoveredParkingSpac" IS 'Total Num Uncovered Parking Spac';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TotalNumofDockHigh" integer;
    COMMENT ON COLUMN wmls2."Property"."TotalNumofDockHigh" IS 'Total Numof Dock High';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TotalNumofGrade" integer;
    COMMENT ON COLUMN wmls2."Property"."TotalNumofGrade" IS 'Total Numof Grade';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TotalNumofRamps" integer;
    COMMENT ON COLUMN wmls2."Property"."TotalNumofRamps" IS 'Total Numof Ramps';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "TransactionType" text;
    COMMENT ON COLUMN wmls2."Property"."TransactionType" IS 'Transaction Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "UnfinSF" integer;
    COMMENT ON COLUMN wmls2."Property"."UnfinSF" IS 'Unfin SF';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "UnitCount" integer;
    COMMENT ON COLUMN wmls2."Property"."UnitCount" IS 'Unit Count';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN wmls2."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "UnitPlacement" text[];
    COMMENT ON COLUMN wmls2."Property"."UnitPlacement" IS 'Unit Placement';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Units" integer;
    COMMENT ON COLUMN wmls2."Property"."Units" IS 'Units';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "UrbanCondoTownPropertyYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."UrbanCondoTownPropertyYN" IS 'Urban Condo Town Property YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "UrbanSingleFamilyPropYN" boolean;
    COMMENT ON COLUMN wmls2."Property"."UrbanSingleFamilyPropYN" IS 'Urban Single Family Prop YN';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "VirtualTour" text;
    COMMENT ON COLUMN wmls2."Property"."VirtualTour" IS 'Virtual Tour';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "WallType" text[];
    COMMENT ON COLUMN wmls2."Property"."WallType" IS 'Wall Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Water" text[];
    COMMENT ON COLUMN wmls2."Property"."Water" IS 'Water';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "WaterDepth" text;
    COMMENT ON COLUMN wmls2."Property"."WaterDepth" IS 'Water Depth';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "WaterFrontage" decimal;
    COMMENT ON COLUMN wmls2."Property"."WaterFrontage" IS 'Water Frontage';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "WaterHeater" text[];
    COMMENT ON COLUMN wmls2."Property"."WaterHeater" IS 'Water Heater';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "WaterSewer" text[];
    COMMENT ON COLUMN wmls2."Property"."WaterSewer" IS 'Water Sewer';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "WaterSource" text[];
    COMMENT ON COLUMN wmls2."Property"."WaterSource" IS 'Water Source';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "WaterType" text[];
    COMMENT ON COLUMN wmls2."Property"."WaterType" IS 'Water Type';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Waterfront" text;
    COMMENT ON COLUMN wmls2."Property"."Waterfront" IS 'Waterfront';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "WithdrawnDate" text;
    COMMENT ON COLUMN wmls2."Property"."WithdrawnDate" IS 'Withdrawn Date';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "WoodedAcres" decimal;
    COMMENT ON COLUMN wmls2."Property"."WoodedAcres" IS 'Wooded Acres';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "YearBltDesc" text;
    COMMENT ON COLUMN wmls2."Property"."YearBltDesc" IS 'Year Blt Desc';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN wmls2."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "YearsRemaining" integer;
    COMMENT ON COLUMN wmls2."Property"."YearsRemaining" IS 'Years Remaining';
     
    ALTER TABLE wmls2."Property" ADD COLUMN "Zoning" text;
    COMMENT ON COLUMN wmls2."Property"."Zoning" IS 'Zoning';

  CREATE TABLE wmls2."PropertySubTable"() ;
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "Bedrooms" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."Bedrooms" IS 'Bedrooms';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "DateAvail" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."DateAvail" IS 'Date Avail';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "FullBaths" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."FullBaths" IS 'Full Baths';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "HalfBaths" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."HalfBaths" IS 'Half Baths';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "InputEntryOrder" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."InputEntryOrder" IS 'Input Entry Order';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "IsDeleted" boolean;
    COMMENT ON COLUMN wmls2."PropertySubTable"."IsDeleted" IS 'Is Deleted';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "LeaseAmtAmtMo" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."LeaseAmtAmtMo" IS 'Lease Amt Amt Mo';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "LeaseAmtAmtYr" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."LeaseAmtAmtYr" IS 'Lease Amt Amt Yr';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "LeaseExpires" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."LeaseExpires" IS 'Lease Expires';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "LeaseRate" decimal;
    COMMENT ON COLUMN wmls2."PropertySubTable"."LeaseRate" IS 'Lease Rate';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "LeaseType" text[];
    COMMENT ON COLUMN wmls2."PropertySubTable"."LeaseType" IS 'Lease Type';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "LeaseYN" boolean;
    COMMENT ON COLUMN wmls2."PropertySubTable"."LeaseYN" IS 'Lease YN';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "Listing_MUI" bigint;
    COMMENT ON COLUMN wmls2."PropertySubTable"."Listing_MUI" IS 'Listing MUI';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "MaxConnectedSqFt" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."MaxConnectedSqFt" IS 'Max Connected Sq Ft';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "MinSizeSquareFeet" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."MinSizeSquareFeet" IS 'Min Size Square Feet';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "MonthlyRent" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."MonthlyRent" IS 'Monthly Rent';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "NumRooms" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."NumRooms" IS 'Num Rooms';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "OwnerPaidHeat" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."OwnerPaidHeat" IS 'Owner Paid Heat';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "RoomDescription" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."RoomDescription" IS 'Room Description';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "RoomLength" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."RoomLength" IS 'Room Length';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "RoomLevel" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."RoomLevel" IS 'Room Level';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "RoomType" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."RoomType" IS 'Room Type';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "RoomWidth" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."RoomWidth" IS 'Room Width';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "SpaceDescription" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."SpaceDescription" IS 'Space Description';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "SpaceNumber" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."SpaceNumber" IS 'Space Number';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "SpaceType" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."SpaceType" IS 'Space Type';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "SquareFeet" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."SquareFeet" IS 'Square Feet';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "SquareFeetAvail" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."SquareFeetAvail" IS 'Square Feet Avail';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "SubletYN" boolean;
    COMMENT ON COLUMN wmls2."PropertySubTable"."SubletYN" IS 'Sublet YN';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "SuiteNum" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."SuiteNum" IS 'Suite Num';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "TenantName" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."TenantName" IS 'Tenant Name';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "TenantPhone" text;
    COMMENT ON COLUMN wmls2."PropertySubTable"."TenantPhone" IS 'Tenant Phone';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "TermInMonths" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."TermInMonths" IS 'Term In Months';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "TripleNetExpenses" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."TripleNetExpenses" IS 'Triple Net Expenses';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "UnitHeatCool" text[];
    COMMENT ON COLUMN wmls2."PropertySubTable"."UnitHeatCool" IS 'Unit Heating Cooling';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "UnitNumber" integer;
    COMMENT ON COLUMN wmls2."PropertySubTable"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "Utilities" text[];
    COMMENT ON COLUMN wmls2."PropertySubTable"."Utilities" IS 'Utilities';
     
    ALTER TABLE wmls2."PropertySubTable" ADD COLUMN "matrix_unique_id" bigint PRIMARY KEY;
    COMMENT ON COLUMN wmls2."PropertySubTable"."matrix_unique_id" IS 'Matrix Unique Id';
     

COMMIT;