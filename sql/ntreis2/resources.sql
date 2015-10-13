BEGIN;

  CREATE TABLE ntreis2."Property"() INHERITS (property);
    ALTER TABLE ntreis2."Property" ADD COLUMN "AGExemptionYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."AGExemptionYN" IS 'AG Exemption YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AccessibilityFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."AccessibilityFeatures" IS 'Accessibility Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AccessoryUnitType" text;
    COMMENT ON COLUMN ntreis2."Property"."AccessoryUnitType" IS 'Accessory Unit Type';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AccessoryUnitYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."AccessoryUnitYN" IS 'Accessory Unit YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AcresBottomLand" decimal;
    COMMENT ON COLUMN ntreis2."Property"."AcresBottomLand" IS 'Acres Bottom Land';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AcresCultivated" decimal;
    COMMENT ON COLUMN ntreis2."Property"."AcresCultivated" IS 'Acres Cultivated';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AcresIrrigated" decimal;
    COMMENT ON COLUMN ntreis2."Property"."AcresIrrigated" IS 'Acres Irrigated';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AcresPasture" decimal;
    COMMENT ON COLUMN ntreis2."Property"."AcresPasture" IS 'Acres Pasture';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ActiveContinueToShowDate" text;
    COMMENT ON COLUMN ntreis2."Property"."ActiveContinueToShowDate" IS 'Active Continue To Show Date';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ActiveKickOutDate" text;
    COMMENT ON COLUMN ntreis2."Property"."ActiveKickOutDate" IS 'Active Kick Out Date';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ActiveOpenHouseCount" integer;
    COMMENT ON COLUMN ntreis2."Property"."ActiveOpenHouseCount" IS 'Active Open House Count';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ActiveOptionContractDate" text;
    COMMENT ON COLUMN ntreis2."Property"."ActiveOptionContractDate" IS 'Active Option Contract Date';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AerialPhotoAvailableYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."AerialPhotoAvailableYN" IS 'Aerial Photo Available YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AppliancesYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."AppliancesYN" IS 'Appliances YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ApplicationFeeYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."ApplicationFeeYN" IS 'Application Fee YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AppraiserName" text;
    COMMENT ON COLUMN ntreis2."Property"."AppraiserName" IS 'Appraiser Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ArchitecturalStyle" text[];
    COMMENT ON COLUMN ntreis2."Property"."ArchitecturalStyle" IS 'Architectural Style';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AssociationFee" integer;
    COMMENT ON COLUMN ntreis2."Property"."AssociationFee" IS 'Association Fee';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AssociationFeeFrequency" text;
    COMMENT ON COLUMN ntreis2."Property"."AssociationFeeFrequency" IS 'Association Fee Frequency';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AssociationFeeIncludes" text[];
    COMMENT ON COLUMN ntreis2."Property"."AssociationFeeIncludes" IS 'Association Fee Includes';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AssociationType" text;
    COMMENT ON COLUMN ntreis2."Property"."AssociationType" IS 'Association Type';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "AverageMonthlyLease" integer;
    COMMENT ON COLUMN ntreis2."Property"."AverageMonthlyLease" IS 'Average Monthly Lease';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Barn1Length" integer;
    COMMENT ON COLUMN ntreis2."Property"."Barn1Length" IS 'Barn 1 Length';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Barn1Width" integer;
    COMMENT ON COLUMN ntreis2."Property"."Barn1Width" IS 'Barn 1 Width';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Barn2Length" integer;
    COMMENT ON COLUMN ntreis2."Property"."Barn2Length" IS 'Barn 2 Length';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Barn2Width" integer;
    COMMENT ON COLUMN ntreis2."Property"."Barn2Width" IS 'Barn 2 Width';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Barn3Length" integer;
    COMMENT ON COLUMN ntreis2."Property"."Barn3Length" IS 'Barn 3 Length';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Barn3Width" integer;
    COMMENT ON COLUMN ntreis2."Property"."Barn3Width" IS 'Barn 3 Width';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BarnInformation" text[];
    COMMENT ON COLUMN ntreis2."Property"."BarnInformation" IS 'Barn Information';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN ntreis2."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN ntreis2."Property"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN ntreis2."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BedroomBathroomFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."BedroomBathroomFeatures" IS 'Bedroom Bathroom Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN ntreis2."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Block" text;
    COMMENT ON COLUMN ntreis2."Property"."Block" IS 'Block';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BuildingAreaSource" text;
    COMMENT ON COLUMN ntreis2."Property"."BuildingAreaSource" IS 'Building Area Source';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BuildingNumber" text;
    COMMENT ON COLUMN ntreis2."Property"."BuildingNumber" IS 'Building Number';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BuildingUse" text[];
    COMMENT ON COLUMN ntreis2."Property"."BuildingUse" IS 'Building Use';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "BusinessName" text;
    COMMENT ON COLUMN ntreis2."Property"."BusinessName" IS 'Business Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "CapitalizationRate" decimal;
    COMMENT ON COLUMN ntreis2."Property"."CapitalizationRate" IS 'Capitalization Rate';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "CeilingHeight" text[];
    COMMENT ON COLUMN ntreis2."Property"."CeilingHeight" IS 'Ceiling Height';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN ntreis2."Property"."City" IS 'City';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "CommercialFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."CommercialFeatures" IS 'Commercial Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "CommunityFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."CommunityFeatures" IS 'Community Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "CompensationPaid" text;
    COMMENT ON COLUMN ntreis2."Property"."CompensationPaid" IS 'Compensation Paid';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ComplexName" text;
    COMMENT ON COLUMN ntreis2."Property"."ComplexName" IS 'Complex Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ConstructionMaterials" text[];
    COMMENT ON COLUMN ntreis2."Property"."ConstructionMaterials" IS 'Construction Materials';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ConstructionMaterialsWalls" text[];
    COMMENT ON COLUMN ntreis2."Property"."ConstructionMaterialsWalls" IS 'Construction Materials Walls';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN ntreis2."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "CropRetireProgramYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."CropRetireProgramYN" IS 'Crop Retire Program YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Crops" text[];
    COMMENT ON COLUMN ntreis2."Property"."Crops" IS 'Crops';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "DateAvailable" text;
    COMMENT ON COLUMN ntreis2."Property"."DateAvailable" IS 'Date Available';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "DepositAmount" integer;
    COMMENT ON COLUMN ntreis2."Property"."DepositAmount" IS 'Deposit Amount';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "DepositPet" integer;
    COMMENT ON COLUMN ntreis2."Property"."DepositPet" IS 'Deposit Pet';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Development" text[];
    COMMENT ON COLUMN ntreis2."Property"."Development" IS 'Development';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN ntreis2."Property"."Directions" IS 'Directions';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Documents" text[];
    COMMENT ON COLUMN ntreis2."Property"."Documents" IS 'Documents';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Easements" text[];
    COMMENT ON COLUMN ntreis2."Property"."Easements" IS 'Easements';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ElementarySchoolName" text;
    COMMENT ON COLUMN ntreis2."Property"."ElementarySchoolName" IS 'Elementary School Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "EnergySavingFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."EnergySavingFeatures" IS 'Energy Saving Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ExteriorBuildings" text[];
    COMMENT ON COLUMN ntreis2."Property"."ExteriorBuildings" IS 'Exterior Buildings';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."ExteriorFeatures" IS 'Exterior Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FHA_VA_ApprovedComplexNumber" text;
    COMMENT ON COLUMN ntreis2."Property"."FHA_VA_ApprovedComplexNumber" IS 'FHA VA Approved Complex Number';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FarmRanchFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."FarmRanchFeatures" IS 'Farm Ranch Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FencedYardYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."FencedYardYN" IS 'Fenced Yard YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Fencing" text[];
    COMMENT ON COLUMN ntreis2."Property"."Fencing" IS 'Fencing';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FinancingProposed" text[];
    COMMENT ON COLUMN ntreis2."Property"."FinancingProposed" IS 'Financing Proposed';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FireplaceFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."FireplaceFeatures" IS 'Fireplace Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FireplacesTotal" integer;
    COMMENT ON COLUMN ntreis2."Property"."FireplacesTotal" IS 'Fireplaces Total';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FloorLocationNumber" integer;
    COMMENT ON COLUMN ntreis2."Property"."FloorLocationNumber" IS 'Floor Location Number';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Flooring" text[];
    COMMENT ON COLUMN ntreis2."Property"."Flooring" IS 'Flooring';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FoundationDetails" text[];
    COMMENT ON COLUMN ntreis2."Property"."FoundationDetails" IS 'Foundation Details';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FreightDoors" text[];
    COMMENT ON COLUMN ntreis2."Property"."FreightDoors" IS 'Freight Doors';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FrontageFeet" integer;
    COMMENT ON COLUMN ntreis2."Property"."FrontageFeet" IS 'Frontage Feet';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "FurnishedYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."FurnishedYN" IS 'Furnished YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "GarageLength" integer;
    COMMENT ON COLUMN ntreis2."Property"."GarageLength" IS 'Garage Length';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "GarageWidth" integer;
    COMMENT ON COLUMN ntreis2."Property"."GarageWidth" IS 'Garage Width';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "GreenBuildingCertification" text[];
    COMMENT ON COLUMN ntreis2."Property"."GreenBuildingCertification" IS 'Green Building Certification';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "GreenEnergyEfficient" text[];
    COMMENT ON COLUMN ntreis2."Property"."GreenEnergyEfficient" IS 'Green Energy Efficient';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "GrossAnnualExpenses" integer;
    COMMENT ON COLUMN ntreis2."Property"."GrossAnnualExpenses" IS 'Gross Annual Expenses';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "GrossAnnualIncome" integer;
    COMMENT ON COLUMN ntreis2."Property"."GrossAnnualIncome" IS 'Gross Annual Income';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "GrossIncomeMultiplier" decimal;
    COMMENT ON COLUMN ntreis2."Property"."GrossIncomeMultiplier" IS 'Gross Income Multiplier';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "HandicapYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."HandicapYN" IS 'Handicap YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Heating" text[];
    COMMENT ON COLUMN ntreis2."Property"."Heating" IS 'Heating';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "HighSchoolName" text;
    COMMENT ON COLUMN ntreis2."Property"."HighSchoolName" IS 'High School Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Inclusions" text[];
    COMMENT ON COLUMN ntreis2."Property"."Inclusions" IS 'Inclusions';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "IncomeExpenseSource" text[];
    COMMENT ON COLUMN ntreis2."Property"."IncomeExpenseSource" IS 'Income Expense Source';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "InsuranceExpense" integer;
    COMMENT ON COLUMN ntreis2."Property"."InsuranceExpense" IS 'Insurance Expense';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "InteriorFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."InteriorFeatures" IS 'Interior Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "IntermediateSchoolName" text;
    COMMENT ON COLUMN ntreis2."Property"."IntermediateSchoolName" IS 'Intermediate School Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "InternetExposure" text[];
    COMMENT ON COLUMN ntreis2."Property"."InternetExposure" IS 'Internet Exposure';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "JuniorHighSchoolName" text;
    COMMENT ON COLUMN ntreis2."Property"."JuniorHighSchoolName" IS 'Junior High School Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LakeName" text;
    COMMENT ON COLUMN ntreis2."Property"."LakeName" IS 'Lake Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LandLeasedYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."LandLeasedYN" IS 'Land Leased YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LastListPrice" decimal;
    COMMENT ON COLUMN ntreis2."Property"."LastListPrice" IS 'Last List Price';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LastStatus" text;
    COMMENT ON COLUMN ntreis2."Property"."LastStatus" IS 'Last Status';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN ntreis2."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LeaseConditions" text[];
    COMMENT ON COLUMN ntreis2."Property"."LeaseConditions" IS 'Lease Conditions';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LeaseExpirationDate" text;
    COMMENT ON COLUMN ntreis2."Property"."LeaseExpirationDate" IS 'Lease Expiration Date';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LeaseRateMax" decimal;
    COMMENT ON COLUMN ntreis2."Property"."LeaseRateMax" IS 'Lease Rate Max';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LeaseRateMin" decimal;
    COMMENT ON COLUMN ntreis2."Property"."LeaseRateMin" IS 'Lease Rate Min';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LeaseTerm" text[];
    COMMENT ON COLUMN ntreis2."Property"."LeaseTerm" IS 'Lease Term';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LeaseTerms" text;
    COMMENT ON COLUMN ntreis2."Property"."LeaseTerms" IS 'Lease Terms';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LeaseType" text[];
    COMMENT ON COLUMN ntreis2."Property"."LeaseType" IS 'Lease Type';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LesseePays" text[];
    COMMENT ON COLUMN ntreis2."Property"."LesseePays" IS 'Lessee Pays';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN ntreis2."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN ntreis2."Property"."ListAgentMLSID" IS 'List Agent MLSID';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN ntreis2."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN ntreis2."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN ntreis2."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN ntreis2."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN ntreis2."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ListPriceLow" decimal;
    COMMENT ON COLUMN ntreis2."Property"."ListPriceLow" IS 'List Price Low';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN ntreis2."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."LotFeatures" IS 'Lot Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotNumber" text;
    COMMENT ON COLUMN ntreis2."Property"."LotNumber" IS 'Lot Number';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotSize" text;
    COMMENT ON COLUMN ntreis2."Property"."LotSize" IS 'Lot Size';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotSizeArea" decimal;
    COMMENT ON COLUMN ntreis2."Property"."LotSizeArea" IS 'Lot Size Area';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotSizeAreaSQFT" decimal;
    COMMENT ON COLUMN ntreis2."Property"."LotSizeAreaSQFT" IS 'Lot Size Area SQFT';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotSizeDimensions" text;
    COMMENT ON COLUMN ntreis2."Property"."LotSizeDimensions" IS 'Lot Size Dimensions';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotSizeSource" text;
    COMMENT ON COLUMN ntreis2."Property"."LotSizeSource" IS 'Lot Size Source';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotSizeUnits" text;
    COMMENT ON COLUMN ntreis2."Property"."LotSizeUnits" IS 'Lot Size Units';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotsSoldPackage" integer;
    COMMENT ON COLUMN ntreis2."Property"."LotsSoldPackage" IS 'Lots Sold Package';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "LotsSoldSeparate" integer;
    COMMENT ON COLUMN ntreis2."Property"."LotsSoldSeparate" IS 'Lots Sold Separate';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN ntreis2."Property"."MLS" IS 'MLS';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MLSAreaMajor" text;
    COMMENT ON COLUMN ntreis2."Property"."MLSAreaMajor" IS 'MLS Area Major';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MLSAreaMinor" text;
    COMMENT ON COLUMN ntreis2."Property"."MLSAreaMinor" IS 'MLS Area Minor';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN ntreis2."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MLSNumberSaleOrLease" text;
    COMMENT ON COLUMN ntreis2."Property"."MLSNumberSaleOrLease" IS 'MLS Number Sale Or Lease';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MapBook" text;
    COMMENT ON COLUMN ntreis2."Property"."MapBook" IS 'Map Book';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MapCoordinates" text;
    COMMENT ON COLUMN ntreis2."Property"."MapCoordinates" IS 'Map Coordinates';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MapPage" text;
    COMMENT ON COLUMN ntreis2."Property"."MapPage" IS 'Map Page';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN ntreis2."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN ntreis2."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MiddleSchoolName" text;
    COMMENT ON COLUMN ntreis2."Property"."MiddleSchoolName" IS 'Middle School Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MoniesRequired" text[];
    COMMENT ON COLUMN ntreis2."Property"."MoniesRequired" IS 'Monies Required';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MonthlyPetFee" integer;
    COMMENT ON COLUMN ntreis2."Property"."MonthlyPetFee" IS 'Monthly Pet Fee';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MoveInDate" text;
    COMMENT ON COLUMN ntreis2."Property"."MoveInDate" IS 'Move In Date';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MultiParcelIDYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."MultiParcelIDYN" IS 'Multi Parcel IDYN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MultiZoningYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."MultiZoningYN" IS 'Multi Zoning YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "MunicipalUtilityDistrictYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."MunicipalUtilityDistrictYN" IS 'Municipal Utility District YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NetAnnualIncome" integer;
    COMMENT ON COLUMN ntreis2."Property"."NetAnnualIncome" IS 'Net Annual Income';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NonRefundablePetFeeYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."NonRefundablePetFeeYN" IS 'Non Refundable Pet Fee YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfBarns" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfBarns" IS 'Number Of Barns';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfBuildings" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfBuildings" IS 'Number Of Buildings';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfDaysGuestsAllowed" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfDaysGuestsAllowed" IS 'Number Of Days Guests Allowed';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfDiningAreas" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfDiningAreas" IS 'Number Of Dining Areas';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfLakes" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfLakes" IS 'Number Of Lakes';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfLeaseableSpaces" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfLeaseableSpaces" IS 'Number Of Leaseable Spaces';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfLivingAreas" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfLivingAreas" IS 'Number Of Living Areas';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfLots" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfLots" IS 'Number Of Lots';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfParkingSpaces" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfParkingSpaces" IS 'Number Of Parking Spaces';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfPetsAllowed" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfPetsAllowed" IS 'Number Of Pets Allowed';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfPonds" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfPonds" IS 'Number Of Ponds';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfResidences" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfResidences" IS 'Number Of Residences';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfSpacesLeased" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfSpacesLeased" IS 'Number Of Spaces Leased';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfStallsInBarn1" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfStallsInBarn1" IS 'Number Of Stalls In Barn 1';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfStallsInBarn2" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfStallsInBarn2" IS 'Number Of Stalls In Barn 2';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfStallsInBarn3" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfStallsInBarn3" IS 'Number Of Stalls In Barn 3';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfStockTanks" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfStockTanks" IS 'Number Of Stock Tanks';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfStories" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfStories" IS 'Number Of Stories';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfStoriesInBuilding" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfStoriesInBuilding" IS 'Number Of Stories In Building';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfUnits" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfUnits" IS 'Number Of Units';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfVehicles" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfVehicles" IS 'Number Of Vehicles';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfWaterMeters" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfWaterMeters" IS 'Number Of Water Meters';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "NumberOfWells" integer;
    COMMENT ON COLUMN ntreis2."Property"."NumberOfWells" IS 'Number Of Wells';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "OccupancyRate" integer;
    COMMENT ON COLUMN ntreis2."Property"."OccupancyRate" IS 'Occupancy Rate';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "OfficeSupervisor" text;
    COMMENT ON COLUMN ntreis2."Property"."OfficeSupervisor" IS 'Office Supervisor';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "OpenHouseCount" integer;
    COMMENT ON COLUMN ntreis2."Property"."OpenHouseCount" IS 'Open House Count';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "OpenHouseUpcoming" text;
    COMMENT ON COLUMN ntreis2."Property"."OpenHouseUpcoming" IS 'Open House Upcoming';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN ntreis2."Property"."OriginalListPrice" IS 'Original List Price';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "OtherEquipment" text[];
    COMMENT ON COLUMN ntreis2."Property"."OtherEquipment" IS 'Other Equipment';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "OwnerPays" text[];
    COMMENT ON COLUMN ntreis2."Property"."OwnerPays" IS 'Owner Pays';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ParcelNumber" text;
    COMMENT ON COLUMN ntreis2."Property"."ParcelNumber" IS 'Parcel Number';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ParkingFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."ParkingFeatures" IS 'Parking Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ParkingSpacesCarport" integer;
    COMMENT ON COLUMN ntreis2."Property"."ParkingSpacesCarport" IS 'Parking Spaces Carport';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ParkingSpacesCoveredTotal" integer;
    COMMENT ON COLUMN ntreis2."Property"."ParkingSpacesCoveredTotal" IS 'Parking Spaces Covered Total';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ParkingSpacesGarage" integer;
    COMMENT ON COLUMN ntreis2."Property"."ParkingSpacesGarage" IS 'Parking Spaces Garage';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PermitAVMYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."PermitAVMYN" IS 'Permit AVMYN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PermitAddressInternetYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."PermitAddressInternetYN" IS 'Permit Address Internet YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PermitCommentsReviewsYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."PermitCommentsReviewsYN" IS 'Permit Comments Reviews YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PermitInternetYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."PermitInternetYN" IS 'Permit Internet YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PetsYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."PetsYN" IS 'Pets YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN ntreis2."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN ntreis2."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PlannedDevelopment" text;
    COMMENT ON COLUMN ntreis2."Property"."PlannedDevelopment" IS 'Planned Development';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PoolFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."PoolFeatures" IS 'Pool Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PoolYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."PoolYN" IS 'Pool YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Possession" text[];
    COMMENT ON COLUMN ntreis2."Property"."Possession" IS 'Possession';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN ntreis2."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN ntreis2."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PresentUse" text[];
    COMMENT ON COLUMN ntreis2."Property"."PresentUse" IS 'Present Use';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PriceChangeTimestamp" text;
    COMMENT ON COLUMN ntreis2."Property"."PriceChangeTimestamp" IS 'Price Change Timestamp';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PrimarySchoolName" text;
    COMMENT ON COLUMN ntreis2."Property"."PrimarySchoolName" IS 'Primary School Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PropertyAssociationFees" text[];
    COMMENT ON COLUMN ntreis2."Property"."PropertyAssociationFees" IS 'Property Association Fees';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN ntreis2."Property"."PropertySubType" IS 'Property Sub Type';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN ntreis2."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ProposedUse" text[];
    COMMENT ON COLUMN ntreis2."Property"."ProposedUse" IS 'Proposed Use';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "PublicRemarks" text;
    COMMENT ON COLUMN ntreis2."Property"."PublicRemarks" IS 'Public Remarks';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "RanchName" text;
    COMMENT ON COLUMN ntreis2."Property"."RanchName" IS 'Ranch Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "RanchType" text;
    COMMENT ON COLUMN ntreis2."Property"."RanchType" IS 'Ranch Type';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Restrictions" text[];
    COMMENT ON COLUMN ntreis2."Property"."Restrictions" IS 'Restrictions';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "RoadAssessmentYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."RoadAssessmentYN" IS 'Road Assessment YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "RoadFrontage" text[];
    COMMENT ON COLUMN ntreis2."Property"."RoadFrontage" IS 'Road Frontage';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "RoadFrontageDistance" integer;
    COMMENT ON COLUMN ntreis2."Property"."RoadFrontageDistance" IS 'Road Frontage Distance';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Roof" text[];
    COMMENT ON COLUMN ntreis2."Property"."Roof" IS 'Roof';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "RoomCount" integer;
    COMMENT ON COLUMN ntreis2."Property"."RoomCount" IS 'Room Count';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SQFTBuilding" integer;
    COMMENT ON COLUMN ntreis2."Property"."SQFTBuilding" IS 'SQFT Building';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SQFTGross" integer;
    COMMENT ON COLUMN ntreis2."Property"."SQFTGross" IS 'SQFT Gross';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SQFTLand" integer;
    COMMENT ON COLUMN ntreis2."Property"."SQFTLand" IS 'SQFT Land';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SQFTLeasable" integer;
    COMMENT ON COLUMN ntreis2."Property"."SQFTLeasable" IS 'SQFT Leasable';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SQFTLot" integer;
    COMMENT ON COLUMN ntreis2."Property"."SQFTLot" IS 'SQFT Lot';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SchoolDistrict" text;
    COMMENT ON COLUMN ntreis2."Property"."SchoolDistrict" IS 'School District';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SecurityFeatures" text[];
    COMMENT ON COLUMN ntreis2."Property"."SecurityFeatures" IS 'Security Features';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SecuritySystemYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."SecuritySystemYN" IS 'Security System YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SeniorHighSchoolName" text;
    COMMENT ON COLUMN ntreis2."Property"."SeniorHighSchoolName" IS 'Senior High School Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ShowingInstructionsType" text[];
    COMMENT ON COLUMN ntreis2."Property"."ShowingInstructionsType" IS 'Showing Instructions Type';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SoilType" text[];
    COMMENT ON COLUMN ntreis2."Property"."SoilType" IS 'Soil Type';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SpecialNotes" text[];
    COMMENT ON COLUMN ntreis2."Property"."SpecialNotes" IS 'Special Notes';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SqFtTotal" integer;
    COMMENT ON COLUMN ntreis2."Property"."SqFtTotal" IS 'Sq Ft Total';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN ntreis2."Property"."StateOrProvince" IS 'State Or Province';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN ntreis2."Property"."Status" IS 'Status';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN ntreis2."Property"."StreetDirPrefix" IS 'Street Dir Prefix';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN ntreis2."Property"."StreetDirSuffix" IS 'Street Dir Suffix';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN ntreis2."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN ntreis2."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "StreetNumberSearchable" integer;
    COMMENT ON COLUMN ntreis2."Property"."StreetNumberSearchable" IS 'Street Number Searchable';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN ntreis2."Property"."StreetSuffix" IS 'Street Suffix';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "StructuralStyle" text[];
    COMMENT ON COLUMN ntreis2."Property"."StructuralStyle" IS 'Structural Style';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SubdividedYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."SubdividedYN" IS 'Subdivided YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SubdivisionName" text;
    COMMENT ON COLUMN ntreis2."Property"."SubdivisionName" IS 'Subdivision Name';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "SurfaceRights" text[];
    COMMENT ON COLUMN ntreis2."Property"."SurfaceRights" IS 'Surface Rights';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "TaxLegalDescription" text;
    COMMENT ON COLUMN ntreis2."Property"."TaxLegalDescription" IS 'Tax Legal Description';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Tenancy" text[];
    COMMENT ON COLUMN ntreis2."Property"."Tenancy" IS 'Tenancy';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "TenantPays" text[];
    COMMENT ON COLUMN ntreis2."Property"."TenantPays" IS 'Tenant Pays';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Topography" text[];
    COMMENT ON COLUMN ntreis2."Property"."Topography" IS 'Topography';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "TotalAnnualExpensesInclude" text[];
    COMMENT ON COLUMN ntreis2."Property"."TotalAnnualExpensesInclude" IS 'Total Annual Expenses Include';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "TransactionType" text;
    COMMENT ON COLUMN ntreis2."Property"."TransactionType" IS 'Transaction Type';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "UnexemptTaxes" integer;
    COMMENT ON COLUMN ntreis2."Property"."UnexemptTaxes" IS 'Unexempt Taxes';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "UnitCount" integer;
    COMMENT ON COLUMN ntreis2."Property"."UnitCount" IS 'Unit Count';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN ntreis2."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Utilities" text[];
    COMMENT ON COLUMN ntreis2."Property"."Utilities" IS 'Utilities';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "UtilitiesOther" text[];
    COMMENT ON COLUMN ntreis2."Property"."UtilitiesOther" IS 'Utilities Other';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "VirtualTourURLBranded" text;
    COMMENT ON COLUMN ntreis2."Property"."VirtualTourURLBranded" IS 'Virtual Tour URL Branded';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "VirtualTourURLUnbranded" text;
    COMMENT ON COLUMN ntreis2."Property"."VirtualTourURLUnbranded" IS 'Virtual Tour URL Unbranded';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "WillSubdivide" text;
    COMMENT ON COLUMN ntreis2."Property"."WillSubdivide" IS 'Will Subdivide';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "WillSubdivideYN" boolean;
    COMMENT ON COLUMN ntreis2."Property"."WillSubdivideYN" IS 'Will Subdivide YN';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN ntreis2."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "YearBuiltDetails" text;
    COMMENT ON COLUMN ntreis2."Property"."YearBuiltDetails" IS 'Year Built Details';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "Zoning" text[];
    COMMENT ON COLUMN ntreis2."Property"."Zoning" IS 'Zoning';
     
    ALTER TABLE ntreis2."Property" ADD COLUMN "ZoningCommercial" text;
    COMMENT ON COLUMN ntreis2."Property"."ZoningCommercial" IS 'Zoning Commercial';

    CREATE TABLE ntreis2."PropertySubTable"() ;
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "DiningAreaLength" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."DiningAreaLength" IS 'Dining Area Length';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "DiningAreaWidth" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."DiningAreaWidth" IS 'Dining Area Width';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "KitchenLength" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."KitchenLength" IS 'Kitchen Length';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "KitchenWidth" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."KitchenWidth" IS 'Kitchen Width';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "Lease" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."Lease" IS 'Lease';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "Listing_MUI" bigint;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."Listing_MUI" IS 'Listing MUI';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "LivingAreaLength" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."LivingAreaLength" IS 'Living Area Length';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "LivingAreaWidth" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."LivingAreaWidth" IS 'Living Area Width';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "MasterBedLength" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."MasterBedLength" IS 'Master Bed Length';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "MasterBedWidth" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."MasterBedWidth" IS 'Master Bed Width';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "NumberOfBathsFull" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."NumberOfBathsFull" IS 'Number Of Baths Full';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "NumberOfBathsHalf" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."NumberOfBathsHalf" IS 'Number Of Baths Half';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "NumberOfBeds" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."NumberOfBeds" IS 'Number Of Beds';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "NumberOfUnits" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."NumberOfUnits" IS 'Number Of Units';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "RoomDescription" text;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."RoomDescription" IS 'Room Description';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "RoomDimensions" text;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."RoomDimensions" IS 'Room Dimensions';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "RoomFeatures" text[];
    COMMENT ON COLUMN ntreis2."PropertySubTable"."RoomFeatures" IS 'Room Features';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "RoomLength" text;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."RoomLength" IS 'Room Length';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "RoomLevel" text;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."RoomLevel" IS 'Room Level';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "RoomType" text;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."RoomType" IS 'Room Type';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "RoomWidth" text;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."RoomWidth" IS 'Room Width';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "SqFt" integer;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."SqFt" IS 'Sq Ft';
     
    ALTER TABLE ntreis2."PropertySubTable" ADD COLUMN "matrix_unique_id" bigint PRIMARY KEY;
    COMMENT ON COLUMN ntreis2."PropertySubTable"."matrix_unique_id" IS 'Matrix Unique Id';
     

COMMIT;