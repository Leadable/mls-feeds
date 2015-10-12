BEGIN;

  CREATE TABLE ctmls."Property"() INHERITS (property);
    ALTER TABLE ctmls."Property" ADD COLUMN "ADOM" integer;
    COMMENT ON COLUMN ctmls."Property"."ADOM" IS 'ADOM';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AbuttingAcres" decimal;
    COMMENT ON COLUMN ctmls."Property"."AbuttingAcres" IS 'Abutting Acres';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AbuttingLandAvailYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."AbuttingLandAvailYN" IS 'Abutting Land Avail YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AbuttingLandPrice" integer;
    COMMENT ON COLUMN ctmls."Property"."AbuttingLandPrice" IS 'Abutting Land Price';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AbuttingLotSize" integer;
    COMMENT ON COLUMN ctmls."Property"."AbuttingLotSize" IS 'Abutting Lot Size';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Acres" decimal;
    COMMENT ON COLUMN ctmls."Property"."Acres" IS 'Acres';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AcresSource" text;
    COMMENT ON COLUMN ctmls."Property"."AcresSource" IS 'Acres Source';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ActiveOpenHouseCount" integer;
    COMMENT ON COLUMN ctmls."Property"."ActiveOpenHouseCount" IS 'Active Open House Count';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AdditionalMLSNumbers" text;
    COMMENT ON COLUMN ctmls."Property"."AdditionalMLSNumbers" IS 'Additional MLS Numbers';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Adult55" text;
    COMMENT ON COLUMN ctmls."Property"."Adult55" IS 'Adult 55';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AmenitiesIncluded" text[];
    COMMENT ON COLUMN ctmls."Property"."AmenitiesIncluded" IS 'Amenities Included';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AnnualRent" integer;
    COMMENT ON COLUMN ctmls."Property"."AnnualRent" IS 'Annual Rent';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AnnualSales" integer;
    COMMENT ON COLUMN ctmls."Property"."AnnualSales" IS 'Annual Sales';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AppliancesIncluded" text[];
    COMMENT ON COLUMN ctmls."Property"."AppliancesIncluded" IS 'Appliances Included';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AppxNumUnitsInComplex" integer;
    COMMENT ON COLUMN ctmls."Property"."AppxNumUnitsInComplex" IS 'Appx Num Units In Complex';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Area" integer;
    COMMENT ON COLUMN ctmls."Property"."Area" IS 'Area';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AreaAmenities" text[];
    COMMENT ON COLUMN ctmls."Property"."AreaAmenities" IS 'Area Amenities';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AreaNum" text;
    COMMENT ON COLUMN ctmls."Property"."AreaNum" IS 'Area Num';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AssessedValueTotal" integer;
    COMMENT ON COLUMN ctmls."Property"."AssessedValueTotal" IS 'Assessed Value Total';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AssessmentBuilding" integer;
    COMMENT ON COLUMN ctmls."Property"."AssessmentBuilding" IS 'Assessment Building';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AssessmentEnvironmental" text;
    COMMENT ON COLUMN ctmls."Property"."AssessmentEnvironmental" IS 'Assessment Environmental';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AssessmentLand" integer;
    COMMENT ON COLUMN ctmls."Property"."AssessmentLand" IS 'Assessment Land';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AssessmentOther" integer;
    COMMENT ON COLUMN ctmls."Property"."AssessmentOther" IS 'Assessment Other';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AssessmentYear" integer;
    COMMENT ON COLUMN ctmls."Property"."AssessmentYear" IS 'Assessment Year';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Assessments" text;
    COMMENT ON COLUMN ctmls."Property"."Assessments" IS 'Assessments';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AssociationFee" integer;
    COMMENT ON COLUMN ctmls."Property"."AssociationFee" IS 'Association Fee';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AssociationFeeDescription" text;
    COMMENT ON COLUMN ctmls."Property"."AssociationFeeDescription" IS 'Association Fee Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AssociationFeeIncludes" text[];
    COMMENT ON COLUMN ctmls."Property"."AssociationFeeIncludes" IS 'Association Fee Includes';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Attic" text[];
    COMMENT ON COLUMN ctmls."Property"."Attic" IS 'Attic';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "AtticYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."AtticYN" IS 'Attic YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BasementType" text[];
    COMMENT ON COLUMN ctmls."Property"."BasementType" IS 'Basement Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN ctmls."Property"."BathsFull" IS 'Baths Full';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN ctmls."Property"."BathsHalf" IS 'Baths Half';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN ctmls."Property"."BathsTotal" IS 'Baths Total';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BedsTotal" integer;
    COMMENT ON COLUMN ctmls."Property"."BedsTotal" IS 'Beds Total';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BuildingCoverage" integer;
    COMMENT ON COLUMN ctmls."Property"."BuildingCoverage" IS 'Building Coverage';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BuildingsNumOf" integer;
    COMMENT ON COLUMN ctmls."Property"."BuildingsNumOf" IS 'Buildings Num Of';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BusService" text;
    COMMENT ON COLUMN ctmls."Property"."BusService" IS 'Bus Service';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BusServiceDistance" integer;
    COMMENT ON COLUMN ctmls."Property"."BusServiceDistance" IS 'Bus Service Distance';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BusinessName" text;
    COMMENT ON COLUMN ctmls."Property"."BusinessName" IS 'Business Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "BusinessType" text[];
    COMMENT ON COLUMN ctmls."Property"."BusinessType" IS 'Business Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN ctmls."Property"."City" IS 'City';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CloseDate" text;
    COMMENT ON COLUMN ctmls."Property"."CloseDate" IS 'Close Date';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ClosePrice" decimal;
    COMMENT ON COLUMN ctmls."Property"."ClosePrice" IS 'Close Price';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CoListAGentPreferredPhone" text;
    COMMENT ON COLUMN ctmls."Property"."CoListAGentPreferredPhone" IS 'Co List A Gent Preferred Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CoListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN ctmls."Property"."CoListAgentDirectWorkPhone" IS 'Co List Agent Direct Work Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CoListAgentEmail" text;
    COMMENT ON COLUMN ctmls."Property"."CoListAgentEmail" IS 'Co List Agent Email';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CoListAgentFullName" text;
    COMMENT ON COLUMN ctmls."Property"."CoListAgentFullName" IS 'Co List Agent Full Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CoListAgentMLSID" text;
    COMMENT ON COLUMN ctmls."Property"."CoListAgentMLSID" IS 'Co List Agent MLSID';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CoListOfficeMLSID" text;
    COMMENT ON COLUMN ctmls."Property"."CoListOfficeMLSID" IS 'Co List Office MLSID';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CoListOfficeName" text;
    COMMENT ON COLUMN ctmls."Property"."CoListOfficeName" IS 'Co List Office Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CoListOfficePhone" text;
    COMMENT ON COLUMN ctmls."Property"."CoListOfficePhone" IS 'Co List Office Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ColorofHouse" text;
    COMMENT ON COLUMN ctmls."Property"."ColorofHouse" IS 'Colorof House';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CommercialCategory" text[];
    COMMENT ON COLUMN ctmls."Property"."CommercialCategory" IS 'Commercial Category';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ComparableYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."ComparableYN" IS 'Comparable YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ComplexManagement" text;
    COMMENT ON COLUMN ctmls."Property"."ComplexManagement" IS 'Complex Management';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ComplexName" text;
    COMMENT ON COLUMN ctmls."Property"."ComplexName" IS 'Complex Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ComplexRestrictions" text[];
    COMMENT ON COLUMN ctmls."Property"."ComplexRestrictions" IS 'Complex Restrictions';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CondoConvertedUnitYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."CondoConvertedUnitYN" IS 'Condo Converted Unit YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CondoModelName" text;
    COMMENT ON COLUMN ctmls."Property"."CondoModelName" IS 'Condo Model Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CondoType" text[];
    COMMENT ON COLUMN ctmls."Property"."CondoType" IS 'Condo Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ConstructionInfo" text[];
    COMMENT ON COLUMN ctmls."Property"."ConstructionInfo" IS 'Construction Info';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ContingencyExclusion" text;
    COMMENT ON COLUMN ctmls."Property"."ContingencyExclusion" IS 'Contingency Exclusion';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ContingencyExclusionYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."ContingencyExclusionYN" IS 'Contingency Exclusion YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Conveniences" text[];
    COMMENT ON COLUMN ctmls."Property"."Conveniences" IS 'Conveniences';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CoolingSystem" text;
    COMMENT ON COLUMN ctmls."Property"."CoolingSystem" IS 'Cooling System';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CostIncurredByOwner" text[];
    COMMENT ON COLUMN ctmls."Property"."CostIncurredByOwner" IS 'Cost Incurred By Owner';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CountyOrParish" text;
    COMMENT ON COLUMN ctmls."Property"."CountyOrParish" IS 'County Or Parish';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "CurrentPrice" decimal;
    COMMENT ON COLUMN ctmls."Property"."CurrentPrice" IS 'Current Price';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN ctmls."Property"."DOM" IS 'DOM';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DateAvailable" text;
    COMMENT ON COLUMN ctmls."Property"."DateAvailable" IS 'Date Available';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DeckDimension" text;
    COMMENT ON COLUMN ctmls."Property"."DeckDimension" IS 'Deck Dimension';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DeckTypeDescription" text;
    COMMENT ON COLUMN ctmls."Property"."DeckTypeDescription" IS 'Deck Type Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DepthApproximate" integer;
    COMMENT ON COLUMN ctmls."Property"."DepthApproximate" IS 'Depth Approximate';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DevelopmentStatus" text[];
    COMMENT ON COLUMN ctmls."Property"."DevelopmentStatus" IS 'Development Status';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DevelopmentType" text;
    COMMENT ON COLUMN ctmls."Property"."DevelopmentType" IS 'Development Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DirectWaterfrontYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."DirectWaterfrontYN" IS 'Direct Waterfront YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DirectionstoProperty" text;
    COMMENT ON COLUMN ctmls."Property"."DirectionstoProperty" IS 'Directionsto Property';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DisplayPropertyAddrYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."DisplayPropertyAddrYN" IS 'Display Property Addr YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Divisible" text;
    COMMENT ON COLUMN ctmls."Property"."Divisible" IS 'Divisible';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DocksNumOf" integer;
    COMMENT ON COLUMN ctmls."Property"."DocksNumOf" IS 'Docks Num Of';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DocumentsAvailable" text[];
    COMMENT ON COLUMN ctmls."Property"."DocumentsAvailable" IS 'Documents Available';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DocumentsAvailableYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."DocumentsAvailableYN" IS 'Documents Available YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DriveInDoorsNumOf" integer;
    COMMENT ON COLUMN ctmls."Property"."DriveInDoorsNumOf" IS 'Drive In Doors Num Of';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "DrivewayType" text[];
    COMMENT ON COLUMN ctmls."Property"."DrivewayType" IS 'Driveway Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "EMSYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."EMSYN" IS 'EMSYN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "EasementsRightofWay" text;
    COMMENT ON COLUMN ctmls."Property"."EasementsRightofWay" IS 'Easements Rightof Way';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ElectricAmperageAvailable" integer;
    COMMENT ON COLUMN ctmls."Property"."ElectricAmperageAvailable" IS 'Electric Amperage Available';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Electrical" text[];
    COMMENT ON COLUMN ctmls."Property"."Electrical" IS 'Electrical';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ElementarySchool" text;
    COMMENT ON COLUMN ctmls."Property"."ElementarySchool" IS 'Elementary School';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ElevationCertificateYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."ElevationCertificateYN" IS 'Elevation Certificate YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ElevatorPresentYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."ElevatorPresentYN" IS 'Elevator Present YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Encumbrances" text[];
    COMMENT ON COLUMN ctmls."Property"."Encumbrances" IS 'Encumbrances';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "EndUnitYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."EndUnitYN" IS 'End Unit YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "EnergyFeatures" text[];
    COMMENT ON COLUMN ctmls."Property"."EnergyFeatures" IS 'Energy Features';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "EntryDescription" text;
    COMMENT ON COLUMN ctmls."Property"."EntryDescription" IS 'Entry Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "EquipInclYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."EquipInclYN" IS 'Equip Incl YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "EstimatedAnnualHeatCost" integer;
    COMMENT ON COLUMN ctmls."Property"."EstimatedAnnualHeatCost" IS 'Estimated Annual Heat Cost';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ExchangeYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."ExchangeYN" IS 'Exchange YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Exclusions" text;
    COMMENT ON COLUMN ctmls."Property"."Exclusions" IS 'Exclusions';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ExpandableYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."ExpandableYN" IS 'Expandable YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ExtensionNumber" text;
    COMMENT ON COLUMN ctmls."Property"."ExtensionNumber" IS 'Extension Number';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ExteriorFeature" text[];
    COMMENT ON COLUMN ctmls."Property"."ExteriorFeature" IS 'Exterior Feature';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ExteriorFeatureCOMM" text[];
    COMMENT ON COLUMN ctmls."Property"."ExteriorFeatureCOMM" IS 'Exterior Feature COMM';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ExteriorSiding" text[];
    COMMENT ON COLUMN ctmls."Property"."ExteriorSiding" IS 'Exterior Siding';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FHAApprovedYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."FHAApprovedYN" IS 'FHA Approved YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FireplacesNum" integer;
    COMMENT ON COLUMN ctmls."Property"."FireplacesNum" IS 'Fireplaces Num';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FloodElevationCertificate" text;
    COMMENT ON COLUMN ctmls."Property"."FloodElevationCertificate" IS 'Flood Elevation Certificate';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FloodZoneCode" text;
    COMMENT ON COLUMN ctmls."Property"."FloodZoneCode" IS 'Flood Zone Code';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FloodZoneYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."FloodZoneYN" IS 'Flood Zone YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Flooring" text[];
    COMMENT ON COLUMN ctmls."Property"."Flooring" IS 'Flooring';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ForeclosureByMarketSaleComments" text;
    COMMENT ON COLUMN ctmls."Property"."ForeclosureByMarketSaleComments" IS 'Foreclosure By Market Sale Comme';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ForeclosureByMarketSaleYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."ForeclosureByMarketSaleYN" IS 'Foreclosure By Market Sale YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FrontageApproximate" integer;
    COMMENT ON COLUMN ctmls."Property"."FrontageApproximate" IS 'Frontage Approximate';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FuelTankDescription" text;
    COMMENT ON COLUMN ctmls."Property"."FuelTankDescription" IS 'Fuel Tank Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FuelType" text[];
    COMMENT ON COLUMN ctmls."Property"."FuelType" IS 'Fuel Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FurnaceType" text[];
    COMMENT ON COLUMN ctmls."Property"."FurnaceType" IS 'Furnace Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "FurnacesNumber" integer;
    COMMENT ON COLUMN ctmls."Property"."FurnacesNumber" IS 'Furnaces Number';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "GasType" text[];
    COMMENT ON COLUMN ctmls."Property"."GasType" IS 'Gas Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "GatedCommunityYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."GatedCommunityYN" IS 'Gated Community YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "GrossAnnualExpPrevYr" integer;
    COMMENT ON COLUMN ctmls."Property"."GrossAnnualExpPrevYr" IS 'Gross Annual Exp Prev Yr';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "GrossAnnualExpenses" integer;
    COMMENT ON COLUMN ctmls."Property"."GrossAnnualExpenses" IS 'Gross Annual Expenses';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "GrossAnnualIncPrevYr" integer;
    COMMENT ON COLUMN ctmls."Property"."GrossAnnualIncPrevYr" IS 'Gross Annual Inc Prev Yr';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "GrossAnnualIncome" integer;
    COMMENT ON COLUMN ctmls."Property"."GrossAnnualIncome" IS 'Gross Annual Income';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "GrossAnnualRentActual" integer;
    COMMENT ON COLUMN ctmls."Property"."GrossAnnualRentActual" IS 'Gross Annual Rent Actual';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "GrossAnnualRentPotenti" integer;
    COMMENT ON COLUMN ctmls."Property"."GrossAnnualRentPotenti" IS 'Gross Annual Rent Potenti';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HOAFeeIncludes" text[];
    COMMENT ON COLUMN ctmls."Property"."HOAFeeIncludes" IS 'HOA Fee Includes';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HOAFeeMo" integer;
    COMMENT ON COLUMN ctmls."Property"."HOAFeeMo" IS 'HOA Fee Mo';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HOAYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."HOAYN" IS 'HOAYN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HandicapAccessible" text;
    COMMENT ON COLUMN ctmls."Property"."HandicapAccessible" IS 'Handicap Accessible';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HandicapFeatures" text[];
    COMMENT ON COLUMN ctmls."Property"."HandicapFeatures" IS 'Handicap Features';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HeatFuelTypeCOMM" text[];
    COMMENT ON COLUMN ctmls."Property"."HeatFuelTypeCOMM" IS 'Heat Fuel Type COMM';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HeatType" text[];
    COMMENT ON COLUMN ctmls."Property"."HeatType" IS 'Heat Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HeatTypeCOMM" text[];
    COMMENT ON COLUMN ctmls."Property"."HeatTypeCOMM" IS 'Heat Type COMM';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HomeWarranty" text;
    COMMENT ON COLUMN ctmls."Property"."HomeWarranty" IS 'Home Warranty';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HorseProperty" text;
    COMMENT ON COLUMN ctmls."Property"."HorseProperty" IS 'Horse Property';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HotWaterFuel" text[];
    COMMENT ON COLUMN ctmls."Property"."HotWaterFuel" IS 'Hot Water Fuel';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "HubbardYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."HubbardYN" IS 'Hubbard YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Improvements" text[];
    COMMENT ON COLUMN ctmls."Property"."Improvements" IS 'Improvements';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "InLawAccess" text;
    COMMENT ON COLUMN ctmls."Property"."InLawAccess" IS 'In Law Access';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "InLawYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."InLawYN" IS 'In Law YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "IncludedInMonthlyRent" text[];
    COMMENT ON COLUMN ctmls."Property"."IncludedInMonthlyRent" IS 'Included In Monthly Rent';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "InteriorFeature" text[];
    COMMENT ON COLUMN ctmls."Property"."InteriorFeature" IS 'Interior Feature';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "InteriorFeatureCOMM" text[];
    COMMENT ON COLUMN ctmls."Property"."InteriorFeatureCOMM" IS 'Interior Feature COMM';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "IntermediateHighSchool" text;
    COMMENT ON COLUMN ctmls."Property"."IntermediateHighSchool" IS 'Intermediate High School';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "InvestmentType" text[];
    COMMENT ON COLUMN ctmls."Property"."InvestmentType" IS 'Investment Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LandLeaseFeeperMonth" integer;
    COMMENT ON COLUMN ctmls."Property"."LandLeaseFeeperMonth" IS 'Land Lease Feeper Month';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LandlordResp" text[];
    COMMENT ON COLUMN ctmls."Property"."LandlordResp" IS 'Landlord Resp';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LastChangeTimestamp" text;
    COMMENT ON COLUMN ctmls."Property"."LastChangeTimestamp" IS 'Last Change Timestamp';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LastChangeType" text;
    COMMENT ON COLUMN ctmls."Property"."LastChangeType" IS 'Last Change Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LastListPrice" decimal;
    COMMENT ON COLUMN ctmls."Property"."LastListPrice" IS 'Last List Price';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LastStatus" text;
    COMMENT ON COLUMN ctmls."Property"."LastStatus" IS 'Last Status';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LaundryRoomAccess" text[];
    COMMENT ON COLUMN ctmls."Property"."LaundryRoomAccess" IS 'Laundry Room Access';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LaundryRoomInfo" text[];
    COMMENT ON COLUMN ctmls."Property"."LaundryRoomInfo" IS 'Laundry Room Info';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LeaseOptYrs" integer;
    COMMENT ON COLUMN ctmls."Property"."LeaseOptYrs" IS 'Lease Opt Yrs';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LeasePrice" decimal;
    COMMENT ON COLUMN ctmls."Property"."LeasePrice" IS 'Lease Price';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LeasePriceDesc" text;
    COMMENT ON COLUMN ctmls."Property"."LeasePriceDesc" IS 'Lease Price Desc';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LeasePurchaseYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."LeasePurchaseYN" IS 'Lease Purchase YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LeaseTerms" text;
    COMMENT ON COLUMN ctmls."Property"."LeaseTerms" IS 'Lease Terms';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LevelsInUnit" integer;
    COMMENT ON COLUMN ctmls."Property"."LevelsInUnit" IS 'Levels In Unit';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListAgentDirectWorkPhone" text;
    COMMENT ON COLUMN ctmls."Property"."ListAgentDirectWorkPhone" IS 'List Agent Direct Work Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListAgentEmail" text;
    COMMENT ON COLUMN ctmls."Property"."ListAgentEmail" IS 'List Agent Email';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListAgentFullName" text;
    COMMENT ON COLUMN ctmls."Property"."ListAgentFullName" IS 'List Agent Full Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListAgentMLSID" text;
    COMMENT ON COLUMN ctmls."Property"."ListAgentMLSID" IS 'List Agent MLSID';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListOfficeMLSID" text;
    COMMENT ON COLUMN ctmls."Property"."ListOfficeMLSID" IS 'List Office MLSID';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN ctmls."Property"."ListOfficeName" IS 'List Office Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListOfficePhone" text;
    COMMENT ON COLUMN ctmls."Property"."ListOfficePhone" IS 'List Office Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN ctmls."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListingType" text;
    COMMENT ON COLUMN ctmls."Property"."ListingType" IS 'Listing Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ListingTypeDescription" text;
    COMMENT ON COLUMN ctmls."Property"."ListingTypeDescription" IS 'Listing Type Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Location" text[];
    COMMENT ON COLUMN ctmls."Property"."Location" IS 'Location';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LockboxDescription" text;
    COMMENT ON COLUMN ctmls."Property"."LockboxDescription" IS 'Lockbox Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LockboxLocatoin" text;
    COMMENT ON COLUMN ctmls."Property"."LockboxLocatoin" IS 'Lockbox Locatoin';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LotDescription" text[];
    COMMENT ON COLUMN ctmls."Property"."LotDescription" IS 'Lot Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LotNum" text;
    COMMENT ON COLUMN ctmls."Property"."LotNum" IS 'Lot Num';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LotSqFt" integer;
    COMMENT ON COLUMN ctmls."Property"."LotSqFt" IS 'Lot Sq Ft';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "LotsNumberOf" integer;
    COMMENT ON COLUMN ctmls."Property"."LotsNumberOf" IS 'Lots Number Of';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "MLSNumber" text;
    COMMENT ON COLUMN ctmls."Property"."MLSNumber" IS 'MLS Number';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "MatrixModifiedDT" text;
    COMMENT ON COLUMN ctmls."Property"."MatrixModifiedDT" IS 'Matrix Modified DT';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "MechanicalEquipment" text[];
    COMMENT ON COLUMN ctmls."Property"."MechanicalEquipment" IS 'Mechanical Equipment';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "MiddleSchool" text;
    COMMENT ON COLUMN ctmls."Property"."MiddleSchool" IS 'Middle School';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "MillRate" decimal;
    COMMENT ON COLUMN ctmls."Property"."MillRate" IS 'Mill Rate';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "MillRateOverride" decimal;
    COMMENT ON COLUMN ctmls."Property"."MillRateOverride" IS 'Mill Rate Override';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "MinimumSpace" integer;
    COMMENT ON COLUMN ctmls."Property"."MinimumSpace" IS 'Minimum Space';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Neighborhood" text;
    COMMENT ON COLUMN ctmls."Property"."Neighborhood" IS 'Neighborhood';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "NetOperatingIncome" integer;
    COMMENT ON COLUMN ctmls."Property"."NetOperatingIncome" IS 'Net Operating Income';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "NewConstructionYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."NewConstructionYN" IS 'New Construction YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "NumberOfGarages" integer;
    COMMENT ON COLUMN ctmls."Property"."NumberOfGarages" IS 'Number Of Garages';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "NumberofElevators" integer;
    COMMENT ON COLUMN ctmls."Property"."NumberofElevators" IS 'Numberof Elevators';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "NumberofRestrooms" integer;
    COMMENT ON COLUMN ctmls."Property"."NumberofRestrooms" IS 'Numberof Restrooms';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "NumberofTenants" integer;
    COMMENT ON COLUMN ctmls."Property"."NumberofTenants" IS 'Numberof Tenants';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "NumberofUnits" integer;
    COMMENT ON COLUMN ctmls."Property"."NumberofUnits" IS 'Numberof Units';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Occupancy" text;
    COMMENT ON COLUMN ctmls."Property"."Occupancy" IS 'Occupancy';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OccupiedYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."OccupiedYN" IS 'Occupied YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OpenHouseCount" integer;
    COMMENT ON COLUMN ctmls."Property"."OpenHouseCount" IS 'Open House Count';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OpenHousePublicCount" integer;
    COMMENT ON COLUMN ctmls."Property"."OpenHousePublicCount" IS 'Open House Public Count';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OpenHousePublicUpcoming" text;
    COMMENT ON COLUMN ctmls."Property"."OpenHousePublicUpcoming" IS 'Open House Public Upcoming';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OpenHouseUpcoming" text;
    COMMENT ON COLUMN ctmls."Property"."OpenHouseUpcoming" IS 'Open House Upcoming';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OperatingExpensesCAM" integer;
    COMMENT ON COLUMN ctmls."Property"."OperatingExpensesCAM" IS 'Operating Expenses CAM';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OperatingExpensesInsuranc" integer;
    COMMENT ON COLUMN ctmls."Property"."OperatingExpensesInsuranc" IS 'Operating Expenses Insuranc';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OperatingExpensesMaint" integer;
    COMMENT ON COLUMN ctmls."Property"."OperatingExpensesMaint" IS 'Operating Expenses Maint';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OperatingExpensesMisc" integer;
    COMMENT ON COLUMN ctmls."Property"."OperatingExpensesMisc" IS 'Operating Expenses Misc';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OperatingExpensesOther" integer;
    COMMENT ON COLUMN ctmls."Property"."OperatingExpensesOther" IS 'Operating Expenses Other';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OperatingExpensesTax" integer;
    COMMENT ON COLUMN ctmls."Property"."OperatingExpensesTax" IS 'Operating Expenses Tax';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OperatingExpensesUtilitie" integer;
    COMMENT ON COLUMN ctmls."Property"."OperatingExpensesUtilitie" IS 'Operating Expenses Utilitie';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OriginalEntryTimestamp" text;
    COMMENT ON COLUMN ctmls."Property"."OriginalEntryTimestamp" IS 'Original Entry Timestamp';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN ctmls."Property"."OriginalListPrice" IS 'Original List Price';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OtherIncomeActual" integer;
    COMMENT ON COLUMN ctmls."Property"."OtherIncomeActual" IS 'Other Income Actual';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OtherIncomePotential" integer;
    COMMENT ON COLUMN ctmls."Property"."OtherIncomePotential" IS 'Other Income Potential';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OtherPhoneNum" text;
    COMMENT ON COLUMN ctmls."Property"."OtherPhoneNum" IS 'Other Phone Num';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OtherTaxes" text;
    COMMENT ON COLUMN ctmls."Property"."OtherTaxes" IS 'Other Taxes';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "OtherTaxesYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."OtherTaxesYN" IS 'Other Taxes YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ParcelNumber" text;
    COMMENT ON COLUMN ctmls."Property"."ParcelNumber" IS 'Parcel Number';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ParkGarageType" text[];
    COMMENT ON COLUMN ctmls."Property"."ParkGarageType" IS 'Park Garage Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Parking100SqFt" integer;
    COMMENT ON COLUMN ctmls."Property"."Parking100SqFt" IS 'Parking 100 Sq Ft';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ParkingSpaces" integer;
    COMMENT ON COLUMN ctmls."Property"."ParkingSpaces" IS 'Parking Spaces';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PendingDate" text;
    COMMENT ON COLUMN ctmls."Property"."PendingDate" IS 'Pending Date';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PercentLeased" integer;
    COMMENT ON COLUMN ctmls."Property"."PercentLeased" IS 'Percent Leased';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PetsAllowedInfo" text;
    COMMENT ON COLUMN ctmls."Property"."PetsAllowedInfo" IS 'Pets Allowed Info';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PetsAllowedYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."PetsAllowedYN" IS 'Pets Allowed YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN ctmls."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN ctmls."Property"."PhotoModificationTimestamp" IS 'Photo Modification Timestamp';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PoolDescription" text;
    COMMENT ON COLUMN ctmls."Property"."PoolDescription" IS 'Pool Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PoolYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."PoolYN" IS 'Pool YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PossessionTerms" text;
    COMMENT ON COLUMN ctmls."Property"."PossessionTerms" IS 'Possession Terms';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN ctmls."Property"."PostalCode" IS 'Postal Code';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN ctmls."Property"."PostalCodePlus4" IS 'Postal Code Plus 4';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PotentialShortSaleYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."PotentialShortSaleYN" IS 'Potential Short Sale YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PotentialUse" text;
    COMMENT ON COLUMN ctmls."Property"."PotentialUse" IS 'Potential Use';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PreferredPhone" text;
    COMMENT ON COLUMN ctmls."Property"."PreferredPhone" IS 'Preferred Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PresentUse" text;
    COMMENT ON COLUMN ctmls."Property"."PresentUse" IS 'Present Use';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PriceChangeTimestamp" text;
    COMMENT ON COLUMN ctmls."Property"."PriceChangeTimestamp" IS 'Price Change Timestamp';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PropertyAddress" text;
    COMMENT ON COLUMN ctmls."Property"."PropertyAddress" IS 'Property Address';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PropertyManager" text;
    COMMENT ON COLUMN ctmls."Property"."PropertyManager" IS 'Property Manager';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PropertyManagerEmail" text;
    COMMENT ON COLUMN ctmls."Property"."PropertyManagerEmail" IS 'Property Manager Email';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PropertyManagerPhone" text;
    COMMENT ON COLUMN ctmls."Property"."PropertyManagerPhone" IS 'Property Manager Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PropertyMgtCompanyName" text;
    COMMENT ON COLUMN ctmls."Property"."PropertyMgtCompanyName" IS 'Property Mgt Company Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PropertyMgtPhone" text;
    COMMENT ON COLUMN ctmls."Property"."PropertyMgtPhone" IS 'Property Mgt Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN ctmls."Property"."PropertySubType" IS 'Property Sub Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN ctmls."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ProviderKey" text;
    COMMENT ON COLUMN ctmls."Property"."ProviderKey" IS 'Provider Key';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ProviderModificationTimestamp" text;
    COMMENT ON COLUMN ctmls."Property"."ProviderModificationTimestamp" IS 'Provider Modification Timestamp';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PudYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."PudYN" IS 'Pud YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "PurchaseOptionYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."PurchaseOptionYN" IS 'Purchase Option YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "REO" text;
    COMMENT ON COLUMN ctmls."Property"."REO" IS 'REO';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RadonMitSysAir" text;
    COMMENT ON COLUMN ctmls."Property"."RadonMitSysAir" IS 'Radon Mit Sys Air';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RadonMitSysWater" text;
    COMMENT ON COLUMN ctmls."Property"."RadonMitSysWater" IS 'Radon Mit Sys Water';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RecreationalFacilities" text[];
    COMMENT ON COLUMN ctmls."Property"."RecreationalFacilities" IS 'Recreational Facilities';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Remarks" text;
    COMMENT ON COLUMN ctmls."Property"."Remarks" IS 'Remarks';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RentalAgreement" text;
    COMMENT ON COLUMN ctmls."Property"."RentalAgreement" IS 'Rental Agreement';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RentalTerms" text[];
    COMMENT ON COLUMN ctmls."Property"."RentalTerms" IS 'Rental Terms';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Restrictions" text[];
    COMMENT ON COLUMN ctmls."Property"."Restrictions" IS 'Restrictions';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RoadFrontage" integer;
    COMMENT ON COLUMN ctmls."Property"."RoadFrontage" IS 'Road Frontage';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RoadFrontageDescription" text[];
    COMMENT ON COLUMN ctmls."Property"."RoadFrontageDescription" IS 'Road Frontage Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RoadSurface" text;
    COMMENT ON COLUMN ctmls."Property"."RoadSurface" IS 'Road Surface';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RoadType" text;
    COMMENT ON COLUMN ctmls."Property"."RoadType" IS 'Road Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RoofInfo" text[];
    COMMENT ON COLUMN ctmls."Property"."RoofInfo" IS 'Roof Info';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RoomCount" integer;
    COMMENT ON COLUMN ctmls."Property"."RoomCount" IS 'Room Count';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "RoomsTotal" decimal;
    COMMENT ON COLUMN ctmls."Property"."RoomsTotal" IS 'Rooms Total';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SeasonalPropertyYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."SeasonalPropertyYN" IS 'Seasonal Property YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SecurityDepositAmt" integer;
    COMMENT ON COLUMN ctmls."Property"."SecurityDepositAmt" IS 'Security Deposit Amt';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SecurityDepositYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."SecurityDepositYN" IS 'Security Deposit YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SellingAgentFullName" text;
    COMMENT ON COLUMN ctmls."Property"."SellingAgentFullName" IS 'Selling Agent Full Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SellingAgentMLSID" text;
    COMMENT ON COLUMN ctmls."Property"."SellingAgentMLSID" IS 'Selling Agent MLSID';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SellingOfficeMLSID" text;
    COMMENT ON COLUMN ctmls."Property"."SellingOfficeMLSID" IS 'Selling Office MLSID';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SellingOfficeName" text;
    COMMENT ON COLUMN ctmls."Property"."SellingOfficeName" IS 'Selling Office Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SeniorHighSchool" text;
    COMMENT ON COLUMN ctmls."Property"."SeniorHighSchool" IS 'Senior High School';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SepticApprovalYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."SepticApprovalYN" IS 'Septic Approval YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SepticPalnAvailYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."SepticPalnAvailYN" IS 'Septic Paln Avail YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SewageSystem" text[];
    COMMENT ON COLUMN ctmls."Property"."SewageSystem" IS 'Sewage System';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SewerAnnualAssess" integer;
    COMMENT ON COLUMN ctmls."Property"."SewerAnnualAssess" IS 'Sewer Annual Assess';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SewerAnnualFee" integer;
    COMMENT ON COLUMN ctmls."Property"."SewerAnnualFee" IS 'Sewer Annual Fee';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SewerUsageFee" integer;
    COMMENT ON COLUMN ctmls."Property"."SewerUsageFee" IS 'Sewer Usage Fee';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ShowingInstructions" text;
    COMMENT ON COLUMN ctmls."Property"."ShowingInstructions" IS 'Showing Instructions';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ShowingTimeFlag" boolean;
    COMMENT ON COLUMN ctmls."Property"."ShowingTimeFlag" IS 'Showing Time Flag';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SignYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."SignYN" IS 'Sign YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SiteCondition" text[];
    COMMENT ON COLUMN ctmls."Property"."SiteCondition" IS 'Site Condition';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SmokingYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."SmokingYN" IS 'Smoking YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SprinklerYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."SprinklerYN" IS 'Sprinkler YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtAvailableBuilding" integer;
    COMMENT ON COLUMN ctmls."Property"."SqFtAvailableBuilding" IS 'Sq Ft Available Building';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtAvailableOffice" integer;
    COMMENT ON COLUMN ctmls."Property"."SqFtAvailableOffice" IS 'Sq Ft Available Office';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtIncludesBelowGradeArea" text;
    COMMENT ON COLUMN ctmls."Property"."SqFtIncludesBelowGradeArea" IS 'Sq Ft Includes Below Grade Area';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtIndustrial" integer;
    COMMENT ON COLUMN ctmls."Property"."SqFtIndustrial" IS 'Sq Ft Industrial';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtOffice" integer;
    COMMENT ON COLUMN ctmls."Property"."SqFtOffice" IS 'Sq Ft Office';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtRetail" integer;
    COMMENT ON COLUMN ctmls."Property"."SqFtRetail" IS 'Sq Ft Retail';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtSource" text;
    COMMENT ON COLUMN ctmls."Property"."SqFtSource" IS 'Sq Ft Source';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtTotal" integer;
    COMMENT ON COLUMN ctmls."Property"."SqFtTotal" IS 'Sq Ft Total';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtTotalBuilding" integer;
    COMMENT ON COLUMN ctmls."Property"."SqFtTotalBuilding" IS 'Sq Ft Total Building';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SqFtWarehouse" integer;
    COMMENT ON COLUMN ctmls."Property"."SqFtWarehouse" IS 'Sq Ft Warehouse';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN ctmls."Property"."StateOrProvince" IS 'State Or Province';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN ctmls."Property"."Status" IS 'Status';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "StatusChangeTimestamp" text;
    COMMENT ON COLUMN ctmls."Property"."StatusChangeTimestamp" IS 'Status Change Timestamp';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Stories" decimal;
    COMMENT ON COLUMN ctmls."Property"."Stories" IS 'Stories';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN ctmls."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "StreetNoExtension" text;
    COMMENT ON COLUMN ctmls."Property"."StreetNoExtension" IS 'Street No Extension';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "StreetNumber" text;
    COMMENT ON COLUMN ctmls."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Style" text[];
    COMMENT ON COLUMN ctmls."Property"."Style" IS 'Style';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SubdivisionName" text;
    COMMENT ON COLUMN ctmls."Property"."SubdivisionName" IS 'Subdivision Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SuperLien" text;
    COMMENT ON COLUMN ctmls."Property"."SuperLien" IS 'Super Lien';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SupplementCount" integer;
    COMMENT ON COLUMN ctmls."Property"."SupplementCount" IS 'Supplement Count';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "SupplementModificationTimestamp" text;
    COMMENT ON COLUMN ctmls."Property"."SupplementModificationTimestamp" IS 'Supplement Modification Timestam';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TaxPhaseInYN" boolean;
    COMMENT ON COLUMN ctmls."Property"."TaxPhaseInYN" IS 'Tax Phase In YN';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TaxYear" text;
    COMMENT ON COLUMN ctmls."Property"."TaxYear" IS 'Tax Year';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Taxes" integer;
    COMMENT ON COLUMN ctmls."Property"."Taxes" IS 'Taxes';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TeamAgent1Name" text;
    COMMENT ON COLUMN ctmls."Property"."TeamAgent1Name" IS 'Team Agent 1 Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TeamAgent1Phone" text;
    COMMENT ON COLUMN ctmls."Property"."TeamAgent1Phone" IS 'Team Agent 1 Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TeamAgent2Name" text;
    COMMENT ON COLUMN ctmls."Property"."TeamAgent2Name" IS 'Team Agent 2 Name';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TeamAgent2Phone" text;
    COMMENT ON COLUMN ctmls."Property"."TeamAgent2Phone" IS 'Team Agent 2 Phone';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TenantPays" text[];
    COMMENT ON COLUMN ctmls."Property"."TenantPays" IS 'Tenant Pays';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TenantResp" text[];
    COMMENT ON COLUMN ctmls."Property"."TenantResp" IS 'Tenant Resp';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Terms" text[];
    COMMENT ON COLUMN ctmls."Property"."Terms" IS 'Terms';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TotalNumofUnits" integer;
    COMMENT ON COLUMN ctmls."Property"."TotalNumofUnits" IS 'Total Numof Units';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "TransactionType" text;
    COMMENT ON COLUMN ctmls."Property"."TransactionType" IS 'Transaction Type';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "Turnpike" text;
    COMMENT ON COLUMN ctmls."Property"."Turnpike" IS 'Turnpike';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "UndergroundOilTank" text;
    COMMENT ON COLUMN ctmls."Property"."UndergroundOilTank" IS 'Underground Oil Tank';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "UnitCount" integer;
    COMMENT ON COLUMN ctmls."Property"."UnitCount" IS 'Unit Count';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "UnitLevelNumber" integer;
    COMMENT ON COLUMN ctmls."Property"."UnitLevelNumber" IS 'Unit Level Number';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN ctmls."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "UseofProperty" text[];
    COMMENT ON COLUMN ctmls."Property"."UseofProperty" IS 'Useof Property';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "UtilitiesAvailable" text[];
    COMMENT ON COLUMN ctmls."Property"."UtilitiesAvailable" IS 'Utilities Available';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "VirtualTour" text;
    COMMENT ON COLUMN ctmls."Property"."VirtualTour" IS 'Virtual Tour';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "WalkScoreAddress" text;
    COMMENT ON COLUMN ctmls."Property"."WalkScoreAddress" IS 'Walk Score Address';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "WaterFrontage" integer;
    COMMENT ON COLUMN ctmls."Property"."WaterFrontage" IS 'Water Frontage';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "WaterSewerLien" text;
    COMMENT ON COLUMN ctmls."Property"."WaterSewerLien" IS 'Water Sewer Lien';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "WaterSource" text[];
    COMMENT ON COLUMN ctmls."Property"."WaterSource" IS 'Water Source';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "WaterfrontDescription" text[];
    COMMENT ON COLUMN ctmls."Property"."WaterfrontDescription" IS 'Waterfront Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN ctmls."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "YearBuiltDesc" text;
    COMMENT ON COLUMN ctmls."Property"."YearBuiltDesc" IS 'Year Built Desc';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "YearBusinessEstablished" integer;
    COMMENT ON COLUMN ctmls."Property"."YearBusinessEstablished" IS 'Year Business Established';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "YearsRemainingonLease" integer;
    COMMENT ON COLUMN ctmls."Property"."YearsRemainingonLease" IS 'Years Remainingon Lease';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ZoneCodeSource" text;
    COMMENT ON COLUMN ctmls."Property"."ZoneCodeSource" IS 'Zone Code Source';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ZoningCode" text;
    COMMENT ON COLUMN ctmls."Property"."ZoningCode" IS 'Zoning Code';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ZoningDescription" text;
    COMMENT ON COLUMN ctmls."Property"."ZoningDescription" IS 'Zoning Description';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "ZoningDescriptionCOMM" text;
    COMMENT ON COLUMN ctmls."Property"."ZoningDescriptionCOMM" IS 'Zoning Description COMM';
     
    ALTER TABLE ctmls."Property" ADD COLUMN "matrix_unique_id" bigint PRIMARY KEY;
    COMMENT ON COLUMN ctmls."Property"."matrix_unique_id" IS 'Matrix Unique ID';
     

COMMIT;