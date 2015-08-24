BEGIN;

  CREATE TABLE trend."Property"() INHERITS (property);
    ALTER TABLE trend."Property" ADD COLUMN "AboveGradeIntSQFT" integer;
    COMMENT ON COLUMN trend."Property"."AboveGradeIntSQFT" IS 'AboveGradeIntSQFT';
     
    ALTER TABLE trend."Property" ADD COLUMN "AboveGradeIntSQFTSource" text;
    COMMENT ON COLUMN trend."Property"."AboveGradeIntSQFTSource" IS 'AboveGradeIntSQFTSource';
     
    ALTER TABLE trend."Property" ADD COLUMN "AdditionalIncomeSources" text[];
    COMMENT ON COLUMN trend."Property"."AdditionalIncomeSources" IS 'AdditionalIncomeSources';
     
    ALTER TABLE trend."Property" ADD COLUMN "AdditionalRemarks" text;
    COMMENT ON COLUMN trend."Property"."AdditionalRemarks" IS 'AdditionalRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "AdditionalSaleTerms" text[];
    COMMENT ON COLUMN trend."Property"."AdditionalSaleTerms" IS 'AdditionalSaleTerms';
     
    ALTER TABLE trend."Property" ADD COLUMN "AddressExportAllowed" boolean;
    COMMENT ON COLUMN trend."Property"."AddressExportAllowed" IS 'AddressExportAllowed';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentAddress" text;
    COMMENT ON COLUMN trend."Property"."AltAgentAddress" IS 'AltAgentFullStreetAddress';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentAgentID" text;
    COMMENT ON COLUMN trend."Property"."AltAgentAgentID" IS 'AltAgentAgentID';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentCellPhone" text;
    COMMENT ON COLUMN trend."Property"."AltAgentCellPhone" IS 'AltAgentCellPhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentCellPhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."AltAgentCellPhoneIsPreferred" IS 'AltAgentCellPhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentCityName" text;
    COMMENT ON COLUMN trend."Property"."AltAgentCityName" IS 'AltAgentCityName';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentDirectPhone" text;
    COMMENT ON COLUMN trend."Property"."AltAgentDirectPhone" IS 'AltAgentDirectPhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentDirectPhoneExt" text;
    COMMENT ON COLUMN trend."Property"."AltAgentDirectPhoneExt" IS 'AltAgentDirectPhoneExt';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentDirectPhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."AltAgentDirectPhoneIsPreferred" IS 'AltAgentDirectPhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentDisplayEmailOnRoster" boolean;
    COMMENT ON COLUMN trend."Property"."AltAgentDisplayEmailOnRoster" IS 'AltAgentAgentDisplayEmailOnRoster';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentDisplayHomePhoneOnRoster" boolean;
    COMMENT ON COLUMN trend."Property"."AltAgentDisplayHomePhoneOnRoster" IS 'AltAgentAgentDisplayHomePhoneOnRoster';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentEmail" text;
    COMMENT ON COLUMN trend."Property"."AltAgentEmail" IS 'AltAgentAgentEmail';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentFax" text;
    COMMENT ON COLUMN trend."Property"."AltAgentFax" IS 'AltAgentFax';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentFaxIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."AltAgentFaxIsPreferred" IS 'AltAgentFaxIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentFirstName" text;
    COMMENT ON COLUMN trend."Property"."AltAgentFirstName" IS 'AltAgentAgentFirstName';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentGeneration" text;
    COMMENT ON COLUMN trend."Property"."AltAgentGeneration" IS 'AltAgentAgentGeneration';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentHomePhone" text;
    COMMENT ON COLUMN trend."Property"."AltAgentHomePhone" IS 'AltAgentHomePhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentHomePhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."AltAgentHomePhoneIsPreferred" IS 'AltAgentHomePhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentLastName" text;
    COMMENT ON COLUMN trend."Property"."AltAgentLastName" IS 'AltAgentAgentLastName';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentMiddleInitial" text;
    COMMENT ON COLUMN trend."Property"."AltAgentMiddleInitial" IS 'AltAgentAgentMiddleInitial';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentNickname" text;
    COMMENT ON COLUMN trend."Property"."AltAgentNickname" IS 'AltAgentAgentNickName';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentOfficePhone" text;
    COMMENT ON COLUMN trend."Property"."AltAgentOfficePhone" IS 'AltAgentOfficePhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentOfficePhoneExt" text;
    COMMENT ON COLUMN trend."Property"."AltAgentOfficePhoneExt" IS 'AltAgentOfficePhoneExt';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentOfficePhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."AltAgentOfficePhoneIsPreferred" IS 'AltAgentOfficePhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentPager" text;
    COMMENT ON COLUMN trend."Property"."AltAgentPager" IS 'AltAgentPager';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentPagerIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."AltAgentPagerIsPreferred" IS 'AltAgentPagerIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentPostalCode" text;
    COMMENT ON COLUMN trend."Property"."AltAgentPostalCode" IS 'AltAgentPostalCode';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentPreferredFirstName" text;
    COMMENT ON COLUMN trend."Property"."AltAgentPreferredFirstName" IS 'AltAgentAgentPreferredFirstName';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentPreferredLastName" text;
    COMMENT ON COLUMN trend."Property"."AltAgentPreferredLastName" IS 'AltAgentAgentPreferredLastName';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentState" text;
    COMMENT ON COLUMN trend."Property"."AltAgentState" IS 'AltAgentState';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentTeamFax" text;
    COMMENT ON COLUMN trend."Property"."AltAgentTeamFax" IS 'AltAgentTeamFax';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentTeamPhone" text;
    COMMENT ON COLUMN trend."Property"."AltAgentTeamPhone" IS 'AltAgentTeamPhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentTeamPhoneExt" text;
    COMMENT ON COLUMN trend."Property"."AltAgentTeamPhoneExt" IS 'AltAgentTeamPhoneExt';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentURL" text;
    COMMENT ON COLUMN trend."Property"."AltAgentURL" IS 'AltAgentAgentWWW';
     
    ALTER TABLE trend."Property" ADD COLUMN "AltAgentZip4" text;
    COMMENT ON COLUMN trend."Property"."AltAgentZip4" IS 'AltAgentZip4';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualElectricExpense" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualElectricExpense" IS 'AnnualElectricExpense';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualGrossExpense" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualGrossExpense" IS 'AnnualGrossExpense';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualGrossIncome" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualGrossIncome" IS 'AnnualGrossIncome';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualHeatingExpense" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualHeatingExpense" IS 'AnnualHeatingExpense';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualInsuranceExpense" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualInsuranceExpense" IS 'AnnualInsuranceExpense';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualLeasePrice" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualLeasePrice" IS 'LeasePriceAnnual';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualLeasePricePerSqFt" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualLeasePricePerSqFt" IS 'LeasePriceAnnualperSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualMaintananceExpense" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualMaintananceExpense" IS 'AnnualMaintananceExpense';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualOtherExpense" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualOtherExpense" IS 'AnnualOtherExpense';
     
    ALTER TABLE trend."Property" ADD COLUMN "AnnualWaterSewerExpense" decimal;
    COMMENT ON COLUMN trend."Property"."AnnualWaterSewerExpense" IS 'AnnualWaterSewerExpense';
     
    ALTER TABLE trend."Property" ADD COLUMN "Appliances" text[];
    COMMENT ON COLUMN trend."Property"."Appliances" IS 'Appliances';
     
    ALTER TABLE trend."Property" ADD COLUMN "ApplicationAt" text;
    COMMENT ON COLUMN trend."Property"."ApplicationAt" IS 'ApplicationAt';
     
    ALTER TABLE trend."Property" ADD COLUMN "ApplicationFee" decimal;
    COMMENT ON COLUMN trend."Property"."ApplicationFee" IS 'ApplicationFee';
     
    ALTER TABLE trend."Property" ADD COLUMN "AppointmentPhone" text;
    COMMENT ON COLUMN trend."Property"."AppointmentPhone" IS 'ShowingOfficePhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "AppointmentPhoneType" text;
    COMMENT ON COLUMN trend."Property"."AppointmentPhoneType" IS 'ShowingOfficePhoneType';
     
    ALTER TABLE trend."Property" ADD COLUMN "ApprovedSystem" text[];
    COMMENT ON COLUMN trend."Property"."ApprovedSystem" IS 'ApprovedSystem';
     
    ALTER TABLE trend."Property" ADD COLUMN "AssociationFeePaymentFreq" text;
    COMMENT ON COLUMN trend."Property"."AssociationFeePaymentFreq" IS 'AssociationFeeFrequency';
     
    ALTER TABLE trend."Property" ADD COLUMN "Attics" text[];
    COMMENT ON COLUMN trend."Property"."Attics" IS 'Attics';
     
    ALTER TABLE trend."Property" ADD COLUMN "BackToActiveDate" text;
    COMMENT ON COLUMN trend."Property"."BackToActiveDate" IS 'DateBackToActive';
     
    ALTER TABLE trend."Property" ADD COLUMN "Basement" boolean;
    COMMENT ON COLUMN trend."Property"."Basement" IS 'Basement';
     
    ALTER TABLE trend."Property" ADD COLUMN "BasementFinishedPercent" decimal;
    COMMENT ON COLUMN trend."Property"."BasementFinishedPercent" IS 'BasementFinishedPercent';
     
    ALTER TABLE trend."Property" ADD COLUMN "BasementFootprintPercent" decimal;
    COMMENT ON COLUMN trend."Property"."BasementFootprintPercent" IS 'BasementFootprintPercent';
     
    ALTER TABLE trend."Property" ADD COLUMN "BasementType" text[];
    COMMENT ON COLUMN trend."Property"."BasementType" IS 'BasementType';
     
    ALTER TABLE trend."Property" ADD COLUMN "BasicDaysOnMarket" integer;
    COMMENT ON COLUMN trend."Property"."BasicDaysOnMarket" IS 'BasicDaysOnMarket';
     
    ALTER TABLE trend."Property" ADD COLUMN "Bathrooms" text[];
    COMMENT ON COLUMN trend."Property"."Bathrooms" IS 'Bathrooms';
     
    ALTER TABLE trend."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN trend."Property"."BathsFull" IS 'BathsFull';
     
    ALTER TABLE trend."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN trend."Property"."BathsHalf" IS 'BathsHalf';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomFourth1Length" integer;
    COMMENT ON COLUMN trend."Property"."BedroomFourth1Length" IS 'BedroomFourth1Length';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomFourth1Level" text;
    COMMENT ON COLUMN trend."Property"."BedroomFourth1Level" IS 'BedroomFourth1Level';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomFourth1Width" integer;
    COMMENT ON COLUMN trend."Property"."BedroomFourth1Width" IS 'BedroomFourth1Width';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomMaster1Length" integer;
    COMMENT ON COLUMN trend."Property"."BedroomMaster1Length" IS 'BedroomMaster1Length';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomMaster1Level" text;
    COMMENT ON COLUMN trend."Property"."BedroomMaster1Level" IS 'BedroomMaster1Level';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomMaster1Width" integer;
    COMMENT ON COLUMN trend."Property"."BedroomMaster1Width" IS 'BedroomMaster1Width';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomSecond1Length" integer;
    COMMENT ON COLUMN trend."Property"."BedroomSecond1Length" IS 'BedroomSecond1Length';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomSecond1Level" text;
    COMMENT ON COLUMN trend."Property"."BedroomSecond1Level" IS 'BedroomSecond1Level';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomSecond1Width" integer;
    COMMENT ON COLUMN trend."Property"."BedroomSecond1Width" IS 'BedroomSecond1Width';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomThird1Length" integer;
    COMMENT ON COLUMN trend."Property"."BedroomThird1Length" IS 'BedroomThird1Length';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomThird1Level" text;
    COMMENT ON COLUMN trend."Property"."BedroomThird1Level" IS 'BedroomThird1Level';
     
    ALTER TABLE trend."Property" ADD COLUMN "BedroomThird1Width" integer;
    COMMENT ON COLUMN trend."Property"."BedroomThird1Width" IS 'BedroomThird1Width';
     
    ALTER TABLE trend."Property" ADD COLUMN "Beds" integer;
    COMMENT ON COLUMN trend."Property"."Beds" IS 'Beds';
     
    ALTER TABLE trend."Property" ADD COLUMN "BelowGradeIntSQFT" integer;
    COMMENT ON COLUMN trend."Property"."BelowGradeIntSQFT" IS 'BelowGradeIntSQFT';
     
    ALTER TABLE trend."Property" ADD COLUMN "BelowGradeIntSQFTSource" text[];
    COMMENT ON COLUMN trend."Property"."BelowGradeIntSQFTSource" IS 'BelowGradeIntSQFTSource';
     
    ALTER TABLE trend."Property" ADD COLUMN "BlockOrSquare" text;
    COMMENT ON COLUMN trend."Property"."BlockOrSquare" IS 'BlockOrSquare';
     
    ALTER TABLE trend."Property" ADD COLUMN "BrokerAgentOwnership" boolean;
    COMMENT ON COLUMN trend."Property"."BrokerAgentOwnership" IS 'BrokerAgentOwnership';
     
    ALTER TABLE trend."Property" ADD COLUMN "BrokerRemarks" text;
    COMMENT ON COLUMN trend."Property"."BrokerRemarks" IS 'BrokerRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "BuilderName" text;
    COMMENT ON COLUMN trend."Property"."BuilderName" IS 'BuilderName';
     
    ALTER TABLE trend."Property" ADD COLUMN "BuildingFacadeOrientation" text[];
    COMMENT ON COLUMN trend."Property"."BuildingFacadeOrientation" IS 'BuildingFacadeOrientation';
     
    ALTER TABLE trend."Property" ADD COLUMN "BuildingFeatures" text[];
    COMMENT ON COLUMN trend."Property"."BuildingFeatures" IS 'BuildingFeatures';
     
    ALTER TABLE trend."Property" ADD COLUMN "BuildingFloors" decimal;
    COMMENT ON COLUMN trend."Property"."BuildingFloors" IS 'BuildingFloors';
     
    ALTER TABLE trend."Property" ADD COLUMN "BuildingName" text;
    COMMENT ON COLUMN trend."Property"."BuildingName" IS 'BuildingName';
     
    ALTER TABLE trend."Property" ADD COLUMN "BuildingOrBusiness" text[];
    COMMENT ON COLUMN trend."Property"."BuildingOrBusiness" IS 'BuildingOrBusiness';
     
    ALTER TABLE trend."Property" ADD COLUMN "Buildings" bigint;
    COMMENT ON COLUMN trend."Property"."Buildings" IS 'Buildings';
     
    ALTER TABLE trend."Property" ADD COLUMN "BuyerBrokerCompensation" text;
    COMMENT ON COLUMN trend."Property"."BuyerBrokerCompensation" IS 'Commission';
     
    ALTER TABLE trend."Property" ADD COLUMN "CanSellerTerminateAgreement" boolean;
    COMMENT ON COLUMN trend."Property"."CanSellerTerminateAgreement" IS 'CanSellerTerminateAgreement';
     
    ALTER TABLE trend."Property" ADD COLUMN "CentralAir" boolean;
    COMMENT ON COLUMN trend."Property"."CentralAir" IS 'CentralAir';
     
    ALTER TABLE trend."Property" ADD COLUMN "Certifications" text[];
    COMMENT ON COLUMN trend."Property"."Certifications" IS 'Certifications';
     
    ALTER TABLE trend."Property" ADD COLUMN "CityName" text;
    COMMENT ON COLUMN trend."Property"."CityName" IS 'CityName';
     
    ALTER TABLE trend."Property" ADD COLUMN "CloseDate" text;
    COMMENT ON COLUMN trend."Property"."CloseDate" IS 'SoldDate';
     
    ALTER TABLE trend."Property" ADD COLUMN "ClosePrice" decimal;
    COMMENT ON COLUMN trend."Property"."ClosePrice" IS 'ClosePrice';
     
    ALTER TABLE trend."Property" ADD COLUMN "CommunityFeeIncludes" text[];
    COMMENT ON COLUMN trend."Property"."CommunityFeeIncludes" IS 'CommunityFeeIncludes';
     
    ALTER TABLE trend."Property" ADD COLUMN "CompanyRemarks" text;
    COMMENT ON COLUMN trend."Property"."CompanyRemarks" IS 'CompanyRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "CompensationList" text[];
    COMMENT ON COLUMN trend."Property"."CompensationList" IS 'CompensationList';
     
    ALTER TABLE trend."Property" ADD COLUMN "ConcessionRemarks" text;
    COMMENT ON COLUMN trend."Property"."ConcessionRemarks" IS 'ConcessionRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "ConcessionsValue" decimal;
    COMMENT ON COLUMN trend."Property"."ConcessionsValue" IS 'ConcessionsValue';
     
    ALTER TABLE trend."Property" ADD COLUMN "CondoAssociation" boolean;
    COMMENT ON COLUMN trend."Property"."CondoAssociation" IS 'CondoAssociation';
     
    ALTER TABLE trend."Property" ADD COLUMN "ConfidentialRemarks" text;
    COMMENT ON COLUMN trend."Property"."ConfidentialRemarks" IS 'ConfidentialRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "ContingencyList" text[];
    COMMENT ON COLUMN trend."Property"."ContingencyList" IS 'ContingencyList';
     
    ALTER TABLE trend."Property" ADD COLUMN "ContingencyReason" text;
    COMMENT ON COLUMN trend."Property"."ContingencyReason" IS 'ContingencyReason';
     
    ALTER TABLE trend."Property" ADD COLUMN "ContractsOn" text[];
    COMMENT ON COLUMN trend."Property"."ContractsOn" IS 'ContractsOn';
     
    ALTER TABLE trend."Property" ADD COLUMN "CookingFuel" text[];
    COMMENT ON COLUMN trend."Property"."CookingFuel" IS 'CookingFuel';
     
    ALTER TABLE trend."Property" ADD COLUMN "Cooling" text[];
    COMMENT ON COLUMN trend."Property"."Cooling" IS 'Cooling';
     
    ALTER TABLE trend."Property" ADD COLUMN "County" text;
    COMMENT ON COLUMN trend."Property"."County" IS 'County';
     
    ALTER TABLE trend."Property" ADD COLUMN "CrossStreet" text;
    COMMENT ON COLUMN trend."Property"."CrossStreet" IS 'CrossStreetName';
     
    ALTER TABLE trend."Property" ADD COLUMN "CurrentFinancing" text[];
    COMMENT ON COLUMN trend."Property"."CurrentFinancing" IS 'CurrentFinancing';
     
    ALTER TABLE trend."Property" ADD COLUMN "DateAvailable" text;
    COMMENT ON COLUMN trend."Property"."DateAvailable" IS 'DateAvailable';
     
    ALTER TABLE trend."Property" ADD COLUMN "DateNoShowingBegin" text;
    COMMENT ON COLUMN trend."Property"."DateNoShowingBegin" IS 'DateNoShowingBegin';
     
    ALTER TABLE trend."Property" ADD COLUMN "DateNoShowingEnd" text;
    COMMENT ON COLUMN trend."Property"."DateNoShowingEnd" IS 'DateNoShowingEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Design" text[];
    COMMENT ON COLUMN trend."Property"."Design" IS 'Design';
     
    ALTER TABLE trend."Property" ADD COLUMN "DiningKitchen" text[];
    COMMENT ON COLUMN trend."Property"."DiningKitchen" IS 'DiningKitchen';
     
    ALTER TABLE trend."Property" ADD COLUMN "DiningRoom" boolean;
    COMMENT ON COLUMN trend."Property"."DiningRoom" IS 'DiningRoom';
     
    ALTER TABLE trend."Property" ADD COLUMN "DiningRoomLength" integer;
    COMMENT ON COLUMN trend."Property"."DiningRoomLength" IS 'DiningRoomLength';
     
    ALTER TABLE trend."Property" ADD COLUMN "DiningRoomLevel" text;
    COMMENT ON COLUMN trend."Property"."DiningRoomLevel" IS 'DiningRoomLevel';
     
    ALTER TABLE trend."Property" ADD COLUMN "DiningRoomWidth" integer;
    COMMENT ON COLUMN trend."Property"."DiningRoomWidth" IS 'DiningRoomWidth';
     
    ALTER TABLE trend."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN trend."Property"."Directions" IS 'Directions';
     
    ALTER TABLE trend."Property" ADD COLUMN "DisplayStreetNumber" text;
    COMMENT ON COLUMN trend."Property"."DisplayStreetNumber" IS 'DisplayStreetNumber';
     
    ALTER TABLE trend."Property" ADD COLUMN "Documents" text[];
    COMMENT ON COLUMN trend."Property"."Documents" IS 'Documents';
     
    ALTER TABLE trend."Property" ADD COLUMN "ElectricService" text[];
    COMMENT ON COLUMN trend."Property"."ElectricService" IS 'ElectricService';
     
    ALTER TABLE trend."Property" ADD COLUMN "ElementarySchool" text;
    COMMENT ON COLUMN trend."Property"."ElementarySchool" IS 'ElementarySchool';
     
    ALTER TABLE trend."Property" ADD COLUMN "ElementarySchool2" text;
    COMMENT ON COLUMN trend."Property"."ElementarySchool2" IS 'ElementarySchool2';
     
    ALTER TABLE trend."Property" ADD COLUMN "Entrance" text[];
    COMMENT ON COLUMN trend."Property"."Entrance" IS 'Entrance';
     
    ALTER TABLE trend."Property" ADD COLUMN "ExclusionRemarks" text;
    COMMENT ON COLUMN trend."Property"."ExclusionRemarks" IS 'ExclusionRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "ExpirationDate" text;
    COMMENT ON COLUMN trend."Property"."ExpirationDate" IS 'ExpirationDate';
     
    ALTER TABLE trend."Property" ADD COLUMN "Exterior" text[];
    COMMENT ON COLUMN trend."Property"."Exterior" IS 'Exterior';
     
    ALTER TABLE trend."Property" ADD COLUMN "ExteriorAmenities" text[];
    COMMENT ON COLUMN trend."Property"."ExteriorAmenities" IS 'ExteriorAmenities';
     
    ALTER TABLE trend."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN trend."Property"."ExteriorFeatures" IS 'ExteriorFeatures';
     
    ALTER TABLE trend."Property" ADD COLUMN "ExternalSystemID" text;
    COMMENT ON COLUMN trend."Property"."ExternalSystemID" IS 'ExternalSystemID';
     
    ALTER TABLE trend."Property" ADD COLUMN "ExtraFee" text[];
    COMMENT ON COLUMN trend."Property"."ExtraFee" IS 'ExtraFee';
     
    ALTER TABLE trend."Property" ADD COLUMN "FamilyRoom" boolean;
    COMMENT ON COLUMN trend."Property"."FamilyRoom" IS 'FamilyRoom';
     
    ALTER TABLE trend."Property" ADD COLUMN "FamilyRoomLength" integer;
    COMMENT ON COLUMN trend."Property"."FamilyRoomLength" IS 'FamilyRoomLength';
     
    ALTER TABLE trend."Property" ADD COLUMN "FamilyRoomLevel" text;
    COMMENT ON COLUMN trend."Property"."FamilyRoomLevel" IS 'FamilyRoomLevel';
     
    ALTER TABLE trend."Property" ADD COLUMN "FamilyRoomWidth" integer;
    COMMENT ON COLUMN trend."Property"."FamilyRoomWidth" IS 'FamilyRoomWidth';
     
    ALTER TABLE trend."Property" ADD COLUMN "Farm" boolean;
    COMMENT ON COLUMN trend."Property"."Farm" IS 'Farm';
     
    ALTER TABLE trend."Property" ADD COLUMN "FarmHouse" boolean;
    COMMENT ON COLUMN trend."Property"."FarmHouse" IS 'FarmHouse';
     
    ALTER TABLE trend."Property" ADD COLUMN "FarmUses" text[];
    COMMENT ON COLUMN trend."Property"."FarmUses" IS 'FarmUses';
     
    ALTER TABLE trend."Property" ADD COLUMN "Fencing" text[];
    COMMENT ON COLUMN trend."Property"."Fencing" IS 'Fencing';
     
    ALTER TABLE trend."Property" ADD COLUMN "FinalRentalTerm" integer;
    COMMENT ON COLUMN trend."Property"."FinalRentalTerm" IS 'FinalRentalTerm';
     
    ALTER TABLE trend."Property" ADD COLUMN "FinalSaleTerms" text[];
    COMMENT ON COLUMN trend."Property"."FinalSaleTerms" IS 'FinalSaleTerms';
     
    ALTER TABLE trend."Property" ADD COLUMN "FinancingType" text;
    COMMENT ON COLUMN trend."Property"."FinancingType" IS 'FinancingType';
     
    ALTER TABLE trend."Property" ADD COLUMN "Fireplace" boolean;
    COMMENT ON COLUMN trend."Property"."Fireplace" IS 'Fireplace';
     
    ALTER TABLE trend."Property" ADD COLUMN "FireplaceCount" text[];
    COMMENT ON COLUMN trend."Property"."FireplaceCount" IS 'FireplaceCount';
     
    ALTER TABLE trend."Property" ADD COLUMN "FireplaceFeatures" text[];
    COMMENT ON COLUMN trend."Property"."FireplaceFeatures" IS 'FireplaceFeatures';
     
    ALTER TABLE trend."Property" ADD COLUMN "Floor" text[];
    COMMENT ON COLUMN trend."Property"."Floor" IS 'Floor';
     
    ALTER TABLE trend."Property" ADD COLUMN "ForSale" boolean;
    COMMENT ON COLUMN trend."Property"."ForSale" IS 'ForSale';
     
    ALTER TABLE trend."Property" ADD COLUMN "Foundation" text[];
    COMMENT ON COLUMN trend."Property"."Foundation" IS 'Foundation';
     
    ALTER TABLE trend."Property" ADD COLUMN "FuelOnSite" text[];
    COMMENT ON COLUMN trend."Property"."FuelOnSite" IS 'FuelOnSite';
     
    ALTER TABLE trend."Property" ADD COLUMN "FullStreetAddress" text;
    COMMENT ON COLUMN trend."Property"."FullStreetAddress" IS 'FullStreetAddress';
     
    ALTER TABLE trend."Property" ADD COLUMN "Furnished" text;
    COMMENT ON COLUMN trend."Property"."Furnished" IS 'Furnished';
     
    ALTER TABLE trend."Property" ADD COLUMN "GarageSpaces" text[];
    COMMENT ON COLUMN trend."Property"."GarageSpaces" IS 'GarageSpaces';
     
    ALTER TABLE trend."Property" ADD COLUMN "GarageType" text[];
    COMMENT ON COLUMN trend."Property"."GarageType" IS 'GarageType';
     
    ALTER TABLE trend."Property" ADD COLUMN "GreenRemarks" text;
    COMMENT ON COLUMN trend."Property"."GreenRemarks" IS 'GreenRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "GrossSQFT" decimal;
    COMMENT ON COLUMN trend."Property"."GrossSQFT" IS 'GrossSQFT';
     
    ALTER TABLE trend."Property" ADD COLUMN "HOA" boolean;
    COMMENT ON COLUMN trend."Property"."HOA" IS 'HOA';
     
    ALTER TABLE trend."Property" ADD COLUMN "HOAFee" decimal;
    COMMENT ON COLUMN trend."Property"."HOAFee" IS 'HOAFee';
     
    ALTER TABLE trend."Property" ADD COLUMN "Handicap" text[];
    COMMENT ON COLUMN trend."Property"."Handicap" IS 'Handicap';
     
    ALTER TABLE trend."Property" ADD COLUMN "HasContingency" boolean;
    COMMENT ON COLUMN trend."Property"."HasContingency" IS 'HasContingency';
     
    ALTER TABLE trend."Property" ADD COLUMN "HasGarageFlag" boolean;
    COMMENT ON COLUMN trend."Property"."HasGarageFlag" IS 'HasGarageFlag';
     
    ALTER TABLE trend."Property" ADD COLUMN "Heating" text[];
    COMMENT ON COLUMN trend."Property"."Heating" IS 'Heating';
     
    ALTER TABLE trend."Property" ADD COLUMN "HighSchool" text;
    COMMENT ON COLUMN trend."Property"."HighSchool" IS 'HighSchool';
     
    ALTER TABLE trend."Property" ADD COLUMN "HighSchool2" text;
    COMMENT ON COLUMN trend."Property"."HighSchool2" IS 'HighSchool2';
     
    ALTER TABLE trend."Property" ADD COLUMN "HotWater" text[];
    COMMENT ON COLUMN trend."Property"."HotWater" IS 'HotWater';
     
    ALTER TABLE trend."Property" ADD COLUMN "HousingForOlderPersons" boolean;
    COMMENT ON COLUMN trend."Property"."HousingForOlderPersons" IS 'HousingForOlderPersons';
     
    ALTER TABLE trend."Property" ADD COLUMN "ImprovementAssessmentAmount" decimal;
    COMMENT ON COLUMN trend."Property"."ImprovementAssessmentAmount" IS 'ImprovementAssessmentAmount';
     
    ALTER TABLE trend."Property" ADD COLUMN "ImprovementValue" decimal;
    COMMENT ON COLUMN trend."Property"."ImprovementValue" IS 'ImprovementValue';
     
    ALTER TABLE trend."Property" ADD COLUMN "IncludedInStatisticalAnalysis" boolean;
    COMMENT ON COLUMN trend."Property"."IncludedInStatisticalAnalysis" IS 'IncludedInStatisticalAnalysis';
     
    ALTER TABLE trend."Property" ADD COLUMN "InclusionRemarks" text;
    COMMENT ON COLUMN trend."Property"."InclusionRemarks" IS 'InclusionRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "IncomeExpenseList" text[];
    COMMENT ON COLUMN trend."Property"."IncomeExpenseList" IS 'IncomeExpenseList';
     
    ALTER TABLE trend."Property" ADD COLUMN "InteriorFeatures" text[];
    COMMENT ON COLUMN trend."Property"."InteriorFeatures" IS 'InteriorFeatures';
     
    ALTER TABLE trend."Property" ADD COLUMN "InteriorSquareFeetSource" text;
    COMMENT ON COLUMN trend."Property"."InteriorSquareFeetSource" IS 'InteriorSquareFeetSource';
     
    ALTER TABLE trend."Property" ADD COLUMN "IsTheHomeBuilt" boolean;
    COMMENT ON COLUMN trend."Property"."IsTheHomeBuilt" IS 'IsTheHomeBuilt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Kitchen1Length" integer;
    COMMENT ON COLUMN trend."Property"."Kitchen1Length" IS 'Kitchen1Length';
     
    ALTER TABLE trend."Property" ADD COLUMN "Kitchen1Level" text;
    COMMENT ON COLUMN trend."Property"."Kitchen1Level" IS 'Kitchen1Level';
     
    ALTER TABLE trend."Property" ADD COLUMN "Kitchen1Width" integer;
    COMMENT ON COLUMN trend."Property"."Kitchen1Width" IS 'Kitchen1Width';
     
    ALTER TABLE trend."Property" ADD COLUMN "LandAssessmentAmount" decimal;
    COMMENT ON COLUMN trend."Property"."LandAssessmentAmount" IS 'LandAssessmentAmount';
     
    ALTER TABLE trend."Property" ADD COLUMN "LandOnly" boolean;
    COMMENT ON COLUMN trend."Property"."LandOnly" IS 'LandOnly';
     
    ALTER TABLE trend."Property" ADD COLUMN "LandSqFt" decimal;
    COMMENT ON COLUMN trend."Property"."LandSqFt" IS 'LandSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "LandUse" text[];
    COMMENT ON COLUMN trend."Property"."LandUse" IS 'LandUse';
     
    ALTER TABLE trend."Property" ADD COLUMN "LandUseCode" text;
    COMMENT ON COLUMN trend."Property"."LandUseCode" IS 'LandUseCode';
     
    ALTER TABLE trend."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN trend."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE trend."Property" ADD COLUMN "LaundryRoom" boolean;
    COMMENT ON COLUMN trend."Property"."LaundryRoom" IS 'LaundryRoom';
     
    ALTER TABLE trend."Property" ADD COLUMN "LaundryRoomLength" integer;
    COMMENT ON COLUMN trend."Property"."LaundryRoomLength" IS 'LaundryRoomLength';
     
    ALTER TABLE trend."Property" ADD COLUMN "LaundryRoomLevel" text;
    COMMENT ON COLUMN trend."Property"."LaundryRoomLevel" IS 'LaundryRoomLevel';
     
    ALTER TABLE trend."Property" ADD COLUMN "LaundryRoomWidth" integer;
    COMMENT ON COLUMN trend."Property"."LaundryRoomWidth" IS 'LaundryRoomWidth';
     
    ALTER TABLE trend."Property" ADD COLUMN "LaundryType" text[];
    COMMENT ON COLUMN trend."Property"."LaundryType" IS 'LaundryType';
     
    ALTER TABLE trend."Property" ADD COLUMN "LeasableSQFT" decimal;
    COMMENT ON COLUMN trend."Property"."LeasableSQFT" IS 'LeasableSQFT';
     
    ALTER TABLE trend."Property" ADD COLUMN "LeaseInEffect" boolean;
    COMMENT ON COLUMN trend."Property"."LeaseInEffect" IS 'LeaseInEffect';
     
    ALTER TABLE trend."Property" ADD COLUMN "LeaseType" text[];
    COMMENT ON COLUMN trend."Property"."LeaseType" IS 'LeaseType';
     
    ALTER TABLE trend."Property" ADD COLUMN "LeasedUnits" bigint;
    COMMENT ON COLUMN trend."Property"."LeasedUnits" IS 'LeasedUnitCount';
     
    ALTER TABLE trend."Property" ADD COLUMN "LimitedService" boolean;
    COMMENT ON COLUMN trend."Property"."LimitedService" IS 'LimitedService';
     
    ALTER TABLE trend."Property" ADD COLUMN "LisMediaList" text[];
    COMMENT ON COLUMN trend."Property"."LisMediaList" IS 'LisMediaList';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentAddress" text;
    COMMENT ON COLUMN trend."Property"."ListAgentAddress" IS 'ListAgentFullStreetAddress';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentAddressAdditionalInfo" text;
    COMMENT ON COLUMN trend."Property"."ListAgentAddressAdditionalInfo" IS 'ListAgentAddressAdditionalInfo';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentAgentID" text;
    COMMENT ON COLUMN trend."Property"."ListAgentAgentID" IS 'ListAgentAgentID';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentCellPhone" text;
    COMMENT ON COLUMN trend."Property"."ListAgentCellPhone" IS 'ListAgentCellPhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentCellPhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."ListAgentCellPhoneIsPreferred" IS 'ListAgentCellPhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentCityName" text;
    COMMENT ON COLUMN trend."Property"."ListAgentCityName" IS 'ListAgentCityName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentDirectPhone" text;
    COMMENT ON COLUMN trend."Property"."ListAgentDirectPhone" IS 'ListAgentDirectPhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentDirectPhoneExt" text;
    COMMENT ON COLUMN trend."Property"."ListAgentDirectPhoneExt" IS 'ListAgentDirectPhoneExt';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentDirectPhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."ListAgentDirectPhoneIsPreferred" IS 'ListAgentDirectPhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentDisplayEmailOnRoster" boolean;
    COMMENT ON COLUMN trend."Property"."ListAgentDisplayEmailOnRoster" IS 'ListAgentAgentDisplayEmailOnRoster';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentDisplayHomePhoneOnRoster" boolean;
    COMMENT ON COLUMN trend."Property"."ListAgentDisplayHomePhoneOnRoster" IS 'ListAgentAgentDisplayHomePhoneOnRoster';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentEmail" text;
    COMMENT ON COLUMN trend."Property"."ListAgentEmail" IS 'ListAgentAgentEmail';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentFax" text;
    COMMENT ON COLUMN trend."Property"."ListAgentFax" IS 'ListAgentFax';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentFaxIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."ListAgentFaxIsPreferred" IS 'ListAgentFaxIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentFirstName" text;
    COMMENT ON COLUMN trend."Property"."ListAgentFirstName" IS 'ListAgentAgentFirstName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentGeneration" text;
    COMMENT ON COLUMN trend."Property"."ListAgentGeneration" IS 'ListAgentAgentGeneration';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentHomePhone" text;
    COMMENT ON COLUMN trend."Property"."ListAgentHomePhone" IS 'ListAgentHomePhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentHomePhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."ListAgentHomePhoneIsPreferred" IS 'ListAgentHomePhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentLastName" text;
    COMMENT ON COLUMN trend."Property"."ListAgentLastName" IS 'ListAgentAgentLastName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentMiddleInitial" text;
    COMMENT ON COLUMN trend."Property"."ListAgentMiddleInitial" IS 'ListAgentAgentMiddleInitial';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentNickname" text;
    COMMENT ON COLUMN trend."Property"."ListAgentNickname" IS 'ListAgentAgentNickName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentOfficePhone" text;
    COMMENT ON COLUMN trend."Property"."ListAgentOfficePhone" IS 'ListAgentOfficePhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentOfficePhoneExt" text;
    COMMENT ON COLUMN trend."Property"."ListAgentOfficePhoneExt" IS 'ListAgentOfficePhoneExt';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentOfficePhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."ListAgentOfficePhoneIsPreferred" IS 'ListAgentOfficePhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentPager" text;
    COMMENT ON COLUMN trend."Property"."ListAgentPager" IS 'ListAgentPager';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentPagerIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."ListAgentPagerIsPreferred" IS 'ListAgentPagerIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentPostalCode" text;
    COMMENT ON COLUMN trend."Property"."ListAgentPostalCode" IS 'ListAgentPostalCode';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentPreferredFirstName" text;
    COMMENT ON COLUMN trend."Property"."ListAgentPreferredFirstName" IS 'ListAgentAgentPreferredFirstName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentPreferredLastName" text;
    COMMENT ON COLUMN trend."Property"."ListAgentPreferredLastName" IS 'ListAgentAgentPreferredLastName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentState" text;
    COMMENT ON COLUMN trend."Property"."ListAgentState" IS 'ListAgentState';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentTeamFax" text;
    COMMENT ON COLUMN trend."Property"."ListAgentTeamFax" IS 'ListAgentTeamFax';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentTeamPhone" text;
    COMMENT ON COLUMN trend."Property"."ListAgentTeamPhone" IS 'ListAgentTeamPhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentTeamPhoneExt" text;
    COMMENT ON COLUMN trend."Property"."ListAgentTeamPhoneExt" IS 'ListAgentTeamPhoneExt';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentURL" text;
    COMMENT ON COLUMN trend."Property"."ListAgentURL" IS 'ListAgentAgentWWW';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListAgentZip4" text;
    COMMENT ON COLUMN trend."Property"."ListAgentZip4" IS 'ListAgentZip4';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListDate" text;
    COMMENT ON COLUMN trend."Property"."ListDate" IS 'ListDate';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeAddress" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeAddress" IS 'ListOfficeFullStreetAddress';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeAddressAdditionalInfo" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeAddressAdditionalInfo" IS 'ListOfficeAddressAdditionalInfo';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeCityName" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeCityName" IS 'ListOfficeCityName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeCode" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeCode" IS 'ListOfficeCode';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeCounty" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeCounty" IS 'ListOfficeCounty';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeEmail" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeEmail" IS 'ListOfficeEmail';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeFax" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeFax" IS 'ListOfficeFax';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeFranchise" boolean;
    COMMENT ON COLUMN trend."Property"."ListOfficeFranchise" IS 'ListOfficesFranchise';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeFullOfficeName" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeFullOfficeName" IS 'ListOfficeFullOfficeName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeManager" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeManager" IS 'ListOfficeManager';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeName" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeName" IS 'ListOfficeName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeOfficeID" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeOfficeID" IS 'ListOfficeOfficeID';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeOfficePhone" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeOfficePhone" IS 'ListOfficeListOfficePhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficePostalCode" text;
    COMMENT ON COLUMN trend."Property"."ListOfficePostalCode" IS 'ListOfficePostalCode';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeResponsibleMember" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeResponsibleMember" IS 'ListOfficeResponsibleMember';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeSecondOfficePhone" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeSecondOfficePhone" IS 'ListOfficeListOfficePhone2';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeState" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeState" IS 'ListOfficeState';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeStatus" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeStatus" IS 'ListOfficeStatus';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeURL" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeURL" IS 'ListOfficeWWW';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListOfficeZip4" text;
    COMMENT ON COLUMN trend."Property"."ListOfficeZip4" IS 'ListOfficeZip4';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListPrice" decimal;
    COMMENT ON COLUMN trend."Property"."ListPrice" IS 'ListPrice';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingAgreementType" text[];
    COMMENT ON COLUMN trend."Property"."ListingAgreementType" IS 'ListingAgreementType';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingArea" text;
    COMMENT ON COLUMN trend."Property"."ListingArea" IS 'ListingArea';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingAreaID" text;
    COMMENT ON COLUMN trend."Property"."ListingAreaID" IS 'ListingAreaID';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingBrokerBonus" text;
    COMMENT ON COLUMN trend."Property"."ListingBrokerBonus" IS 'ListingBrokerBonus';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingID" text;
    COMMENT ON COLUMN trend."Property"."ListingID" IS 'ListingID';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingKey" bigint PRIMARY KEY;
    COMMENT ON COLUMN trend."Property"."ListingKey" IS 'ListingKey';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingParcelNumber" text;
    COMMENT ON COLUMN trend."Property"."ListingParcelNumber" IS 'ListingParcelNumber';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingPriorPrice" decimal;
    COMMENT ON COLUMN trend."Property"."ListingPriorPrice" IS 'PriceBeforeSale';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingStatus" text;
    COMMENT ON COLUMN trend."Property"."ListingStatus" IS 'ListingStatus';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingStatusModifier" text;
    COMMENT ON COLUMN trend."Property"."ListingStatusModifier" IS 'ListingStatusModifier';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingSubscriptionClassList" text[];
    COMMENT ON COLUMN trend."Property"."ListingSubscriptionClassList" IS 'ListingSubscriptionClassList';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingSubscriptionList" text[];
    COMMENT ON COLUMN trend."Property"."ListingSubscriptionList" IS 'ListingSubscriptionList';
     
    ALTER TABLE trend."Property" ADD COLUMN "ListingTaxID" text;
    COMMENT ON COLUMN trend."Property"."ListingTaxID" IS 'ListingTaxID';
     
    ALTER TABLE trend."Property" ADD COLUMN "LivingRoomLength" integer;
    COMMENT ON COLUMN trend."Property"."LivingRoomLength" IS 'LivingRoomLength';
     
    ALTER TABLE trend."Property" ADD COLUMN "LivingRoomLevel" text;
    COMMENT ON COLUMN trend."Property"."LivingRoomLevel" IS 'LivingRoomLevel';
     
    ALTER TABLE trend."Property" ADD COLUMN "LivingRoomWidth" integer;
    COMMENT ON COLUMN trend."Property"."LivingRoomWidth" IS 'LivingRoomWidth';
     
    ALTER TABLE trend."Property" ADD COLUMN "Load" text[];
    COMMENT ON COLUMN trend."Property"."Load" IS 'Load';
     
    ALTER TABLE trend."Property" ADD COLUMN "LoanList" text[];
    COMMENT ON COLUMN trend."Property"."LoanList" IS 'LoanList';
     
    ALTER TABLE trend."Property" ADD COLUMN "LocaleListingStatus" text;
    COMMENT ON COLUMN trend."Property"."LocaleListingStatus" IS 'LocaleListingStatus';
     
    ALTER TABLE trend."Property" ADD COLUMN "Location" text[];
    COMMENT ON COLUMN trend."Property"."Location" IS 'Location';
     
    ALTER TABLE trend."Property" ADD COLUMN "LocationTypes" text[];
    COMMENT ON COLUMN trend."Property"."LocationTypes" IS 'LocationTypes';
     
    ALTER TABLE trend."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN trend."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE trend."Property" ADD COLUMN "LotAreaAcre" decimal;
    COMMENT ON COLUMN trend."Property"."LotAreaAcre" IS 'LotAreaAcre';
     
    ALTER TABLE trend."Property" ADD COLUMN "LotDescription" text[];
    COMMENT ON COLUMN trend."Property"."LotDescription" IS 'LotDescription';
     
    ALTER TABLE trend."Property" ADD COLUMN "LotDimDepth" bigint;
    COMMENT ON COLUMN trend."Property"."LotDimDepth" IS 'LotDimDepth';
     
    ALTER TABLE trend."Property" ADD COLUMN "LotDimWidth" bigint;
    COMMENT ON COLUMN trend."Property"."LotDimWidth" IS 'LotDimWidth';
     
    ALTER TABLE trend."Property" ADD COLUMN "LotDimensions" text;
    COMMENT ON COLUMN trend."Property"."LotDimensions" IS 'LotDimensions';
     
    ALTER TABLE trend."Property" ADD COLUMN "LotImprovement" text[];
    COMMENT ON COLUMN trend."Property"."LotImprovement" IS 'LotImprovement';
     
    ALTER TABLE trend."Property" ADD COLUMN "LotNumber" text;
    COMMENT ON COLUMN trend."Property"."LotNumber" IS 'LotNumber';
     
    ALTER TABLE trend."Property" ADD COLUMN "LowerFloor1Baths" integer;
    COMMENT ON COLUMN trend."Property"."LowerFloor1Baths" IS 'LowerFloor1Baths';
     
    ALTER TABLE trend."Property" ADD COLUMN "LowerFloor1HalfBaths" integer;
    COMMENT ON COLUMN trend."Property"."LowerFloor1HalfBaths" IS 'LowerFloor1HalfBaths';
     
    ALTER TABLE trend."Property" ADD COLUMN "MainBedroom" text[];
    COMMENT ON COLUMN trend."Property"."MainBedroom" IS 'MainBedroom';
     
    ALTER TABLE trend."Property" ADD COLUMN "MainEntrance" text[];
    COMMENT ON COLUMN trend."Property"."MainEntrance" IS 'MainEntrance';
     
    ALTER TABLE trend."Property" ADD COLUMN "MainFloorBaths" integer;
    COMMENT ON COLUMN trend."Property"."MainFloorBaths" IS 'MainFloorBaths';
     
    ALTER TABLE trend."Property" ADD COLUMN "MainFloorHalfBaths" integer;
    COMMENT ON COLUMN trend."Property"."MainFloorHalfBaths" IS 'MainFloorHalfBaths';
     
    ALTER TABLE trend."Property" ADD COLUMN "MapCoordinate" text;
    COMMENT ON COLUMN trend."Property"."MapCoordinate" IS 'MapCoordinate';
     
    ALTER TABLE trend."Property" ADD COLUMN "MapCreationDate" text;
    COMMENT ON COLUMN trend."Property"."MapCreationDate" IS 'DateMapCreated';
     
    ALTER TABLE trend."Property" ADD COLUMN "MapLocationList" text[];
    COMMENT ON COLUMN trend."Property"."MapLocationList" IS 'MapLocationList';
     
    ALTER TABLE trend."Property" ADD COLUMN "MapPrecision" bigint;
    COMMENT ON COLUMN trend."Property"."MapPrecision" IS 'MapPrecision';
     
    ALTER TABLE trend."Property" ADD COLUMN "MapStatus" text;
    COMMENT ON COLUMN trend."Property"."MapStatus" IS 'MapStatus';
     
    ALTER TABLE trend."Property" ADD COLUMN "MaxFloorPlanTms" text;
    COMMENT ON COLUMN trend."Property"."MaxFloorPlanTms" IS 'MaxFloorPlanTms';
     
    ALTER TABLE trend."Property" ADD COLUMN "MaxLease" integer;
    COMMENT ON COLUMN trend."Property"."MaxLease" IS 'MaxLease';
     
    ALTER TABLE trend."Property" ADD COLUMN "MaxPhotoTms" text;
    COMMENT ON COLUMN trend."Property"."MaxPhotoTms" IS 'MaxPhotoTms';
     
    ALTER TABLE trend."Property" ADD COLUMN "MiddleSchool" text;
    COMMENT ON COLUMN trend."Property"."MiddleSchool" IS 'MiddleSchool';
     
    ALTER TABLE trend."Property" ADD COLUMN "MiddleSchool2" text;
    COMMENT ON COLUMN trend."Property"."MiddleSchool2" IS 'MiddleSchool2';
     
    ALTER TABLE trend."Property" ADD COLUMN "MinLease" integer;
    COMMENT ON COLUMN trend."Property"."MinLease" IS 'MinLease';
     
    ALTER TABLE trend."Property" ADD COLUMN "ModelName" text;
    COMMENT ON COLUMN trend."Property"."ModelName" IS 'ModelName';
     
    ALTER TABLE trend."Property" ADD COLUMN "ModificationTimestamp" text;
    COMMENT ON COLUMN trend."Property"."ModificationTimestamp" IS 'ModificationTimestamp';
     
    ALTER TABLE trend."Property" ADD COLUMN "MonthsRentUpFront" decimal;
    COMMENT ON COLUMN trend."Property"."MonthsRentUpFront" IS 'MonthsRentUpFront';
     
    ALTER TABLE trend."Property" ADD COLUMN "NetSQFT" decimal;
    COMMENT ON COLUMN trend."Property"."NetSQFT" IS 'NetSQFT';
     
    ALTER TABLE trend."Property" ADD COLUMN "NewConstruction" boolean;
    COMMENT ON COLUMN trend."Property"."NewConstruction" IS 'NewConstruction';
     
    ALTER TABLE trend."Property" ADD COLUMN "OffMarketDate" text;
    COMMENT ON COLUMN trend."Property"."OffMarketDate" IS 'OffMarketDate';
     
    ALTER TABLE trend."Property" ADD COLUMN "OneBedroomUnits" bigint;
    COMMENT ON COLUMN trend."Property"."OneBedroomUnits" IS 'OneBedroomUnits';
     
    ALTER TABLE trend."Property" ADD COLUMN "OneTimeFee" decimal;
    COMMENT ON COLUMN trend."Property"."OneTimeFee" IS 'OneTimeFee';
     
    ALTER TABLE trend."Property" ADD COLUMN "OpenHouseList" text[];
    COMMENT ON COLUMN trend."Property"."OpenHouseList" IS 'OpenHouseList';
     
    ALTER TABLE trend."Property" ADD COLUMN "OriginalListPrice" decimal;
    COMMENT ON COLUMN trend."Property"."OriginalListPrice" IS 'OriginalListPrice';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm1Length" integer;
    COMMENT ON COLUMN trend."Property"."OtherRm1Length" IS 'OtherRm1Length';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm1Level" text;
    COMMENT ON COLUMN trend."Property"."OtherRm1Level" IS 'OtherRm1Level';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm1Name" text;
    COMMENT ON COLUMN trend."Property"."OtherRm1Name" IS 'OtherRm1Name';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm1Width" integer;
    COMMENT ON COLUMN trend."Property"."OtherRm1Width" IS 'OtherRm1Width';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm2Length" integer;
    COMMENT ON COLUMN trend."Property"."OtherRm2Length" IS 'OtherRm2Length';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm2Level" text;
    COMMENT ON COLUMN trend."Property"."OtherRm2Level" IS 'OtherRm2Level';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm2Name" text;
    COMMENT ON COLUMN trend."Property"."OtherRm2Name" IS 'OtherRm2Name';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm2Width" integer;
    COMMENT ON COLUMN trend."Property"."OtherRm2Width" IS 'OtherRm2Width';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm3Length" integer;
    COMMENT ON COLUMN trend."Property"."OtherRm3Length" IS 'OtherRm3Length';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm3Level" text;
    COMMENT ON COLUMN trend."Property"."OtherRm3Level" IS 'OtherRm3Level';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm3Name" text;
    COMMENT ON COLUMN trend."Property"."OtherRm3Name" IS 'OtherRm3Name';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm3Width" integer;
    COMMENT ON COLUMN trend."Property"."OtherRm3Width" IS 'OtherRm3Width';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm4Length" integer;
    COMMENT ON COLUMN trend."Property"."OtherRm4Length" IS 'OtherRm4Length';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm4Level" text;
    COMMENT ON COLUMN trend."Property"."OtherRm4Level" IS 'OtherRm4Level';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm4Name" text;
    COMMENT ON COLUMN trend."Property"."OtherRm4Name" IS 'OtherRm4Name';
     
    ALTER TABLE trend."Property" ADD COLUMN "OtherRm4Width" integer;
    COMMENT ON COLUMN trend."Property"."OtherRm4Width" IS 'OtherRm4Width';
     
    ALTER TABLE trend."Property" ADD COLUMN "OwnerName" text;
    COMMENT ON COLUMN trend."Property"."OwnerName" IS 'OwnerName';
     
    ALTER TABLE trend."Property" ADD COLUMN "Ownership" text;
    COMMENT ON COLUMN trend."Property"."Ownership" IS 'Ownership';
     
    ALTER TABLE trend."Property" ADD COLUMN "PMP" integer;
    COMMENT ON COLUMN trend."Property"."PMP" IS 'PMP';
     
    ALTER TABLE trend."Property" ADD COLUMN "ParcelCurrentListing" boolean;
    COMMENT ON COLUMN trend."Property"."ParcelCurrentListing" IS 'ParcelCurrentListing';
     
    ALTER TABLE trend."Property" ADD COLUMN "Parking" text[];
    COMMENT ON COLUMN trend."Property"."Parking" IS 'Parking';
     
    ALTER TABLE trend."Property" ADD COLUMN "PendingDate" text;
    COMMENT ON COLUMN trend."Property"."PendingDate" IS 'PendingDate';
     
    ALTER TABLE trend."Property" ADD COLUMN "PendingPrice" decimal;
    COMMENT ON COLUMN trend."Property"."PendingPrice" IS 'PendingPrice';
     
    ALTER TABLE trend."Property" ADD COLUMN "PetDeposit" decimal;
    COMMENT ON COLUMN trend."Property"."PetDeposit" IS 'PetDeposit';
     
    ALTER TABLE trend."Property" ADD COLUMN "PetRestrictions" text;
    COMMENT ON COLUMN trend."Property"."PetRestrictions" IS 'PetRestrictions';
     
    ALTER TABLE trend."Property" ADD COLUMN "PetsAllowed" text;
    COMMENT ON COLUMN trend."Property"."PetsAllowed" IS 'PetsAllowedList';
     
    ALTER TABLE trend."Property" ADD COLUMN "PhotoOption" text;
    COMMENT ON COLUMN trend."Property"."PhotoOption" IS 'PhotoOption';
     
    ALTER TABLE trend."Property" ADD COLUMN "Plumbing" text[];
    COMMENT ON COLUMN trend."Property"."Plumbing" IS 'Plumbing';
     
    ALTER TABLE trend."Property" ADD COLUMN "Pool" text;
    COMMENT ON COLUMN trend."Property"."Pool" IS 'SwimmingPool';
     
    ALTER TABLE trend."Property" ADD COLUMN "PoolType" text[];
    COMMENT ON COLUMN trend."Property"."PoolType" IS 'PoolType';
     
    ALTER TABLE trend."Property" ADD COLUMN "PorchDeck" text[];
    COMMENT ON COLUMN trend."Property"."PorchDeck" IS 'PorchDeck';
     
    ALTER TABLE trend."Property" ADD COLUMN "Possession" text[];
    COMMENT ON COLUMN trend."Property"."Possession" IS 'Possession';
     
    ALTER TABLE trend."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN trend."Property"."PostalCode" IS 'PostalCode';
     
    ALTER TABLE trend."Property" ADD COLUMN "PriceChangeDate" text;
    COMMENT ON COLUMN trend."Property"."PriceChangeDate" IS 'PriceChangedDate';
     
    ALTER TABLE trend."Property" ADD COLUMN "PricePerSqFt" decimal;
    COMMENT ON COLUMN trend."Property"."PricePerSqFt" IS 'PricePerSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "PrimaryObjectModificationTimestamp" text;
    COMMENT ON COLUMN trend."Property"."PrimaryObjectModificationTimestamp" IS 'PrimaryObjectModificationTimestamp';
     
    ALTER TABLE trend."Property" ADD COLUMN "ProfessionalRelationshipList" text[];
    COMMENT ON COLUMN trend."Property"."ProfessionalRelationshipList" IS 'ProfessionalRelationshipList';
     
    ALTER TABLE trend."Property" ADD COLUMN "PropertyAge" bigint;
    COMMENT ON COLUMN trend."Property"."PropertyAge" IS 'PropertyAge';
     
    ALTER TABLE trend."Property" ADD COLUMN "PropertyCondition" text[];
    COMMENT ON COLUMN trend."Property"."PropertyCondition" IS 'PropertyCondition';
     
    ALTER TABLE trend."Property" ADD COLUMN "PropertyDisclosure" boolean;
    COMMENT ON COLUMN trend."Property"."PropertyDisclosure" IS 'PropertyDisclosure';
     
    ALTER TABLE trend."Property" ADD COLUMN "PropertyOption" text;
    COMMENT ON COLUMN trend."Property"."PropertyOption" IS 'PropertyOption';
     
    ALTER TABLE trend."Property" ADD COLUMN "PropertyRelationshipList" text[];
    COMMENT ON COLUMN trend."Property"."PropertyRelationshipList" IS 'PropertyRelationshipList';
     
    ALTER TABLE trend."Property" ADD COLUMN "PropertySubdivision" text[];
    COMMENT ON COLUMN trend."Property"."PropertySubdivision" IS 'PropertySubdivision';
     
    ALTER TABLE trend."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN trend."Property"."PropertyType" IS 'PropertyType';
     
    ALTER TABLE trend."Property" ADD COLUMN "ProspectsExcluded" boolean;
    COMMENT ON COLUMN trend."Property"."ProspectsExcluded" IS 'ProspectsExcluded';
     
    ALTER TABLE trend."Property" ADD COLUMN "PurchaseOptional" boolean;
    COMMENT ON COLUMN trend."Property"."PurchaseOptional" IS 'PurchaseOptional';
     
    ALTER TABLE trend."Property" ADD COLUMN "RFactorCeilings" text;
    COMMENT ON COLUMN trend."Property"."RFactorCeilings" IS 'RFactorCeilings';
     
    ALTER TABLE trend."Property" ADD COLUMN "RFactorWalls" text;
    COMMENT ON COLUMN trend."Property"."RFactorWalls" IS 'RFactorWalls';
     
    ALTER TABLE trend."Property" ADD COLUMN "RelistedToListingID" text;
    COMMENT ON COLUMN trend."Property"."RelistedToListingID" IS 'RelistedToListingID';
     
    ALTER TABLE trend."Property" ADD COLUMN "Remarks" text;
    COMMENT ON COLUMN trend."Property"."Remarks" IS 'Remarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "RentIncludes" text[];
    COMMENT ON COLUMN trend."Property"."RentIncludes" IS 'RentIncludes';
     
    ALTER TABLE trend."Property" ADD COLUMN "RestrictionEasements" text[];
    COMMENT ON COLUMN trend."Property"."RestrictionEasements" IS 'RestrictionEasements';
     
    ALTER TABLE trend."Property" ADD COLUMN "Roads" text[];
    COMMENT ON COLUMN trend."Property"."Roads" IS 'Roads';
     
    ALTER TABLE trend."Property" ADD COLUMN "Roof" text[];
    COMMENT ON COLUMN trend."Property"."Roof" IS 'Roof';
     
    ALTER TABLE trend."Property" ADD COLUMN "RoomList" text[];
    COMMENT ON COLUMN trend."Property"."RoomList" IS 'RoomList';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentAddress" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentAddress" IS 'SaleAgentFullStreetAddress';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentAddressAdditionalInfo" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentAddressAdditionalInfo" IS 'SaleAgentAddressAdditionalInfo';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentAgentID" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentAgentID" IS 'SaleAgentAgentID';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentCellPhone" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentCellPhone" IS 'SaleAgentCellPhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentCellPhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."SaleAgentCellPhoneIsPreferred" IS 'SaleAgentCellPhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentCityName" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentCityName" IS 'SaleAgentCityName';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentDirectPhone" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentDirectPhone" IS 'SaleAgentDirectPhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentDirectPhoneExt" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentDirectPhoneExt" IS 'SaleAgentDirectPhoneExt';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentDirectPhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."SaleAgentDirectPhoneIsPreferred" IS 'SaleAgentDirectPhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentDisplayEmailOnRoster" boolean;
    COMMENT ON COLUMN trend."Property"."SaleAgentDisplayEmailOnRoster" IS 'SaleAgentAgentDisplayEmailOnRoster';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentDisplayHomePhoneOnRoster" boolean;
    COMMENT ON COLUMN trend."Property"."SaleAgentDisplayHomePhoneOnRoster" IS 'SaleAgentAgentDisplayHomePhoneOnRoster';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentEmail" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentEmail" IS 'SaleAgentAgentEmail';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentFax" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentFax" IS 'SaleAgentFax';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentFaxIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."SaleAgentFaxIsPreferred" IS 'SaleAgentFaxIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentFirstName" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentFirstName" IS 'SaleAgentAgentFirstName';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentGeneration" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentGeneration" IS 'SaleAgentAgentGeneration';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentHomePhone" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentHomePhone" IS 'SaleAgentHomePhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentHomePhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."SaleAgentHomePhoneIsPreferred" IS 'SaleAgentHomePhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentLastName" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentLastName" IS 'SaleAgentAgentLastName';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentMiddleInitial" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentMiddleInitial" IS 'SaleAgentAgentMiddleInitial';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentNickName" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentNickName" IS 'SaleAgentAgentNickName';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentOfficePhone" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentOfficePhone" IS 'SaleAgentOfficePhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentOfficePhoneExt" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentOfficePhoneExt" IS 'SaleAgentOfficePhoneExt';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentOfficePhoneIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."SaleAgentOfficePhoneIsPreferred" IS 'SaleAgentOfficePhoneIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentPager" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentPager" IS 'SaleAgentPager';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentPagerIsPreferred" boolean;
    COMMENT ON COLUMN trend."Property"."SaleAgentPagerIsPreferred" IS 'SaleAgentPagerIsPreferred';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentPostalCode" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentPostalCode" IS 'SaleAgentPostalCode';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentPreferredFirstName" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentPreferredFirstName" IS 'SaleAgentAgentPreferredFirstName';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentPreferredLastName" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentPreferredLastName" IS 'SaleAgentAgentPreferredLastName';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentState" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentState" IS 'SaleAgentState';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentTeamFax" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentTeamFax" IS 'SaleAgentTeamFax';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentTeamPhone" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentTeamPhone" IS 'SaleAgentTeamPhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentTeamPhoneExt" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentTeamPhoneExt" IS 'SaleAgentTeamPhoneExt';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentURL" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentURL" IS 'SaleAgentAgentWWW';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleAgentZip4" text;
    COMMENT ON COLUMN trend."Property"."SaleAgentZip4" IS 'SaleAgentZip4';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleIncludes" text[];
    COMMENT ON COLUMN trend."Property"."SaleIncludes" IS 'SaleIncludes';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeAddress" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeAddress" IS 'SaleOfficeFullStreetAddress';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeAddressAdditionalInfo" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeAddressAdditionalInfo" IS 'SaleOfficeAddressAdditionalInfo';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeCityName" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeCityName" IS 'SaleOfficeCityName';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeCode" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeCode" IS 'SaleOfficeCode';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeCounty" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeCounty" IS 'SaleOfficeCounty';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeEmail" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeEmail" IS 'SaleOfficeEmail';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeFax" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeFax" IS 'SaleOfficeFax';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeFranchise" boolean;
    COMMENT ON COLUMN trend."Property"."SaleOfficeFranchise" IS 'SaleOfficesFranchise';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeFullOfficeName" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeFullOfficeName" IS 'SaleOfficeFullOfficeName';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeManager" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeManager" IS 'SaleOfficeManager';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeName" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeName" IS 'SaleOfficeName';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeOfficeID" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeOfficeID" IS 'SaleOfficeOfficeID';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeOfficePhone" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeOfficePhone" IS 'SaleOfficeSaleOfficePhone';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficePostalCode" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficePostalCode" IS 'SaleOfficePostalCode';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeResponsibleMember" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeResponsibleMember" IS 'SaleOfficeResponsibleMember';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeSecondOfficePhone" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeSecondOfficePhone" IS 'SaleOfficeSaleOfficePhone2';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeState" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeState" IS 'SaleOfficeState';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeStatus" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeStatus" IS 'SaleOfficeStatus';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeURL" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeURL" IS 'SaleOfficeWWW';
     
    ALTER TABLE trend."Property" ADD COLUMN "SaleOfficeZip4" text;
    COMMENT ON COLUMN trend."Property"."SaleOfficeZip4" IS 'SaleOfficeZip4';
     
    ALTER TABLE trend."Property" ADD COLUMN "SchoolDistrict" text;
    COMMENT ON COLUMN trend."Property"."SchoolDistrict" IS 'SchoolDistrict';
     
    ALTER TABLE trend."Property" ADD COLUMN "Section8Approved" boolean;
    COMMENT ON COLUMN trend."Property"."Section8Approved" IS 'Section8Approved';
     
    ALTER TABLE trend."Property" ADD COLUMN "SecurityDeposit" decimal;
    COMMENT ON COLUMN trend."Property"."SecurityDeposit" IS 'SecurityDeposit';
     
    ALTER TABLE trend."Property" ADD COLUMN "SellerConcessions" boolean;
    COMMENT ON COLUMN trend."Property"."SellerConcessions" IS 'SellerConcessions';
     
    ALTER TABLE trend."Property" ADD COLUMN "SepticExpiryDate" text;
    COMMENT ON COLUMN trend."Property"."SepticExpiryDate" IS 'DateSepticExpires';
     
    ALTER TABLE trend."Property" ADD COLUMN "SewerSeptic" text[];
    COMMENT ON COLUMN trend."Property"."SewerSeptic" IS 'SewerSeptic';
     
    ALTER TABLE trend."Property" ADD COLUMN "ShowingConfirmationRemarks" text;
    COMMENT ON COLUMN trend."Property"."ShowingConfirmationRemarks" IS 'ShowingConfirmationRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "ShowingInstructions" text[];
    COMMENT ON COLUMN trend."Property"."ShowingInstructions" IS 'ShowingInstructions';
     
    ALTER TABLE trend."Property" ADD COLUMN "ShowingRemarks" text;
    COMMENT ON COLUMN trend."Property"."ShowingRemarks" IS 'ShowingRemarks';
     
    ALTER TABLE trend."Property" ADD COLUMN "SignAtLocation" boolean;
    COMMENT ON COLUMN trend."Property"."SignAtLocation" IS 'SignAtLocation';
     
    ALTER TABLE trend."Property" ADD COLUMN "SmokingProhibited" boolean;
    COMMENT ON COLUMN trend."Property"."SmokingProhibited" IS 'SmokingProhibited';
     
    ALTER TABLE trend."Property" ADD COLUMN "SoilTypes" text[];
    COMMENT ON COLUMN trend."Property"."SoilTypes" IS 'SoilTypes';
     
    ALTER TABLE trend."Property" ADD COLUMN "SourceCreationTimestamp" text;
    COMMENT ON COLUMN trend."Property"."SourceCreationTimestamp" IS 'SourceCreationTimestamp';
     
    ALTER TABLE trend."Property" ADD COLUMN "SourceDaysOnMarketProperty" bigint;
    COMMENT ON COLUMN trend."Property"."SourceDaysOnMarketProperty" IS 'SourceDaysOnMarketProperty';
     
    ALTER TABLE trend."Property" ADD COLUMN "SourceDomPropertyTransactionActiveFlag" boolean;
    COMMENT ON COLUMN trend."Property"."SourceDomPropertyTransactionActiveFlag" IS 'SourceDomPropertyTransactionActiveFlag';
     
    ALTER TABLE trend."Property" ADD COLUMN "SourceModificationTimestamp" text;
    COMMENT ON COLUMN trend."Property"."SourceModificationTimestamp" IS 'SourceModificationTimestamp';
     
    ALTER TABLE trend."Property" ADD COLUMN "SourceOffMarketDate" text;
    COMMENT ON COLUMN trend."Property"."SourceOffMarketDate" IS 'SourceOffMarketDate';
     
    ALTER TABLE trend."Property" ADD COLUMN "StaffLoaded" boolean;
    COMMENT ON COLUMN trend."Property"."StaffLoaded" IS 'StaffLoaded';
     
    ALTER TABLE trend."Property" ADD COLUMN "State" text;
    COMMENT ON COLUMN trend."Property"."State" IS 'State';
     
    ALTER TABLE trend."Property" ADD COLUMN "StatusChangeDate" text;
    COMMENT ON COLUMN trend."Property"."StatusChangeDate" IS 'DateCurrentStatus';
     
    ALTER TABLE trend."Property" ADD COLUMN "StatusPriorPrice" decimal;
    COMMENT ON COLUMN trend."Property"."StatusPriorPrice" IS 'StatusPriorPrice';
     
    ALTER TABLE trend."Property" ADD COLUMN "Storage" text[];
    COMMENT ON COLUMN trend."Property"."Storage" IS 'Storage';
     
    ALTER TABLE trend."Property" ADD COLUMN "StoryList" text[];
    COMMENT ON COLUMN trend."Property"."StoryList" IS 'StoryList';
     
    ALTER TABLE trend."Property" ADD COLUMN "StreetDirPrefix" text;
    COMMENT ON COLUMN trend."Property"."StreetDirPrefix" IS 'StreetDirPrefix';
     
    ALTER TABLE trend."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN trend."Property"."StreetName" IS 'StreetName';
     
    ALTER TABLE trend."Property" ADD COLUMN "StreetNumber" integer;
    COMMENT ON COLUMN trend."Property"."StreetNumber" IS 'StreetNumber';
     
    ALTER TABLE trend."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN trend."Property"."StreetSuffix" IS 'StreetSuffix';
     
    ALTER TABLE trend."Property" ADD COLUMN "StructureList" text[];
    COMMENT ON COLUMN trend."Property"."StructureList" IS 'StructureList';
     
    ALTER TABLE trend."Property" ADD COLUMN "Structures" boolean;
    COMMENT ON COLUMN trend."Property"."Structures" IS 'Structures';
     
    ALTER TABLE trend."Property" ADD COLUMN "StudioEfficiencyUnits" bigint;
    COMMENT ON COLUMN trend."Property"."StudioEfficiencyUnits" IS 'StudioEfficiencyUnitCount';
     
    ALTER TABLE trend."Property" ADD COLUMN "Styles" text[];
    COMMENT ON COLUMN trend."Property"."Styles" IS 'Styles';
     
    ALTER TABLE trend."Property" ADD COLUMN "SubAgentCompensation" text;
    COMMENT ON COLUMN trend."Property"."SubAgentCompensation" IS 'SubAgentCompensation';
     
    ALTER TABLE trend."Property" ADD COLUMN "SubSystemLocale" text;
    COMMENT ON COLUMN trend."Property"."SubSystemLocale" IS 'SubSystemLocale';
     
    ALTER TABLE trend."Property" ADD COLUMN "Subdivision" text;
    COMMENT ON COLUMN trend."Property"."Subdivision" IS 'Subdivision';
     
    ALTER TABLE trend."Property" ADD COLUMN "SystemLocale" text;
    COMMENT ON COLUMN trend."Property"."SystemLocale" IS 'SystemLocale';
     
    ALTER TABLE trend."Property" ADD COLUMN "TaxYear" integer;
    COMMENT ON COLUMN trend."Property"."TaxYear" IS 'TaxYear';
     
    ALTER TABLE trend."Property" ADD COLUMN "TemporarilyOffMarketDate" text;
    COMMENT ON COLUMN trend."Property"."TemporarilyOffMarketDate" IS 'DateTemporarilyOffMarket';
     
    ALTER TABLE trend."Property" ADD COLUMN "Tenancy" text[];
    COMMENT ON COLUMN trend."Property"."Tenancy" IS 'Tenancy';
     
    ALTER TABLE trend."Property" ADD COLUMN "TenantPays" text[];
    COMMENT ON COLUMN trend."Property"."TenantPays" IS 'TenantPays';
     
    ALTER TABLE trend."Property" ADD COLUMN "ThreeBedroomUnits" bigint;
    COMMENT ON COLUMN trend."Property"."ThreeBedroomUnits" IS 'ThreeBedroomUnitCount';
     
    ALTER TABLE trend."Property" ADD COLUMN "Topography" text[];
    COMMENT ON COLUMN trend."Property"."Topography" IS 'Topography';
     
    ALTER TABLE trend."Property" ADD COLUMN "TotalAssessment" decimal;
    COMMENT ON COLUMN trend."Property"."TotalAssessment" IS 'TotalAssessment';
     
    ALTER TABLE trend."Property" ADD COLUMN "TotalFloorPlans" integer;
    COMMENT ON COLUMN trend."Property"."TotalFloorPlans" IS 'TotalFloorPlans';
     
    ALTER TABLE trend."Property" ADD COLUMN "TotalPhotos" integer;
    COMMENT ON COLUMN trend."Property"."TotalPhotos" IS 'TotalPhotos';
     
    ALTER TABLE trend."Property" ADD COLUMN "TotalRooms" integer;
    COMMENT ON COLUMN trend."Property"."TotalRooms" IS 'RoomCount';
     
    ALTER TABLE trend."Property" ADD COLUMN "TotalTaxes" decimal;
    COMMENT ON COLUMN trend."Property"."TotalTaxes" IS 'TotalTaxes';
     
    ALTER TABLE trend."Property" ADD COLUMN "TotalUnits" integer;
    COMMENT ON COLUMN trend."Property"."TotalUnits" IS 'TotalUnits';
     
    ALTER TABLE trend."Property" ADD COLUMN "TrafficCount" text[];
    COMMENT ON COLUMN trend."Property"."TrafficCount" IS 'TrafficCount';
     
    ALTER TABLE trend."Property" ADD COLUMN "TransactionBrokerCompensation" text;
    COMMENT ON COLUMN trend."Property"."TransactionBrokerCompensation" IS 'BrokerCompensation';
     
    ALTER TABLE trend."Property" ADD COLUMN "TwoBedroomUnits" bigint;
    COMMENT ON COLUMN trend."Property"."TwoBedroomUnits" IS 'TwoBedroomUnitCount';
     
    ALTER TABLE trend."Property" ADD COLUMN "Type" text;
    COMMENT ON COLUMN trend."Property"."Type" IS 'Type';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit1Baths" integer;
    COMMENT ON COLUMN trend."Property"."Unit1Baths" IS 'BathsFullUnit1';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit1Bedrooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit1Bedrooms" IS 'BedsUnit1';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit1InteriorSqFt" bigint;
    COMMENT ON COLUMN trend."Property"."Unit1InteriorSqFt" IS 'Unit1InteriorSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit1LeaseEnd" text;
    COMMENT ON COLUMN trend."Property"."Unit1LeaseEnd" IS 'Unit1LeaseEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit1MonthlyRent" decimal;
    COMMENT ON COLUMN trend."Property"."Unit1MonthlyRent" IS 'Unit1MonthlyRent';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit1Occupied" boolean;
    COMMENT ON COLUMN trend."Property"."Unit1Occupied" IS 'Unit1Occupied';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit1PartialBaths" bigint;
    COMMENT ON COLUMN trend."Property"."Unit1PartialBaths" IS 'PartialBathCountUnit1';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit1Rooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit1Rooms" IS 'RoomCountUnit1';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit2Baths" integer;
    COMMENT ON COLUMN trend."Property"."Unit2Baths" IS 'BathsFullUnit2';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit2Bedrooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit2Bedrooms" IS 'BedsUnit2';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit2InteriorSqFt" bigint;
    COMMENT ON COLUMN trend."Property"."Unit2InteriorSqFt" IS 'Unit2InteriorSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit2LeaseEnd" text;
    COMMENT ON COLUMN trend."Property"."Unit2LeaseEnd" IS 'Unit2LeaseEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit2MonthlyRent" decimal;
    COMMENT ON COLUMN trend."Property"."Unit2MonthlyRent" IS 'Unit2MonthlyRent';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit2Occupied" boolean;
    COMMENT ON COLUMN trend."Property"."Unit2Occupied" IS 'Unit2Occupied';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit2PartialBaths" bigint;
    COMMENT ON COLUMN trend."Property"."Unit2PartialBaths" IS 'PartialBathCountUnit2';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit2Rooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit2Rooms" IS 'RoomCountUnit2';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit3Baths" integer;
    COMMENT ON COLUMN trend."Property"."Unit3Baths" IS 'BathsFullUnit3';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit3Bedrooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit3Bedrooms" IS 'BedsUnit3';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit3InteriorSqFt" bigint;
    COMMENT ON COLUMN trend."Property"."Unit3InteriorSqFt" IS 'Unit3InteriorSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit3LeaseEnd" text;
    COMMENT ON COLUMN trend."Property"."Unit3LeaseEnd" IS 'Unit3LeaseEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit3MonthlyRent" decimal;
    COMMENT ON COLUMN trend."Property"."Unit3MonthlyRent" IS 'Unit3MonthlyRent';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit3Occupied" boolean;
    COMMENT ON COLUMN trend."Property"."Unit3Occupied" IS 'Unit3Occupied';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit3PartialBaths" bigint;
    COMMENT ON COLUMN trend."Property"."Unit3PartialBaths" IS 'PartialBathCountUnit3';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit3Rooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit3Rooms" IS 'RoomCountUnit3';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit4Baths" integer;
    COMMENT ON COLUMN trend."Property"."Unit4Baths" IS 'BathsFullUnit4';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit4Bedrooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit4Bedrooms" IS 'BedsUnit4';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit4InteriorSqFt" bigint;
    COMMENT ON COLUMN trend."Property"."Unit4InteriorSqFt" IS 'Unit4InteriorSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit4LeaseEnd" text;
    COMMENT ON COLUMN trend."Property"."Unit4LeaseEnd" IS 'Unit4LeaseEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit4MonthlyRent" decimal;
    COMMENT ON COLUMN trend."Property"."Unit4MonthlyRent" IS 'Unit4MonthlyRent';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit4Occupied" boolean;
    COMMENT ON COLUMN trend."Property"."Unit4Occupied" IS 'Unit4Occupied';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit4PartialBaths" bigint;
    COMMENT ON COLUMN trend."Property"."Unit4PartialBaths" IS 'PartialBathCountUnit4';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit4Rooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit4Rooms" IS 'RoomCountUnit4';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit5Baths" integer;
    COMMENT ON COLUMN trend."Property"."Unit5Baths" IS 'BathsFullUnit5';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit5Bedrooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit5Bedrooms" IS 'BedsUnit5';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit5InteriorSqFt" bigint;
    COMMENT ON COLUMN trend."Property"."Unit5InteriorSqFt" IS 'Unit5InteriorSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit5LeaseEnd" text;
    COMMENT ON COLUMN trend."Property"."Unit5LeaseEnd" IS 'Unit5LeaseEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit5MonthlyRent" decimal;
    COMMENT ON COLUMN trend."Property"."Unit5MonthlyRent" IS 'Unit5MonthlyRent';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit5Occupied" boolean;
    COMMENT ON COLUMN trend."Property"."Unit5Occupied" IS 'Unit5Occupied';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit5PartialBaths" bigint;
    COMMENT ON COLUMN trend."Property"."Unit5PartialBaths" IS 'PartialBathCountUnit5';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit5Rooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit5Rooms" IS 'RoomCountUnit5';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit6Baths" integer;
    COMMENT ON COLUMN trend."Property"."Unit6Baths" IS 'BathsFullUnit6';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit6Bedrooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit6Bedrooms" IS 'BedsUnit6';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit6InteriorSqFt" bigint;
    COMMENT ON COLUMN trend."Property"."Unit6InteriorSqFt" IS 'Unit6InteriorSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit6LeaseEnd" text;
    COMMENT ON COLUMN trend."Property"."Unit6LeaseEnd" IS 'Unit6LeaseEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit6MonthlyRent" decimal;
    COMMENT ON COLUMN trend."Property"."Unit6MonthlyRent" IS 'Unit6MonthlyRent';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit6Occupied" boolean;
    COMMENT ON COLUMN trend."Property"."Unit6Occupied" IS 'Unit6Occupied';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit6PartialBaths" bigint;
    COMMENT ON COLUMN trend."Property"."Unit6PartialBaths" IS 'PartialBathCountUnit6';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit6Rooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit6Rooms" IS 'RoomCountUnit6';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit7Baths" integer;
    COMMENT ON COLUMN trend."Property"."Unit7Baths" IS 'BathsFullUnit7';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit7Bedrooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit7Bedrooms" IS 'BedsUnit7';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit7InteriorSqFt" bigint;
    COMMENT ON COLUMN trend."Property"."Unit7InteriorSqFt" IS 'Unit7InteriorSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit7LeaseEnd" text;
    COMMENT ON COLUMN trend."Property"."Unit7LeaseEnd" IS 'Unit7LeaseEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit7MonthlyRent" decimal;
    COMMENT ON COLUMN trend."Property"."Unit7MonthlyRent" IS 'Unit7MonthlyRent';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit7Occupied" boolean;
    COMMENT ON COLUMN trend."Property"."Unit7Occupied" IS 'Unit7Occupied';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit7PartialBaths" bigint;
    COMMENT ON COLUMN trend."Property"."Unit7PartialBaths" IS 'PartialBathCountUnit7';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit7Rooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit7Rooms" IS 'RoomCountUnit7';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit8Baths" integer;
    COMMENT ON COLUMN trend."Property"."Unit8Baths" IS 'BathsFullUnit8';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit8Bedrooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit8Bedrooms" IS 'BedsUnit8';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit8InteriorSqFt" bigint;
    COMMENT ON COLUMN trend."Property"."Unit8InteriorSqFt" IS 'Unit8InteriorSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit8LeaseEnd" text;
    COMMENT ON COLUMN trend."Property"."Unit8LeaseEnd" IS 'Unit8LeaseEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit8MonthlyRent" decimal;
    COMMENT ON COLUMN trend."Property"."Unit8MonthlyRent" IS 'Unit8MonthlyRent';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit8Occupied" boolean;
    COMMENT ON COLUMN trend."Property"."Unit8Occupied" IS 'Unit8Occupied';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit8PartialBaths" bigint;
    COMMENT ON COLUMN trend."Property"."Unit8PartialBaths" IS 'PartialBathCountUnit8';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit8Rooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit8Rooms" IS 'RoomCountUnit8';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit9Baths" integer;
    COMMENT ON COLUMN trend."Property"."Unit9Baths" IS 'BathsFullUnit9';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit9Bedrooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit9Bedrooms" IS 'BedsUnit9';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit9InteriorSqFt" bigint;
    COMMENT ON COLUMN trend."Property"."Unit9InteriorSqFt" IS 'Unit9InteriorSqFt';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit9LeaseEnd" text;
    COMMENT ON COLUMN trend."Property"."Unit9LeaseEnd" IS 'Unit9LeaseEnd';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit9MonthlyRent" decimal;
    COMMENT ON COLUMN trend."Property"."Unit9MonthlyRent" IS 'Unit9MonthlyRent';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit9Occupied" boolean;
    COMMENT ON COLUMN trend."Property"."Unit9Occupied" IS 'Unit9Occupied';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit9PartialBaths" bigint;
    COMMENT ON COLUMN trend."Property"."Unit9PartialBaths" IS 'PartialBathCountUnit9';
     
    ALTER TABLE trend."Property" ADD COLUMN "Unit9Rooms" integer;
    COMMENT ON COLUMN trend."Property"."Unit9Rooms" IS 'RoomCountUnit9';
     
    ALTER TABLE trend."Property" ADD COLUMN "UnitFloors" bigint;
    COMMENT ON COLUMN trend."Property"."UnitFloors" IS 'UnitFloors';
     
    ALTER TABLE trend."Property" ADD COLUMN "UnitList" text[];
    COMMENT ON COLUMN trend."Property"."UnitList" IS 'UnitList';
     
    ALTER TABLE trend."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN trend."Property"."UnitNumber" IS 'StreetUnitNumber';
     
    ALTER TABLE trend."Property" ADD COLUMN "UnitsInDevelopment" bigint;
    COMMENT ON COLUMN trend."Property"."UnitsInDevelopment" IS 'UnitsInDevelopmentCount';
     
    ALTER TABLE trend."Property" ADD COLUMN "UploadToInternetAllowed" boolean;
    COMMENT ON COLUMN trend."Property"."UploadToInternetAllowed" IS 'UploadToInternetAllowed';
     
    ALTER TABLE trend."Property" ADD COLUMN "UpperFloor1Baths" integer;
    COMMENT ON COLUMN trend."Property"."UpperFloor1Baths" IS 'UpperFloor1Baths';
     
    ALTER TABLE trend."Property" ADD COLUMN "UpperFloor1HalfBaths" integer;
    COMMENT ON COLUMN trend."Property"."UpperFloor1HalfBaths" IS 'UpperFloor1HalfBaths';
     
    ALTER TABLE trend."Property" ADD COLUMN "Utilities" text[];
    COMMENT ON COLUMN trend."Property"."Utilities" IS 'Utilities';
     
    ALTER TABLE trend."Property" ADD COLUMN "VOWCommentsAllowed" boolean;
    COMMENT ON COLUMN trend."Property"."VOWCommentsAllowed" IS 'VOWCommentsAllowed';
     
    ALTER TABLE trend."Property" ADD COLUMN "VariableRateComp" boolean;
    COMMENT ON COLUMN trend."Property"."VariableRateComp" IS 'VariableRateComp';
     
    ALTER TABLE trend."Property" ADD COLUMN "VowAVMAllowed" boolean;
    COMMENT ON COLUMN trend."Property"."VowAVMAllowed" IS 'VowAVMAllowed';
     
    ALTER TABLE trend."Property" ADD COLUMN "WallsCeilings" text[];
    COMMENT ON COLUMN trend."Property"."WallsCeilings" IS 'WallCeilings';
     
    ALTER TABLE trend."Property" ADD COLUMN "Water" text[];
    COMMENT ON COLUMN trend."Property"."Water" IS 'Water';
     
    ALTER TABLE trend."Property" ADD COLUMN "WaterFront" boolean;
    COMMENT ON COLUMN trend."Property"."WaterFront" IS 'WaterFront';
     
    ALTER TABLE trend."Property" ADD COLUMN "WaterFrontage" bigint;
    COMMENT ON COLUMN trend."Property"."WaterFrontage" IS 'WaterFrontage';
     
    ALTER TABLE trend."Property" ADD COLUMN "WellDepth" bigint;
    COMMENT ON COLUMN trend."Property"."WellDepth" IS 'WellDepth';
     
    ALTER TABLE trend."Property" ADD COLUMN "WillShowingsContinue" boolean;
    COMMENT ON COLUMN trend."Property"."WillShowingsContinue" IS 'WillShowingsContinue';
     
    ALTER TABLE trend."Property" ADD COLUMN "WithdrawnDate" text;
    COMMENT ON COLUMN trend."Property"."WithdrawnDate" IS 'DateWithdrawn';
     
    ALTER TABLE trend."Property" ADD COLUMN "YearInBusiness" text[];
    COMMENT ON COLUMN trend."Property"."YearInBusiness" IS 'YearInBusiness';
     
    ALTER TABLE trend."Property" ADD COLUMN "YearRenovated" bigint;
    COMMENT ON COLUMN trend."Property"."YearRenovated" IS 'YearRehabilitated';
     
    ALTER TABLE trend."Property" ADD COLUMN "Zip4" text;
    COMMENT ON COLUMN trend."Property"."Zip4" IS 'Zip4';
     
    ALTER TABLE trend."Property" ADD COLUMN "ZoningCode" text;
    COMMENT ON COLUMN trend."Property"."ZoningCode" IS 'ZoningCode';
     

COMMIT;