BEGIN;

  CREATE TABLE nneren."Property"() INHERITS (property);
    ALTER TABLE nneren."Property" ADD COLUMN "ACP" integer;
    COMMENT ON COLUMN nneren."Property"."ACP" IS 'A/C %';
     
    ALTER TABLE nneren."Property" ADD COLUMN "APXBuildingSqFt" integer;
    COMMENT ON COLUMN nneren."Property"."APXBuildingSqFt" IS 'APX Building SqFt';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AVMYN" text;
    COMMENT ON COLUMN nneren."Property"."AVMYN" IS 'AVM Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AcresCommon" integer;
    COMMENT ON COLUMN nneren."Property"."AcresCommon" IS 'Acres - Common';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AgentStatus" text;
    COMMENT ON COLUMN nneren."Property"."AgentStatus" IS 'AgentStatus';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Amenities" text[];
    COMMENT ON COLUMN nneren."Property"."Amenities" IS 'Amenities';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AnchorYN" text;
    COMMENT ON COLUMN nneren."Property"."AnchorYN" IS 'Anchor Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AnnualExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."AnnualExpenses" IS 'Annual Expenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AnnualIncome" integer;
    COMMENT ON COLUMN nneren."Property"."AnnualIncome" IS 'Annual Income';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AppxTtlSqBlGd" integer;
    COMMENT ON COLUMN nneren."Property"."AppxTtlSqBlGd" IS 'AppxTtlSqBlGd';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ApxFinSqFtTotal" integer;
    COMMENT ON COLUMN nneren."Property"."ApxFinSqFtTotal" IS 'ApxFinSqFtTotal';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AssessmentAmount" integer;
    COMMENT ON COLUMN nneren."Property"."AssessmentAmount" IS 'Assessment Amount';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AssignedParkingYN" text;
    COMMENT ON COLUMN nneren."Property"."AssignedParkingYN" IS 'Assigned Parking Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AssistedLiving" text[];
    COMMENT ON COLUMN nneren."Property"."AssistedLiving" IS 'Assisted Living CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AssocFeeAmount" integer;
    COMMENT ON COLUMN nneren."Property"."AssocFeeAmount" IS 'AssociationFeeAmount';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AssociationFees" integer;
    COMMENT ON COLUMN nneren."Property"."AssociationFees" IS 'AssociationFees';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AssociationYN" text;
    COMMENT ON COLUMN nneren."Property"."AssociationYN" IS 'Association Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AuctionDate" text;
    COMMENT ON COLUMN nneren."Property"."AuctionDate" IS 'Auction Date';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AuctionInfo" text[];
    COMMENT ON COLUMN nneren."Property"."AuctionInfo" IS 'Auction Info CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AuctionPriceDetermination" text;
    COMMENT ON COLUMN nneren."Property"."AuctionPriceDetermination" IS 'Auction Price Determination';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AuctionTime" text;
    COMMENT ON COLUMN nneren."Property"."AuctionTime" IS 'Auction Time';
     
    ALTER TABLE nneren."Property" ADD COLUMN "AuctioneerLicNo" text;
    COMMENT ON COLUMN nneren."Property"."AuctioneerLicNo" IS 'AuctioneerLicNo';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Basement" text[];
    COMMENT ON COLUMN nneren."Property"."Basement" IS 'Basement';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BasementAcc" text;
    COMMENT ON COLUMN nneren."Property"."BasementAcc" IS 'BasementAcc';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BasementBedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."BasementBedrooms" IS 'Basement Bedrooms ';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BasementYN" text;
    COMMENT ON COLUMN nneren."Property"."BasementYN" IS 'Basement Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bath34Level" text;
    COMMENT ON COLUMN nneren."Property"."Bath34Level" IS 'Bath34Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bath34Size" text;
    COMMENT ON COLUMN nneren."Property"."Bath34Size" IS 'Bath 3 Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths" integer;
    COMMENT ON COLUMN nneren."Property"."Baths" IS 'Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths14" integer;
    COMMENT ON COLUMN nneren."Property"."Baths14" IS '1/4 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths141stFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Baths141stFloor" IS 'Floor 1 1/4 Bath';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths143rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Baths143rdFloor" IS 'Floor 3 1/4 Bath';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths144thFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Baths144thFloor" IS 'Floor 4 1/4 Bath';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths34" integer;
    COMMENT ON COLUMN nneren."Property"."Baths34" IS '3/4 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths341stFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Baths341stFloor" IS 'Floor 1 3/4 Bath';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths342ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Baths342ndFloor" IS 'Floor 2 3/4 Bath';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths343rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Baths343rdFloor" IS 'Floor 3 3/4 Bath';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths344thFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Baths344thFloor" IS 'Floor 4 3/4 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Baths34Basement" integer;
    COMMENT ON COLUMN nneren."Property"."Baths34Basement" IS 'Basement 3/4 Bath ';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN nneren."Property"."BathsFull" IS 'Full Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BathsPartial" integer;
    COMMENT ON COLUMN nneren."Property"."BathsPartial" IS 'Half-Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BedRoomMasterDimensions" text;
    COMMENT ON COLUMN nneren."Property"."BedRoomMasterDimensions" IS 'Bedroom 1 Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom11stFloor" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom11stFloor" IS 'Generic Number 9';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom12ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom12ndFloor" IS 'Generic Number 10';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom13rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom13rdFloor" IS 'Generic Number 11';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom1Basement" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom1Basement" IS 'Generic Number 8';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom1Level" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom1Level" IS 'Bedroom 1 Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom21stFloor" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom21stFloor" IS 'Generic Number 13';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom22ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom22ndFloor" IS 'Generic Number 14';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom23rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom23rdFloor" IS 'Generic Number 15';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom2Basement" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom2Basement" IS 'Generic Number 12';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom2Level" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom2Level" IS 'Bedroom 2 Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom2Size" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom2Size" IS 'Bedroom 2 Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom31stFloor" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom31stFloor" IS 'Generic Number 17';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom32ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom32ndFloor" IS 'Generic Number 18';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom33rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom33rdFloor" IS 'Generic Number 19';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom3Basement" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom3Basement" IS 'Generic Number 16';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom3Level" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom3Level" IS 'Bedroom 3 Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom3Size" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom3Size" IS 'Bedroom 3 Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom41stFloor" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom41stFloor" IS 'Bedroom 4 1st Floor';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom42ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom42ndFloor" IS 'Bedroom 4 2nd Floor';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom43rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Bedroom43rdFloor" IS 'Generic Number 7';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom4Basement" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom4Basement" IS 'Bedroom 4 Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom4Level" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom4Level" IS 'Bedroom 4 Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom4Size" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom4Size" IS 'Bedroom 4 Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom5Level" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom5Level" IS 'Bedroom 5 Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedroom5Size" text;
    COMMENT ON COLUMN nneren."Property"."Bedroom5Size" IS 'Bedroom 5 Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Bedrooms" IS 'Bedrooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Block" text;
    COMMENT ON COLUMN nneren."Property"."Block" IS 'Block';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BlogYN" text;
    COMMENT ON COLUMN nneren."Property"."BlogYN" IS 'Blog Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BuildingCert" text[];
    COMMENT ON COLUMN nneren."Property"."BuildingCert" IS 'Building Cert CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BuildingCertification" text[];
    COMMENT ON COLUMN nneren."Property"."BuildingCertification" IS 'Building Cert CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BuildingLotNo" text;
    COMMENT ON COLUMN nneren."Property"."BuildingLotNo" IS 'Building Lot Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BuildingNumber" text;
    COMMENT ON COLUMN nneren."Property"."BuildingNumber" IS 'Building Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "BuildingStatus" text;
    COMMENT ON COLUMN nneren."Property"."BuildingStatus" IS 'Building Status';
     
    ALTER TABLE nneren."Property" ADD COLUMN "CAM" integer;
    COMMENT ON COLUMN nneren."Property"."CAM" IS 'CAM';
     
    ALTER TABLE nneren."Property" ADD COLUMN "CableCo" text;
    COMMENT ON COLUMN nneren."Property"."CableCo" IS 'Cable Company';
     
    ALTER TABLE nneren."Property" ADD COLUMN "CeilingHeight" text;
    COMMENT ON COLUMN nneren."Property"."CeilingHeight" IS 'Ceiling Height';
     
    ALTER TABLE nneren."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN nneren."Property"."City" IS 'Town';
     
    ALTER TABLE nneren."Property" ADD COLUMN "CloseDate" text;
    COMMENT ON COLUMN nneren."Property"."CloseDate" IS 'Date Closed / Sold';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ClosePrice" integer;
    COMMENT ON COLUMN nneren."Property"."ClosePrice" IS 'Selling Price';
     
    ALTER TABLE nneren."Property" ADD COLUMN "CoListAgent" text;
    COMMENT ON COLUMN nneren."Property"."CoListAgent" IS 'CoList Agent';
     
    ALTER TABLE nneren."Property" ADD COLUMN "CoOpYN" text;
    COMMENT ON COLUMN nneren."Property"."CoOpYN" IS 'Co-Op Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "CondoName" text;
    COMMENT ON COLUMN nneren."Property"."CondoName" IS 'Condo Name';
     
    ALTER TABLE nneren."Property" ADD COLUMN "CondoOwnersAssociationDues" integer;
    COMMENT ON COLUMN nneren."Property"."CondoOwnersAssociationDues" IS 'Condo Owners Association Dues';
     
    ALTER TABLE nneren."Property" ADD COLUMN "CondoUnitNumber" text;
    COMMENT ON COLUMN nneren."Property"."CondoUnitNumber" IS 'Condo Unit Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Construction" text[];
    COMMENT ON COLUMN nneren."Property"."Construction" IS 'Construction';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ConstructionStatus" text;
    COMMENT ON COLUMN nneren."Property"."ConstructionStatus" IS 'New Construction Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ContractDate" text;
    COMMENT ON COLUMN nneren."Property"."ContractDate" IS 'Date Pending';
     
    ALTER TABLE nneren."Property" ADD COLUMN "County" text;
    COMMENT ON COLUMN nneren."Property"."County" IS 'Address County';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DateChange" text;
    COMMENT ON COLUMN nneren."Property"."DateChange" IS 'Date Change';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DateLeased" text;
    COMMENT ON COLUMN nneren."Property"."DateLeased" IS 'Date Leased';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DatePhoto" text;
    COMMENT ON COLUMN nneren."Property"."DatePhoto" IS 'Date Photo';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DatePriceChange" text;
    COMMENT ON COLUMN nneren."Property"."DatePriceChange" IS 'Date Price Change';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DeedPage" text;
    COMMENT ON COLUMN nneren."Property"."DeedPage" IS 'Deed Page';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DeedRestrictions" text;
    COMMENT ON COLUMN nneren."Property"."DeedRestrictions" IS 'Deed Restrictions';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Den1stFloor" text;
    COMMENT ON COLUMN nneren."Property"."Den1stFloor" IS 'Den Level 2';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Den2ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Den2ndFloor" IS 'Den Level 3';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Den3rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Den3rdFloor" IS 'Den Level 4';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DenBasement" integer;
    COMMENT ON COLUMN nneren."Property"."DenBasement" IS 'Den Level 1';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DenLevel" text;
    COMMENT ON COLUMN nneren."Property"."DenLevel" IS 'Den Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DenSize" text;
    COMMENT ON COLUMN nneren."Property"."DenSize" IS 'Den Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Description" text[];
    COMMENT ON COLUMN nneren."Property"."Description" IS 'Description CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DevelopmentDesc" text;
    COMMENT ON COLUMN nneren."Property"."DevelopmentDesc" IS 'Development Description';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DiningRoomLevel" text;
    COMMENT ON COLUMN nneren."Property"."DiningRoomLevel" IS 'Dining Room Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DiningRoomSize" text;
    COMMENT ON COLUMN nneren."Property"."DiningRoomSize" IS 'Dining Room Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN nneren."Property"."Directions" IS 'Directions';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DisabilityFeatures" text[];
    COMMENT ON COLUMN nneren."Property"."DisabilityFeatures" IS 'DisabilityFeatures';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DisplayFlagAddress" text;
    COMMENT ON COLUMN nneren."Property"."DisplayFlagAddress" IS 'DisplayFlagAddress';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DisplayFlagListing" text;
    COMMENT ON COLUMN nneren."Property"."DisplayFlagListing" IS 'Property on Internet Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DivisibleSFYN" text;
    COMMENT ON COLUMN nneren."Property"."DivisibleSFYN" IS 'Divisible SqFt Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DockHeight" text;
    COMMENT ON COLUMN nneren."Property"."DockHeight" IS 'Dock Height';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DockLevelers" text;
    COMMENT ON COLUMN nneren."Property"."DockLevelers" IS 'Dock Levelers';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Docks" integer;
    COMMENT ON COLUMN nneren."Property"."Docks" IS 'Docks';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DocsAvailable" text[];
    COMMENT ON COLUMN nneren."Property"."DocsAvailable" IS 'DocsAvailable';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Draft" integer;
    COMMENT ON COLUMN nneren."Property"."Draft" IS 'Draft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "DriveInDoors" integer;
    COMMENT ON COLUMN nneren."Property"."DriveInDoors" IS 'Drive-In Doors';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Driveway" text[];
    COMMENT ON COLUMN nneren."Property"."Driveway" IS 'Driveway CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "EasementsYN" text;
    COMMENT ON COLUMN nneren."Property"."EasementsYN" IS 'Easements Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Electric" text[];
    COMMENT ON COLUMN nneren."Property"."Electric" IS 'Electric';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ElectricMeters" integer;
    COMMENT ON COLUMN nneren."Property"."ElectricMeters" IS 'Electric Meters';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Elevators" integer;
    COMMENT ON COLUMN nneren."Property"."Elevators" IS 'Elevators';
     
    ALTER TABLE nneren."Property" ADD COLUMN "EquipmentAndAppliances" text[];
    COMMENT ON COLUMN nneren."Property"."EquipmentAndAppliances" IS 'EquipmentAndAppliances';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Exposure" text[];
    COMMENT ON COLUMN nneren."Property"."Exposure" IS 'Exposure';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Exterior" text[];
    COMMENT ON COLUMN nneren."Property"."Exterior" IS 'Exterior';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ExteriorAmenities" text[];
    COMMENT ON COLUMN nneren."Property"."ExteriorAmenities" IS 'Exterior Amenities CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ExteriorFeat" text[];
    COMMENT ON COLUMN nneren."Property"."ExteriorFeat" IS 'Exterior Features CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN nneren."Property"."ExteriorFeatures" IS 'Exterior Features CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FamilyRoom1stFloor" text;
    COMMENT ON COLUMN nneren."Property"."FamilyRoom1stFloor" IS 'Family Room Level 2';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FamilyRoom2ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."FamilyRoom2ndFloor" IS 'Family Room Level 3';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FamilyRoom3rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."FamilyRoom3rdFloor" IS 'Family Room Level 4';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FamilyRoomBasement" integer;
    COMMENT ON COLUMN nneren."Property"."FamilyRoomBasement" IS 'Family Room Level 1';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FamilyRoomLevel" text;
    COMMENT ON COLUMN nneren."Property"."FamilyRoomLevel" IS 'Family Room Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FamilyRoomSize" text;
    COMMENT ON COLUMN nneren."Property"."FamilyRoomSize" IS 'Family Room Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FeeIncludes" text[];
    COMMENT ON COLUMN nneren."Property"."FeeIncludes" IS 'FeeIncludes';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Financing" text[];
    COMMENT ON COLUMN nneren."Property"."Financing" IS 'Financing';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FinishedAboveGrade" integer;
    COMMENT ON COLUMN nneren."Property"."FinishedAboveGrade" IS 'Finished Above Grade';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FloodZone" text;
    COMMENT ON COLUMN nneren."Property"."FloodZone" IS 'Flood Zone';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Floor1Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Floor1Bedrooms" IS 'Floor 1 Bedrooms ';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Floor2Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Floor2Bedrooms" IS 'Floor 2 Bedrooms ';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Floor3Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Floor3Bedrooms" IS 'Floor 3 Bedrooms ';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Floor4Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Floor4Bedrooms" IS 'Floor 4 Bedrooms ';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FloorNumber" integer;
    COMMENT ON COLUMN nneren."Property"."FloorNumber" IS 'Floor Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Floors" text[];
    COMMENT ON COLUMN nneren."Property"."Floors" IS 'Floors CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Footprint" text;
    COMMENT ON COLUMN nneren."Property"."Footprint" IS 'Footprint';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Foundation" text[];
    COMMENT ON COLUMN nneren."Property"."Foundation" IS 'Foundation';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Fuel" text[];
    COMMENT ON COLUMN nneren."Property"."Fuel" IS 'Fuel';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FuelCo" text;
    COMMENT ON COLUMN nneren."Property"."FuelCo" IS 'Fuel Co';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FullBath1stFloor" integer;
    COMMENT ON COLUMN nneren."Property"."FullBath1stFloor" IS 'Floor 1 Full Bath';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FullBath2ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."FullBath2ndFloor" IS 'Floor 2 Full Bath';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FullBath3rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."FullBath3rdFloor" IS 'Floor 3 Full Bath';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FullBath4thFloor" integer;
    COMMENT ON COLUMN nneren."Property"."FullBath4thFloor" IS 'Floor 4 Full Bath ';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FullBathBasement" integer;
    COMMENT ON COLUMN nneren."Property"."FullBathBasement" IS 'Basement Full Bath ';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FullBathLevel" text;
    COMMENT ON COLUMN nneren."Property"."FullBathLevel" IS 'Full Bath Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FullBathSize" text;
    COMMENT ON COLUMN nneren."Property"."FullBathSize" IS 'Full Bath Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "FurnishedYN" text;
    COMMENT ON COLUMN nneren."Property"."FurnishedYN" IS 'Furnished Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "GarageAndParking" text[];
    COMMENT ON COLUMN nneren."Property"."GarageAndParking" IS 'GarageAndParking CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "GarageCapacityNumber" integer;
    COMMENT ON COLUMN nneren."Property"."GarageCapacityNumber" IS 'Garage Capacity Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "GarageType" text;
    COMMENT ON COLUMN nneren."Property"."GarageType" IS 'Garage Location';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Gas" text[];
    COMMENT ON COLUMN nneren."Property"."Gas" IS 'Gas';
     
    ALTER TABLE nneren."Property" ADD COLUMN "GasMeters" integer;
    COMMENT ON COLUMN nneren."Property"."GasMeters" IS 'Gas Meters';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HERIndex" integer;
    COMMENT ON COLUMN nneren."Property"."HERIndex" IS 'Home Energy Rated Index Score';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HalfBath2Level" text;
    COMMENT ON COLUMN nneren."Property"."HalfBath2Level" IS 'HalfBath2Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HalfBathSize" text;
    COMMENT ON COLUMN nneren."Property"."HalfBathSize" IS 'Half Bath Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HalfBaths1stFloor" integer;
    COMMENT ON COLUMN nneren."Property"."HalfBaths1stFloor" IS 'Floor 1 Half Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HalfBaths2ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."HalfBaths2ndFloor" IS 'Floor 2 Half Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HalfBaths3rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."HalfBaths3rdFloor" IS 'Floor 3 Half Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HalfBaths4thFloor" integer;
    COMMENT ON COLUMN nneren."Property"."HalfBaths4thFloor" IS 'Floor 4 Half Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HalfBathsBasement" integer;
    COMMENT ON COLUMN nneren."Property"."HalfBathsBasement" IS 'Basement Half Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HeatFuel" text[];
    COMMENT ON COLUMN nneren."Property"."HeatFuel" IS 'HeatFuel';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HeatUnits" integer;
    COMMENT ON COLUMN nneren."Property"."HeatUnits" IS 'Heat Units';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HeatingAndCooling" text[];
    COMMENT ON COLUMN nneren."Property"."HeatingAndCooling" IS 'HeatingAndCooling';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HeatingExpense" integer;
    COMMENT ON COLUMN nneren."Property"."HeatingExpense" IS 'Heating  Expense';
     
    ALTER TABLE nneren."Property" ADD COLUMN "HouseColor" text;
    COMMENT ON COLUMN nneren."Property"."HouseColor" IS 'House Color';
     
    ALTER TABLE nneren."Property" ADD COLUMN "IncomeVerification" text[];
    COMMENT ON COLUMN nneren."Property"."IncomeVerification" IS 'Income Verification CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "InsuranceExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."InsuranceExpenses" IS 'Insurance Expenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "InteriorAmenities" text[];
    COMMENT ON COLUMN nneren."Property"."InteriorAmenities" IS 'Interior Amenities CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "InteriorFeat" text[];
    COMMENT ON COLUMN nneren."Property"."InteriorFeat" IS 'Interior Features CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "InteriorFeatures" text[];
    COMMENT ON COLUMN nneren."Property"."InteriorFeatures" IS 'Interior Features CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "InvestmentInfoYN" text;
    COMMENT ON COLUMN nneren."Property"."InvestmentInfoYN" IS 'Investment Information Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "JuniorHighSchool" text;
    COMMENT ON COLUMN nneren."Property"."JuniorHighSchool" IS 'School - Junior High';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Kitchen1stFloor" text;
    COMMENT ON COLUMN nneren."Property"."Kitchen1stFloor" IS 'Kitchen Level 2';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Kitchen2ndFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Kitchen2ndFloor" IS 'Generic Number 23';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Kitchen3rdFloor" integer;
    COMMENT ON COLUMN nneren."Property"."Kitchen3rdFloor" IS 'Generic Number 24';
     
    ALTER TABLE nneren."Property" ADD COLUMN "KitchenBasement" integer;
    COMMENT ON COLUMN nneren."Property"."KitchenBasement" IS 'Kitchen Level 1';
     
    ALTER TABLE nneren."Property" ADD COLUMN "KitchenLevel" text;
    COMMENT ON COLUMN nneren."Property"."KitchenLevel" IS 'Kitchen Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "KitchenSize" text;
    COMMENT ON COLUMN nneren."Property"."KitchenSize" IS 'Kitchen Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LandDesc" text;
    COMMENT ON COLUMN nneren."Property"."LandDesc" IS 'Land Use';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LandGains" text;
    COMMENT ON COLUMN nneren."Property"."LandGains" IS 'Land Gains YN';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LandOwned" text;
    COMMENT ON COLUMN nneren."Property"."LandOwned" IS 'Land Description';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN nneren."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseAgent" text;
    COMMENT ON COLUMN nneren."Property"."LeaseAgent" IS 'Lease Agent';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseDol" text;
    COMMENT ON COLUMN nneren."Property"."LeaseDol" IS 'Land Lease Price';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseExpense" decimal;
    COMMENT ON COLUMN nneren."Property"."LeaseExpense" IS 'Lease Expense';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseFirm" text;
    COMMENT ON COLUMN nneren."Property"."LeaseFirm" IS 'Lease Firm';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseListRate" decimal;
    COMMENT ON COLUMN nneren."Property"."LeaseListRate" IS 'LeaseListRate';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseOffice" text;
    COMMENT ON COLUMN nneren."Property"."LeaseOffice" IS 'Lease Office';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseRateType" text;
    COMMENT ON COLUMN nneren."Property"."LeaseRateType" IS 'Lease Rate Type';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseRateUnits" text;
    COMMENT ON COLUMN nneren."Property"."LeaseRateUnits" IS '';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseTerm" text;
    COMMENT ON COLUMN nneren."Property"."LeaseTerm" IS 'Lease Description';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeaseType" text;
    COMMENT ON COLUMN nneren."Property"."LeaseType" IS 'Sale / Lease Type';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LeasedPrice" integer;
    COMMENT ON COLUMN nneren."Property"."LeasedPrice" IS 'Leased Price';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LimitedCommonArea" text;
    COMMENT ON COLUMN nneren."Property"."LimitedCommonArea" IS 'Limited Common Area';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ListAgentAgentID" text;
    COMMENT ON COLUMN nneren."Property"."ListAgentAgentID" IS 'Listing Agent ID';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ListAgentOfficeID" text;
    COMMENT ON COLUMN nneren."Property"."ListAgentOfficeID" IS 'Listing Office UID';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ListDate" text;
    COMMENT ON COLUMN nneren."Property"."ListDate" IS 'Date Listed';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ListPrice" integer;
    COMMENT ON COLUMN nneren."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ListingAgentID" text;
    COMMENT ON COLUMN nneren."Property"."ListingAgentID" IS 'Listing Agent ID';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ListingFirmID" text;
    COMMENT ON COLUMN nneren."Property"."ListingFirmID" IS 'Listing Firm ID';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ListingID" integer PRIMARY KEY;
    COMMENT ON COLUMN nneren."Property"."ListingID" IS 'MLS Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ListingOffice" text;
    COMMENT ON COLUMN nneren."Property"."ListingOffice" IS 'Listing Office';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ListingStatus" text;
    COMMENT ON COLUMN nneren."Property"."ListingStatus" IS 'Status Actual Letter';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LivingRoomLevel" text;
    COMMENT ON COLUMN nneren."Property"."LivingRoomLevel" IS 'Living Room Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LivingRoomSize" text;
    COMMENT ON COLUMN nneren."Property"."LivingRoomSize" IS 'Living Room Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Location" text[];
    COMMENT ON COLUMN nneren."Property"."Location" IS 'Location';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN nneren."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LossFactorP" integer;
    COMMENT ON COLUMN nneren."Property"."LossFactorP" IS 'Loss Factor %';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Lot" text;
    COMMENT ON COLUMN nneren."Property"."Lot" IS 'Lot';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LotDescription" text[];
    COMMENT ON COLUMN nneren."Property"."LotDescription" IS 'LotDescription';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LotSizeArea" decimal;
    COMMENT ON COLUMN nneren."Property"."LotSizeArea" IS 'Acres - Total';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LotSqFt" integer;
    COMMENT ON COLUMN nneren."Property"."LotSqFt" IS 'Lot SqFt';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LseAgrU5" text;
    COMMENT ON COLUMN nneren."Property"."LseAgrU5" IS 'LseAgrU5';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LseAgrU6" text;
    COMMENT ON COLUMN nneren."Property"."LseAgrU6" IS 'LseAgrU6';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LseAgrU7" text;
    COMMENT ON COLUMN nneren."Property"."LseAgrU7" IS 'LseAgrU7';
     
    ALTER TABLE nneren."Property" ADD COLUMN "LseAgrU8" text;
    COMMENT ON COLUMN nneren."Property"."LseAgrU8" IS 'LseAgrU8';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MLSType" text;
    COMMENT ON COLUMN nneren."Property"."MLSType" IS 'MLS Type Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MaintExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."MaintExpenses" IS 'Maintenance Expenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ManagementExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."ManagementExpenses" IS 'Management Expenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MapCoordinates" text;
    COMMENT ON COLUMN nneren."Property"."MapCoordinates" IS 'Map Coordinates';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MarinaAmenities" text[];
    COMMENT ON COLUMN nneren."Property"."MarinaAmenities" IS 'Marina Amenities CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MaxLength" integer;
    COMMENT ON COLUMN nneren."Property"."MaxLength" IS 'Max Length';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MaxOccupancyRate" integer;
    COMMENT ON COLUMN nneren."Property"."MaxOccupancyRate" IS 'Current Occupancy Rate';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MaxWidth" integer;
    COMMENT ON COLUMN nneren."Property"."MaxWidth" IS 'Max Width';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Misc" text[];
    COMMENT ON COLUMN nneren."Property"."Misc" IS 'Misc';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MiscellaneousExpense" integer;
    COMMENT ON COLUMN nneren."Property"."MiscellaneousExpense" IS 'Miscellaneous  Expense';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MobileHomeMake" text;
    COMMENT ON COLUMN nneren."Property"."MobileHomeMake" IS 'Mobile Home Make';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ModelName" text;
    COMMENT ON COLUMN nneren."Property"."ModelName" IS 'Model Name';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ModificationTimestamp" text;
    COMMENT ON COLUMN nneren."Property"."ModificationTimestamp" IS 'ModificationTimestamp';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MonthlyAssocFees" integer;
    COMMENT ON COLUMN nneren."Property"."MonthlyAssocFees" IS 'Monthly Assoc. Fees';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MonthlyFee" integer;
    COMMENT ON COLUMN nneren."Property"."MonthlyFee" IS 'Monthly Fee';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MultipleDeedsYN" text;
    COMMENT ON COLUMN nneren."Property"."MultipleDeedsYN" IS 'Multiple Deeds Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "MustMoveYN" text;
    COMMENT ON COLUMN nneren."Property"."MustMoveYN" IS 'Must Move Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "N3PlusBedroomUnits" integer;
    COMMENT ON COLUMN nneren."Property"."N3PlusBedroomUnits" IS '4 Bedroom Units';
     
    ALTER TABLE nneren."Property" ADD COLUMN "NaturalGasYN" text;
    COMMENT ON COLUMN nneren."Property"."NaturalGasYN" IS 'Natural Gas Available';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Negotiable" text[];
    COMMENT ON COLUMN nneren."Property"."Negotiable" IS 'Negotiable';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Neighborhood" text[];
    COMMENT ON COLUMN nneren."Property"."Neighborhood" IS 'Neighborhood';
     
    ALTER TABLE nneren."Property" ADD COLUMN "NetIncome" integer;
    COMMENT ON COLUMN nneren."Property"."NetIncome" IS 'Net Income';
     
    ALTER TABLE nneren."Property" ADD COLUMN "NumberStories" text;
    COMMENT ON COLUMN nneren."Property"."NumberStories" IS 'Number Stories';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OccupancyRestrictions" text[];
    COMMENT ON COLUMN nneren."Property"."OccupancyRestrictions" IS 'OccupancyRestrictions';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OccupantRestrictions" text[];
    COMMENT ON COLUMN nneren."Property"."OccupantRestrictions" IS 'OccupantRestrictions';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OfficeIDX" text;
    COMMENT ON COLUMN nneren."Property"."OfficeIDX" IS 'Office IDX';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OfficeLevel" text;
    COMMENT ON COLUMN nneren."Property"."OfficeLevel" IS 'Office Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OfficeSize" text;
    COMMENT ON COLUMN nneren."Property"."OfficeSize" IS 'Office Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OfficeStatus" text;
    COMMENT ON COLUMN nneren."Property"."OfficeStatus" IS 'Office Status';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OfficialTown" text;
    COMMENT ON COLUMN nneren."Property"."OfficialTown" IS 'Official Town';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OperatingExpenses" text[];
    COMMENT ON COLUMN nneren."Property"."OperatingExpenses" IS 'Operating Expenses CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OriginalListingFirmName" text;
    COMMENT ON COLUMN nneren."Property"."OriginalListingFirmName" IS 'Original Listing Firm Name';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OriginalSellingFirmName" text;
    COMMENT ON COLUMN nneren."Property"."OriginalSellingFirmName" IS 'Original Selling Firm Name';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Other" text;
    COMMENT ON COLUMN nneren."Property"."Other" IS 'Other';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OtherRoom1Size" text;
    COMMENT ON COLUMN nneren."Property"."OtherRoom1Size" IS 'Other Room 1 Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OtherRoom2Level" text;
    COMMENT ON COLUMN nneren."Property"."OtherRoom2Level" IS 'Other Rm 2 Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OtherRoom2Size" text;
    COMMENT ON COLUMN nneren."Property"."OtherRoom2Size" IS 'Other Room 2 Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OtherRoom3Level" text;
    COMMENT ON COLUMN nneren."Property"."OtherRoom3Level" IS 'Other Rm 3 Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OtherRoom3Size" text;
    COMMENT ON COLUMN nneren."Property"."OtherRoom3Size" IS 'Other Room 3 Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OtherRoomLevel" text;
    COMMENT ON COLUMN nneren."Property"."OtherRoomLevel" IS 'Other Rm 1 Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "OverheadDoorHeight" text;
    COMMENT ON COLUMN nneren."Property"."OverheadDoorHeight" IS 'Overhead Door Height';
     
    ALTER TABLE nneren."Property" ADD COLUMN "POpenSpace" integer;
    COMMENT ON COLUMN nneren."Property"."POpenSpace" IS '% Open Space';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PUDYN" text;
    COMMENT ON COLUMN nneren."Property"."PUDYN" IS 'PUD Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ParcelAccessRowYN" text;
    COMMENT ON COLUMN nneren."Property"."ParcelAccessRowYN" IS 'Parcel Access Row YN';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ParkApprovalYN" text;
    COMMENT ON COLUMN nneren."Property"."ParkApprovalYN" IS 'Park Approval Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ParkName" text;
    COMMENT ON COLUMN nneren."Property"."ParkName" IS 'Park Name';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Parking" text[];
    COMMENT ON COLUMN nneren."Property"."Parking" IS 'Parking';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ParkingTotal" integer;
    COMMENT ON COLUMN nneren."Property"."ParkingTotal" IS '# Parking Spaces';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PermitNumber" text;
    COMMENT ON COLUMN nneren."Property"."PermitNumber" IS 'Permit Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PermitStatus" text[];
    COMMENT ON COLUMN nneren."Property"."PermitStatus" IS 'Permit Status CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PhoneCo" text;
    COMMENT ON COLUMN nneren."Property"."PhoneCo" IS 'Phone Company';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PhoneCompany" text;
    COMMENT ON COLUMN nneren."Property"."PhoneCompany" IS 'Phone Company';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PhotoCount" integer;
    COMMENT ON COLUMN nneren."Property"."PhotoCount" IS 'Photo Count';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PhotoModificationTimestamp" text;
    COMMENT ON COLUMN nneren."Property"."PhotoModificationTimestamp" IS 'PhotoModificationTimestamp';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PoleNumber" text;
    COMMENT ON COLUMN nneren."Property"."PoleNumber" IS 'Pole Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN nneren."Property"."PostalCode" IS 'Address Zip Code';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PowerCompany" text;
    COMMENT ON COLUMN nneren."Property"."PowerCompany" IS 'Power Company';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PrevisiteVirtualTourURL" text;
    COMMENT ON COLUMN nneren."Property"."PrevisiteVirtualTourURL" IS 'Previsite Virtual Tour URL';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PrevisiteVirtualTourYN" text;
    COMMENT ON COLUMN nneren."Property"."PrevisiteVirtualTourYN" IS 'Previsite Virtual Tour YN';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PricePerAcre" decimal;
    COMMENT ON COLUMN nneren."Property"."PricePerAcre" IS 'Price per Acre';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PricePerSF" text;
    COMMENT ON COLUMN nneren."Property"."PricePerSF" IS 'Price Per SqFt';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PriceSqFt" decimal;
    COMMENT ON COLUMN nneren."Property"."PriceSqFt" IS 'Price / SqFt';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PropertyFormat" text;
    COMMENT ON COLUMN nneren."Property"."PropertyFormat" IS 'Property Format';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PropertyID" text;
    COMMENT ON COLUMN nneren."Property"."PropertyID" IS 'Property ID';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN nneren."Property"."PropertyType" IS 'Property Type';
     
    ALTER TABLE nneren."Property" ADD COLUMN "PublicRemarks" text;
    COMMENT ON COLUMN nneren."Property"."PublicRemarks" IS 'Generic Text Field 11';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ROWLength" text;
    COMMENT ON COLUMN nneren."Property"."ROWLength" IS 'ROW Length';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ROWWidth" text;
    COMMENT ON COLUMN nneren."Property"."ROWWidth" IS 'ROW Width';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RailroadAvailableYN" text;
    COMMENT ON COLUMN nneren."Property"."RailroadAvailableYN" IS 'Railroad Available Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RailroadProvider" text;
    COMMENT ON COLUMN nneren."Property"."RailroadProvider" IS 'Railroad Provider';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Ranges" integer;
    COMMENT ON COLUMN nneren."Property"."Ranges" IS 'Ranges';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Refrigerators" integer;
    COMMENT ON COLUMN nneren."Property"."Refrigerators" IS 'Refrigerators';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RentAmtU5" decimal;
    COMMENT ON COLUMN nneren."Property"."RentAmtU5" IS 'RentAmtU5';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RentAmtU6" decimal;
    COMMENT ON COLUMN nneren."Property"."RentAmtU6" IS 'RentAmtU6';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RentAmtU7" decimal;
    COMMENT ON COLUMN nneren."Property"."RentAmtU7" IS 'RentAmtU7';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RentAmtU8" decimal;
    COMMENT ON COLUMN nneren."Property"."RentAmtU8" IS 'RentAmtU8';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RentIncludes" text[];
    COMMENT ON COLUMN nneren."Property"."RentIncludes" IS 'RentIncludes';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RentSeasonal" integer;
    COMMENT ON COLUMN nneren."Property"."RentSeasonal" IS 'Rent Seasonal';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RentalAmount" integer;
    COMMENT ON COLUMN nneren."Property"."RentalAmount" IS 'Rental Amount';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RentalPropertyType" text;
    COMMENT ON COLUMN nneren."Property"."RentalPropertyType" IS 'Rental Property Type';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RentedYN" text;
    COMMENT ON COLUMN nneren."Property"."RentedYN" IS 'Rented YN';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ResortYN" text;
    COMMENT ON COLUMN nneren."Property"."ResortYN" IS 'Resort YN';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RespAuctioneer" text;
    COMMENT ON COLUMN nneren."Property"."RespAuctioneer" IS 'RespAuctioneer';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Restrictions" text[];
    COMMENT ON COLUMN nneren."Property"."Restrictions" IS 'Restrictions';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RestrictionsYN" text;
    COMMENT ON COLUMN nneren."Property"."RestrictionsYN" IS 'Restrictions Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RoadFrontage" integer;
    COMMENT ON COLUMN nneren."Property"."RoadFrontage" IS 'Road  Frontage';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RoadFtgYN" text;
    COMMENT ON COLUMN nneren."Property"."RoadFtgYN" IS 'Road Footage YN';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Roads" text[];
    COMMENT ON COLUMN nneren."Property"."Roads" IS 'Roads';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Roof" text[];
    COMMENT ON COLUMN nneren."Property"."Roof" IS 'Roof';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RoomsAboveGround" text;
    COMMENT ON COLUMN nneren."Property"."RoomsAboveGround" IS 'Rooms Above Ground';
     
    ALTER TABLE nneren."Property" ADD COLUMN "RowForOtherParcel" text;
    COMMENT ON COLUMN nneren."Property"."RowForOtherParcel" IS 'Row For Other Parcel';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SaleIncludes" text[];
    COMMENT ON COLUMN nneren."Property"."SaleIncludes" IS 'SaleIncludes';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SchoolDistrict" text;
    COMMENT ON COLUMN nneren."Property"."SchoolDistrict" IS 'School District';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SchoolElementary" text;
    COMMENT ON COLUMN nneren."Property"."SchoolElementary" IS 'School - Elementary';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SchoolHigh" text;
    COMMENT ON COLUMN nneren."Property"."SchoolHigh" IS 'School - High';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SeasonalYN" text;
    COMMENT ON COLUMN nneren."Property"."SeasonalYN" IS 'Seasonal Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SellingAgentFirmID" text;
    COMMENT ON COLUMN nneren."Property"."SellingAgentFirmID" IS 'Selling Agent Firm ID';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SellingAgentID" text;
    COMMENT ON COLUMN nneren."Property"."SellingAgentID" IS 'Selling Agent ID';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SellingAgentOffice" text;
    COMMENT ON COLUMN nneren."Property"."SellingAgentOffice" IS 'Selling Agent Office';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SeparateUtilitiesYN" text;
    COMMENT ON COLUMN nneren."Property"."SeparateUtilitiesYN" IS 'Separate Utilities Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SerialNumber1" text;
    COMMENT ON COLUMN nneren."Property"."SerialNumber1" IS 'Serial Number 1';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Sewer" text[];
    COMMENT ON COLUMN nneren."Property"."Sewer" IS 'Sewer CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ShoreRights" text[];
    COMMENT ON COLUMN nneren."Property"."ShoreRights" IS 'ShoreRights';
     
    ALTER TABLE nneren."Property" ADD COLUMN "ShowTownYN" text;
    COMMENT ON COLUMN nneren."Property"."ShowTownYN" IS 'ShowTownYN';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Signage" text;
    COMMENT ON COLUMN nneren."Property"."Signage" IS 'Sign';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SlipAmenities" text[];
    COMMENT ON COLUMN nneren."Property"."SlipAmenities" IS 'Slip Amenities CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SlipDockNumber" text;
    COMMENT ON COLUMN nneren."Property"."SlipDockNumber" IS 'SlipDockNumber';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SnowExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."SnowExpenses" IS 'Snow Expenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SourceOfMeasurement" text;
    COMMENT ON COLUMN nneren."Property"."SourceOfMeasurement" IS 'Source of Measurement';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Sprinkler" text;
    COMMENT ON COLUMN nneren."Property"."Sprinkler" IS 'Sprinkler';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SqFtFinishedBelowGrade" integer;
    COMMENT ON COLUMN nneren."Property"."SqFtFinishedBelowGrade" IS 'SqFt Finished Below Grade';
     
    ALTER TABLE nneren."Property" ADD COLUMN "StateOrProvince" text;
    COMMENT ON COLUMN nneren."Property"."StateOrProvince" IS 'Address State';
     
    ALTER TABLE nneren."Property" ADD COLUMN "StatusActualNumber" integer;
    COMMENT ON COLUMN nneren."Property"."StatusActualNumber" IS 'Status Actual Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "StreetDirIDX" text;
    COMMENT ON COLUMN nneren."Property"."StreetDirIDX" IS 'StreetDirectionIDX';
     
    ALTER TABLE nneren."Property" ADD COLUMN "StreetNameIDX" text;
    COMMENT ON COLUMN nneren."Property"."StreetNameIDX" IS 'StreetNameIDX';
     
    ALTER TABLE nneren."Property" ADD COLUMN "StreetNumberIDX" text;
    COMMENT ON COLUMN nneren."Property"."StreetNumberIDX" IS 'StreetNumberIDX';
     
    ALTER TABLE nneren."Property" ADD COLUMN "StreetTypeIDX" text;
    COMMENT ON COLUMN nneren."Property"."StreetTypeIDX" IS 'StreetTypeIDX';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Structure" text[];
    COMMENT ON COLUMN nneren."Property"."Structure" IS 'Structure CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Style" text[];
    COMMENT ON COLUMN nneren."Property"."Style" IS 'Style';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SubPropTypCMI" text;
    COMMENT ON COLUMN nneren."Property"."SubPropTypCMI" IS 'Sub Property Type';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SubPropTypCMI2" text;
    COMMENT ON COLUMN nneren."Property"."SubPropTypCMI2" IS '2nd Sub Property Type';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Subdivision" text;
    COMMENT ON COLUMN nneren."Property"."Subdivision" IS 'Address Subdivision Name';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Submarket" text;
    COMMENT ON COLUMN nneren."Property"."Submarket" IS 'Submarket';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SuitableUse" text[];
    COMMENT ON COLUMN nneren."Property"."SuitableUse" IS 'Suitable Use CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SurveyedBy" text;
    COMMENT ON COLUMN nneren."Property"."SurveyedBy" IS 'Surveyed By';
     
    ALTER TABLE nneren."Property" ADD COLUMN "SurveyedYN" text;
    COMMENT ON COLUMN nneren."Property"."SurveyedYN" IS 'Survey Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TaxAmount" decimal;
    COMMENT ON COLUMN nneren."Property"."TaxAmount" IS 'Tax Amount';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TaxBook" text;
    COMMENT ON COLUMN nneren."Property"."TaxBook" IS 'Tax Book';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TaxExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."TaxExpenses" IS 'Tax Expenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TaxIDNumberSpanVT" text;
    COMMENT ON COLUMN nneren."Property"."TaxIDNumberSpanVT" IS 'TaxID#SpanVT';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TaxRate" decimal;
    COMMENT ON COLUMN nneren."Property"."TaxRate" IS 'Tax Rate';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TaxTBD" text;
    COMMENT ON COLUMN nneren."Property"."TaxTBD" IS 'Tax Total Description';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TaxYear" text;
    COMMENT ON COLUMN nneren."Property"."TaxYear" IS 'Tax Year';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TimeshareFractionalOwn" text;
    COMMENT ON COLUMN nneren."Property"."TimeshareFractionalOwn" IS 'Timeshare FractionalOwn';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TimesharePercent" integer;
    COMMENT ON COLUMN nneren."Property"."TimesharePercent" IS 'Timeshare Percent';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Topography" text[];
    COMMENT ON COLUMN nneren."Property"."Topography" IS 'Topography CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TotalAvailableSqft" integer;
    COMMENT ON COLUMN nneren."Property"."TotalAvailableSqft" IS 'Total Available Sqft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TotalBaths" decimal;
    COMMENT ON COLUMN nneren."Property"."TotalBaths" IS 'Total Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TotalLeases" integer;
    COMMENT ON COLUMN nneren."Property"."TotalLeases" IS 'Total Leases';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TotalLots" integer;
    COMMENT ON COLUMN nneren."Property"."TotalLots" IS 'Total Lots';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TotalRooms" integer;
    COMMENT ON COLUMN nneren."Property"."TotalRooms" IS 'TotalRooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TotalUnits" integer;
    COMMENT ON COLUMN nneren."Property"."TotalUnits" IS 'Units';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TrafficCount" integer;
    COMMENT ON COLUMN nneren."Property"."TrafficCount" IS 'Traffic Count';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TransferFee" integer;
    COMMENT ON COLUMN nneren."Property"."TransferFee" IS 'Transfer Fee';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Transport" text[];
    COMMENT ON COLUMN nneren."Property"."Transport" IS 'Transport';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Trash" text[];
    COMMENT ON COLUMN nneren."Property"."Trash" IS 'Trash';
     
    ALTER TABLE nneren."Property" ADD COLUMN "TrashExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."TrashExpenses" IS 'Trash Expenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Type" text[];
    COMMENT ON COLUMN nneren."Property"."Type" IS 'Type';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1AppInclYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit1AppInclYN" IS 'Unit 1 Appl Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1ApxSqft" integer;
    COMMENT ON COLUMN nneren."Property"."Unit1ApxSqft" IS 'Unit 1 Apx Sqft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1Baths" integer;
    COMMENT ON COLUMN nneren."Property"."Unit1Baths" IS 'Unit 1 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit1Bedrooms" IS 'Unit 1 Bedrooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1Deposit" integer;
    COMMENT ON COLUMN nneren."Property"."Unit1Deposit" IS 'Unit 1 Deposit';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1FurnishedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit1FurnishedYN" IS 'Unit 1 Furnished Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1HeatIncludedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit1HeatIncludedYN" IS 'Unit 1 Heat Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1LeaseAgreementYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit1LeaseAgreementYN" IS 'Unit 1 Lease Agreement Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1LeaseTerm" text;
    COMMENT ON COLUMN nneren."Property"."Unit1LeaseTerm" IS 'Unit 1 Lease Term';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1LevelNumber" text;
    COMMENT ON COLUMN nneren."Property"."Unit1LevelNumber" IS 'Unit 1 Level Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1MonthlyRent" integer;
    COMMENT ON COLUMN nneren."Property"."Unit1MonthlyRent" IS 'Unit 1 Monthly Rent';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1Rooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit1Rooms" IS 'Unit 1 Rooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit1Style" text;
    COMMENT ON COLUMN nneren."Property"."Unit1Style" IS 'Unit 1 Style';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2AppInclYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit2AppInclYN" IS 'Unit 2 Appl Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2ApxSqft" integer;
    COMMENT ON COLUMN nneren."Property"."Unit2ApxSqft" IS 'Unit 2 Apx Sqft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2Baths" integer;
    COMMENT ON COLUMN nneren."Property"."Unit2Baths" IS 'Unit 2 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit2Bedrooms" IS 'Unit 2 Bedrooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2Deposit" integer;
    COMMENT ON COLUMN nneren."Property"."Unit2Deposit" IS 'Unit 2 Deposit';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2FurnishedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit2FurnishedYN" IS 'Unit 2 Furnished Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2HeatIncludedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit2HeatIncludedYN" IS 'Unit 2 Heat Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2LeaseAgreementYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit2LeaseAgreementYN" IS 'Unit 2 Lease Agreement Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2LeaseTerm" text;
    COMMENT ON COLUMN nneren."Property"."Unit2LeaseTerm" IS 'Unit 2 Lease Term';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2LevelNumber" text;
    COMMENT ON COLUMN nneren."Property"."Unit2LevelNumber" IS 'Unit 2 Level Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2MonthlyRent" integer;
    COMMENT ON COLUMN nneren."Property"."Unit2MonthlyRent" IS 'Unit 2 Monthly Rent';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2Rooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit2Rooms" IS 'Unit 2 Rooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit2Style" text;
    COMMENT ON COLUMN nneren."Property"."Unit2Style" IS 'Unit 2 Style';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3AppInclYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit3AppInclYN" IS 'Unit 3 Appl Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3ApxSqft" integer;
    COMMENT ON COLUMN nneren."Property"."Unit3ApxSqft" IS 'Unit 3 Apx Sqft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3Baths" integer;
    COMMENT ON COLUMN nneren."Property"."Unit3Baths" IS 'Unit 3 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit3Bedrooms" IS 'Unit 3 Bedrooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3Deposit" integer;
    COMMENT ON COLUMN nneren."Property"."Unit3Deposit" IS 'Unit 3 Deposit';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3FurnishedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit3FurnishedYN" IS 'Unit 3 Furnished Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3HeatIncludedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit3HeatIncludedYN" IS 'Unit 3 Heat Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3LeaseAgreementYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit3LeaseAgreementYN" IS 'Unit 3 Lease Agreement Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3LeaseTerm" text;
    COMMENT ON COLUMN nneren."Property"."Unit3LeaseTerm" IS 'Unit 3 Lease Term';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3LevelNumber" text;
    COMMENT ON COLUMN nneren."Property"."Unit3LevelNumber" IS 'Unit 3 Level Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3MonthlyRent" integer;
    COMMENT ON COLUMN nneren."Property"."Unit3MonthlyRent" IS 'Unit 3 Monthly Rent';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3Rooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit3Rooms" IS 'Unit 3 Rooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit3Style" text;
    COMMENT ON COLUMN nneren."Property"."Unit3Style" IS 'Unit 3 Style';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4AppInclYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit4AppInclYN" IS 'Unit 4 Appl Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4ApxSqft" integer;
    COMMENT ON COLUMN nneren."Property"."Unit4ApxSqft" IS 'Unit 4 Apx Sqft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4Baths" integer;
    COMMENT ON COLUMN nneren."Property"."Unit4Baths" IS 'Unit 4 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit4Bedrooms" IS 'Unit 4 Bedrooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4Deposit" integer;
    COMMENT ON COLUMN nneren."Property"."Unit4Deposit" IS 'Unit 4 Deposit';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4FurnishedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit4FurnishedYN" IS 'Unit 4 Furnished Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4HeatIncludedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit4HeatIncludedYN" IS 'Unit 4 Heat Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4LeaseAgreementYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit4LeaseAgreementYN" IS 'Unit 4 Lease Agreement Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4LeaseTerm" text;
    COMMENT ON COLUMN nneren."Property"."Unit4LeaseTerm" IS 'Unit 4 Lease Term';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4LevelNumber" text;
    COMMENT ON COLUMN nneren."Property"."Unit4LevelNumber" IS 'Unit 4 Level Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4MonthlyRent" integer;
    COMMENT ON COLUMN nneren."Property"."Unit4MonthlyRent" IS 'Unit 4 Monthly Rent';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4Rooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit4Rooms" IS 'Unit 4 Rooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit4Style" text;
    COMMENT ON COLUMN nneren."Property"."Unit4Style" IS 'Unit 4 Style';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5AppInclYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit5AppInclYN" IS 'Unit 5 Appl Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5ApxSqft" integer;
    COMMENT ON COLUMN nneren."Property"."Unit5ApxSqft" IS 'Unit 5 Apx Sqft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5Baths" integer;
    COMMENT ON COLUMN nneren."Property"."Unit5Baths" IS 'Unit 5 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit5Bedrooms" IS 'Unit 5 Bedrooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5FurnishedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit5FurnishedYN" IS 'Unit 5 Furnished Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5HeatIncludedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit5HeatIncludedYN" IS 'Unit 5 Heat Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5LeaseTerm" text;
    COMMENT ON COLUMN nneren."Property"."Unit5LeaseTerm" IS 'Unit5 Lease Term';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5LevelNumber" text;
    COMMENT ON COLUMN nneren."Property"."Unit5LevelNumber" IS 'Unit 5 Level Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5Rooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit5Rooms" IS 'Unit 5 Rooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit5Style" text;
    COMMENT ON COLUMN nneren."Property"."Unit5Style" IS 'Unit 5 Style';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6AppInclYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit6AppInclYN" IS 'Unit 6 Appl Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6ApxSqft" integer;
    COMMENT ON COLUMN nneren."Property"."Unit6ApxSqft" IS 'Unit 6 Apx Sqft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6Baths" integer;
    COMMENT ON COLUMN nneren."Property"."Unit6Baths" IS 'Unit 6 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit6Bedrooms" IS 'Unit 6 Bedrooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6FurnishedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit6FurnishedYN" IS 'Unit 6 Furnished Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6HeatIncludedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit6HeatIncludedYN" IS 'Unit 6 Heat Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6LeaseTerm" text;
    COMMENT ON COLUMN nneren."Property"."Unit6LeaseTerm" IS 'Unit6 Lease Term';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6LevelNumber" text;
    COMMENT ON COLUMN nneren."Property"."Unit6LevelNumber" IS 'Unit 6 Level Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6Rooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit6Rooms" IS 'Unit 6 Rooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit6Style" text;
    COMMENT ON COLUMN nneren."Property"."Unit6Style" IS 'Unit 6 Style';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7AppInclYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit7AppInclYN" IS 'Unit 7 Appl Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7ApxSqft" integer;
    COMMENT ON COLUMN nneren."Property"."Unit7ApxSqft" IS 'Unit 7 Apx Sqft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7Baths" integer;
    COMMENT ON COLUMN nneren."Property"."Unit7Baths" IS 'Unit 7 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit7Bedrooms" IS 'Unit 7 Bedrooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7FurnishedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit7FurnishedYN" IS 'Unit 7 Furnished Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7HeatIncludedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit7HeatIncludedYN" IS 'Unit 7 Heat Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7LeaseTerm" text;
    COMMENT ON COLUMN nneren."Property"."Unit7LeaseTerm" IS 'Unit7 Lease Term';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7LevelNumber" text;
    COMMENT ON COLUMN nneren."Property"."Unit7LevelNumber" IS 'Unit 7 Level Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7Rooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit7Rooms" IS 'Unit 7 Rooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit7Style" text;
    COMMENT ON COLUMN nneren."Property"."Unit7Style" IS 'Unit 7 Style';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8AppInclYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit8AppInclYN" IS 'Unit 8 Appl Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8ApxSqft" integer;
    COMMENT ON COLUMN nneren."Property"."Unit8ApxSqft" IS 'Unit 8 Apx Sqft';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8Baths" integer;
    COMMENT ON COLUMN nneren."Property"."Unit8Baths" IS 'Unit 8 Baths';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8Bedrooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit8Bedrooms" IS 'Unit 8 Bedrooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8FurnishedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit8FurnishedYN" IS 'Unit 8 Furnished Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8HeatIncludedYN" text;
    COMMENT ON COLUMN nneren."Property"."Unit8HeatIncludedYN" IS 'Unit 8 Heat Included';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8LeaseTerm" text;
    COMMENT ON COLUMN nneren."Property"."Unit8LeaseTerm" IS 'Unit8 Lease Term';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8LevelNumber" text;
    COMMENT ON COLUMN nneren."Property"."Unit8LevelNumber" IS 'Unit 8 Level Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8Rooms" integer;
    COMMENT ON COLUMN nneren."Property"."Unit8Rooms" IS 'Unit 8 Rooms';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Unit8Style" text;
    COMMENT ON COLUMN nneren."Property"."Unit8Style" IS 'Unit 8 Style';
     
    ALTER TABLE nneren."Property" ADD COLUMN "UnitInfo" text[];
    COMMENT ON COLUMN nneren."Property"."UnitInfo" IS 'UnitInfo';
     
    ALTER TABLE nneren."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN nneren."Property"."UnitNumber" IS 'Adress Unit Number';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Units1Bedroom" integer;
    COMMENT ON COLUMN nneren."Property"."Units1Bedroom" IS '1 Bedroom Units';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Units2Bedroom" integer;
    COMMENT ON COLUMN nneren."Property"."Units2Bedroom" IS '2 Bedroom Units';
     
    ALTER TABLE nneren."Property" ADD COLUMN "UnitsPerBuilding" integer;
    COMMENT ON COLUMN nneren."Property"."UnitsPerBuilding" IS 'Units per Building';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Utilities" text[];
    COMMENT ON COLUMN nneren."Property"."Utilities" IS 'Utilities CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "UtilitiesExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."UtilitiesExpenses" IS 'Utilities Expenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "UtilityExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."UtilityExpenses" IS 'UtilityExpenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "UtilityRoomLevel" text;
    COMMENT ON COLUMN nneren."Property"."UtilityRoomLevel" IS 'Utility Room Level';
     
    ALTER TABLE nneren."Property" ADD COLUMN "UtilityRoomSize" text;
    COMMENT ON COLUMN nneren."Property"."UtilityRoomSize" IS 'Utility Room Size';
     
    ALTER TABLE nneren."Property" ADD COLUMN "VacancyFactor" integer;
    COMMENT ON COLUMN nneren."Property"."VacancyFactor" IS 'Annual Vacancy Factor';
     
    ALTER TABLE nneren."Property" ADD COLUMN "VillageName" text;
    COMMENT ON COLUMN nneren."Property"."VillageName" IS 'VillageDistrictLocale';
     
    ALTER TABLE nneren."Property" ADD COLUMN "VirtualTourURL" text;
    COMMENT ON COLUMN nneren."Property"."VirtualTourURL" IS 'Virtual Tour URL';
     
    ALTER TABLE nneren."Property" ADD COLUMN "VirtualTourYN" text;
    COMMENT ON COLUMN nneren."Property"."VirtualTourYN" IS 'Virtual Tour Y/N';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Water" text[];
    COMMENT ON COLUMN nneren."Property"."Water" IS 'Water CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "WaterAccessDesc" text;
    COMMENT ON COLUMN nneren."Property"."WaterAccessDesc" IS 'Water Access Description';
     
    ALTER TABLE nneren."Property" ADD COLUMN "WaterBodyName" text;
    COMMENT ON COLUMN nneren."Property"."WaterBodyName" IS 'Water Body Name';
     
    ALTER TABLE nneren."Property" ADD COLUMN "WaterCF" text[];
    COMMENT ON COLUMN nneren."Property"."WaterCF" IS 'Water CF';
     
    ALTER TABLE nneren."Property" ADD COLUMN "WaterExpenses" integer;
    COMMENT ON COLUMN nneren."Property"."WaterExpenses" IS 'Water Expenses';
     
    ALTER TABLE nneren."Property" ADD COLUMN "WaterFrontage" integer;
    COMMENT ON COLUMN nneren."Property"."WaterFrontage" IS 'Water Frontage';
     
    ALTER TABLE nneren."Property" ADD COLUMN "WaterHeater" text[];
    COMMENT ON COLUMN nneren."Property"."WaterHeater" IS 'WaterHeater';
     
    ALTER TABLE nneren."Property" ADD COLUMN "WaterHeaters" integer;
    COMMENT ON COLUMN nneren."Property"."WaterHeaters" IS 'Water Heaters';
     
    ALTER TABLE nneren."Property" ADD COLUMN "WaterRestrictions" text;
    COMMENT ON COLUMN nneren."Property"."WaterRestrictions" IS 'Water Rights';
     
    ALTER TABLE nneren."Property" ADD COLUMN "WaterType" text;
    COMMENT ON COLUMN nneren."Property"."WaterType" IS 'Water Type';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Weeks" integer;
    COMMENT ON COLUMN nneren."Property"."Weeks" IS '# Weeks';
     
    ALTER TABLE nneren."Property" ADD COLUMN "YearAssessed" integer;
    COMMENT ON COLUMN nneren."Property"."YearAssessed" IS 'Year Assessed';
     
    ALTER TABLE nneren."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN nneren."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE nneren."Property" ADD COLUMN "Zoning" text;
    COMMENT ON COLUMN nneren."Property"."Zoning" IS 'Zoning';