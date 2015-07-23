BEGIN;

  CREATE TABLE ppmls."Property"() INHERITS (property);
    ALTER TABLE ppmls."Property" ADD COLUMN "AcresTotal" decimal;
    COMMENT ON COLUMN ppmls."Property"."AcresTotal" IS 'Acres Total';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "AdjacentParcelforSaleYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."AdjacentParcelforSaleYN" IS 'Adjacent Parcelfor Sale YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "AllowBloggingYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."AllowBloggingYN" IS 'Allow Blogging YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "AnnualGrossSales" integer;
    COMMENT ON COLUMN ppmls."Property"."AnnualGrossSales" IS 'Annual Gross Sales';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Appliances" text[];
    COMMENT ON COLUMN ppmls."Property"."Appliances" IS 'Appliances';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BarnSQFT" integer;
    COMMENT ON COLUMN ppmls."Property"."BarnSQFT" IS 'Barn SQFT';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BasementPercentFinished" integer;
    COMMENT ON COLUMN ppmls."Property"."BasementPercentFinished" IS 'Basement Percent Finished';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN ppmls."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN ppmls."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN ppmls."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BuilderModel" text;
    COMMENT ON COLUMN ppmls."Property"."BuilderModel" IS 'Builder Model';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BuilderName" text;
    COMMENT ON COLUMN ppmls."Property"."BuilderName" IS 'Builder Name';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BuildingDescription" text;
    COMMENT ON COLUMN ppmls."Property"."BuildingDescription" IS 'Building Description';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BuildingSQFT" integer;
    COMMENT ON COLUMN ppmls."Property"."BuildingSQFT" IS 'Building SQFT';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BusinessType" text;
    COMMENT ON COLUMN ppmls."Property"."BusinessType" IS 'Business Type';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "BusinessTypeDesc" text;
    COMMENT ON COLUMN ppmls."Property"."BusinessTypeDesc" IS 'Business Type Desc';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN ppmls."Property"."City" IS 'City';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "CoListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN ppmls."Property"."CoListAgentDirectWorkPhone" IS 'Co List Agent Direct Work Phone';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "CoListAgentEmail" text;
    COMMENT ON COLUMN ppmls."Property"."CoListAgentEmail" IS 'Co List Agent Email';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "CoListAgentFullName" text;
    COMMENT ON COLUMN ppmls."Property"."CoListAgentFullName" IS 'Co List Agent Full Name';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "CoListAgentSalesmanID" text;
    COMMENT ON COLUMN ppmls."Property"."CoListAgentSalesmanID" IS 'Co List Agent Salesman ID';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "CoListAgent_MUI" bigint;
    COMMENT ON COLUMN ppmls."Property"."CoListAgent_MUI" IS 'Co List Agent MUI';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ComplexAmenities" text[];
    COMMENT ON COLUMN ppmls."Property"."ComplexAmenities" IS 'Complex Amenities';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ConstructionStatus" text;
    COMMENT ON COLUMN ppmls."Property"."ConstructionStatus" IS 'Construction Status';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "CostofGoods" integer;
    COMMENT ON COLUMN ppmls."Property"."CostofGoods" IS 'Costof Goods';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN ppmls."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "DatePossession" text;
    COMMENT ON COLUMN ppmls."Property"."DatePossession" IS 'Date Possession';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "DepositPet" integer;
    COMMENT ON COLUMN ppmls."Property"."DepositPet" IS 'Deposit Pet';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "DepositSecurity" integer;
    COMMENT ON COLUMN ppmls."Property"."DepositSecurity" IS 'Deposit Security';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "DisplayListingVOWYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."DisplayListingVOWYN" IS 'Display Listing VOWYN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "EarnestMoney" integer;
    COMMENT ON COLUMN ppmls."Property"."EarnestMoney" IS 'Earnest Money';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "FeaturesExtra" text[];
    COMMENT ON COLUMN ppmls."Property"."FeaturesExtra" IS 'Features Extra';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "FirePlaceDesc" text[];
    COMMENT ON COLUMN ppmls."Property"."FirePlaceDesc" IS 'Fire Place Desc';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "FloorPlan" text;
    COMMENT ON COLUMN ppmls."Property"."FloorPlan" IS 'Floor Plan';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Floors" text[];
    COMMENT ON COLUMN ppmls."Property"."Floors" IS 'Floors';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "GarageAmenities" text[];
    COMMENT ON COLUMN ppmls."Property"."GarageAmenities" IS 'Garage Amenitities';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "GarageRemotes" integer;
    COMMENT ON COLUMN ppmls."Property"."GarageRemotes" IS 'Garage Remotes';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "GarageSpaces" integer;
    COMMENT ON COLUMN ppmls."Property"."GarageSpaces" IS 'Garage Spaces';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "GarageType" text[];
    COMMENT ON COLUMN ppmls."Property"."GarageType" IS 'Garage Type';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "GreenEnergyStarQualifiedYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."GreenEnergyStarQualifiedYN" IS 'Green Energy Star Qualified YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "GreenHersScoreYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."GreenHersScoreYN" IS 'Green Hers Score YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "GreenLEEDYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."GreenLEEDYN" IS 'Green LEEDYN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "GreenSolarPVYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."GreenSolarPVYN" IS 'Green Solar PVYN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "GreenSolarThermalYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."GreenSolarThermalYN" IS 'Green Solar Thermal YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Handicap" text[];
    COMMENT ON COLUMN ppmls."Property"."Handicap" IS 'Handicap';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "HeatAir" text[];
    COMMENT ON COLUMN ppmls."Property"."HeatAir" IS 'Heat Air';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "IDXOptInYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."IDXOptInYN" IS 'IDX Opt In YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "IndustrialType" text[];
    COMMENT ON COLUMN ppmls."Property"."IndustrialType" IS 'Industrial Type';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "LaundryFacilities" text[];
    COMMENT ON COLUMN ppmls."Property"."LaundryFacilities" IS 'Laundry Facilites';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "LeaseRateHigh" decimal;
    COMMENT ON COLUMN ppmls."Property"."LeaseRateHigh" IS 'Lease Rate High';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "LeaseTermMin" integer;
    COMMENT ON COLUMN ppmls."Property"."LeaseTermMin" IS 'Lease Term Min';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "LeaseType" text;
    COMMENT ON COLUMN ppmls."Property"."LeaseType" IS 'Lease Type';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN ppmls."Property"."ListAgentDirectWorkPhone" IS 'List Agent Direct Work Phone';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListAgentEmail" text;
    COMMENT ON COLUMN ppmls."Property"."ListAgentEmail" IS 'List Agent Email';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN ppmls."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListAgentSalesmanID" text;
    COMMENT ON COLUMN ppmls."Property"."ListAgentSalesmanID" IS 'List Agent Salesman ID';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN ppmls."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN ppmls."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN ppmls."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN ppmls."Property"."ListOfficePhone" IS 'List Office Phone';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN ppmls."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN ppmls."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "LotDesc" text[];
    COMMENT ON COLUMN ppmls."Property"."LotDesc" IS 'Lot Desc';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "LotSize" decimal;
    COMMENT ON COLUMN ppmls."Property"."LotSize" IS 'Lot Size';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "LotSizeArea" decimal;
    COMMENT ON COLUMN ppmls."Property"."LotSizeArea" IS 'Lot Size Area';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "LotSizeUnits" text;
    COMMENT ON COLUMN ppmls."Property"."LotSizeUnits" IS 'Lot Size Units';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "MLSAreaMajor" text;
    COMMENT ON COLUMN ppmls."Property"."MLSAreaMajor" IS 'MLS Area Major';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "MLSAreaMinor" text;
    COMMENT ON COLUMN ppmls."Property"."MLSAreaMinor" IS 'MLS Area Minor';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN ppmls."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "MainFloorBedroomYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."MainFloorBedroomYN" IS 'Main Floor Bedroom YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN ppmls."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN ppmls."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "MonthlyRent" decimal;
    COMMENT ON COLUMN ppmls."Property"."MonthlyRent" IS 'Monthly Rent';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "NAHBNGBSICC700YN" boolean;
    COMMENT ON COLUMN ppmls."Property"."NAHBNGBSICC700YN" IS 'NAHBNGBSICC 700 YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "NetProfit" integer;
    COMMENT ON COLUMN ppmls."Property"."NetProfit" IS 'Net Profit';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Notices" text[];
    COMMENT ON COLUMN ppmls."Property"."Notices" IS 'Notices';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "OfferedFor" text;
    COMMENT ON COLUMN ppmls."Property"."OfferedFor" IS 'Offered For';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "OriginalEntryTimestamp" text;
    COMMENT ON COLUMN ppmls."Property"."OriginalEntryTimestamp" IS 'Original Entry Timestamp';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "OutBuildings" text[];
    COMMENT ON COLUMN ppmls."Property"."OutBuildings" IS 'Out Buildings';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ParkingSpacesNumberOf" integer;
    COMMENT ON COLUMN ppmls."Property"."ParkingSpacesNumberOf" IS 'Parking Spaces Number Of';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PermitAddressInternetYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."PermitAddressInternetYN" IS 'Permit Address Internet YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PetType" text[];
    COMMENT ON COLUMN ppmls."Property"."PetType" IS 'Pet Type';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PetsYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."PetsYN" IS 'Pets YN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN ppmls."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PhotoInstructions" text;
    COMMENT ON COLUMN ppmls."Property"."PhotoInstructions" IS 'Photo Instructions';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN ppmls."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN ppmls."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN ppmls."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PriceChangeTimestamp" text;
    COMMENT ON COLUMN ppmls."Property"."PriceChangeTimestamp" IS 'Price Change Timestamp';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN ppmls."Property"."PropertySubType" IS 'Property Sub Type';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN ppmls."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "ProviderModificationTimestamp" text;
    COMMENT ON COLUMN ppmls."Property"."ProviderModificationTimestamp" IS 'Provider Modification Timestamp';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "PublicRemarks" text;
    COMMENT ON COLUMN ppmls."Property"."PublicRemarks" IS 'Public Remarks';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "RentIncludes" text[];
    COMMENT ON COLUMN ppmls."Property"."RentIncludes" IS 'Rent Includes';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "RetailType" text[];
    COMMENT ON COLUMN ppmls."Property"."RetailType" IS 'Retail Type';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Roof" text;
    COMMENT ON COLUMN ppmls."Property"."Roof" IS 'Roof';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SalesPriceHigh" decimal;
    COMMENT ON COLUMN ppmls."Property"."SalesPriceHigh" IS 'Sales Price High';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SchoolDistrict" text;
    COMMENT ON COLUMN ppmls."Property"."SchoolDistrict" IS 'School District';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SideCoordinate" integer;
    COMMENT ON COLUMN ppmls."Property"."SideCoordinate" IS 'Side Coordinate';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Siding" text[];
    COMMENT ON COLUMN ppmls."Property"."Siding" IS 'Siding';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SqftFinished" integer;
    COMMENT ON COLUMN ppmls."Property"."SqftFinished" IS 'Sqft Finished';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SqftLowerFloor" integer;
    COMMENT ON COLUMN ppmls."Property"."SqftLowerFloor" IS 'Sqft Lower Floor';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SqftLowerPercent" integer;
    COMMENT ON COLUMN ppmls."Property"."SqftLowerPercent" IS 'Sqft Lower Percent';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SqftMainFloor" integer;
    COMMENT ON COLUMN ppmls."Property"."SqftMainFloor" IS 'Sqft Main Floor';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SqftTotal" integer;
    COMMENT ON COLUMN ppmls."Property"."SqftTotal" IS 'Sqft Total';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SqftUpperFloor" integer;
    COMMENT ON COLUMN ppmls."Property"."SqftUpperFloor" IS 'Sqft Upper Floor';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN ppmls."Property"."StateOrProvince" IS 'State Or Province';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN ppmls."Property"."Status" IS 'Status';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "StatusChangeTimestamp" text;
    COMMENT ON COLUMN ppmls."Property"."StatusChangeTimestamp" IS 'Status Change Timestamp';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Stories" integer;
    COMMENT ON COLUMN ppmls."Property"."Stories" IS 'Stories';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN ppmls."Property"."StreetDirPrefix" IS 'Street Dir Prefix';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN ppmls."Property"."StreetDirSuffix" IS 'Street Dir Suffix';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN ppmls."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN ppmls."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN ppmls."Property"."StreetSuffix" IS 'Street Suffix';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Structure" text[];
    COMMENT ON COLUMN ppmls."Property"."Structure" IS 'Structure';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "SupplementalRemarks" text;
    COMMENT ON COLUMN ppmls."Property"."SupplementalRemarks" IS 'Supplemental Remarks';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "TaxAmount" decimal;
    COMMENT ON COLUMN ppmls."Property"."TaxAmount" IS 'Tax Amount';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "TaxYear" integer;
    COMMENT ON COLUMN ppmls."Property"."TaxYear" IS 'Tax Year';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "TopCoordinate" integer;
    COMMENT ON COLUMN ppmls."Property"."TopCoordinate" IS 'Top Coordinate';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Topography" text[];
    COMMENT ON COLUMN ppmls."Property"."Topography" IS 'Topography';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "TotalExpenses" integer;
    COMMENT ON COLUMN ppmls."Property"."TotalExpenses" IS 'Total Expenses';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "UnitCount" integer;
    COMMENT ON COLUMN ppmls."Property"."UnitCount" IS 'Unit Count';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "UnitDesc" text[];
    COMMENT ON COLUMN ppmls."Property"."UnitDesc" IS 'Unit Desc';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN ppmls."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Utilities" text[];
    COMMENT ON COLUMN ppmls."Property"."Utilities" IS 'Utilities';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "VOWAVMYN" boolean;
    COMMENT ON COLUMN ppmls."Property"."VOWAVMYN" IS 'VOWAVMYN';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Vegetation" text[];
    COMMENT ON COLUMN ppmls."Property"."Vegetation" IS 'Vegetation';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "VirtualTourURLUnbranded" text;
    COMMENT ON COLUMN ppmls."Property"."VirtualTourURLUnbranded" IS 'Virtual Tour URL Unbranded';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "VirtualTourURLUnbranded2" text;
    COMMENT ON COLUMN ppmls."Property"."VirtualTourURLUnbranded2" IS 'Virtual Tour URL Unbranded 2';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "VirtualTourURLUnbranded3" text;
    COMMENT ON COLUMN ppmls."Property"."VirtualTourURLUnbranded3" IS 'Virtual Tour URL Unbranded 3';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "Water" text[];
    COMMENT ON COLUMN ppmls."Property"."Water" IS 'Water';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "WellsNumberof" integer;
    COMMENT ON COLUMN ppmls."Property"."WellsNumberof" IS 'Wells Numberof';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN ppmls."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "YearEstablished" integer;
    COMMENT ON COLUMN ppmls."Property"."YearEstablished" IS 'Year Established';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "fence" text[];
    COMMENT ON COLUMN ppmls."Property"."fence" IS 'Fence';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "foundationDetails" text[];
    COMMENT ON COLUMN ppmls."Property"."foundationDetails" IS 'Foundation Details';
     
    ALTER TABLE ppmls."Property" ADD COLUMN "sqftTotalBsmt" integer;
    COMMENT ON COLUMN ppmls."Property"."sqftTotalBsmt" IS 'Sqft Total Bsmt';
     

COMMIT;