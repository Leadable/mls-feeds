BEGIN;

  CREATE TABLE realcomp2."Property"() INHERITS (property);
    ALTER TABLE realcomp2."Property" ADD COLUMN "APODAvailableYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."APODAvailableYN" IS 'APOD Available YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ActiveOpenHouseCount" integer;
    COMMENT ON COLUMN realcomp2."Property"."ActiveOpenHouseCount" IS 'Active Open House Count';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "AdditionalFees" decimal;
    COMMENT ON COLUMN realcomp2."Property"."AdditionalFees" IS 'Additional Fees';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "AirportYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."AirportYN" IS 'Airport YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ApplicationFee" decimal;
    COMMENT ON COLUMN realcomp2."Property"."ApplicationFee" IS 'Application Fee';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ArchitectureLevel" text[];
    COMMENT ON COLUMN realcomp2."Property"."ArchitectureLevel" IS 'Architecture Level';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ArchitectureStyle" text[];
    COMMENT ON COLUMN realcomp2."Property"."ArchitectureStyle" IS 'Architecture Style';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Assessment" text;
    COMMENT ON COLUMN realcomp2."Property"."Assessment" IS 'Assessment';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "AssociaitionContact" text;
    COMMENT ON COLUMN realcomp2."Property"."AssociaitionContact" IS 'Associaition Contact';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "AssociationFeeFrequency" text;
    COMMENT ON COLUMN realcomp2."Property"."AssociationFeeFrequency" IS 'Association Fee Frequency';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "AssociationFeeIncludes" text[];
    COMMENT ON COLUMN realcomp2."Property"."AssociationFeeIncludes" IS 'Association Fee Includes';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "AssociationFeeText" text;
    COMMENT ON COLUMN realcomp2."Property"."AssociationFeeText" IS 'Association Fee Text';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "AssociationPhone" text;
    COMMENT ON COLUMN realcomp2."Property"."AssociationPhone" IS 'Association Phone';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BackOnMarketDate" text;
    COMMENT ON COLUMN realcomp2."Property"."BackOnMarketDate" IS 'Back On Market Date';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BasementType" text[];
    COMMENT ON COLUMN realcomp2."Property"."BasementType" IS 'Basement Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BasementYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."BasementYN" IS 'Basement YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN realcomp2."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN realcomp2."Property"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN realcomp2."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN realcomp2."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BuildingNumber" text;
    COMMENT ON COLUMN realcomp2."Property"."BuildingNumber" IS 'Building Number';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BuildingsList" text[];
    COMMENT ON COLUMN realcomp2."Property"."BuildingsList" IS 'Buildings List';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BusinessLicenses" text[];
    COMMENT ON COLUMN realcomp2."Property"."BusinessLicenses" IS 'Business Licenses';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "BusinessType" text[];
    COMMENT ON COLUMN realcomp2."Property"."BusinessType" IS 'Business Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN realcomp2."Property"."City" IS 'City';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "CommercialOffering" text[];
    COMMENT ON COLUMN realcomp2."Property"."CommercialOffering" IS 'Commercial Offering';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "CommercialType" text[];
    COMMENT ON COLUMN realcomp2."Property"."CommercialType" IS 'Commercial Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "CommercialUtilities" text[];
    COMMENT ON COLUMN realcomp2."Property"."CommercialUtilities" IS 'Commercial Utilities';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ConstructionFeatures" text[];
    COMMENT ON COLUMN realcomp2."Property"."ConstructionFeatures" IS 'Construction Features';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ConstructionMaterials" text[];
    COMMENT ON COLUMN realcomp2."Property"."ConstructionMaterials" IS 'Construction Materials';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Cooling" text[];
    COMMENT ON COLUMN realcomp2."Property"."Cooling" IS 'Cooling';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN realcomp2."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "CurrentUse" text;
    COMMENT ON COLUMN realcomp2."Property"."CurrentUse" IS 'Current Use';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "CustomerCommentYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."CustomerCommentYN" IS 'Customer Comment YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "DepositAmount" decimal;
    COMMENT ON COLUMN realcomp2."Property"."DepositAmount" IS 'Deposit Amount';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN realcomp2."Property"."Directions" IS 'Directions';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "DirectionsFromEastWest" text;
    COMMENT ON COLUMN realcomp2."Property"."DirectionsFromEastWest" IS 'Directions From East West';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "DirectionsFromEastWestDetail" text;
    COMMENT ON COLUMN realcomp2."Property"."DirectionsFromEastWestDetail" IS 'Directions From East West Detail';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "DirectionsFromNorthSouth" text;
    COMMENT ON COLUMN realcomp2."Property"."DirectionsFromNorthSouth" IS 'Directions From North South';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "DirectionsFromNorthSouthDetail" text;
    COMMENT ON COLUMN realcomp2."Property"."DirectionsFromNorthSouthDetail" IS 'Directions From North South Deta';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "DistanceToAirport" text;
    COMMENT ON COLUMN realcomp2."Property"."DistanceToAirport" IS 'Distance To Airport';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "DistanceToInterstate" text;
    COMMENT ON COLUMN realcomp2."Property"."DistanceToInterstate" IS 'Distance To Interstate';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "DistanceToRail" text;
    COMMENT ON COLUMN realcomp2."Property"."DistanceToRail" IS 'Distance To Rail';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "DistanceToWaterway" text;
    COMMENT ON COLUMN realcomp2."Property"."DistanceToWaterway" IS 'Distance To Waterway';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "EncroachmentYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."EncroachmentYN" IS 'Encroachment YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ExcludeFromInventoryStats" boolean;
    COMMENT ON COLUMN realcomp2."Property"."ExcludeFromInventoryStats" IS 'Exclude From Inventory Stats';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ExclusionsYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."ExclusionsYN" IS 'Exclusions YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN realcomp2."Property"."ExteriorFeatures" IS 'Exterior Features';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "FireplaceFuel" text[];
    COMMENT ON COLUMN realcomp2."Property"."FireplaceFuel" IS 'Fireplace Fuel';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "FireplaceLocations" text[];
    COMMENT ON COLUMN realcomp2."Property"."FireplaceLocations" IS 'Fireplace Locations';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "FireplaceYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."FireplaceYN" IS 'Fireplace YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "FoundationDetails" text[];
    COMMENT ON COLUMN realcomp2."Property"."FoundationDetails" IS 'Foundation Details';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "FoundationMaterials" text[];
    COMMENT ON COLUMN realcomp2."Property"."FoundationMaterials" IS 'Foundation Materials';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "FrontageFeet" integer;
    COMMENT ON COLUMN realcomp2."Property"."FrontageFeet" IS 'Frontage Feet';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "GarageDimensions" text;
    COMMENT ON COLUMN realcomp2."Property"."GarageDimensions" IS 'Garage Dimensions';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "GarageFeatures" text[];
    COMMENT ON COLUMN realcomp2."Property"."GarageFeatures" IS 'Garage Features';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "GarageSize" text[];
    COMMENT ON COLUMN realcomp2."Property"."GarageSize" IS 'Garage Size';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "GarageYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."GarageYN" IS 'Garage YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "GrossScheduledIncome" decimal;
    COMMENT ON COLUMN realcomp2."Property"."GrossScheduledIncome" IS 'Gross Scheduled Income';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Heating" text[];
    COMMENT ON COLUMN realcomp2."Property"."Heating" IS 'Heating';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "HeatingFuel" text[];
    COMMENT ON COLUMN realcomp2."Property"."HeatingFuel" IS 'Heating Fuel';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "HighSpeedInternetYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."HighSpeedInternetYN" IS 'High Speed Internet YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "HomesteadPercent" text;
    COMMENT ON COLUMN realcomp2."Property"."HomesteadPercent" IS 'Homestead Percent';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "HomesteadYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."HomesteadYN" IS 'Homestead YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "IDXOptInYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."IDXOptInYN" IS 'IDX Opt In YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Improvements" text[];
    COMMENT ON COLUMN realcomp2."Property"."Improvements" IS 'Improvements';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "IncomeProjection" text;
    COMMENT ON COLUMN realcomp2."Property"."IncomeProjection" IS 'Income Projection';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Input_Warning" text[];
    COMMENT ON COLUMN realcomp2."Property"."Input_Warning" IS 'Input Warning';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Input_Warning_Override" text[];
    COMMENT ON COLUMN realcomp2."Property"."Input_Warning_Override" IS 'Input Warning Override';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "InteriorFeatures" text[];
    COMMENT ON COLUMN realcomp2."Property"."InteriorFeatures" IS 'Interior Features';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "InterstateYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."InterstateYN" IS 'Interstate YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "InventoryIncludedYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."InventoryIncludedYN" IS 'Inventory Included YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "InventoryListYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."InventoryListYN" IS 'Inventory List YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "IrrigationYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."IrrigationYN" IS 'Irrigation YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "IsDeleted" boolean;
    COMMENT ON COLUMN realcomp2."Property"."IsDeleted" IS 'Is Deleted';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "KitchenAppliances" text[];
    COMMENT ON COLUMN realcomp2."Property"."KitchenAppliances" IS 'Kitchen Appliances';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LandContractYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."LandContractYN" IS 'Land Contract YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LandInterestRate" text;
    COMMENT ON COLUMN realcomp2."Property"."LandInterestRate" IS 'Land Interest Rate';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LandPayment" integer;
    COMMENT ON COLUMN realcomp2."Property"."LandPayment" IS 'Land Payment';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LandTerms" text;
    COMMENT ON COLUMN realcomp2."Property"."LandTerms" IS 'Land Terms';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LastChangeTimestamp" text;
    COMMENT ON COLUMN realcomp2."Property"."LastChangeTimestamp" IS 'Last Change Timestamp';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LastChangeType" text;
    COMMENT ON COLUMN realcomp2."Property"."LastChangeType" IS 'Last Change Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN realcomp2."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LeaseType" text[];
    COMMENT ON COLUMN realcomp2."Property"."LeaseType" IS 'Lease Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LegalRentalCertifiedYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."LegalRentalCertifiedYN" IS 'Legal Rental Certified YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LengthOfLease" text[];
    COMMENT ON COLUMN realcomp2."Property"."LengthOfLease" IS 'Length Of Lease';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN realcomp2."Property"."ListAgentDirectWorkPhone" IS 'List Agent Direct Work Phone';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListAgentEmail" text;
    COMMENT ON COLUMN realcomp2."Property"."ListAgentEmail" IS 'List Agent Email';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN realcomp2."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN realcomp2."Property"."ListAgentMLSID" IS 'List Agent MLSID';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListAgent_MUI" bigint;
    COMMENT ON COLUMN realcomp2."Property"."ListAgent_MUI" IS 'List Agent MUI';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN realcomp2."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN realcomp2."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN realcomp2."Property"."ListOfficePhone" IS 'List Office Phone';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListOffice_MUI" bigint;
    COMMENT ON COLUMN realcomp2."Property"."ListOffice_MUI" IS 'List Office MUI';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN realcomp2."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListPrice_By_Acre" decimal;
    COMMENT ON COLUMN realcomp2."Property"."ListPrice_By_Acre" IS 'List Price By Acre';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListingAgreement" text;
    COMMENT ON COLUMN realcomp2."Property"."ListingAgreement" IS 'Listing Agreement';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListingContractDate" text;
    COMMENT ON COLUMN realcomp2."Property"."ListingContractDate" IS 'Listing Contract Date';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListingFinancing" text[];
    COMMENT ON COLUMN realcomp2."Property"."ListingFinancing" IS 'Listing Financing';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListingService" text;
    COMMENT ON COLUMN realcomp2."Property"."ListingService" IS 'Listing Service';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ListingServiceOffered" text[];
    COMMENT ON COLUMN realcomp2."Property"."ListingServiceOffered" IS 'Listing Service Offered';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LockBoxType" text[];
    COMMENT ON COLUMN realcomp2."Property"."LockBoxType" IS 'Lock Box Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN realcomp2."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LotFeatures" text[];
    COMMENT ON COLUMN realcomp2."Property"."LotFeatures" IS 'Lot Features';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LotSizeArea" decimal;
    COMMENT ON COLUMN realcomp2."Property"."LotSizeArea" IS 'Lot Size Area';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LotSizeDimensions" text;
    COMMENT ON COLUMN realcomp2."Property"."LotSizeDimensions" IS 'Lot Size Dimensions';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "LotSizeUnits" text;
    COMMENT ON COLUMN realcomp2."Property"."LotSizeUnits" IS 'Lot Size Units';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MFParking" text[];
    COMMENT ON COLUMN realcomp2."Property"."MFParking" IS 'MF Parking';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN realcomp2."Property"."MLS" IS 'MLS';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MLSAreaMajor" text;
    COMMENT ON COLUMN realcomp2."Property"."MLSAreaMajor" IS 'MLS Area Major';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MLSAreaMajorNumber" text;
    COMMENT ON COLUMN realcomp2."Property"."MLSAreaMajorNumber" IS 'MLS Area Major Number';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN realcomp2."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MapLetter" text;
    COMMENT ON COLUMN realcomp2."Property"."MapLetter" IS 'Map Letter';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MapNumber" text;
    COMMENT ON COLUMN realcomp2."Property"."MapNumber" IS 'Map Number';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MapNumberNumeric" integer;
    COMMENT ON COLUMN realcomp2."Property"."MapNumberNumeric" IS 'Map Number Numeric';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN realcomp2."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Matrix_Unique_ID" bigint PRIMARY KEY;
    COMMENT ON COLUMN realcomp2."Property"."Matrix_Unique_ID" IS 'Matrix Unique ID';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MineralRightsYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."MineralRightsYN" IS 'Mineral Rights YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MonthlyRentalIncome" integer;
    COMMENT ON COLUMN realcomp2."Property"."MonthlyRentalIncome" IS 'Monthly Rental Income';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "MonthlySales" integer;
    COMMENT ON COLUMN realcomp2."Property"."MonthlySales" IS 'Monthly Sales';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "NetOperatingIncome" decimal;
    COMMENT ON COLUMN realcomp2."Property"."NetOperatingIncome" IS 'Net Operating Income';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "NonMemberSellingAgentFullName" text;
    COMMENT ON COLUMN realcomp2."Property"."NonMemberSellingAgentFullName" IS 'Non Member Selling Agent Full Na';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "NonMemberSellingOfficeCity" text;
    COMMENT ON COLUMN realcomp2."Property"."NonMemberSellingOfficeCity" IS 'Non Member Selling Office City';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "NonMemberSellingOfficeName" text;
    COMMENT ON COLUMN realcomp2."Property"."NonMemberSellingOfficeName" IS 'Non Member Selling Office Name';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "NumberOfUnitsLeased" integer;
    COMMENT ON COLUMN realcomp2."Property"."NumberOfUnitsLeased" IS 'Number Of Units Leased';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "NumberOfUnitsTotal" integer;
    COMMENT ON COLUMN realcomp2."Property"."NumberOfUnitsTotal" IS 'Number Of Units Total';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "OffMarketDate" text;
    COMMENT ON COLUMN realcomp2."Property"."OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "OfficeHeating" text[];
    COMMENT ON COLUMN realcomp2."Property"."OfficeHeating" IS 'Office Heating';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "OpenHouseCount" integer;
    COMMENT ON COLUMN realcomp2."Property"."OpenHouseCount" IS 'Open House Count';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "OpenHouseUpcoming" text;
    COMMENT ON COLUMN realcomp2."Property"."OpenHouseUpcoming" IS 'Open House Upcoming';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "OperatingExpense" decimal;
    COMMENT ON COLUMN realcomp2."Property"."OperatingExpense" IS 'Operating Expense';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "OriginalEntryTimestamp" text;
    COMMENT ON COLUMN realcomp2."Property"."OriginalEntryTimestamp" IS 'Original Entry Timestamp';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN realcomp2."Property"."OriginalListPrice" IS 'Original List Price';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "OtherFeatures" text[];
    COMMENT ON COLUMN realcomp2."Property"."OtherFeatures" IS 'Other Features';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "OwnershipStatus" text[];
    COMMENT ON COLUMN realcomp2."Property"."OwnershipStatus" IS 'Ownership Status';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PERKYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."PERKYN" IS 'PERKYN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ParcelNumber" text;
    COMMENT ON COLUMN realcomp2."Property"."ParcelNumber" IS 'Parcel Number';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ParkingTotal" integer;
    COMMENT ON COLUMN realcomp2."Property"."ParkingTotal" IS 'Parking Total';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PercentHomesteadExemptYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."PercentHomesteadExemptYN" IS 'Percent Homestead Exempt YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PercentLeased" integer;
    COMMENT ON COLUMN realcomp2."Property"."PercentLeased" IS 'Percent Leased';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PercentTiled" integer;
    COMMENT ON COLUMN realcomp2."Property"."PercentTiled" IS 'Percent Tiled';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PercentTillable" integer;
    COMMENT ON COLUMN realcomp2."Property"."PercentTillable" IS 'Percent Tillable';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PercentWooded" integer;
    COMMENT ON COLUMN realcomp2."Property"."PercentWooded" IS 'Percent Wooded';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PermitAVMInternetYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."PermitAVMInternetYN" IS 'Permit AVM on Internet';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PermitAddressInternetYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."PermitAddressInternetYN" IS 'Permit Addr. on Internet';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PermitInternetYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."PermitInternetYN" IS 'Permit Internet YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN realcomp2."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN realcomp2."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PlantHeating" text[];
    COMMENT ON COLUMN realcomp2."Property"."PlantHeating" IS 'Plant Heating';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PoolYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."PoolYN" IS 'Pool YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PorchType" text[];
    COMMENT ON COLUMN realcomp2."Property"."PorchType" IS 'Porch Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Possession" text;
    COMMENT ON COLUMN realcomp2."Property"."Possession" IS 'Possession';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PostalCity" text;
    COMMENT ON COLUMN realcomp2."Property"."PostalCity" IS 'Postal City';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN realcomp2."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN realcomp2."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PriceChangeTimestamp" text;
    COMMENT ON COLUMN realcomp2."Property"."PriceChangeTimestamp" IS 'Price Change Timestamp';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN realcomp2."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ProtectionPeriod" text;
    COMMENT ON COLUMN realcomp2."Property"."ProtectionPeriod" IS 'Protection Period';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "PublicRemarks" text;
    COMMENT ON COLUMN realcomp2."Property"."PublicRemarks" IS 'Public Remarks';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "RailroadYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."RailroadYN" IS 'Railroad YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "RentIncludes" text[];
    COMMENT ON COLUMN realcomp2."Property"."RentIncludes" IS 'Rent Includes';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "RestrictionsYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."RestrictionsYN" IS 'Restrictions YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "RoadFrontageType" text[];
    COMMENT ON COLUMN realcomp2."Property"."RoadFrontageType" IS 'Road Frontage Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "RoofMaterial" text[];
    COMMENT ON COLUMN realcomp2."Property"."RoofMaterial" IS 'Roof Material';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "RoomCount" integer;
    COMMENT ON COLUMN realcomp2."Property"."RoomCount" IS 'Room Count';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "RoomsTotal" integer;
    COMMENT ON COLUMN realcomp2."Property"."RoomsTotal" IS 'Rooms Total';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SchoolDistrict" text;
    COMMENT ON COLUMN realcomp2."Property"."SchoolDistrict" IS 'School District';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SecurityDeposit" decimal;
    COMMENT ON COLUMN realcomp2."Property"."SecurityDeposit" IS 'Security Deposit';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Settlement" text;
    COMMENT ON COLUMN realcomp2."Property"."Settlement" IS 'Settlement';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Sewer" text[];
    COMMENT ON COLUMN realcomp2."Property"."Sewer" IS 'Sewer';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ShortSale" text;
    COMMENT ON COLUMN realcomp2."Property"."ShortSale" IS 'Short Sale';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SideOfStreet" text;
    COMMENT ON COLUMN realcomp2."Property"."SideOfStreet" IS 'Side Of Street';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SmokingAllowedYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."SmokingAllowedYN" IS 'Smoking Allowed YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SoilType" text;
    COMMENT ON COLUMN realcomp2."Property"."SoilType" IS 'Soil Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SpecialPolicies" text;
    COMMENT ON COLUMN realcomp2."Property"."SpecialPolicies" IS 'Special Policies';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "StateEqualizedValue" text;
    COMMENT ON COLUMN realcomp2."Property"."StateEqualizedValue" IS 'State Equalized Value';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN realcomp2."Property"."StateOrProvince" IS 'State Or Province';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN realcomp2."Property"."Status" IS 'Status';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "StatusChangeTimestamp" text;
    COMMENT ON COLUMN realcomp2."Property"."StatusChangeTimestamp" IS 'Status Change Timestamp';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "StatusContractualSearchDate" text;
    COMMENT ON COLUMN realcomp2."Property"."StatusContractualSearchDate" IS 'Status Contractual Search Date';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN realcomp2."Property"."StreetDirPrefix" IS 'Street Dir Prefix';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "StreetDirSuffix" text;
    COMMENT ON COLUMN realcomp2."Property"."StreetDirSuffix" IS 'Street Dir Suffix';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN realcomp2."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN realcomp2."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN realcomp2."Property"."StreetSuffix" IS 'Street Suffix';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SubdivisionName" text;
    COMMENT ON COLUMN realcomp2."Property"."SubdivisionName" IS 'Subdivision Name';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SupplementCount" integer;
    COMMENT ON COLUMN realcomp2."Property"."SupplementCount" IS 'Supplement Count';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SupplementModificationTimestamp" text;
    COMMENT ON COLUMN realcomp2."Property"."SupplementModificationTimestamp" IS 'Supplement Modification Timestam';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "SurveyYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."SurveyYN" IS 'Survey YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Table" text;
    COMMENT ON COLUMN realcomp2."Property"."Table" IS 'Table';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "TaxAmountSummer" decimal;
    COMMENT ON COLUMN realcomp2."Property"."TaxAmountSummer" IS 'Tax Amount Summer';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "TaxAmountWinter" decimal;
    COMMENT ON COLUMN realcomp2."Property"."TaxAmountWinter" IS 'Tax Amount Winter';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "TaxLegalDescription" text;
    COMMENT ON COLUMN realcomp2."Property"."TaxLegalDescription" IS 'Tax Legal Description';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "TenantAmenities" text[];
    COMMENT ON COLUMN realcomp2."Property"."TenantAmenities" IS 'Tenant Amenities';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Title" text[];
    COMMENT ON COLUMN realcomp2."Property"."Title" IS 'Title';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "TotalTax" decimal;
    COMMENT ON COLUMN realcomp2."Property"."TotalTax" IS 'Total Tax';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "TourURLUpdateDate" text;
    COMMENT ON COLUMN realcomp2."Property"."TourURLUpdateDate" IS 'Tour URL Update Date';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "TransactionType" text;
    COMMENT ON COLUMN realcomp2."Property"."TransactionType" IS 'Transaction Type';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "UnitCount" integer;
    COMMENT ON COLUMN realcomp2."Property"."UnitCount" IS 'Unit Count';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "UnitEfficiencyNumberOf" integer;
    COMMENT ON COLUMN realcomp2."Property"."UnitEfficiencyNumberOf" IS 'Unit Efficiency Number Of';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN realcomp2."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "UnitOneBedNumberOf" integer;
    COMMENT ON COLUMN realcomp2."Property"."UnitOneBedNumberOf" IS 'Unit One Bed Number Of';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "UnitPerAcre" text;
    COMMENT ON COLUMN realcomp2."Property"."UnitPerAcre" IS 'Unit Per Acre';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "UnitThreeBedNumberOf" integer;
    COMMENT ON COLUMN realcomp2."Property"."UnitThreeBedNumberOf" IS 'Unit Three Bed Number Of';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "UnitTwoBedNumberOf" integer;
    COMMENT ON COLUMN realcomp2."Property"."UnitTwoBedNumberOf" IS 'Unit Two Bed Number Of';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "UnparsedAddress" text;
    COMMENT ON COLUMN realcomp2."Property"."UnparsedAddress" IS 'Unparsed Address';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "VirtualTourURLUnbranded" text;
    COMMENT ON COLUMN realcomp2."Property"."VirtualTourURLUnbranded" IS 'Virtual Tour URL Unbranded';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Warranty" text;
    COMMENT ON COLUMN realcomp2."Property"."Warranty" IS 'Warranty';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "WaterHeaterFuel" text[];
    COMMENT ON COLUMN realcomp2."Property"."WaterHeaterFuel" IS 'Water Heater Fuel';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "WaterSource" text[];
    COMMENT ON COLUMN realcomp2."Property"."WaterSource" IS 'Water Source';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "WaterfrontDescription" text[];
    COMMENT ON COLUMN realcomp2."Property"."WaterfrontDescription" IS 'Waterfront Description';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "WaterfrontFeatures" text[];
    COMMENT ON COLUMN realcomp2."Property"."WaterfrontFeatures" IS 'Waterfront Features';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "WaterfrontName" text;
    COMMENT ON COLUMN realcomp2."Property"."WaterfrontName" IS 'Waterfront Name';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "WaterfrontYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."WaterfrontYN" IS 'Waterfront YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "WaterwayYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."WaterwayYN" IS 'Waterway YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "WorkingCapital" text;
    COMMENT ON COLUMN realcomp2."Property"."WorkingCapital" IS 'Working Capital';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN realcomp2."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "YearRemodeled" integer;
    COMMENT ON COLUMN realcomp2."Property"."YearRemodeled" IS 'Year Remodeled';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "ZoneConformYN" boolean;
    COMMENT ON COLUMN realcomp2."Property"."ZoneConformYN" IS 'Zone Conform YN';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "Zoning" text[];
    COMMENT ON COLUMN realcomp2."Property"."Zoning" IS 'Zoning';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "sqftCombined" integer;
    COMMENT ON COLUMN realcomp2."Property"."sqftCombined" IS 'Sqft Combined';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "sqftLowerFloor" integer;
    COMMENT ON COLUMN realcomp2."Property"."sqftLowerFloor" IS 'Sqft Lower Floor';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "sqftMain" integer;
    COMMENT ON COLUMN realcomp2."Property"."sqftMain" IS 'Sqft Main';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "sqftMinimumLot" integer;
    COMMENT ON COLUMN realcomp2."Property"."sqftMinimumLot" IS 'Sqft Minimum Lot';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "sqftOffice" integer;
    COMMENT ON COLUMN realcomp2."Property"."sqftOffice" IS 'Sqft Office';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "sqftSource" text;
    COMMENT ON COLUMN realcomp2."Property"."sqftSource" IS 'Sqft Source';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "sqftTotal" integer;
    COMMENT ON COLUMN realcomp2."Property"."sqftTotal" IS 'Sqft Total';
     
    ALTER TABLE realcomp2."Property" ADD COLUMN "sqftTotalBsmt" integer;
    COMMENT ON COLUMN realcomp2."Property"."sqftTotalBsmt" IS 'Sqft Total Bsmt';
     

COMMIT;