BEGIN;

  CREATE TABLE ntreis."Property"() INHERITS (property);
    ALTER TABLE ntreis."Property" ADD COLUMN "AGExemptionYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."AGExemptionYN" IS 'AG Exemption YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AccessibilityFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."AccessibilityFeatures" IS 'Accessibility Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AccessoryUnitType" text;
    COMMENT ON COLUMN ntreis."Property"."AccessoryUnitType" IS 'Accessory Unit Type';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AccessoryUnitYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."AccessoryUnitYN" IS 'Accessory Unit YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AcresBottomLand" decimal;
    COMMENT ON COLUMN ntreis."Property"."AcresBottomLand" IS 'Acres Bottom Land';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AcresCultivated" decimal;
    COMMENT ON COLUMN ntreis."Property"."AcresCultivated" IS 'Acres Cultivated';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AcresIrrigated" decimal;
    COMMENT ON COLUMN ntreis."Property"."AcresIrrigated" IS 'Acres Irrigated';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AcresPasture" decimal;
    COMMENT ON COLUMN ntreis."Property"."AcresPasture" IS 'Acres Pasture';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ActiveContinueToShowDate" text;
    COMMENT ON COLUMN ntreis."Property"."ActiveContinueToShowDate" IS 'Active Continue To Show Date';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ActiveKickOutDate" text;
    COMMENT ON COLUMN ntreis."Property"."ActiveKickOutDate" IS 'Active Kick Out Date';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ActiveOpenHouseCount" integer;
    COMMENT ON COLUMN ntreis."Property"."ActiveOpenHouseCount" IS 'Active Open House Count';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ActiveOptionContractDate" text;
    COMMENT ON COLUMN ntreis."Property"."ActiveOptionContractDate" IS 'Active Option Contract Date';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AerialPhotoAvailableYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."AerialPhotoAvailableYN" IS 'Aerial Photo Available YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AppliancesYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."AppliancesYN" IS 'Appliances YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ApplicationFeeYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."ApplicationFeeYN" IS 'Application Fee YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AppraiserName" text;
    COMMENT ON COLUMN ntreis."Property"."AppraiserName" IS 'Appraiser Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ArchitecturalStyle" text[];
    COMMENT ON COLUMN ntreis."Property"."ArchitecturalStyle" IS 'Architectural Style';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AssociationFee" integer;
    COMMENT ON COLUMN ntreis."Property"."AssociationFee" IS 'Association Fee';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AssociationFeeFrequency" text;
    COMMENT ON COLUMN ntreis."Property"."AssociationFeeFrequency" IS 'Association Fee Frequency';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AssociationFeeIncludes" text[];
    COMMENT ON COLUMN ntreis."Property"."AssociationFeeIncludes" IS 'Association Fee Includes';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AssociationType" text;
    COMMENT ON COLUMN ntreis."Property"."AssociationType" IS 'Association Type';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "AverageMonthlyLease" integer;
    COMMENT ON COLUMN ntreis."Property"."AverageMonthlyLease" IS 'Average Monthly Lease';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Barn1Length" integer;
    COMMENT ON COLUMN ntreis."Property"."Barn1Length" IS 'Barn 1 Length';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Barn1Width" integer;
    COMMENT ON COLUMN ntreis."Property"."Barn1Width" IS 'Barn 1 Width';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Barn2Length" integer;
    COMMENT ON COLUMN ntreis."Property"."Barn2Length" IS 'Barn 2 Length';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Barn2Width" integer;
    COMMENT ON COLUMN ntreis."Property"."Barn2Width" IS 'Barn 2 Width';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Barn3Length" integer;
    COMMENT ON COLUMN ntreis."Property"."Barn3Length" IS 'Barn 3 Length';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Barn3Width" integer;
    COMMENT ON COLUMN ntreis."Property"."Barn3Width" IS 'Barn 3 Width';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BarnInformation" text[];
    COMMENT ON COLUMN ntreis."Property"."BarnInformation" IS 'Barn Information';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN ntreis."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN ntreis."Property"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN ntreis."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BedroomBathroomFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."BedroomBathroomFeatures" IS 'Bedroom Bathroom Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN ntreis."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Block" text;
    COMMENT ON COLUMN ntreis."Property"."Block" IS 'Block';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BuildingAreaSource" text;
    COMMENT ON COLUMN ntreis."Property"."BuildingAreaSource" IS 'Building Area Source';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BuildingNumber" text;
    COMMENT ON COLUMN ntreis."Property"."BuildingNumber" IS 'Building Number';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BuildingUse" text[];
    COMMENT ON COLUMN ntreis."Property"."BuildingUse" IS 'Building Use';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "BusinessName" text;
    COMMENT ON COLUMN ntreis."Property"."BusinessName" IS 'Business Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "CapitalizationRate" decimal;
    COMMENT ON COLUMN ntreis."Property"."CapitalizationRate" IS 'Capitalization Rate';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "CeilingHeight" text[];
    COMMENT ON COLUMN ntreis."Property"."CeilingHeight" IS 'Ceiling Height';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN ntreis."Property"."City" IS 'City';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "CommercialFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."CommercialFeatures" IS 'Commercial Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "CommunityFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."CommunityFeatures" IS 'Community Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "CompensationPaid" text;
    COMMENT ON COLUMN ntreis."Property"."CompensationPaid" IS 'Compensation Paid';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ComplexName" text;
    COMMENT ON COLUMN ntreis."Property"."ComplexName" IS 'Complex Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ConstructionMaterials" text[];
    COMMENT ON COLUMN ntreis."Property"."ConstructionMaterials" IS 'Construction Materials';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ConstructionMaterialsWalls" text[];
    COMMENT ON COLUMN ntreis."Property"."ConstructionMaterialsWalls" IS 'Construction Materials Walls';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN ntreis."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "CropRetireProgramYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."CropRetireProgramYN" IS 'Crop Retire Program YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Crops" text[];
    COMMENT ON COLUMN ntreis."Property"."Crops" IS 'Crops';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "DateAvailable" text;
    COMMENT ON COLUMN ntreis."Property"."DateAvailable" IS 'Date Available';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "DepositAmount" integer;
    COMMENT ON COLUMN ntreis."Property"."DepositAmount" IS 'Deposit Amount';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "DepositPet" integer;
    COMMENT ON COLUMN ntreis."Property"."DepositPet" IS 'Deposit Pet';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Development" text[];
    COMMENT ON COLUMN ntreis."Property"."Development" IS 'Development';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN ntreis."Property"."Directions" IS 'Directions';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Documents" text[];
    COMMENT ON COLUMN ntreis."Property"."Documents" IS 'Documents';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Easements" text[];
    COMMENT ON COLUMN ntreis."Property"."Easements" IS 'Easements';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ElementarySchoolName" text;
    COMMENT ON COLUMN ntreis."Property"."ElementarySchoolName" IS 'Elementary School Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "EnergySavingFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."EnergySavingFeatures" IS 'Energy Saving Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ExteriorBuildings" text[];
    COMMENT ON COLUMN ntreis."Property"."ExteriorBuildings" IS 'Exterior Buildings';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."ExteriorFeatures" IS 'Exterior Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FHA_VA_ApprovedComplexNumber" text;
    COMMENT ON COLUMN ntreis."Property"."FHA_VA_ApprovedComplexNumber" IS 'FHA VA Approved Complex Number';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FarmRanchFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."FarmRanchFeatures" IS 'Farm Ranch Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FencedYardYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."FencedYardYN" IS 'Fenced Yard YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Fencing" text[];
    COMMENT ON COLUMN ntreis."Property"."Fencing" IS 'Fencing';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FinancingProposed" text[];
    COMMENT ON COLUMN ntreis."Property"."FinancingProposed" IS 'Financing Proposed';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FireplaceFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."FireplaceFeatures" IS 'Fireplace Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FireplacesTotal" integer;
    COMMENT ON COLUMN ntreis."Property"."FireplacesTotal" IS 'Fireplaces Total';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FloorLocationNumber" integer;
    COMMENT ON COLUMN ntreis."Property"."FloorLocationNumber" IS 'Floor Location Number';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Flooring" text[];
    COMMENT ON COLUMN ntreis."Property"."Flooring" IS 'Flooring';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FoundationDetails" text[];
    COMMENT ON COLUMN ntreis."Property"."FoundationDetails" IS 'Foundation Details';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FreightDoors" text[];
    COMMENT ON COLUMN ntreis."Property"."FreightDoors" IS 'Freight Doors';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FrontageFeet" integer;
    COMMENT ON COLUMN ntreis."Property"."FrontageFeet" IS 'Frontage Feet';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "FurnishedYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."FurnishedYN" IS 'Furnished YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "GarageLength" integer;
    COMMENT ON COLUMN ntreis."Property"."GarageLength" IS 'Garage Length';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "GarageWidth" integer;
    COMMENT ON COLUMN ntreis."Property"."GarageWidth" IS 'Garage Width';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "GreenBuildingCertification" text[];
    COMMENT ON COLUMN ntreis."Property"."GreenBuildingCertification" IS 'Green Building Certification';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "GreenEnergyEfficient" text[];
    COMMENT ON COLUMN ntreis."Property"."GreenEnergyEfficient" IS 'Green Energy Efficient';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "GrossAnnualExpenses" integer;
    COMMENT ON COLUMN ntreis."Property"."GrossAnnualExpenses" IS 'Gross Annual Expenses';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "GrossAnnualIncome" integer;
    COMMENT ON COLUMN ntreis."Property"."GrossAnnualIncome" IS 'Gross Annual Income';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "GrossIncomeMultiplier" decimal;
    COMMENT ON COLUMN ntreis."Property"."GrossIncomeMultiplier" IS 'Gross Income Multiplier';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "HandicapYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."HandicapYN" IS 'Handicap YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Heating" text[];
    COMMENT ON COLUMN ntreis."Property"."Heating" IS 'Heating';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "HighSchoolName" text;
    COMMENT ON COLUMN ntreis."Property"."HighSchoolName" IS 'High School Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Inclusions" text[];
    COMMENT ON COLUMN ntreis."Property"."Inclusions" IS 'Inclusions';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "IncomeExpenseSource" text[];
    COMMENT ON COLUMN ntreis."Property"."IncomeExpenseSource" IS 'Income Expense Source';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "InsuranceExpense" integer;
    COMMENT ON COLUMN ntreis."Property"."InsuranceExpense" IS 'Insurance Expense';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "InteriorFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."InteriorFeatures" IS 'Interior Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "IntermediateSchoolName" text;
    COMMENT ON COLUMN ntreis."Property"."IntermediateSchoolName" IS 'Intermediate School Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "InternetExposure" text[];
    COMMENT ON COLUMN ntreis."Property"."InternetExposure" IS 'Internet Exposure';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "JuniorHighSchoolName" text;
    COMMENT ON COLUMN ntreis."Property"."JuniorHighSchoolName" IS 'Junior High School Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LakeName" text;
    COMMENT ON COLUMN ntreis."Property"."LakeName" IS 'Lake Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LandLeasedYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."LandLeasedYN" IS 'Land Leased YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LastListPrice" decimal;
    COMMENT ON COLUMN ntreis."Property"."LastListPrice" IS 'Last List Price';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LastStatus" text;
    COMMENT ON COLUMN ntreis."Property"."LastStatus" IS 'Last Status';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN ntreis."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LeaseConditions" text[];
    COMMENT ON COLUMN ntreis."Property"."LeaseConditions" IS 'Lease Conditions';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LeaseExpirationDate" text;
    COMMENT ON COLUMN ntreis."Property"."LeaseExpirationDate" IS 'Lease Expiration Date';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LeaseRateMax" decimal;
    COMMENT ON COLUMN ntreis."Property"."LeaseRateMax" IS 'Lease Rate Max';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LeaseRateMin" decimal;
    COMMENT ON COLUMN ntreis."Property"."LeaseRateMin" IS 'Lease Rate Min';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LeaseTerm" text[];
    COMMENT ON COLUMN ntreis."Property"."LeaseTerm" IS 'Lease Term';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LeaseTerms" text;
    COMMENT ON COLUMN ntreis."Property"."LeaseTerms" IS 'Lease Terms';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LeaseType" text[];
    COMMENT ON COLUMN ntreis."Property"."LeaseType" IS 'Lease Type';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LesseePays" text[];
    COMMENT ON COLUMN ntreis."Property"."LesseePays" IS 'Lessee Pays';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN ntreis."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN ntreis."Property"."ListAgentMLSID" IS 'List Agent MLSID';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN ntreis."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN ntreis."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN ntreis."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN ntreis."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN ntreis."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ListPriceLow" decimal;
    COMMENT ON COLUMN ntreis."Property"."ListPriceLow" IS 'List Price Low';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN ntreis."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."LotFeatures" IS 'Lot Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotNumber" text;
    COMMENT ON COLUMN ntreis."Property"."LotNumber" IS 'Lot Number';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotSize" text;
    COMMENT ON COLUMN ntreis."Property"."LotSize" IS 'Lot Size';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotSizeArea" decimal;
    COMMENT ON COLUMN ntreis."Property"."LotSizeArea" IS 'Lot Size Area';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotSizeAreaSQFT" decimal;
    COMMENT ON COLUMN ntreis."Property"."LotSizeAreaSQFT" IS 'Lot Size Area SQFT';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotSizeDimensions" text;
    COMMENT ON COLUMN ntreis."Property"."LotSizeDimensions" IS 'Lot Size Dimensions';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotSizeSource" text;
    COMMENT ON COLUMN ntreis."Property"."LotSizeSource" IS 'Lot Size Source';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotSizeUnits" text;
    COMMENT ON COLUMN ntreis."Property"."LotSizeUnits" IS 'Lot Size Units';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotsSoldPackage" integer;
    COMMENT ON COLUMN ntreis."Property"."LotsSoldPackage" IS 'Lots Sold Package';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "LotsSoldSeparate" integer;
    COMMENT ON COLUMN ntreis."Property"."LotsSoldSeparate" IS 'Lots Sold Separate';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN ntreis."Property"."MLS" IS 'MLS';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MLSAreaMajor" text;
    COMMENT ON COLUMN ntreis."Property"."MLSAreaMajor" IS 'MLS Area Major';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MLSAreaMinor" text;
    COMMENT ON COLUMN ntreis."Property"."MLSAreaMinor" IS 'MLS Area Minor';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN ntreis."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MLSNumberSaleOrLease" text;
    COMMENT ON COLUMN ntreis."Property"."MLSNumberSaleOrLease" IS 'MLS Number Sale Or Lease';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MapBook" text;
    COMMENT ON COLUMN ntreis."Property"."MapBook" IS 'Map Book';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MapCoordinates" text;
    COMMENT ON COLUMN ntreis."Property"."MapCoordinates" IS 'Map Coordinates';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MapPage" text;
    COMMENT ON COLUMN ntreis."Property"."MapPage" IS 'Map Page';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN ntreis."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN ntreis."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MiddleSchoolName" text;
    COMMENT ON COLUMN ntreis."Property"."MiddleSchoolName" IS 'Middle School Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MoniesRequired" text[];
    COMMENT ON COLUMN ntreis."Property"."MoniesRequired" IS 'Monies Required';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MonthlyPetFee" integer;
    COMMENT ON COLUMN ntreis."Property"."MonthlyPetFee" IS 'Monthly Pet Fee';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MoveInDate" text;
    COMMENT ON COLUMN ntreis."Property"."MoveInDate" IS 'Move In Date';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MultiParcelIDYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."MultiParcelIDYN" IS 'Multi Parcel IDYN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MultiZoningYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."MultiZoningYN" IS 'Multi Zoning YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "MunicipalUtilityDistrictYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."MunicipalUtilityDistrictYN" IS 'Municipal Utility District YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NetAnnualIncome" integer;
    COMMENT ON COLUMN ntreis."Property"."NetAnnualIncome" IS 'Net Annual Income';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NonRefundablePetFeeYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."NonRefundablePetFeeYN" IS 'Non Refundable Pet Fee YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfBarns" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfBarns" IS 'Number Of Barns';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfBuildings" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfBuildings" IS 'Number Of Buildings';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfDaysGuestsAllowed" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfDaysGuestsAllowed" IS 'Number Of Days Guests Allowed';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfDiningAreas" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfDiningAreas" IS 'Number Of Dining Areas';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfLakes" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfLakes" IS 'Number Of Lakes';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfLeaseableSpaces" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfLeaseableSpaces" IS 'Number Of Leaseable Spaces';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfLivingAreas" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfLivingAreas" IS 'Number Of Living Areas';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfLots" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfLots" IS 'Number Of Lots';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfParkingSpaces" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfParkingSpaces" IS 'Number Of Parking Spaces';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfPetsAllowed" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfPetsAllowed" IS 'Number Of Pets Allowed';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfPonds" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfPonds" IS 'Number Of Ponds';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfResidences" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfResidences" IS 'Number Of Residences';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfSpacesLeased" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfSpacesLeased" IS 'Number Of Spaces Leased';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfStallsInBarn1" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfStallsInBarn1" IS 'Number Of Stalls In Barn 1';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfStallsInBarn2" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfStallsInBarn2" IS 'Number Of Stalls In Barn 2';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfStallsInBarn3" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfStallsInBarn3" IS 'Number Of Stalls In Barn 3';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfStockTanks" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfStockTanks" IS 'Number Of Stock Tanks';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfStories" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfStories" IS 'Number Of Stories';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfStoriesInBuilding" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfStoriesInBuilding" IS 'Number Of Stories In Building';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfUnits" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfUnits" IS 'Number Of Units';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfVehicles" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfVehicles" IS 'Number Of Vehicles';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfWaterMeters" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfWaterMeters" IS 'Number Of Water Meters';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "NumberOfWells" integer;
    COMMENT ON COLUMN ntreis."Property"."NumberOfWells" IS 'Number Of Wells';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "OccupancyRate" integer;
    COMMENT ON COLUMN ntreis."Property"."OccupancyRate" IS 'Occupancy Rate';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "OfficeSupervisor" text;
    COMMENT ON COLUMN ntreis."Property"."OfficeSupervisor" IS 'Office Supervisor';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "OpenHouseCount" integer;
    COMMENT ON COLUMN ntreis."Property"."OpenHouseCount" IS 'Open House Count';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "OpenHouseUpcoming" text;
    COMMENT ON COLUMN ntreis."Property"."OpenHouseUpcoming" IS 'Open House Upcoming';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN ntreis."Property"."OriginalListPrice" IS 'Original List Price';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "OtherEquipment" text[];
    COMMENT ON COLUMN ntreis."Property"."OtherEquipment" IS 'Other Equipment';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "OwnerPays" text[];
    COMMENT ON COLUMN ntreis."Property"."OwnerPays" IS 'Owner Pays';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ParcelNumber" text;
    COMMENT ON COLUMN ntreis."Property"."ParcelNumber" IS 'Parcel Number';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ParkingFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."ParkingFeatures" IS 'Parking Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ParkingSpacesCarport" integer;
    COMMENT ON COLUMN ntreis."Property"."ParkingSpacesCarport" IS 'Parking Spaces Carport';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ParkingSpacesCoveredTotal" integer;
    COMMENT ON COLUMN ntreis."Property"."ParkingSpacesCoveredTotal" IS 'Parking Spaces Covered Total';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ParkingSpacesGarage" integer;
    COMMENT ON COLUMN ntreis."Property"."ParkingSpacesGarage" IS 'Parking Spaces Garage';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PermitAVMYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."PermitAVMYN" IS 'Permit AVMYN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PermitAddressInternetYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."PermitAddressInternetYN" IS 'Permit Address Internet YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PermitCommentsReviewsYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."PermitCommentsReviewsYN" IS 'Permit Comments Reviews YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PermitInternetYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."PermitInternetYN" IS 'Permit Internet YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PetsYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."PetsYN" IS 'Pets YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN ntreis."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN ntreis."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PlannedDevelopment" text;
    COMMENT ON COLUMN ntreis."Property"."PlannedDevelopment" IS 'Planned Development';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PoolFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."PoolFeatures" IS 'Pool Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PoolYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."PoolYN" IS 'Pool YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Possession" text[];
    COMMENT ON COLUMN ntreis."Property"."Possession" IS 'Possession';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN ntreis."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN ntreis."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PresentUse" text[];
    COMMENT ON COLUMN ntreis."Property"."PresentUse" IS 'Present Use';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PriceChangeTimestamp" text;
    COMMENT ON COLUMN ntreis."Property"."PriceChangeTimestamp" IS 'Price Change Timestamp';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PrimarySchoolName" text;
    COMMENT ON COLUMN ntreis."Property"."PrimarySchoolName" IS 'Primary School Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PropertyAssociationFees" text[];
    COMMENT ON COLUMN ntreis."Property"."PropertyAssociationFees" IS 'Property Association Fees';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN ntreis."Property"."PropertySubType" IS 'Property Sub Type';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN ntreis."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ProposedUse" text[];
    COMMENT ON COLUMN ntreis."Property"."ProposedUse" IS 'Proposed Use';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "PublicRemarks" text;
    COMMENT ON COLUMN ntreis."Property"."PublicRemarks" IS 'Public Remarks';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "RanchName" text;
    COMMENT ON COLUMN ntreis."Property"."RanchName" IS 'Ranch Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "RanchType" text;
    COMMENT ON COLUMN ntreis."Property"."RanchType" IS 'Ranch Type';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Restrictions" text[];
    COMMENT ON COLUMN ntreis."Property"."Restrictions" IS 'Restrictions';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "RoadAssessmentYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."RoadAssessmentYN" IS 'Road Assessment YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "RoadFrontage" text[];
    COMMENT ON COLUMN ntreis."Property"."RoadFrontage" IS 'Road Frontage';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "RoadFrontageDistance" integer;
    COMMENT ON COLUMN ntreis."Property"."RoadFrontageDistance" IS 'Road Frontage Distance';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Roof" text[];
    COMMENT ON COLUMN ntreis."Property"."Roof" IS 'Roof';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "RoomCount" integer;
    COMMENT ON COLUMN ntreis."Property"."RoomCount" IS 'Room Count';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SQFTBuilding" integer;
    COMMENT ON COLUMN ntreis."Property"."SQFTBuilding" IS 'SQFT Building';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SQFTGross" integer;
    COMMENT ON COLUMN ntreis."Property"."SQFTGross" IS 'SQFT Gross';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SQFTLand" integer;
    COMMENT ON COLUMN ntreis."Property"."SQFTLand" IS 'SQFT Land';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SQFTLeasable" integer;
    COMMENT ON COLUMN ntreis."Property"."SQFTLeasable" IS 'SQFT Leasable';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SQFTLot" integer;
    COMMENT ON COLUMN ntreis."Property"."SQFTLot" IS 'SQFT Lot';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SchoolDistrict" text;
    COMMENT ON COLUMN ntreis."Property"."SchoolDistrict" IS 'School District';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SecurityFeatures" text[];
    COMMENT ON COLUMN ntreis."Property"."SecurityFeatures" IS 'Security Features';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SecuritySystemYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."SecuritySystemYN" IS 'Security System YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SeniorHighSchoolName" text;
    COMMENT ON COLUMN ntreis."Property"."SeniorHighSchoolName" IS 'Senior High School Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ShowingInstructionsType" text[];
    COMMENT ON COLUMN ntreis."Property"."ShowingInstructionsType" IS 'Showing Instructions Type';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SoilType" text[];
    COMMENT ON COLUMN ntreis."Property"."SoilType" IS 'Soil Type';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SpecialNotes" text[];
    COMMENT ON COLUMN ntreis."Property"."SpecialNotes" IS 'Special Notes';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SqFtTotal" integer;
    COMMENT ON COLUMN ntreis."Property"."SqFtTotal" IS 'Sq Ft Total';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN ntreis."Property"."StateOrProvince" IS 'State Or Province';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN ntreis."Property"."Status" IS 'Status';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN ntreis."Property"."StreetDirPrefix" IS 'Street Dir Prefix';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN ntreis."Property"."StreetDirSuffix" IS 'Street Dir Suffix';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN ntreis."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN ntreis."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "StreetNumberSearchable" integer;
    COMMENT ON COLUMN ntreis."Property"."StreetNumberSearchable" IS 'Street Number Searchable';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN ntreis."Property"."StreetSuffix" IS 'Street Suffix';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "StructuralStyle" text[];
    COMMENT ON COLUMN ntreis."Property"."StructuralStyle" IS 'Structural Style';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SubdividedYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."SubdividedYN" IS 'Subdivided YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SubdivisionName" text;
    COMMENT ON COLUMN ntreis."Property"."SubdivisionName" IS 'Subdivision Name';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "SurfaceRights" text[];
    COMMENT ON COLUMN ntreis."Property"."SurfaceRights" IS 'Surface Rights';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "TaxLegalDescription" text;
    COMMENT ON COLUMN ntreis."Property"."TaxLegalDescription" IS 'Tax Legal Description';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Tenancy" text[];
    COMMENT ON COLUMN ntreis."Property"."Tenancy" IS 'Tenancy';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "TenantPays" text[];
    COMMENT ON COLUMN ntreis."Property"."TenantPays" IS 'Tenant Pays';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Topography" text[];
    COMMENT ON COLUMN ntreis."Property"."Topography" IS 'Topography';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "TotalAnnualExpensesInclude" text[];
    COMMENT ON COLUMN ntreis."Property"."TotalAnnualExpensesInclude" IS 'Total Annual Expenses Include';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "TransactionType" text;
    COMMENT ON COLUMN ntreis."Property"."TransactionType" IS 'Transaction Type';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "UnexemptTaxes" integer;
    COMMENT ON COLUMN ntreis."Property"."UnexemptTaxes" IS 'Unexempt Taxes';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "UnitCount" integer;
    COMMENT ON COLUMN ntreis."Property"."UnitCount" IS 'Unit Count';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN ntreis."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Utilities" text[];
    COMMENT ON COLUMN ntreis."Property"."Utilities" IS 'Utilities';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "UtilitiesOther" text[];
    COMMENT ON COLUMN ntreis."Property"."UtilitiesOther" IS 'Utilities Other';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "VirtualTourURLBranded" text;
    COMMENT ON COLUMN ntreis."Property"."VirtualTourURLBranded" IS 'Virtual Tour URL Branded';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "VirtualTourURLUnbranded" text;
    COMMENT ON COLUMN ntreis."Property"."VirtualTourURLUnbranded" IS 'Virtual Tour URL Unbranded';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "WillSubdivide" text;
    COMMENT ON COLUMN ntreis."Property"."WillSubdivide" IS 'Will Subdivide';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "WillSubdivideYN" boolean;
    COMMENT ON COLUMN ntreis."Property"."WillSubdivideYN" IS 'Will Subdivide YN';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN ntreis."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "YearBuiltDetails" text;
    COMMENT ON COLUMN ntreis."Property"."YearBuiltDetails" IS 'Year Built Details';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "Zoning" text[];
    COMMENT ON COLUMN ntreis."Property"."Zoning" IS 'Zoning';
     
    ALTER TABLE ntreis."Property" ADD COLUMN "ZoningCommercial" text;
    COMMENT ON COLUMN ntreis."Property"."ZoningCommercial" IS 'Zoning Commercial';
     

COMMIT;