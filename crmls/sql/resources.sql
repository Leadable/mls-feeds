BEGIN;

  CREATE TABLE crmls."Media"() ;
    ALTER TABLE crmls."Media" ADD COLUMN "OfficeCode" text;
    COMMENT ON COLUMN crmls."Media"."OfficeCode" IS 'OfficeCode';
     
    ALTER TABLE crmls."Media" ADD COLUMN "FileExtension" text;
    COMMENT ON COLUMN crmls."Media"."FileExtension" IS 'FileExtension';
     
    ALTER TABLE crmls."Media" ADD COLUMN "MediaDescription" text;
    COMMENT ON COLUMN crmls."Media"."MediaDescription" IS 'MediaDescription';
     
    ALTER TABLE crmls."Media" ADD COLUMN "MediaURL" text;
    COMMENT ON COLUMN crmls."Media"."MediaURL" IS 'MediaURL';
     
    ALTER TABLE crmls."Media" ADD COLUMN "IsDeleted" boolean;
    COMMENT ON COLUMN crmls."Media"."IsDeleted" IS 'IsDeleted';
     
    ALTER TABLE crmls."Media" ADD COLUMN "ClassSourceKey" integer;
    COMMENT ON COLUMN crmls."Media"."ClassSourceKey" IS 'ClassSourceKey';
     
    ALTER TABLE crmls."Media" ADD COLUMN "TimestampUploaded" text;
    COMMENT ON COLUMN crmls."Media"."TimestampUploaded" IS 'TimestampUploaded';
     
    ALTER TABLE crmls."Media" ADD COLUMN "MediaKey" text PRIMARY KEY;
    COMMENT ON COLUMN crmls."Media"."MediaKey" IS 'MediaKey';
     
    ALTER TABLE crmls."Media" ADD COLUMN "MediaType" text;
    COMMENT ON COLUMN crmls."Media"."MediaType" IS 'MediaType';
     
    ALTER TABLE crmls."Media" ADD COLUMN "MediaOrder" integer;
    COMMENT ON COLUMN crmls."Media"."MediaOrder" IS 'MediaOrder';
     
    ALTER TABLE crmls."Media" ADD COLUMN "SourceKey" integer;
    COMMENT ON COLUMN crmls."Media"."SourceKey" IS 'SourceKey';
     
    ALTER TABLE crmls."Media" ADD COLUMN "Board" text;
    COMMENT ON COLUMN crmls."Media"."Board" IS 'Board';
     
    ALTER TABLE crmls."Media" ADD COLUMN "TimestampModified" text;
    COMMENT ON COLUMN crmls."Media"."TimestampModified" IS 'TimestampModified';
     
    ALTER TABLE crmls."Media" ADD COLUMN "ClassKey" integer;
    COMMENT ON COLUMN crmls."Media"."ClassKey" IS 'ClassKey';
     
    ALTER TABLE crmls."Media" ADD COLUMN "MLS_ID" text;
    COMMENT ON COLUMN crmls."Media"."MLS_ID" IS 'MLS_ID';
     
    ALTER TABLE crmls."Media" ADD COLUMN "ClassID" integer;
    COMMENT ON COLUMN crmls."Media"."ClassID" IS 'ClassID';
     
  CREATE TABLE crmls."OpenHouse"() INHERITS (property);
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "showingofficeid" text;
    COMMENT ON COLUMN crmls."OpenHouse"."showingofficeid" IS 'showingofficeid';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "ShowingAgentStateLicenseNumber" text;
    COMMENT ON COLUMN crmls."OpenHouse"."ShowingAgentStateLicenseNumber" IS 'ShowingAgentStateLicenseNumber';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "directions" text;
    COMMENT ON COLUMN crmls."OpenHouse"."directions" IS 'directions';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "showingagentpublicid" text;
    COMMENT ON COLUMN crmls."OpenHouse"."showingagentpublicid" IS 'showingagentpublicid';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "isdeleted" boolean;
    COMMENT ON COLUMN crmls."OpenHouse"."isdeleted" IS 'isdeleted';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "ShowingContactType" text;
    COMMENT ON COLUMN crmls."OpenHouse"."ShowingContactType" IS 'ShowingContactType';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "comments" text;
    COMMENT ON COLUMN crmls."OpenHouse"."comments" IS 'comments';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "showingassoc" text;
    COMMENT ON COLUMN crmls."OpenHouse"."showingassoc" IS 'showingassoc';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "Refreshments" text;
    COMMENT ON COLUMN crmls."OpenHouse"."Refreshments" IS 'Refreshments';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "hasdrawing" boolean;
    COMMENT ON COLUMN crmls."OpenHouse"."hasdrawing" IS 'hasdrawing';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "fromdate" text;
    COMMENT ON COLUMN crmls."OpenHouse"."fromdate" IS 'fromdate';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "ShowingContactName" text;
    COMMENT ON COLUMN crmls."OpenHouse"."ShowingContactName" IS 'ShowingContactName';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "tourid" integer;
    COMMENT ON COLUMN crmls."OpenHouse"."tourid" IS 'tourid';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "totime" integer;
    COMMENT ON COLUMN crmls."OpenHouse"."totime" IS 'totime';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "OpenHouseType" text;
    COMMENT ON COLUMN crmls."OpenHouse"."OpenHouseType" IS 'OpenHouseType';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "fromtime" integer;
    COMMENT ON COLUMN crmls."OpenHouse"."fromtime" IS 'fromtime';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "OpenHouseID" text;
    COMMENT ON COLUMN crmls."OpenHouse"."OpenHouseID" IS 'OpenHouseID';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "InputEntryOrder" integer;
    COMMENT ON COLUMN crmls."OpenHouse"."InputEntryOrder" IS 'InputEntryOrder';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "ListingKey" integer;
    COMMENT ON COLUMN crmls."OpenHouse"."ListingKey" IS 'ListingKey';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN crmls."OpenHouse"."MLSID" IS 'MLSID';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "OpenHouseKey" integer PRIMARY KEY;
    COMMENT ON COLUMN crmls."OpenHouse"."OpenHouseKey" IS 'OpenHouseKey';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "OpenHouseAttendance" text;
    COMMENT ON COLUMN crmls."OpenHouse"."OpenHouseAttendance" IS 'OpenHouseAttendance';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "ShowingContactPhoneExt" text;
    COMMENT ON COLUMN crmls."OpenHouse"."ShowingContactPhoneExt" IS 'ShowingContactPhoneExt';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "MLNumber" text;
    COMMENT ON COLUMN crmls."OpenHouse"."MLNumber" IS 'MLNumber';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "ShowingAgentLastName" text;
    COMMENT ON COLUMN crmls."OpenHouse"."ShowingAgentLastName" IS 'ShowingAgentLastName';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "ShowingAgentFirstName" text;
    COMMENT ON COLUMN crmls."OpenHouse"."ShowingAgentFirstName" IS 'ShowingAgentFirstName';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "SourceDateModified" text;
    COMMENT ON COLUMN crmls."OpenHouse"."SourceDateModified" IS 'SourceDateModified';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "SourceKey" integer;
    COMMENT ON COLUMN crmls."OpenHouse"."SourceKey" IS 'SourceKey';
     
    ALTER TABLE crmls."OpenHouse" ADD COLUMN "ShowingContactPhone" text;
    COMMENT ON COLUMN crmls."OpenHouse"."ShowingContactPhone" IS 'ShowingContactPhone';
     
  CREATE TABLE crmls."Property"() INHERITS (property);
    ALTER TABLE crmls."Property" ADD COLUMN "LotFeatures" text[];
    COMMENT ON COLUMN crmls."Property"."LotFeatures" IS 'LotFeatures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COLA_LastName" text;
    COMMENT ON COLUMN crmls."Property"."COLA_LastName" IS 'COLA_LastName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12Units" text;
    COMMENT ON COLUMN crmls."Property"."Type12Units" IS 'Type12Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CableTVExpense" integer;
    COMMENT ON COLUMN crmls."Property"."CableTVExpense" IS 'CableTVExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TimestampOffMarket" text;
    COMMENT ON COLUMN crmls."Property"."TimestampOffMarket" IS 'TimestampOffMarket';
     
    ALTER TABLE crmls."Property" ADD COLUMN "URLDescription" text;
    COMMENT ON COLUMN crmls."Property"."URLDescription" IS 'URLDescription';
     
    ALTER TABLE crmls."Property" ADD COLUMN "County" text;
    COMMENT ON COLUMN crmls."Property"."County" IS 'County';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12Description" text;
    COMMENT ON COLUMN crmls."Property"."Type12Description" IS 'Type12Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BuildingName" text;
    COMMENT ON COLUMN crmls."Property"."BuildingName" IS 'BuildingName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ResidentialSquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."ResidentialSquareFootage" IS 'ResidentialSquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type8Furnished" IS 'Type8Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GrossMultiplier" decimal;
    COMMENT ON COLUMN crmls."Property"."GrossMultiplier" IS 'GrossMultiplier';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SerialXX" text;
    COMMENT ON COLUMN crmls."Property"."SerialXX" IS 'SerialXX';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ContactOrder6" text;
    COMMENT ON COLUMN crmls."Property"."ContactOrder6" IS 'ContactOrder6';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type7Baths" IS 'Type7Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5Description" text;
    COMMENT ON COLUMN crmls."Property"."Type5Description" IS 'Type5Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberCarportSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."NumberCarportSpaces" IS 'NumberCarportSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SignOnPropertyYN" boolean;
    COMMENT ON COLUMN crmls."Property"."SignOnPropertyYN" IS 'SignOnPropertyYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToFreeway" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToFreeway" IS 'DistanceToFreeway';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type1TotalRent" IS 'Type1TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "IngressEgress" text;
    COMMENT ON COLUMN crmls."Property"."IngressEgress" IS 'IngressEgress';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COLO_Code" text;
    COMMENT ON COLUMN crmls."Property"."COLO_Code" IS 'COLO_Code';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateEnding" text;
    COMMENT ON COLUMN crmls."Property"."DateEnding" IS 'DateEnding';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BathsTqtr" integer;
    COMMENT ON COLUMN crmls."Property"."BathsTqtr" IS 'BathsTqtr';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Occupancy" text;
    COMMENT ON COLUMN crmls."Property"."Occupancy" IS 'Occupancy';
     
    ALTER TABLE crmls."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN crmls."Property"."YearBuilt" IS 'YearBuilt';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type11Baths" IS 'Type11Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LoanPayment" integer;
    COMMENT ON COLUMN crmls."Property"."LoanPayment" IS 'LoanPayment';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AssociationDues1" integer;
    COMMENT ON COLUMN crmls."Property"."AssociationDues1" IS 'AssociationDues1';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateStatusChange" text;
    COMMENT ON COLUMN crmls."Property"."DateStatusChange" IS 'DateStatusChange';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CommunityFeatures" text[];
    COMMENT ON COLUMN crmls."Property"."CommunityFeatures" IS 'CommunityFeatures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenEnergyGeneration" text[];
    COMMENT ON COLUMN crmls."Property"."GreenEnergyGeneration" IS 'GreenEnergyGeneration';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TotalMoveInCosts" integer;
    COMMENT ON COLUMN crmls."Property"."TotalMoveInCosts" IS 'TotalMoveInCosts';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type6ActualRent" IS 'Type6ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "StreetNumberModifier" text;
    COMMENT ON COLUMN crmls."Property"."StreetNumberModifier" IS 'StreetNumberModifier';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LA_Publicid" text;
    COMMENT ON COLUMN crmls."Property"."LA_Publicid" IS 'LA_Publicid';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type2ProFormaRent" IS 'Type2ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type8ProFormaRent" IS 'Type8ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PricePerSqft" decimal;
    COMMENT ON COLUMN crmls."Property"."PricePerSqft" IS 'PricePerSqft';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PoolYN" boolean;
    COMMENT ON COLUMN crmls."Property"."PoolYN" IS 'PoolYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "InsuranceWaterFurnitureYN" boolean;
    COMMENT ON COLUMN crmls."Property"."InsuranceWaterFurnitureYN" IS 'InsuranceWaterFurnitureYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberPatio" integer;
    COMMENT ON COLUMN crmls."Property"."NumberPatio" IS 'NumberPatio';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type1ProFormaRent" IS 'Type1ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AnchorsCoTenants" text;
    COMMENT ON COLUMN crmls."Property"."AnchorsCoTenants" IS 'AnchorsCoTenants';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DOH1" text;
    COMMENT ON COLUMN crmls."Property"."DOH1" IS 'DOH1';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RenewableOptionYN" boolean;
    COMMENT ON COLUMN crmls."Property"."RenewableOptionYN" IS 'RenewableOptionYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9Description" text;
    COMMENT ON COLUMN crmls."Property"."Type9Description" IS 'Type9Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13Description" text;
    COMMENT ON COLUMN crmls."Property"."Type13Description" IS 'Type13Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CreditCheckPaidBy" text;
    COMMENT ON COLUMN crmls."Property"."CreditCheckPaidBy" IS 'CreditCheckPaidBy';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ConcessionsComments" text;
    COMMENT ON COLUMN crmls."Property"."ConcessionsComments" IS 'ConcessionsComments';
     
    ALTER TABLE crmls."Property" ADD COLUMN "FullTimeEmployees" integer;
    COMMENT ON COLUMN crmls."Property"."FullTimeEmployees" IS 'FullTimeEmployees';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SpecialAssessments" text;
    COMMENT ON COLUMN crmls."Property"."SpecialAssessments" IS 'SpecialAssessments';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PresentUse" text;
    COMMENT ON COLUMN crmls."Property"."PresentUse" IS 'PresentUse';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SurveyType" text[];
    COMMENT ON COLUMN crmls."Property"."SurveyType" IS 'SurveyType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ParcelMaster" text;
    COMMENT ON COLUMN crmls."Property"."ParcelMaster" IS 'ParcelMaster';
     
    ALTER TABLE crmls."Property" ADD COLUMN "License2" text;
    COMMENT ON COLUMN crmls."Property"."License2" IS 'License2';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BathsHalf" integer;
    COMMENT ON COLUMN crmls."Property"."BathsHalf" IS 'BathsHalf';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type3ActualRent" IS 'Type3ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type11GarageSpaces" IS 'Type11GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type9Baths" IS 'Type9Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RetailCenterType" text;
    COMMENT ON COLUMN crmls."Property"."RetailCenterType" IS 'RetailCenterType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "YearBuiltSource" text;
    COMMENT ON COLUMN crmls."Property"."YearBuiltSource" IS 'YearBuiltSource';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type9GarageSpaces" IS 'Type9GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberRentedGarages" integer;
    COMMENT ON COLUMN crmls."Property"."NumberRentedGarages" IS 'NumberRentedGarages';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PropertyTaxYear" integer;
    COMMENT ON COLUMN crmls."Property"."PropertyTaxYear" IS 'PropertyTaxYear';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ShowingContactPhoneExt" text;
    COMMENT ON COLUMN crmls."Property"."ShowingContactPhoneExt" IS 'ShowingContactPhoneExt';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SA_FirstName" text;
    COMMENT ON COLUMN crmls."Property"."SA_FirstName" IS 'SA_FirstName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ListPrice" integer;
    COMMENT ON COLUMN crmls."Property"."ListPrice" IS 'ListPrice';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type6TotalRent" IS 'Type6TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SeniorYN" boolean;
    COMMENT ON COLUMN crmls."Property"."SeniorYN" IS 'SeniorYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type9SquareFootage" IS 'Type9SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type12SquareFootage" IS 'Type12SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SA_PublicID" text;
    COMMENT ON COLUMN crmls."Property"."SA_PublicID" IS 'SA_PublicID';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ManagementCoPhone" text;
    COMMENT ON COLUMN crmls."Property"."ManagementCoPhone" IS 'ManagementCoPhone';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberOfBuildings" integer;
    COMMENT ON COLUMN crmls."Property"."NumberOfBuildings" IS 'NumberOfBuildings';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COLA_StateLicenseNumber" text;
    COMMENT ON COLUMN crmls."Property"."COLA_StateLicenseNumber" IS 'COLA_StateLicenseNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LeaseConsideredYN" boolean;
    COMMENT ON COLUMN crmls."Property"."LeaseConsideredYN" IS 'LeaseConsideredYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TimestampPhotoModified" text;
    COMMENT ON COLUMN crmls."Property"."TimestampPhotoModified" IS 'TimestampPhotoModified';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ClearanceHeightMin" decimal;
    COMMENT ON COLUMN crmls."Property"."ClearanceHeightMin" IS 'ClearanceHeightMin';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CommercialLicense" text[];
    COMMENT ON COLUMN crmls."Property"."CommercialLicense" IS 'CommercialLicense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "EffectiveGross" integer;
    COMMENT ON COLUMN crmls."Property"."EffectiveGross" IS 'EffectiveGross';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Assessments" text[];
    COMMENT ON COLUMN crmls."Property"."Assessments" IS 'Assessments';
     
    ALTER TABLE crmls."Property" ADD COLUMN "InteriorFeatures" text[];
    COMMENT ON COLUMN crmls."Property"."InteriorFeatures" IS 'InteriorFeatures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PresentLoans" integer;
    COMMENT ON COLUMN crmls."Property"."PresentLoans" IS 'PresentLoans';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Acres" decimal;
    COMMENT ON COLUMN crmls."Property"."Acres" IS 'Acres';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ParkingRatio" decimal;
    COMMENT ON COLUMN crmls."Property"."ParkingRatio" IS 'ParkingRatio';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PreviousStatus" text;
    COMMENT ON COLUMN crmls."Property"."PreviousStatus" IS 'PreviousStatus';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RentMin" decimal;
    COMMENT ON COLUMN crmls."Property"."RentMin" IS 'RentMin';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BathsTotal" decimal;
    COMMENT ON COLUMN crmls."Property"."BathsTotal" IS 'BathsTotal';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TimestampOriginalEntry" text;
    COMMENT ON COLUMN crmls."Property"."TimestampOriginalEntry" IS 'TimestampOriginalEntry';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COLA_Board" text;
    COMMENT ON COLUMN crmls."Property"."COLA_Board" IS 'COLA_Board';
     
    ALTER TABLE crmls."Property" ADD COLUMN "IndustrialSquareFootageMax" integer;
    COMMENT ON COLUMN crmls."Property"."IndustrialSquareFootageMax" IS 'IndustrialSquareFootageMax';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BasementSqft" integer;
    COMMENT ON COLUMN crmls."Property"."BasementSqft" IS 'BasementSqft';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type13Baths" IS 'Type13Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "VOWAutomatedValuationDisplay" boolean;
    COMMENT ON COLUMN crmls."Property"."VOWAutomatedValuationDisplay" IS 'VOWAutomatedValuationDisplay';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type12ProFormaRent" IS 'Type12ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DepositKey" integer;
    COMMENT ON COLUMN crmls."Property"."DepositKey" IS 'DepositKey';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SO_Code" text;
    COMMENT ON COLUMN crmls."Property"."SO_Code" IS 'SO_Code';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SellingPrice" integer;
    COMMENT ON COLUMN crmls."Property"."SellingPrice" IS 'SellingPrice';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ParkName" text;
    COMMENT ON COLUMN crmls."Property"."ParkName" IS 'ParkName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Sewer" text[];
    COMMENT ON COLUMN crmls."Property"."Sewer" IS 'Sewer';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ManagerName" text;
    COMMENT ON COLUMN crmls."Property"."ManagerName" IS 'ManagerName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type4ProFormaRent" IS 'Type4ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DatePurchaseContract" text;
    COMMENT ON COLUMN crmls."Property"."DatePurchaseContract" IS 'DatePurchaseContract';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToSewer" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToSewer" IS 'DistanceToSewer';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RentMax" decimal;
    COMMENT ON COLUMN crmls."Property"."RentMax" IS 'RentMax';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10Units" text;
    COMMENT ON COLUMN crmls."Property"."Type10Units" IS 'Type10Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type4TotalRent" IS 'Type4TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SaleConsideredYN" boolean;
    COMMENT ON COLUMN crmls."Property"."SaleConsideredYN" IS 'SaleConsideredYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberSheds" integer;
    COMMENT ON COLUMN crmls."Property"."NumberSheds" IS 'NumberSheds';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SpaceNumber" text;
    COMMENT ON COLUMN crmls."Property"."SpaceNumber" IS 'SpaceNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "EquipmentExpense" integer;
    COMMENT ON COLUMN crmls."Property"."EquipmentExpense" IS 'EquipmentExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GardenerExpense" integer;
    COMMENT ON COLUMN crmls."Property"."GardenerExpense" IS 'GardenerExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ManagersPhone" text;
    COMMENT ON COLUMN crmls."Property"."ManagersPhone" IS 'ManagersPhone';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type12Bedrooms" IS 'Type12Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN crmls."Property"."UnitNumber" IS 'UnitNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SqFtSourceStructure" text;
    COMMENT ON COLUMN crmls."Property"."SqFtSourceStructure" IS 'SqFtSourceStructure';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SoilType" text;
    COMMENT ON COLUMN crmls."Property"."SoilType" IS 'SoilType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ManagerApprovalYN" boolean;
    COMMENT ON COLUMN crmls."Property"."ManagerApprovalYN" IS 'ManagerApprovalYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type10Bedrooms" IS 'Type10Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToSchools" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToSchools" IS 'DistanceToSchools';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6Units" text;
    COMMENT ON COLUMN crmls."Property"."Type6Units" IS 'Type6Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Possession" text;
    COMMENT ON COLUMN crmls."Property"."Possession" IS 'Possession';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ParkingSpacesTotal" integer;
    COMMENT ON COLUMN crmls."Property"."ParkingSpacesTotal" IS 'ParkingSpacesTotal';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BathsFull" integer;
    COMMENT ON COLUMN crmls."Property"."BathsFull" IS 'BathsFull';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ContactOrder4" text;
    COMMENT ON COLUMN crmls."Property"."ContactOrder4" IS 'ContactOrder4';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RetailSquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."RetailSquareFootage" IS 'RetailSquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "InsuranceExpense" integer;
    COMMENT ON COLUMN crmls."Property"."InsuranceExpense" IS 'InsuranceExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Fireplace" text[];
    COMMENT ON COLUMN crmls."Property"."Fireplace" IS 'Fireplace';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RealEstateTaxExpense" integer;
    COMMENT ON COLUMN crmls."Property"."RealEstateTaxExpense" IS 'RealEstateTaxExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MonthlyRent" integer;
    COMMENT ON COLUMN crmls."Property"."MonthlyRent" IS 'MonthlyRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AttachedStructure" text;
    COMMENT ON COLUMN crmls."Property"."AttachedStructure" IS 'AttachedStructure';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DOH2" text;
    COMMENT ON COLUMN crmls."Property"."DOH2" IS 'DOH2';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type3GarageAttached" IS 'Type3GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type5TotalRent" IS 'Type5TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberRemotes" integer;
    COMMENT ON COLUMN crmls."Property"."NumberRemotes" IS 'NumberRemotes';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type4SquareFootage" IS 'Type4SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DocumentNumber" text;
    COMMENT ON COLUMN crmls."Property"."DocumentNumber" IS 'DocumentNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenCertifyingBody" text;
    COMMENT ON COLUMN crmls."Property"."GreenCertifyingBody" IS 'GreenCertifyingBody';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type5ProFormaRent" IS 'Type5ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OfficeSquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."OfficeSquareFootage" IS 'OfficeSquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MinimumDownAmount" integer;
    COMMENT ON COLUMN crmls."Property"."MinimumDownAmount" IS 'MinimumDownAmount';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LotDimensions" text;
    COMMENT ON COLUMN crmls."Property"."LotDimensions" IS 'LotDimensions';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BlockNumber" text;
    COMMENT ON COLUMN crmls."Property"."BlockNumber" IS 'BlockNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PropertyDescription" text;
    COMMENT ON COLUMN crmls."Property"."PropertyDescription" IS 'PropertyDescription';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BuildersTractName" text;
    COMMENT ON COLUMN crmls."Property"."BuildersTractName" IS 'BuildersTractName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COSO_Code" text;
    COMMENT ON COLUMN crmls."Property"."COSO_Code" IS 'COSO_Code';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WaterSewerExpense" integer;
    COMMENT ON COLUMN crmls."Property"."WaterSewerExpense" IS 'WaterSewerExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type5GarageSpaces" IS 'Type5GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type7Furnished" IS 'Type7Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."GarageSpaces" IS 'GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SquareFootageStructure" integer;
    COMMENT ON COLUMN crmls."Property"."SquareFootageStructure" IS 'SquareFootageStructure';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenYearCertified" integer;
    COMMENT ON COLUMN crmls."Property"."GreenYearCertified" IS 'GreenYearCertified';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Foundation" text[];
    COMMENT ON COLUMN crmls."Property"."Foundation" IS 'Foundation';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ExpenseYear" integer;
    COMMENT ON COLUMN crmls."Property"."ExpenseYear" IS 'ExpenseYear';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DepositSecurity" integer;
    COMMENT ON COLUMN crmls."Property"."DepositSecurity" IS 'DepositSecurity';
     
    ALTER TABLE crmls."Property" ADD COLUMN "FirstRepairs" integer;
    COMMENT ON COLUMN crmls."Property"."FirstRepairs" IS 'FirstRepairs';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SA_LastName" text;
    COMMENT ON COLUMN crmls."Property"."SA_LastName" IS 'SA_LastName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LeasableSquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."LeasableSquareFootage" IS 'LeasableSquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GrossSpendableIncome" integer;
    COMMENT ON COLUMN crmls."Property"."GrossSpendableIncome" IS 'GrossSpendableIncome';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PotentialUsage" text;
    COMMENT ON COLUMN crmls."Property"."PotentialUsage" IS 'PotentialUsage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DirectionFaces" text;
    COMMENT ON COLUMN crmls."Property"."DirectionFaces" IS 'DirectionFaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "YearsCurrentOwner" integer;
    COMMENT ON COLUMN crmls."Property"."YearsCurrentOwner" IS 'YearsCurrentOwner';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ResidentManagerExpense" integer;
    COMMENT ON COLUMN crmls."Property"."ResidentManagerExpense" IS 'ResidentManagerExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WellReportYN" boolean;
    COMMENT ON COLUMN crmls."Property"."WellReportYN" IS 'WellReportYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "License1" text;
    COMMENT ON COLUMN crmls."Property"."License1" IS 'License1';
     
    ALTER TABLE crmls."Property" ADD COLUMN "HighTechFlexSquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."HighTechFlexSquareFootage" IS 'HighTechFlexSquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "IndustrialSquareFootageMin" integer;
    COMMENT ON COLUMN crmls."Property"."IndustrialSquareFootageMin" IS 'IndustrialSquareFootageMin';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TaxRate" decimal;
    COMMENT ON COLUMN crmls."Property"."TaxRate" IS 'TaxRate';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type12Furnished" IS 'Type12Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type9Bedrooms" IS 'Type9Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type1GarageAttached" IS 'Type1GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Caprate" decimal;
    COMMENT ON COLUMN crmls."Property"."Caprate" IS 'Caprate';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PostalCode" text;
    COMMENT ON COLUMN crmls."Property"."PostalCode" IS 'PostalCode';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Parking" text[];
    COMMENT ON COLUMN crmls."Property"."Parking" IS 'Parking';
     
    ALTER TABLE crmls."Property" ADD COLUMN "VacancyAllowDollar" integer;
    COMMENT ON COLUMN crmls."Property"."VacancyAllowDollar" IS 'VacancyAllowDollar';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DepositPets" integer;
    COMMENT ON COLUMN crmls."Property"."DepositPets" IS 'DepositPets';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type1ActualRent" IS 'Type1ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type5Bedrooms" IS 'Type5Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Bedrooms" IS 'Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type2Baths" IS 'Type2Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberDisposal" integer;
    COMMENT ON COLUMN crmls."Property"."NumberDisposal" IS 'NumberDisposal';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PossibleNewZone" text;
    COMMENT ON COLUMN crmls."Property"."PossibleNewZone" IS 'PossibleNewZone';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9Units" text;
    COMMENT ON COLUMN crmls."Property"."Type9Units" IS 'Type9Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LeasePerMonthYear" text;
    COMMENT ON COLUMN crmls."Property"."LeasePerMonthYear" IS 'LeasePerMonthYear';
     
    ALTER TABLE crmls."Property" ADD COLUMN "StreetNumber" integer;
    COMMENT ON COLUMN crmls."Property"."StreetNumber" IS 'StreetNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type1SquareFootage" IS 'Type1SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ProfessionalManagement" integer;
    COMMENT ON COLUMN crmls."Property"."ProfessionalManagement" IS 'ProfessionalManagement';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SchoolHigh" text;
    COMMENT ON COLUMN crmls."Property"."SchoolHigh" IS 'SchoolHigh';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WindowFeatures" text[];
    COMMENT ON COLUMN crmls."Property"."WindowFeatures" IS 'WindowFeatures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type8Baths" IS 'Type8Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MoveIn" text;
    COMMENT ON COLUMN crmls."Property"."MoveIn" IS 'MoveIn';
     
    ALTER TABLE crmls."Property" ADD COLUMN "License3" text;
    COMMENT ON COLUMN crmls."Property"."License3" IS 'License3';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OtherStructures" text[];
    COMMENT ON COLUMN crmls."Property"."OtherStructures" IS 'OtherStructures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Notincluded" text;
    COMMENT ON COLUMN crmls."Property"."Notincluded" IS 'Notincluded';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DeletedYN" boolean;
    COMMENT ON COLUMN crmls."Property"."DeletedYN" IS 'DeletedYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SchoolDistrict" text;
    COMMENT ON COLUMN crmls."Property"."SchoolDistrict" IS 'SchoolDistrict';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type8ActualRent" IS 'Type8ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10Description" text;
    COMMENT ON COLUMN crmls."Property"."Type10Description" IS 'Type10Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TractSubAreaCode" text;
    COMMENT ON COLUMN crmls."Property"."TractSubAreaCode" IS 'TractSubAreaCode';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToGas" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToGas" IS 'DistanceToGas';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TimestampSupplementModified" text;
    COMMENT ON COLUMN crmls."Property"."TimestampSupplementModified" IS 'TimestampSupplementModified';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LaundryIncome" integer;
    COMMENT ON COLUMN crmls."Property"."LaundryIncome" IS 'LaundryIncome';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PatioYN" boolean;
    COMMENT ON COLUMN crmls."Property"."PatioYN" IS 'PatioYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RVAccessDimensions" text;
    COMMENT ON COLUMN crmls."Property"."RVAccessDimensions" IS 'RVAccessDimensions';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SchoolElementary" text;
    COMMENT ON COLUMN crmls."Property"."SchoolElementary" IS 'SchoolElementary';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type7GarageAttached" IS 'Type7GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type9ProFormaRent" IS 'Type9ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11Description" text;
    COMMENT ON COLUMN crmls."Property"."Type11Description" IS 'Type11Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "InternetSendListPriceYN" boolean;
    COMMENT ON COLUMN crmls."Property"."InternetSendListPriceYN" IS 'InternetSendListPriceYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberLeased" integer;
    COMMENT ON COLUMN crmls."Property"."NumberLeased" IS 'NumberLeased';
     
    ALTER TABLE crmls."Property" ADD COLUMN "FenceYN" boolean;
    COMMENT ON COLUMN crmls."Property"."FenceYN" IS 'FenceYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type1Baths" IS 'Type1Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SoldCapRate" decimal;
    COMMENT ON COLUMN crmls."Property"."SoldCapRate" IS 'SoldCapRate';
     
    ALTER TABLE crmls."Property" ADD COLUMN "HeatingYN" boolean;
    COMMENT ON COLUMN crmls."Property"."HeatingYN" IS 'HeatingYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "VOWConsumerComment" boolean;
    COMMENT ON COLUMN crmls."Property"."VOWConsumerComment" IS 'VOWConsumerComment';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type2Bedrooms" IS 'Type2Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COSA_FirstName" text;
    COMMENT ON COLUMN crmls."Property"."COSA_FirstName" IS 'COSA_FirstName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenLocation" text[];
    COMMENT ON COLUMN crmls."Property"."GreenLocation" IS 'GreenLocation';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OtherIncome2" integer;
    COMMENT ON COLUMN crmls."Property"."OtherIncome2" IS 'OtherIncome2';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenBuildingCertification" text;
    COMMENT ON COLUMN crmls."Property"."GreenBuildingCertification" IS 'GreenBuildingCertification';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4Description" text;
    COMMENT ON COLUMN crmls."Property"."Type4Description" IS 'Type4Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LA_Board" text;
    COMMENT ON COLUMN crmls."Property"."LA_Board" IS 'LA_Board';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ConstructionMaterials" text[];
    COMMENT ON COLUMN crmls."Property"."ConstructionMaterials" IS 'ConstructionMaterials';
     
    ALTER TABLE crmls."Property" ADD COLUMN "StoriesTotal" integer;
    COMMENT ON COLUMN crmls."Property"."StoriesTotal" IS 'StoriesTotal';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type7GarageSpaces" IS 'Type7GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SourceTimestampModified" text;
    COMMENT ON COLUMN crmls."Property"."SourceTimestampModified" IS 'SourceTimestampModified';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Electricity" text[];
    COMMENT ON COLUMN crmls."Property"."Electricity" IS 'Electricity';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AssociationDues1Frequency" text;
    COMMENT ON COLUMN crmls."Property"."AssociationDues1Frequency" IS 'AssociationDues1Frequency';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type2Furnished" IS 'Type2Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "FinancialRemarks" text;
    COMMENT ON COLUMN crmls."Property"."FinancialRemarks" IS 'FinancialRemarks';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BuildersName" text;
    COMMENT ON COLUMN crmls."Property"."BuildersName" IS 'BuildersName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PersonalPropertyAmount" integer;
    COMMENT ON COLUMN crmls."Property"."PersonalPropertyAmount" IS 'PersonalPropertyAmount';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type7ProFormaRent" IS 'Type7ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ClearanceHeightMax" decimal;
    COMMENT ON COLUMN crmls."Property"."ClearanceHeightMax" IS 'ClearanceHeightMax';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN crmls."Property"."PropertySubType" IS 'PropertySubType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "EntryLocation" text[];
    COMMENT ON COLUMN crmls."Property"."EntryLocation" IS 'EntryLocation';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TimestampListPriceModified" text;
    COMMENT ON COLUMN crmls."Property"."TimestampListPriceModified" IS 'TimestampListPriceModified';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TaxRateYear" integer;
    COMMENT ON COLUMN crmls."Property"."TaxRateYear" IS 'TaxRateYear';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberRange" integer;
    COMMENT ON COLUMN crmls."Property"."NumberRange" IS 'NumberRange';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ManagementCo" text;
    COMMENT ON COLUMN crmls."Property"."ManagementCo" IS 'ManagementCo';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ListPriceIncludes" text;
    COMMENT ON COLUMN crmls."Property"."ListPriceIncludes" IS 'ListPriceIncludes';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DepositOther" integer;
    COMMENT ON COLUMN crmls."Property"."DepositOther" IS 'DepositOther';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BathsOqtr" integer;
    COMMENT ON COLUMN crmls."Property"."BathsOqtr" IS 'BathsOqtr';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SearchTags" text[];
    COMMENT ON COLUMN crmls."Property"."SearchTags" IS 'SearchTags';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateLeaseBegins" text;
    COMMENT ON COLUMN crmls."Property"."DateLeaseBegins" IS 'DateLeaseBegins';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenIndoorAirQuality" text[];
    COMMENT ON COLUMN crmls."Property"."GreenIndoorAirQuality" IS 'GreenIndoorAirQuality';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Rooms" text[];
    COMMENT ON COLUMN crmls."Property"."Rooms" IS 'Rooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Skirt" text[];
    COMMENT ON COLUMN crmls."Property"."Skirt" IS 'Skirt';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MonthlyNNN" integer;
    COMMENT ON COLUMN crmls."Property"."MonthlyNNN" IS 'MonthlyNNN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type6GarageSpaces" IS 'Type6GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MonthlyGrossIncome" integer;
    COMMENT ON COLUMN crmls."Property"."MonthlyGrossIncome" IS 'MonthlyGrossIncome';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OtherExpenseDescription" text;
    COMMENT ON COLUMN crmls."Property"."OtherExpenseDescription" IS 'OtherExpenseDescription';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberRefrigerator" integer;
    COMMENT ON COLUMN crmls."Property"."NumberRefrigerator" IS 'NumberRefrigerator';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ListingType" text;
    COMMENT ON COLUMN crmls."Property"."ListingType" IS 'ListingType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ShowingContactType" text;
    COMMENT ON COLUMN crmls."Property"."ShowingContactType" IS 'ShowingContactType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN crmls."Property"."StreetName" IS 'StreetName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5Units" text;
    COMMENT ON COLUMN crmls."Property"."Type5Units" IS 'Type5Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateLandLeaseExp" text;
    COMMENT ON COLUMN crmls."Property"."DateLandLeaseExp" IS 'DateLandLeaseExp';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type4Bedrooms" IS 'Type4Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "State" text;
    COMMENT ON COLUMN crmls."Property"."State" IS 'State';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OfficeClass" text;
    COMMENT ON COLUMN crmls."Property"."OfficeClass" IS 'OfficeClass';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TenantPays" text[];
    COMMENT ON COLUMN crmls."Property"."TenantPays" IS 'TenantPays';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type7SquareFootage" IS 'Type7SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."GarageAttached" IS 'GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CDOM" integer;
    COMMENT ON COLUMN crmls."Property"."CDOM" IS 'CDOM';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ActualRentTotal" integer;
    COMMENT ON COLUMN crmls."Property"."ActualRentTotal" IS 'ActualRentTotal';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type4Furnished" IS 'Type4Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AssessmentsYN" boolean;
    COMMENT ON COLUMN crmls."Property"."AssessmentsYN" IS 'AssessmentsYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type5SquareFootage" IS 'Type5SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WaterTableDepth" integer;
    COMMENT ON COLUMN crmls."Property"."WaterTableDepth" IS 'WaterTableDepth';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WellHoleSize" integer;
    COMMENT ON COLUMN crmls."Property"."WellHoleSize" IS 'WellHoleSize';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SquareFootage1Bedroom" integer;
    COMMENT ON COLUMN crmls."Property"."SquareFootage1Bedroom" IS 'SquareFootage1Bedroom';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PropertyTax" integer;
    COMMENT ON COLUMN crmls."Property"."PropertyTax" IS 'PropertyTax';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Stories" text;
    COMMENT ON COLUMN crmls."Property"."Stories" IS 'Stories';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type3ProFormaRent" IS 'Type3ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Utilities" text[];
    COMMENT ON COLUMN crmls."Property"."Utilities" IS 'Utilities';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AssociationYN" boolean;
    COMMENT ON COLUMN crmls."Property"."AssociationYN" IS 'AssociationYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Disclosures" text[];
    COMMENT ON COLUMN crmls."Property"."Disclosures" IS 'Disclosures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN crmls."Property"."ExteriorFeatures" IS 'ExteriorFeatures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BuildingExpenses" decimal;
    COMMENT ON COLUMN crmls."Property"."BuildingExpenses" IS 'BuildingExpenses';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberGasMeters" integer;
    COMMENT ON COLUMN crmls."Property"."NumberGasMeters" IS 'NumberGasMeters';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COLA_VoicemailExt" integer;
    COMMENT ON COLUMN crmls."Property"."COLA_VoicemailExt" IS 'COLA_VoicemailExt';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Association" text[];
    COMMENT ON COLUMN crmls."Property"."Association" IS 'Association';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type13ActualRent" IS 'Type13ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ContactOrder5" text;
    COMMENT ON COLUMN crmls."Property"."ContactOrder5" IS 'ContactOrder5';
     
    ALTER TABLE crmls."Property" ADD COLUMN "FireplaceYN" boolean;
    COMMENT ON COLUMN crmls."Property"."FireplaceYN" IS 'FireplaceYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToStores" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToStores" IS 'DistanceToStores';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ConcessionsAmount" integer;
    COMMENT ON COLUMN crmls."Property"."ConcessionsAmount" IS 'ConcessionsAmount';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN crmls."Property"."DOM" IS 'DOM';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberBuildings" integer;
    COMMENT ON COLUMN crmls."Property"."NumberBuildings" IS 'NumberBuildings';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type13SquareFootage" IS 'Type13SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type12GarageSpaces" IS 'Type12GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ContactOrder1" text;
    COMMENT ON COLUMN crmls."Property"."ContactOrder1" IS 'ContactOrder1';
     
    ALTER TABLE crmls."Property" ADD COLUMN "APN" text;
    COMMENT ON COLUMN crmls."Property"."APN" IS 'APN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LandUse" text[];
    COMMENT ON COLUMN crmls."Property"."LandUse" IS 'LandUse';
     
    ALTER TABLE crmls."Property" ADD COLUMN "KeySafeLocation" text[];
    COMMENT ON COLUMN crmls."Property"."KeySafeLocation" IS 'KeySafeLocation';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GrossEquity" integer;
    COMMENT ON COLUMN crmls."Property"."GrossEquity" IS 'GrossEquity';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberGarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."NumberGarageSpaces" IS 'NumberGarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AssociationDues2Frequency" text;
    COMMENT ON COLUMN crmls."Property"."AssociationDues2Frequency" IS 'AssociationDues2Frequency';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GrossMonthlyIncome" integer;
    COMMENT ON COLUMN crmls."Property"."GrossMonthlyIncome" IS 'GrossMonthlyIncome';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LA_StateLicenseNumber" text;
    COMMENT ON COLUMN crmls."Property"."LA_StateLicenseNumber" IS 'LA_StateLicenseNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OtherPhoneDescription" text;
    COMMENT ON COLUMN crmls."Property"."OtherPhoneDescription" IS 'OtherPhoneDescription';
     
    ALTER TABLE crmls."Property" ADD COLUMN "StructuralCondition" text[];
    COMMENT ON COLUMN crmls."Property"."StructuralCondition" IS 'StructuralCondition';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Style" text[];
    COMMENT ON COLUMN crmls."Property"."Style" IS 'Style';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LastChangeType" text;
    COMMENT ON COLUMN crmls."Property"."LastChangeType" IS 'LastChangeType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DOH3" text;
    COMMENT ON COLUMN crmls."Property"."DOH3" IS 'DOH3';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PreviousPrice" integer;
    COMMENT ON COLUMN crmls."Property"."PreviousPrice" IS 'PreviousPrice';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type2ActualRent" IS 'Type2ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type7Bedrooms" IS 'Type7Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BuildingStatus" text;
    COMMENT ON COLUMN crmls."Property"."BuildingStatus" IS 'BuildingStatus';
     
    ALTER TABLE crmls."Property" ADD COLUMN "View" text[];
    COMMENT ON COLUMN crmls."Property"."View" IS 'View';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type3SquareFootage" IS 'Type3SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type6ProFormaRent" IS 'Type6ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type4GarageAttached" IS 'Type4GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type1Furnished" IS 'Type1Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LandValuePercent" decimal;
    COMMENT ON COLUMN crmls."Property"."LandValuePercent" IS 'LandValuePercent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TractMap" text;
    COMMENT ON COLUMN crmls."Property"."TractMap" IS 'TractMap';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LargestContigiousSquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."LargestContigiousSquareFootage" IS 'LargestContigiousSquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NetOperatingIncome" integer;
    COMMENT ON COLUMN crmls."Property"."NetOperatingIncome" IS 'NetOperatingIncome';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AdNumber" text;
    COMMENT ON COLUMN crmls."Property"."AdNumber" IS 'AdNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MLnumber" text;
    COMMENT ON COLUMN crmls."Property"."MLnumber" IS 'MLnumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type2SquareFootage" IS 'Type2SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberDrapes" integer;
    COMMENT ON COLUMN crmls."Property"."NumberDrapes" IS 'NumberDrapes';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AdvertisingExpense" integer;
    COMMENT ON COLUMN crmls."Property"."AdvertisingExpense" IS 'AdvertisingExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LessorProvides" text[];
    COMMENT ON COLUMN crmls."Property"."LessorProvides" IS 'LessorProvides';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TransferFeePaidBy" text;
    COMMENT ON COLUMN crmls."Property"."TransferFeePaidBy" IS 'TransferFeePaidBy';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SquareFootage3Bedroom" integer;
    COMMENT ON COLUMN crmls."Property"."SquareFootage3Bedroom" IS 'SquareFootage3Bedroom';
     
    ALTER TABLE crmls."Property" ADD COLUMN "IncomeOtherDesc" text;
    COMMENT ON COLUMN crmls."Property"."IncomeOtherDesc" IS 'IncomeOtherDesc';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AgentRemarks" text;
    COMMENT ON COLUMN crmls."Property"."AgentRemarks" IS 'AgentRemarks';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type6Furnished" IS 'Type6Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Amperage" text;
    COMMENT ON COLUMN crmls."Property"."Amperage" IS 'Amperage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OfficeType" text;
    COMMENT ON COLUMN crmls."Property"."OfficeType" IS 'OfficeType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COLA_PublicID" text;
    COMMENT ON COLUMN crmls."Property"."COLA_PublicID" IS 'COLA_PublicID';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CondoSquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."CondoSquareFootage" IS 'CondoSquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BuildersTractCode" text;
    COMMENT ON COLUMN crmls."Property"."BuildersTractCode" IS 'BuildersTractCode';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LandFeeLease" text;
    COMMENT ON COLUMN crmls."Property"."LandFeeLease" IS 'LandFeeLease';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ParcelNumber" integer;
    COMMENT ON COLUMN crmls."Property"."ParcelNumber" IS 'ParcelNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PostalCodePlus4" text;
    COMMENT ON COLUMN crmls."Property"."PostalCodePlus4" IS 'PostalCodePlus4';
     
    ALTER TABLE crmls."Property" ADD COLUMN "IndustrialSquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."IndustrialSquareFootage" IS 'IndustrialSquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LandLeasePurchaseYN" boolean;
    COMMENT ON COLUMN crmls."Property"."LandLeasePurchaseYN" IS 'LandLeasePurchaseYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TaxArea" text;
    COMMENT ON COLUMN crmls."Property"."TaxArea" IS 'TaxArea';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Elevation" text;
    COMMENT ON COLUMN crmls."Property"."Elevation" IS 'Elevation';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ModelCode" text;
    COMMENT ON COLUMN crmls."Property"."ModelCode" IS 'ModelCode';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ListingKey" integer PRIMARY KEY;
    COMMENT ON COLUMN crmls."Property"."ListingKey" IS 'ListingKey';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TotalSquareFootageMin" integer;
    COMMENT ON COLUMN crmls."Property"."TotalSquareFootageMin" IS 'TotalSquareFootageMin';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AccountingType" text;
    COMMENT ON COLUMN crmls."Property"."AccountingType" IS 'AccountingType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ReasonForSelling" text;
    COMMENT ON COLUMN crmls."Property"."ReasonForSelling" IS 'ReasonForSelling';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SerialU" text;
    COMMENT ON COLUMN crmls."Property"."SerialU" IS 'SerialU';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type5ActualRent" IS 'Type5ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LotNumber" text;
    COMMENT ON COLUMN crmls."Property"."LotNumber" IS 'LotNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateHoldActivation" text;
    COMMENT ON COLUMN crmls."Property"."DateHoldActivation" IS 'DateHoldActivation';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OperationHours" text;
    COMMENT ON COLUMN crmls."Property"."OperationHours" IS 'OperationHours';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LandLeaseAmount" integer;
    COMMENT ON COLUMN crmls."Property"."LandLeaseAmount" IS 'LandLeaseAmount';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberUnits" integer;
    COMMENT ON COLUMN crmls."Property"."NumberUnits" IS 'NumberUnits';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ManagersFax" text;
    COMMENT ON COLUMN crmls."Property"."ManagersFax" IS 'ManagersFax';
     
    ALTER TABLE crmls."Property" ADD COLUMN "StreetDirectionSuffix" text;
    COMMENT ON COLUMN crmls."Property"."StreetDirectionSuffix" IS 'StreetDirectionSuffix';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BrokerLoadedYN" boolean;
    COMMENT ON COLUMN crmls."Property"."BrokerLoadedYN" IS 'BrokerLoadedYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type13TotalRent" IS 'Type13TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Zone" text;
    COMMENT ON COLUMN crmls."Property"."Zone" IS 'Zone';
     
    ALTER TABLE crmls."Property" ADD COLUMN "EquipmentValue" integer;
    COMMENT ON COLUMN crmls."Property"."EquipmentValue" IS 'EquipmentValue';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8Units" text;
    COMMENT ON COLUMN crmls."Property"."Type8Units" IS 'Type8Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type13ProFormaRent" IS 'Type13ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenWaterConservation" text[];
    COMMENT ON COLUMN crmls."Property"."GreenWaterConservation" IS 'GreenWaterConservation';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SuppliesExpense" integer;
    COMMENT ON COLUMN crmls."Property"."SuppliesExpense" IS 'SuppliesExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Appliances" text[];
    COMMENT ON COLUMN crmls."Property"."Appliances" IS 'Appliances';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type11Furnished" IS 'Type11Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ServiceType" text;
    COMMENT ON COLUMN crmls."Property"."ServiceType" IS 'ServiceType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Cooling" text[];
    COMMENT ON COLUMN crmls."Property"."Cooling" IS 'Cooling';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DivisibleSQFT" integer;
    COMMENT ON COLUMN crmls."Property"."DivisibleSQFT" IS 'DivisibleSQFT';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AssetClass" text[];
    COMMENT ON COLUMN crmls."Property"."AssetClass" IS 'AssetClass';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type3GarageSpaces" IS 'Type3GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberWaterMeters" integer;
    COMMENT ON COLUMN crmls."Property"."NumberWaterMeters" IS 'NumberWaterMeters';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Survey" text[];
    COMMENT ON COLUMN crmls."Property"."Survey" IS 'Survey';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type11GarageAttached" IS 'Type11GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CurrentUse" text;
    COMMENT ON COLUMN crmls."Property"."CurrentUse" IS 'CurrentUse';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type11ActualRent" IS 'Type11ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GrossOperatingIncome" integer;
    COMMENT ON COLUMN crmls."Property"."GrossOperatingIncome" IS 'GrossOperatingIncome';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type10GarageSpaces" IS 'Type10GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "KeySafeDescription" text[];
    COMMENT ON COLUMN crmls."Property"."KeySafeDescription" IS 'KeySafeDescription';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TimestampStatusChange" text;
    COMMENT ON COLUMN crmls."Property"."TimestampStatusChange" IS 'TimestampStatusChange';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberDishwasher" integer;
    COMMENT ON COLUMN crmls."Property"."NumberDishwasher" IS 'NumberDishwasher';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Points" text;
    COMMENT ON COLUMN crmls."Property"."Points" IS 'Points';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ElectricExpense" integer;
    COMMENT ON COLUMN crmls."Property"."ElectricExpense" IS 'ElectricExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PetsAllowed" text;
    COMMENT ON COLUMN crmls."Property"."PetsAllowed" IS 'PetsAllowed';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type12Baths" IS 'Type12Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type8TotalRent" IS 'Type8TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TaxesPercent" decimal;
    COMMENT ON COLUMN crmls."Property"."TaxesPercent" IS 'TaxesPercent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BuildingFeatures" text[];
    COMMENT ON COLUMN crmls."Property"."BuildingFeatures" IS 'BuildingFeatures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Spa" text[];
    COMMENT ON COLUMN crmls."Property"."Spa" IS 'Spa';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PartTimeEmployees" integer;
    COMMENT ON COLUMN crmls."Property"."PartTimeEmployees" IS 'PartTimeEmployees';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NetProfit" integer;
    COMMENT ON COLUMN crmls."Property"."NetProfit" IS 'NetProfit';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WellPumpHorsepower" decimal;
    COMMENT ON COLUMN crmls."Property"."WellPumpHorsepower" IS 'WellPumpHorsepower';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type10GarageAttached" IS 'Type10GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CDOMResetYN" boolean;
    COMMENT ON COLUMN crmls."Property"."CDOMResetYN" IS 'CDOMResetYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2Description" text;
    COMMENT ON COLUMN crmls."Property"."Type2Description" IS 'Type2Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Phase" text;
    COMMENT ON COLUMN crmls."Property"."Phase" IS 'Phase';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OperatingExpense" integer;
    COMMENT ON COLUMN crmls."Property"."OperatingExpense" IS 'OperatingExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Laundry" text[];
    COMMENT ON COLUMN crmls."Property"."Laundry" IS 'Laundry';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."NumberSpaces" IS 'NumberSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ImprovementsAmount" integer;
    COMMENT ON COLUMN crmls."Property"."ImprovementsAmount" IS 'ImprovementsAmount';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LegalAccountingExpense" integer;
    COMMENT ON COLUMN crmls."Property"."LegalAccountingExpense" IS 'LegalAccountingExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LaundryYN" boolean;
    COMMENT ON COLUMN crmls."Property"."LaundryYN" IS 'LaundryYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type8SquareFootage" IS 'Type8SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COLO_Name" text;
    COMMENT ON COLUMN crmls."Property"."COLO_Name" IS 'COLO_Name';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateLeased" text;
    COMMENT ON COLUMN crmls."Property"."DateLeased" IS 'DateLeased';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1Units" text;
    COMMENT ON COLUMN crmls."Property"."Type1Units" IS 'Type1Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenSustainability" text[];
    COMMENT ON COLUMN crmls."Property"."GreenSustainability" IS 'GreenSustainability';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToWater" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToWater" IS 'DistanceToWater';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ParkType" text;
    COMMENT ON COLUMN crmls."Property"."ParkType" IS 'ParkType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LicensesExpense" integer;
    COMMENT ON COLUMN crmls."Property"."LicensesExpense" IS 'LicensesExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Piccount" integer;
    COMMENT ON COLUMN crmls."Property"."Piccount" IS 'Piccount';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RentIncludes" text[];
    COMMENT ON COLUMN crmls."Property"."RentIncludes" IS 'RentIncludes';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CashiersCheck" text[];
    COMMENT ON COLUMN crmls."Property"."CashiersCheck" IS 'CashiersCheck';
     
    ALTER TABLE crmls."Property" ADD COLUMN "InternetSendListingYN" boolean;
    COMMENT ON COLUMN crmls."Property"."InternetSendListingYN" IS 'InternetSendListingYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LO_Name" text;
    COMMENT ON COLUMN crmls."Property"."LO_Name" IS 'LO_Name';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ContactOrder2" text;
    COMMENT ON COLUMN crmls."Property"."ContactOrder2" IS 'ContactOrder2';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type1Bedrooms" IS 'Type1Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RenewalPurchaseComp" text[];
    COMMENT ON COLUMN crmls."Property"."RenewalPurchaseComp" IS 'RenewalPurchaseComp';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COSA_PublicID" text;
    COMMENT ON COLUMN crmls."Property"."COSA_PublicID" IS 'COSA_PublicID';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToElectric" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToElectric" IS 'DistanceToElectric';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GrossScheduledIncome" integer;
    COMMENT ON COLUMN crmls."Property"."GrossScheduledIncome" IS 'GrossScheduledIncome';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateCmaStatus" text;
    COMMENT ON COLUMN crmls."Property"."DateCmaStatus" IS 'DateCmaStatus';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CrossStreets" text;
    COMMENT ON COLUMN crmls."Property"."CrossStreets" IS 'CrossStreets';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN crmls."Property"."Directions" IS 'Directions';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type13Bedrooms" IS 'Type13Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenWalkScore" integer;
    COMMENT ON COLUMN crmls."Property"."GreenWalkScore" IS 'GreenWalkScore';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenEnergyEfficient" text[];
    COMMENT ON COLUMN crmls."Property"."GreenEnergyEfficient" IS 'GreenEnergyEfficient';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LotSizeType" text;
    COMMENT ON COLUMN crmls."Property"."LotSizeType" IS 'LotSizeType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ParkingYN" boolean;
    COMMENT ON COLUMN crmls."Property"."ParkingYN" IS 'ParkingYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LO_Code" text;
    COMMENT ON COLUMN crmls."Property"."LO_Code" IS 'LO_Code';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SquareFootageBuilding" integer;
    COMMENT ON COLUMN crmls."Property"."SquareFootageBuilding" IS 'SquareFootageBuilding';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type11TotalRent" IS 'Type11TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberCarpet" integer;
    COMMENT ON COLUMN crmls."Property"."NumberCarpet" IS 'NumberCarpet';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DoorFeatures" text[];
    COMMENT ON COLUMN crmls."Property"."DoorFeatures" IS 'DoorFeatures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type6Bedrooms" IS 'Type6Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type11ProFormaRent" IS 'Type11ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Area" text;
    COMMENT ON COLUMN crmls."Property"."Area" IS 'Area';
     
    ALTER TABLE crmls."Property" ADD COLUMN "StreetSuffixModifier" text;
    COMMENT ON COLUMN crmls."Property"."StreetSuffixModifier" IS 'StreetSuffixModifier';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PricePerSQFTLot" decimal;
    COMMENT ON COLUMN crmls."Property"."PricePerSQFTLot" IS 'PricePerSQFTLot';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type6SquareFootage" IS 'Type6SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SpaYN" boolean;
    COMMENT ON COLUMN crmls."Property"."SpaYN" IS 'SpaYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PricePerUnit" integer;
    COMMENT ON COLUMN crmls."Property"."PricePerUnit" IS 'PricePerUnit';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN crmls."Property"."Status" IS 'Status';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WaterDistrictName" text;
    COMMENT ON COLUMN crmls."Property"."WaterDistrictName" IS 'WaterDistrictName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11Units" text;
    COMMENT ON COLUMN crmls."Property"."Type11Units" IS 'Type11Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GasExpense" integer;
    COMMENT ON COLUMN crmls."Property"."GasExpense" IS 'GasExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SerialX" text;
    COMMENT ON COLUMN crmls."Property"."SerialX" IS 'SerialX';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3Units" text;
    COMMENT ON COLUMN crmls."Property"."Type3Units" IS 'Type3Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "EntryLevel" integer;
    COMMENT ON COLUMN crmls."Property"."EntryLevel" IS 'EntryLevel';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TransferFee" integer;
    COMMENT ON COLUMN crmls."Property"."TransferFee" IS 'TransferFee';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Improvements" text;
    COMMENT ON COLUMN crmls."Property"."Improvements" IS 'Improvements';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type12GarageAttached" IS 'Type12GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type10ActualRent" IS 'Type10ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN crmls."Property"."StreetSuffix" IS 'StreetSuffix';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToPhoneService" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToPhoneService" IS 'DistanceToPhoneService';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TaxRateTotal" decimal;
    COMMENT ON COLUMN crmls."Property"."TaxRateTotal" IS 'TaxRateTotal';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WorkersCompensation" integer;
    COMMENT ON COLUMN crmls."Property"."WorkersCompensation" IS 'WorkersCompensation';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type9ActualRent" IS 'Type9ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type10Baths" IS 'Type10Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type3Baths" IS 'Type3Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "StreetDirection" text;
    COMMENT ON COLUMN crmls."Property"."StreetDirection" IS 'StreetDirection';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RentControlYN" boolean;
    COMMENT ON COLUMN crmls."Property"."RentControlYN" IS 'RentControlYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TotalExpenses" integer;
    COMMENT ON COLUMN crmls."Property"."TotalExpenses" IS 'TotalExpenses';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type12ActualRent" IS 'Type12ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type5Furnished" IS 'Type5Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SourceKey" integer;
    COMMENT ON COLUMN crmls."Property"."SourceKey" IS 'SourceKey';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ShowingContactPhone" text;
    COMMENT ON COLUMN crmls."Property"."ShowingContactPhone" IS 'ShowingContactPhone';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13Units" text;
    COMMENT ON COLUMN crmls."Property"."Type13Units" IS 'Type13Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SupplementCount" integer;
    COMMENT ON COLUMN crmls."Property"."SupplementCount" IS 'SupplementCount';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OtherIncome1" integer;
    COMMENT ON COLUMN crmls."Property"."OtherIncome1" IS 'OtherIncome1';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AdditionalDimensions" text;
    COMMENT ON COLUMN crmls."Property"."AdditionalDimensions" IS 'AdditionalDimensions';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ImprovementsPercent" decimal;
    COMMENT ON COLUMN crmls."Property"."ImprovementsPercent" IS 'ImprovementsPercent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type2GarageSpaces" IS 'Type2GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ManagersPhoneExt" integer;
    COMMENT ON COLUMN crmls."Property"."ManagersPhoneExt" IS 'ManagersPhoneExt';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Terms" text;
    COMMENT ON COLUMN crmls."Property"."Terms" IS 'Terms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OtherExpense" integer;
    COMMENT ON COLUMN crmls."Property"."OtherExpense" IS 'OtherExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LotSquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."LotSquareFootage" IS 'LotSquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WaterSource" text[];
    COMMENT ON COLUMN crmls."Property"."WaterSource" IS 'WaterSource';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OfficeSquareFootageMax" integer;
    COMMENT ON COLUMN crmls."Property"."OfficeSquareFootageMax" IS 'OfficeSquareFootageMax';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SeatingCapacity" integer;
    COMMENT ON COLUMN crmls."Property"."SeatingCapacity" IS 'SeatingCapacity';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PestExpense" integer;
    COMMENT ON COLUMN crmls."Property"."PestExpense" IS 'PestExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type12TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type12TotalRent" IS 'Type12TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type6GarageAttached" IS 'Type6GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7Units" text;
    COMMENT ON COLUMN crmls."Property"."Type7Units" IS 'Type7Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "FinancingAvailableYN" boolean;
    COMMENT ON COLUMN crmls."Property"."FinancingAvailableYN" IS 'FinancingAvailableYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CreditAmount" integer;
    COMMENT ON COLUMN crmls."Property"."CreditAmount" IS 'CreditAmount';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OfficeSquareFootageMin" integer;
    COMMENT ON COLUMN crmls."Property"."OfficeSquareFootageMin" IS 'OfficeSquareFootageMin';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberParkingSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."NumberParkingSpaces" IS 'NumberParkingSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ManagementCoPhoneExt" integer;
    COMMENT ON COLUMN crmls."Property"."ManagementCoPhoneExt" IS 'ManagementCoPhoneExt';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GarageRentalRate" integer;
    COMMENT ON COLUMN crmls."Property"."GarageRentalRate" IS 'GarageRentalRate';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type10Furnished" IS 'Type10Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ShowingContactName" text;
    COMMENT ON COLUMN crmls."Property"."ShowingContactName" IS 'ShowingContactName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "UsableLandPercent" text;
    COMMENT ON COLUMN crmls."Property"."UsableLandPercent" IS 'UsableLandPercent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type7ActualRent" IS 'Type7ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LA_FirstName" text;
    COMMENT ON COLUMN crmls."Property"."LA_FirstName" IS 'LA_FirstName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN crmls."Property"."PropertyType" IS 'PropertyType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "VirtualTour" text;
    COMMENT ON COLUMN crmls."Property"."VirtualTour" IS 'VirtualTour';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type6Baths" IS 'Type6Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TimestampModified" text;
    COMMENT ON COLUMN crmls."Property"."TimestampModified" IS 'TimestampModified';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ViewYN" boolean;
    COMMENT ON COLUMN crmls."Property"."ViewYN" IS 'ViewYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SecurityFeatures" text[];
    COMMENT ON COLUMN crmls."Property"."SecurityFeatures" IS 'SecurityFeatures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "InternetSendAddressYN" boolean;
    COMMENT ON COLUMN crmls."Property"."InternetSendAddressYN" IS 'InternetSendAddressYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ListingBoard" text;
    COMMENT ON COLUMN crmls."Property"."ListingBoard" IS 'ListingBoard';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type10SquareFootage" IS 'Type10SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ParcelMapNumber" integer;
    COMMENT ON COLUMN crmls."Property"."ParcelMapNumber" IS 'ParcelMapNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type3Furnished" IS 'Type3Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberTenants" integer;
    COMMENT ON COLUMN crmls."Property"."NumberTenants" IS 'NumberTenants';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type2GarageAttached" IS 'Type2GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type9Furnished" IS 'Type9Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MaintenanceExpense" integer;
    COMMENT ON COLUMN crmls."Property"."MaintenanceExpense" IS 'MaintenanceExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type2TotalRent" IS 'Type2TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CoolingYN" boolean;
    COMMENT ON COLUMN crmls."Property"."CoolingYN" IS 'CoolingYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "IndustrialType" text[];
    COMMENT ON COLUMN crmls."Property"."IndustrialType" IS 'IndustrialType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GrossScheduleRents" integer;
    COMMENT ON COLUMN crmls."Property"."GrossScheduleRents" IS 'GrossScheduleRents';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BusinessName" text;
    COMMENT ON COLUMN crmls."Property"."BusinessName" IS 'BusinessName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SprinklersYN" boolean;
    COMMENT ON COLUMN crmls."Property"."SprinklersYN" IS 'SprinklersYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LA_LastName" text;
    COMMENT ON COLUMN crmls."Property"."LA_LastName" IS 'LA_LastName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ListingTerms" text[];
    COMMENT ON COLUMN crmls."Property"."ListingTerms" IS 'ListingTerms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TotalSquareFootageMax" integer;
    COMMENT ON COLUMN crmls."Property"."TotalSquareFootageMax" IS 'TotalSquareFootageMax';
     
    ALTER TABLE crmls."Property" ADD COLUMN "EatingArea" text[];
    COMMENT ON COLUMN crmls."Property"."EatingArea" IS 'EatingArea';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OperationDays" text;
    COMMENT ON COLUMN crmls."Property"."OperationDays" IS 'OperationDays';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AutoSoldYN" boolean;
    COMMENT ON COLUMN crmls."Property"."AutoSoldYN" IS 'AutoSoldYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Patio" text[];
    COMMENT ON COLUMN crmls."Property"."Patio" IS 'Patio';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11SquareFootage" integer;
    COMMENT ON COLUMN crmls."Property"."Type11SquareFootage" IS 'Type11SquareFootage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SecurityExpense" integer;
    COMMENT ON COLUMN crmls."Property"."SecurityExpense" IS 'SecurityExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WaterWellYN" boolean;
    COMMENT ON COLUMN crmls."Property"."WaterWellYN" IS 'WaterWellYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateClosedSale" text;
    COMMENT ON COLUMN crmls."Property"."DateClosedSale" IS 'DateClosedSale';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type3Bedrooms" IS 'Type3Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "HoursOwnerWorks" integer;
    COMMENT ON COLUMN crmls."Property"."HoursOwnerWorks" IS 'HoursOwnerWorks';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SellingBoard" text;
    COMMENT ON COLUMN crmls."Property"."SellingBoard" IS 'SellingBoard';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AssociationDues2" integer;
    COMMENT ON COLUMN crmls."Property"."AssociationDues2" IS 'AssociationDues2';
     
    ALTER TABLE crmls."Property" ADD COLUMN "VacancyAllowPercent" decimal;
    COMMENT ON COLUMN crmls."Property"."VacancyAllowPercent" IS 'VacancyAllowPercent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ProFormaRentTotal" integer;
    COMMENT ON COLUMN crmls."Property"."ProFormaRentTotal" IS 'ProFormaRentTotal';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type3TotalRent" IS 'Type3TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberUncoveredSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."NumberUncoveredSpaces" IS 'NumberUncoveredSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AssignableYN" boolean;
    COMMENT ON COLUMN crmls."Property"."AssignableYN" IS 'AssignableYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AccessibilityFeatures" text[];
    COMMENT ON COLUMN crmls."Property"."AccessibilityFeatures" IS 'AccessibilityFeatures';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateCanceled" text;
    COMMENT ON COLUMN crmls."Property"."DateCanceled" IS 'DateCanceled';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type4GarageSpaces" IS 'Type4GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GarageIncome" integer;
    COMMENT ON COLUMN crmls."Property"."GarageIncome" IS 'GarageIncome';
     
    ALTER TABLE crmls."Property" ADD COLUMN "FinancialInfoAsOf" text;
    COMMENT ON COLUMN crmls."Property"."FinancialInfoAsOf" IS 'FinancialInfoAsOf';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Cleared" text;
    COMMENT ON COLUMN crmls."Property"."Cleared" IS 'Cleared';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type5GarageAttached" IS 'Type5GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LandLeaseTransferFee" integer;
    COMMENT ON COLUMN crmls."Property"."LandLeaseTransferFee" IS 'LandLeaseTransferFee';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Show" text[];
    COMMENT ON COLUMN crmls."Property"."Show" IS 'Show';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Furnished" IS 'Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type9TotalRent" IS 'Type9TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OtherPhoneExt" integer;
    COMMENT ON COLUMN crmls."Property"."OtherPhoneExt" IS 'OtherPhoneExt';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToChurches" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToChurches" IS 'DistanceToChurches';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MaintenancePercent" decimal;
    COMMENT ON COLUMN crmls."Property"."MaintenancePercent" IS 'MaintenancePercent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type6Description" text;
    COMMENT ON COLUMN crmls."Property"."Type6Description" IS 'Type6Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ListPriceLow" integer;
    COMMENT ON COLUMN crmls."Property"."ListPriceLow" IS 'ListPriceLow';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN crmls."Property"."MLSID" IS 'MLSID';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Pool" text[];
    COMMENT ON COLUMN crmls."Property"."Pool" IS 'Pool';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DateListingContract" text;
    COMMENT ON COLUMN crmls."Property"."DateListingContract" IS 'DateListingContract';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type2Units" text;
    COMMENT ON COLUMN crmls."Property"."Type2Units" IS 'Type2Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type10TotalRent" IS 'Type10TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7Description" text;
    COMMENT ON COLUMN crmls."Property"."Type7Description" IS 'Type7Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Country" text;
    COMMENT ON COLUMN crmls."Property"."Country" IS 'Country';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LotSize" decimal;
    COMMENT ON COLUMN crmls."Property"."LotSize" IS 'LotSize';
     
    ALTER TABLE crmls."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN crmls."Property"."City" IS 'City';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TotalBuildingNRA" integer;
    COMMENT ON COLUMN crmls."Property"."TotalBuildingNRA" IS 'TotalBuildingNRA';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SaleType" text[];
    COMMENT ON COLUMN crmls."Property"."SaleType" IS 'SaleType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "YearEstablished" integer;
    COMMENT ON COLUMN crmls."Property"."YearEstablished" IS 'YearEstablished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TaxesTotal" integer;
    COMMENT ON COLUMN crmls."Property"."TaxesTotal" IS 'TaxesTotal';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LandValue" integer;
    COMMENT ON COLUMN crmls."Property"."LandValue" IS 'LandValue';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OtherPhoneNumber" text;
    COMMENT ON COLUMN crmls."Property"."OtherPhoneNumber" IS 'OtherPhoneNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PhotoNotes" text;
    COMMENT ON COLUMN crmls."Property"."PhotoNotes" IS 'PhotoNotes';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AppliancesYN" boolean;
    COMMENT ON COLUMN crmls."Property"."AppliancesYN" IS 'AppliancesYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1Description" text;
    COMMENT ON COLUMN crmls."Property"."Type1Description" IS 'Type1Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COSO_Name" text;
    COMMENT ON COLUMN crmls."Property"."COSO_Name" IS 'COSO_Name';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type13GarageSpaces" IS 'Type13GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4Units" text;
    COMMENT ON COLUMN crmls."Property"."Type4Units" IS 'Type4Units';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Floor" text[];
    COMMENT ON COLUMN crmls."Property"."Floor" IS 'Floor';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BusinessURL" text;
    COMMENT ON COLUMN crmls."Property"."BusinessURL" IS 'BusinessURL';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberWallAC" integer;
    COMMENT ON COLUMN crmls."Property"."NumberWallAC" IS 'NumberWallAC';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type7TotalRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type7TotalRent" IS 'Type7TotalRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToBus" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToBus" IS 'DistanceToBus';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Make" text;
    COMMENT ON COLUMN crmls."Property"."Make" IS 'Make';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Length" integer;
    COMMENT ON COLUMN crmls."Property"."Length" IS 'Length';
     
    ALTER TABLE crmls."Property" ADD COLUMN "BusinessType" text;
    COMMENT ON COLUMN crmls."Property"."BusinessType" IS 'BusinessType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TotalMonthlyRent" integer;
    COMMENT ON COLUMN crmls."Property"."TotalMonthlyRent" IS 'TotalMonthlyRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TrashExpense" integer;
    COMMENT ON COLUMN crmls."Property"."TrashExpense" IS 'TrashExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type11Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type11Bedrooms" IS 'Type11Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Trees" text;
    COMMENT ON COLUMN crmls."Property"."Trees" IS 'Trees';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COSA_LastName" text;
    COMMENT ON COLUMN crmls."Property"."COSA_LastName" IS 'COSA_LastName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type10ProFormaRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type10ProFormaRent" IS 'Type10ProFormaRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COLA_FirstName" text;
    COMMENT ON COLUMN crmls."Property"."COLA_FirstName" IS 'COLA_FirstName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4ActualRent" integer;
    COMMENT ON COLUMN crmls."Property"."Type4ActualRent" IS 'Type4ActualRent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LaundryEquipment" text;
    COMMENT ON COLUMN crmls."Property"."LaundryEquipment" IS 'LaundryEquipment';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type8GarageAttached" IS 'Type8GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NumberElectricMeters" integer;
    COMMENT ON COLUMN crmls."Property"."NumberElectricMeters" IS 'NumberElectricMeters';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Roofing" text[];
    COMMENT ON COLUMN crmls."Property"."Roofing" IS 'Roofing';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WellGallonsPerMinute" decimal;
    COMMENT ON COLUMN crmls."Property"."WellGallonsPerMinute" IS 'WellGallonsPerMinute';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CommonWalls" text[];
    COMMENT ON COLUMN crmls."Property"."CommonWalls" IS 'CommonWalls';
     
    ALTER TABLE crmls."Property" ADD COLUMN "CreditCheckYN" boolean;
    COMMENT ON COLUMN crmls."Property"."CreditCheckYN" IS 'CreditCheckYN';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SA_StateLicenseNumber" text;
    COMMENT ON COLUMN crmls."Property"."SA_StateLicenseNumber" IS 'SA_StateLicenseNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8Bedrooms" integer;
    COMMENT ON COLUMN crmls."Property"."Type8Bedrooms" IS 'Type8Bedrooms';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TaxTotal" integer;
    COMMENT ON COLUMN crmls."Property"."TaxTotal" IS 'TaxTotal';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Topography" text;
    COMMENT ON COLUMN crmls."Property"."Topography" IS 'Topography';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ListPriceExcludes" text;
    COMMENT ON COLUMN crmls."Property"."ListPriceExcludes" IS 'ListPriceExcludes';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Heating" text[];
    COMMENT ON COLUMN crmls."Property"."Heating" IS 'Heating';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type1GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type1GarageSpaces" IS 'Type1GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "GreenCertificationRating" decimal;
    COMMENT ON COLUMN crmls."Property"."GreenCertificationRating" IS 'GreenCertificationRating';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type9GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type9GarageAttached" IS 'Type9GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ContactOrder3" text;
    COMMENT ON COLUMN crmls."Property"."ContactOrder3" IS 'ContactOrder3';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type3Description" text;
    COMMENT ON COLUMN crmls."Property"."Type3Description" IS 'Type3Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SchoolJuniorHigh" text;
    COMMENT ON COLUMN crmls."Property"."SchoolJuniorHigh" IS 'SchoolJuniorHigh';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SquareFootageStudio" integer;
    COMMENT ON COLUMN crmls."Property"."SquareFootageStudio" IS 'SquareFootageStudio';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PersonalPropertyPercent" decimal;
    COMMENT ON COLUMN crmls."Property"."PersonalPropertyPercent" IS 'PersonalPropertyPercent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "DistanceToStreet" text;
    COMMENT ON COLUMN crmls."Property"."DistanceToStreet" IS 'DistanceToStreet';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ThomasGuide" text;
    COMMENT ON COLUMN crmls."Property"."ThomasGuide" IS 'ThomasGuide';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ModelName" text;
    COMMENT ON COLUMN crmls."Property"."ModelName" IS 'ModelName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SqFtSourceLot" text;
    COMMENT ON COLUMN crmls."Property"."SqFtSourceLot" IS 'SqFtSourceLot';
     
    ALTER TABLE crmls."Property" ADD COLUMN "RVParkingFee" integer;
    COMMENT ON COLUMN crmls."Property"."RVParkingFee" IS 'RVParkingFee';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Fencing" text[];
    COMMENT ON COLUMN crmls."Property"."Fencing" IS 'Fencing';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LesseeProvides" text[];
    COMMENT ON COLUMN crmls."Property"."LesseeProvides" IS 'LesseeProvides';
     
    ALTER TABLE crmls."Property" ADD COLUMN "AssociationName1" text;
    COMMENT ON COLUMN crmls."Property"."AssociationName1" IS 'AssociationName1';
     
    ALTER TABLE crmls."Property" ADD COLUMN "COSA_StateLicenseNumber" text;
    COMMENT ON COLUMN crmls."Property"."COSA_StateLicenseNumber" IS 'COSA_StateLicenseNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TractNumber" text;
    COMMENT ON COLUMN crmls."Property"."TractNumber" IS 'TractNumber';
     
    ALTER TABLE crmls."Property" ADD COLUMN "FurnitureExpense" integer;
    COMMENT ON COLUMN crmls."Property"."FurnitureExpense" IS 'FurnitureExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "LeaseType" text;
    COMMENT ON COLUMN crmls."Property"."LeaseType" IS 'LeaseType';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type5Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type5Baths" IS 'Type5Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type4Baths" decimal;
    COMMENT ON COLUMN crmls."Property"."Type4Baths" IS 'Type4Baths';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TypeOfMobileHome" text;
    COMMENT ON COLUMN crmls."Property"."TypeOfMobileHome" IS 'TypeOfMobileHome';
     
    ALTER TABLE crmls."Property" ADD COLUMN "PoolExpense" integer;
    COMMENT ON COLUMN crmls."Property"."PoolExpense" IS 'PoolExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8GarageSpaces" integer;
    COMMENT ON COLUMN crmls."Property"."Type8GarageSpaces" IS 'Type8GarageSpaces';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13Furnished" text;
    COMMENT ON COLUMN crmls."Property"."Type13Furnished" IS 'Type13Furnished';
     
    ALTER TABLE crmls."Property" ADD COLUMN "TractName" text;
    COMMENT ON COLUMN crmls."Property"."TractName" IS 'TractName';
     
    ALTER TABLE crmls."Property" ADD COLUMN "WellDepth" integer;
    COMMENT ON COLUMN crmls."Property"."WellDepth" IS 'WellDepth';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type13GarageAttached" text;
    COMMENT ON COLUMN crmls."Property"."Type13GarageAttached" IS 'Type13GarageAttached';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Have" text;
    COMMENT ON COLUMN crmls."Property"."Have" IS 'Have';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Voltage" text;
    COMMENT ON COLUMN crmls."Property"."Voltage" IS 'Voltage';
     
    ALTER TABLE crmls."Property" ADD COLUMN "MobileToRemain" boolean;
    COMMENT ON COLUMN crmls."Property"."MobileToRemain" IS 'MobileToRemain';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Width" integer;
    COMMENT ON COLUMN crmls."Property"."Width" IS 'Width';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SquareFootage2Bedroom" integer;
    COMMENT ON COLUMN crmls."Property"."SquareFootage2Bedroom" IS 'SquareFootage2Bedroom';
     
    ALTER TABLE crmls."Property" ADD COLUMN "OperatingExpensePercent" decimal;
    COMMENT ON COLUMN crmls."Property"."OperatingExpensePercent" IS 'OperatingExpensePercent';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Type8Description" text;
    COMMENT ON COLUMN crmls."Property"."Type8Description" IS 'Type8Description';
     
    ALTER TABLE crmls."Property" ADD COLUMN "Model" text;
    COMMENT ON COLUMN crmls."Property"."Model" IS 'Model';
     
    ALTER TABLE crmls."Property" ADD COLUMN "SO_Name" text;
    COMMENT ON COLUMN crmls."Property"."SO_Name" IS 'SO_Name';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ReservesExpense" integer;
    COMMENT ON COLUMN crmls."Property"."ReservesExpense" IS 'ReservesExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "NewTaxesExpense" integer;
    COMMENT ON COLUMN crmls."Property"."NewTaxesExpense" IS 'NewTaxesExpense';
     
    ALTER TABLE crmls."Property" ADD COLUMN "ListPriceOriginal" integer;
    COMMENT ON COLUMN crmls."Property"."ListPriceOriginal" IS 'ListPriceOriginal';
     

COMMIT;