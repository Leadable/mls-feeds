BEGIN;

  CREATE TABLE mtrmls."ActiveAgent"() ;
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "ProfessionalDesignation" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."ProfessionalDesignation" IS 'Professional Designation';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "UserID" text PRIMARY KEY;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."UserID" IS 'User ID';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "MiddleName" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."MiddleName" IS 'Middle Name';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "CreateDate" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."CreateDate" IS 'Create Date';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "LastName" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."LastName" IS 'Last Name';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "FirstName" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."FirstName" IS 'First Name';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "EMail" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."EMail" IS 'Email';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "PreferredPhone" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."PreferredPhone" IS 'Preferred Phone';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "CompanyID" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."CompanyID" IS 'Company ID';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "ModDate" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."ModDate" IS 'Mod Date';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "HomePhone" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."HomePhone" IS 'Home Phone';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "MobilePhone" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."MobilePhone" IS 'Mobile Phone';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "OfficeID" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."OfficeID" IS 'Office ID';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "FullName" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."FullName" IS 'Full Name';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "Web" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."Web" IS 'Web Address';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "PagerNumber" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."PagerNumber" IS 'Pager Number';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "IsActive" boolean;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."IsActive" IS 'Is Active';
     
    ALTER TABLE mtrmls."ActiveAgent" ADD COLUMN "PreferredFax" text;
    COMMENT ON COLUMN mtrmls."ActiveAgent"."PreferredFax" IS 'Preferred Fax';
     
  CREATE TABLE mtrmls."Media"() ;
    ALTER TABLE mtrmls."Media" ADD COLUMN "PhotoLR" text;
    COMMENT ON COLUMN mtrmls."Media"."PhotoLR" IS 'Photo Low Res';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "DisplayOrder" integer;
    COMMENT ON COLUMN mtrmls."Media"."DisplayOrder" IS 'Display Order';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "MediaType" text;
    COMMENT ON COLUMN mtrmls."Media"."MediaType" IS 'Media Type';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "ListingStatusID" text;
    COMMENT ON COLUMN mtrmls."Media"."ListingStatusID" IS 'Listing Status';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "CreateDate" text;
    COMMENT ON COLUMN mtrmls."Media"."CreateDate" IS 'Create Date';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "MediaDescription" text;
    COMMENT ON COLUMN mtrmls."Media"."MediaDescription" IS 'Media Description';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "OfficeListCompanyID" text;
    COMMENT ON COLUMN mtrmls."Media"."OfficeListCompanyID" IS 'Listing Office Company ID';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "ModDate" text;
    COMMENT ON COLUMN mtrmls."Media"."ModDate" IS 'Mod Date';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "PropertyClassID" text;
    COMMENT ON COLUMN mtrmls."Media"."PropertyClassID" IS 'Property Class';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "AreaID" text;
    COMMENT ON COLUMN mtrmls."Media"."AreaID" IS 'Area';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "AgentListID" text;
    COMMENT ON COLUMN mtrmls."Media"."AgentListID" IS 'Listing Agent ID';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "OfficeListID" text;
    COMMENT ON COLUMN mtrmls."Media"."OfficeListID" IS 'Listing Office ID';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "URL" text;
    COMMENT ON COLUMN mtrmls."Media"."URL" IS 'URL';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "IsPrimary" boolean;
    COMMENT ON COLUMN mtrmls."Media"."IsPrimary" IS 'Is Primary Image';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "PhotoHR" text;
    COMMENT ON COLUMN mtrmls."Media"."PhotoHR" IS 'Photo High Res';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "MlsNum" text PRIMARY KEY;
    COMMENT ON COLUMN mtrmls."Media"."MlsNum" IS 'MLS Number';
     
    ALTER TABLE mtrmls."Media" ADD COLUMN "OfficeListCode" text;
    COMMENT ON COLUMN mtrmls."Media"."OfficeListCode" IS 'Listing Office Code';
     
  CREATE TABLE mtrmls."OffMarket"() ;
    ALTER TABLE mtrmls."OffMarket" ADD COLUMN "OffMarketDate" text;
    COMMENT ON COLUMN mtrmls."OffMarket"."OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE mtrmls."OffMarket" ADD COLUMN "ModDate" text;
    COMMENT ON COLUMN mtrmls."OffMarket"."ModDate" IS 'Modification Date';
     
    ALTER TABLE mtrmls."OffMarket" ADD COLUMN "PropertyClassID" text;
    COMMENT ON COLUMN mtrmls."OffMarket"."PropertyClassID" IS 'Property Class';
     
    ALTER TABLE mtrmls."OffMarket" ADD COLUMN "AreaID" text;
    COMMENT ON COLUMN mtrmls."OffMarket"."AreaID" IS 'Area';
     
    ALTER TABLE mtrmls."OffMarket" ADD COLUMN "MlsNum" text PRIMARY KEY;
    COMMENT ON COLUMN mtrmls."OffMarket"."MlsNum" IS 'MLS Number';
     
    ALTER TABLE mtrmls."OffMarket" ADD COLUMN "ListingStatusID" text;
    COMMENT ON COLUMN mtrmls."OffMarket"."ListingStatusID" IS 'Listing Status';
     
  CREATE TABLE mtrmls."Office"() INHERITS (property) ;
    ALTER TABLE mtrmls."Office" ADD COLUMN "AddressOne" text;
    COMMENT ON COLUMN mtrmls."Office"."AddressOne" IS 'Address 1';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "Fax" text;
    COMMENT ON COLUMN mtrmls."Office"."Fax" IS 'Fax';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "IsActive" boolean;
    COMMENT ON COLUMN mtrmls."Office"."IsActive" IS 'Is Active';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "OfficeBrokerID" text;
    COMMENT ON COLUMN mtrmls."Office"."OfficeBrokerID" IS 'Office Broker ID';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "City" text;
    COMMENT ON COLUMN mtrmls."Office"."City" IS 'City';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "OfficeURL" text;
    COMMENT ON COLUMN mtrmls."Office"."OfficeURL" IS 'Office Web';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "OfficeName" text;
    COMMENT ON COLUMN mtrmls."Office"."OfficeName" IS 'Office Name';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "ModDate" text;
    COMMENT ON COLUMN mtrmls."Office"."ModDate" IS 'Mod Date';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "CompanyID" text;
    COMMENT ON COLUMN mtrmls."Office"."CompanyID" IS 'Company ID';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "OfficeCode" text;
    COMMENT ON COLUMN mtrmls."Office"."OfficeCode" IS 'Office Code';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "OfficeID" text PRIMARY KEY;
    COMMENT ON COLUMN mtrmls."Office"."OfficeID" IS 'Office ID';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "Zip" text;
    COMMENT ON COLUMN mtrmls."Office"."Zip" IS 'Zip';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "AddressTwo" text;
    COMMENT ON COLUMN mtrmls."Office"."AddressTwo" IS 'Address 2';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "Phone" text;
    COMMENT ON COLUMN mtrmls."Office"."Phone" IS 'Phone';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "State" text;
    COMMENT ON COLUMN mtrmls."Office"."State" IS 'State';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "ShowPhone" text;
    COMMENT ON COLUMN mtrmls."Office"."ShowPhone" IS 'Showing Phone';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "CreateDate" text;
    COMMENT ON COLUMN mtrmls."Office"."CreateDate" IS 'Create Date';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "IsIDX" boolean;
    COMMENT ON COLUMN mtrmls."Office"."IsIDX" IS 'Is IDX';
     
    ALTER TABLE mtrmls."Office" ADD COLUMN "ZipFour" text;
    COMMENT ON COLUMN mtrmls."Office"."ZipFour" IS 'Zip+4';
     
  CREATE TABLE mtrmls."OpenHouse"() INHERITS (property);
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "OfficeListID" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."OfficeListID" IS 'Listing Office ID';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "OfficeListCompanyID" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."OfficeListCompanyID" IS 'Listing Office Company ID';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "StreetNumber" integer;
    COMMENT ON COLUMN mtrmls."OpenHouse"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "ListingID" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."ListingID" IS 'Listing ID';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "PropertyClassID" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."PropertyClassID" IS 'Property Class';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "AreaID" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."AreaID" IS 'Area';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."Directions" IS 'Directions';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "ToDate" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."ToDate" IS 'To Date-Time';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "MlsNum" text PRIMARY KEY;
    COMMENT ON COLUMN mtrmls."OpenHouse"."MlsNum" IS 'MLS Number';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "OfficeListCode" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."OfficeListCode" IS 'Listing Office Code';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "OfficeListOfficeName" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."OfficeListOfficeName" IS 'Listing Office Name';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "AgentListPhone" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."AgentListPhone" IS 'Listing Agent Phone';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."StreetName" IS 'Street Name';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "AgentListFirstName" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."AgentListFirstName" IS 'Listing Agent First Name';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "City" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."City" IS 'City';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "FromDate" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."FromDate" IS 'From Date-Time';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "Subdivision" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."Subdivision" IS 'Subdivision';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "IsListedOnInternet" boolean;
    COMMENT ON COLUMN mtrmls."OpenHouse"."IsListedOnInternet" IS 'Is Listed On Internet';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "CreateDate" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."CreateDate" IS 'Create Date';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "ListPrice" integer;
    COMMENT ON COLUMN mtrmls."OpenHouse"."ListPrice" IS 'List Price';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "StreetAddressDisplay" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."StreetAddressDisplay" IS 'Street Address Display';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "AgentListFullName" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."AgentListFullName" IS 'Listing Agent Full Name';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "OfficeListPhone" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."OfficeListPhone" IS 'Listing Office Phone';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "AgentListLastName" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."AgentListLastName" IS 'Listing Agent Last Name';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "Type" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."Type" IS 'Type';
     
    ALTER TABLE mtrmls."OpenHouse" ADD COLUMN "Description" text;
    COMMENT ON COLUMN mtrmls."OpenHouse"."Description" IS 'Description';
     
  CREATE TABLE mtrmls."Property"() INHERITS (property);
    ALTER TABLE mtrmls."Property" ADD COLUMN "OpenHouseType" text;
    COMMENT ON COLUMN mtrmls."Property"."OpenHouseType" IS 'Open House';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Buildings" text[];
    COMMENT ON COLUMN mtrmls."Property"."Buildings" IS 'Buildings';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "WaterPaidBy" text;
    COMMENT ON COLUMN mtrmls."Property"."WaterPaidBy" IS 'Water Paid By';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ElectricMeter" text;
    COMMENT ON COLUMN mtrmls."Property"."ElectricMeter" IS 'Electric Meter';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "RentingPermitted" boolean;
    COMMENT ON COLUMN mtrmls."Property"."RentingPermitted" IS 'Renting Permitted';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN mtrmls."Property"."Directions" IS 'Directions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "DrivewayType" text;
    COMMENT ON COLUMN mtrmls."Property"."DrivewayType" IS 'Driveway Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Style" text;
    COMMENT ON COLUMN mtrmls."Property"."Style" IS 'Style';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "RoadFrontageDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."RoadFrontageDesc" IS 'Road Frontage Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "WithdrawnDate" text;
    COMMENT ON COLUMN mtrmls."Property"."WithdrawnDate" IS 'Withdrawn Date';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SqFtTotal" integer;
    COMMENT ON COLUMN mtrmls."Property"."SqFtTotal" IS 'Sq. Ft. Total';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SqFtMeasurementSource" text;
    COMMENT ON COLUMN mtrmls."Property"."SqFtMeasurementSource" IS 'Sq.Ft. Measurement Source';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "TerrainType" text[];
    COMMENT ON COLUMN mtrmls."Property"."TerrainType" IS 'Terrain Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SqFtThirdFloor" integer;
    COMMENT ON COLUMN mtrmls."Property"."SqFtThirdFloor" IS 'Sq. Ft. Third Floor';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PatioDeck" text[];
    COMMENT ON COLUMN mtrmls."Property"."PatioDeck" IS 'Patio/Deck';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "FullBathsMain" integer;
    COMMENT ON COLUMN mtrmls."Property"."FullBathsMain" IS 'Full Baths Main';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AbsLongitude" decimal;
    COMMENT ON COLUMN mtrmls."Property"."AbsLongitude" IS 'AbsLongitude';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AuctionSubClass" text;
    COMMENT ON COLUMN mtrmls."Property"."AuctionSubClass" IS 'Auction Class';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentCoListID" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentCoListID" IS 'Co-Listing Agent ID';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "RoofMaterial" text;
    COMMENT ON COLUMN mtrmls."Property"."RoofMaterial" IS 'Roofing Material';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitFourBedrooms" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitFourBedrooms" IS 'Unit 4 Bedrooms';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "TotalFullBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."TotalFullBaths" IS 'Total Full Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AvailableDate" text;
    COMMENT ON COLUMN mtrmls."Property"."AvailableDate" IS 'Available Date';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitOneInteriorFeatures" text[];
    COMMENT ON COLUMN mtrmls."Property"."UnitOneInteriorFeatures" IS 'Unit 1 Interior Features';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "RoadFrontageDim" integer;
    COMMENT ON COLUMN mtrmls."Property"."RoadFrontageDim" IS 'Road Frontage Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "DetailUrl" text;
    COMMENT ON COLUMN mtrmls."Property"."DetailUrl" IS 'Detail URL';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MailboxType" text;
    COMMENT ON COLUMN mtrmls."Property"."MailboxType" IS 'Mailbox Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Laundry" text;
    COMMENT ON COLUMN mtrmls."Property"."Laundry" IS 'Laundry';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitTwoAppliances" text[];
    COMMENT ON COLUMN mtrmls."Property"."UnitTwoAppliances" IS 'Unit 2 Appliances';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "WaterDesc" text[];
    COMMENT ON COLUMN mtrmls."Property"."WaterDesc" IS 'Water Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Remarks" text;
    COMMENT ON COLUMN mtrmls."Property"."Remarks" IS 'Public Remarks';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AcresPasture" decimal;
    COMMENT ON COLUMN mtrmls."Property"."AcresPasture" IS 'Acres Pasture';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MiscOtherTwo" text;
    COMMENT ON COLUMN mtrmls."Property"."MiscOtherTwo" IS 'Miscellaneous Other 2';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "TotalRooms" integer;
    COMMENT ON COLUMN mtrmls."Property"."TotalRooms" IS 'Total Rooms';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SqFtOtherDescription" text;
    COMMENT ON COLUMN mtrmls."Property"."SqFtOtherDescription" IS 'Other Sq Ft Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BuyersPremiumPct" decimal;
    COMMENT ON COLUMN mtrmls."Property"."BuyersPremiumPct" IS 'Buyers Premium Percent';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "FullBathsThird" integer;
    COMMENT ON COLUMN mtrmls."Property"."FullBathsThird" IS 'Full Baths Third';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "NumberOfUnits" integer;
    COMMENT ON COLUMN mtrmls."Property"."NumberOfUnits" IS 'Number of Units';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentCoListFirstName" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentCoListFirstName" IS 'Co-Auction Agent First Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ContingencyType" text;
    COMMENT ON COLUMN mtrmls."Property"."ContingencyType" IS 'Contingency Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SaleIncludes" text;
    COMMENT ON COLUMN mtrmls."Property"."SaleIncludes" IS 'Sale Includes';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AcresCultivated" decimal;
    COMMENT ON COLUMN mtrmls."Property"."AcresCultivated" IS 'Acres Cultivated';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ElementarySchool" text;
    COMMENT ON COLUMN mtrmls."Property"."ElementarySchool" IS 'Elementary School';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ListPrice" integer;
    COMMENT ON COLUMN mtrmls."Property"."ListPrice" IS 'List Price';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SmokingPermitted" boolean;
    COMMENT ON COLUMN mtrmls."Property"."SmokingPermitted" IS 'Smoking Permitted';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HasRefrigerator" boolean;
    COMMENT ON COLUMN mtrmls."Property"."HasRefrigerator" IS 'Has Refrigerator';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "LotSize" text;
    COMMENT ON COLUMN mtrmls."Property"."LotSize" IS 'Lot Size';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitThreeFullBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitThreeFullBaths" IS 'Unit 3 Full Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitThreeHalfBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitThreeHalfBaths" IS 'Unit 3 Half Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ExteriorFeatures" text[];
    COMMENT ON COLUMN mtrmls."Property"."ExteriorFeatures" IS 'Exterior Features';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ListingType" text;
    COMMENT ON COLUMN mtrmls."Property"."ListingType" IS 'Listing Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MasterBedroomDim" text;
    COMMENT ON COLUMN mtrmls."Property"."MasterBedroomDim" IS 'Master Bedroom Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Zoning" text;
    COMMENT ON COLUMN mtrmls."Property"."Zoning" IS 'Zoning';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "CountyID" text;
    COMMENT ON COLUMN mtrmls."Property"."CountyID" IS 'County';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BookPage" text;
    COMMENT ON COLUMN mtrmls."Property"."BookPage" IS 'Deed Book/Page';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitThreeBedrooms" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitThreeBedrooms" IS 'Unit 3 Bedrooms';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ConstructionType" text;
    COMMENT ON COLUMN mtrmls."Property"."ConstructionType" IS 'Construction Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN mtrmls."Property"."YearBuilt" IS 'Year Built';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "IsFederalLandBank" boolean;
    COMMENT ON COLUMN mtrmls."Property"."IsFederalLandBank" IS 'Is Federal Land Bank';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "IsLeased" boolean;
    COMMENT ON COLUMN mtrmls."Property"."IsLeased" IS 'Is Leased';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitFourFullBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitFourFullBaths" IS 'Unit 4 Full Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitThreeRestrictions" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitThreeRestrictions" IS 'Unit 3 Restrictions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "StreetDirection" text;
    COMMENT ON COLUMN mtrmls."Property"."StreetDirection" IS 'Street Direction';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HasRange" boolean;
    COMMENT ON COLUMN mtrmls."Property"."HasRange" IS 'Has Range';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PreviewToDate" text;
    COMMENT ON COLUMN mtrmls."Property"."PreviewToDate" IS 'Preview To Date';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OtherRoomTwoDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."OtherRoomTwoDesc" IS 'Other Room 2 Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "WaterfrontDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."WaterfrontDesc" IS 'Waterfront Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeCoListCode" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeCoListCode" IS 'Co-Listing Office Code';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "IsFurnished" boolean;
    COMMENT ON COLUMN mtrmls."Property"."IsFurnished" IS 'Is Furnished';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomsMain" integer;
    COMMENT ON COLUMN mtrmls."Property"."BedroomsMain" IS 'Bedrooms Main';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OtherRestrictions" text[];
    COMMENT ON COLUMN mtrmls."Property"."OtherRestrictions" IS 'Other Restrictions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN mtrmls."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "EnergyFeatures" text[];
    COMMENT ON COLUMN mtrmls."Property"."EnergyFeatures" IS 'Green Features';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "NumOfStories" decimal;
    COMMENT ON COLUMN mtrmls."Property"."NumOfStories" IS 'Number Of Stories';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MasterBathDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."MasterBathDesc" IS 'Master Bath Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitThreeLease" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitThreeLease" IS 'Unit 3 Lease';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitFourAppliances" text[];
    COMMENT ON COLUMN mtrmls."Property"."UnitFourAppliances" IS 'Unit 4 Appliances';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AuctionFirm" text;
    COMMENT ON COLUMN mtrmls."Property"."AuctionFirm" IS 'Auction Firm Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentCoListLastName" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentCoListLastName" IS 'Co-Auction Agent Last Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AreaID" text;
    COMMENT ON COLUMN mtrmls."Property"."AreaID" IS 'Area';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitTwoHalfBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitTwoHalfBaths" IS 'Unit 2 Half Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "DenDim" text;
    COMMENT ON COLUMN mtrmls."Property"."DenDim" IS 'Den Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MlsNum" text PRIMARY KEY;
    COMMENT ON COLUMN mtrmls."Property"."MlsNum" IS 'MLS Number';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN mtrmls."Property"."City" IS 'City';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PictureCount" integer;
    COMMENT ON COLUMN mtrmls."Property"."PictureCount" IS 'Picture Count';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitFourInteriorFeatures" text[];
    COMMENT ON COLUMN mtrmls."Property"."UnitFourInteriorFeatures" IS 'Unit 4 Interior Features';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitOneHalfBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitOneHalfBaths" IS 'Unit 1 Half Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "GreenCertifyingBody" text[];
    COMMENT ON COLUMN mtrmls."Property"."GreenCertifyingBody" IS 'Green Certifying Body';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitTwoDeposit" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitTwoDeposit" IS 'Unit 2 Deposit';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentCoListFullName" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentCoListFullName" IS 'Co-Auction Agent Full Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AmenitiesOther" text[];
    COMMENT ON COLUMN mtrmls."Property"."AmenitiesOther" IS 'Amenities Other';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeCoListIsActive" boolean;
    COMMENT ON COLUMN mtrmls."Property"."OfficeCoListIsActive" IS 'Co-Listing Office Is Active';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HalfBathsOther" integer;
    COMMENT ON COLUMN mtrmls."Property"."HalfBathsOther" IS 'Half Baths Other';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitOneAppliances" text[];
    COMMENT ON COLUMN mtrmls."Property"."UnitOneAppliances" IS 'Unit 1 Appliances';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PermitExternalComments" boolean;
    COMMENT ON COLUMN mtrmls."Property"."PermitExternalComments" IS 'Permit External Comments';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AuctionTypeID" text;
    COMMENT ON COLUMN mtrmls."Property"."AuctionTypeID" IS 'Auction Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PropertyClassID" text;
    COMMENT ON COLUMN mtrmls."Property"."PropertyClassID" IS 'Property Class';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeListOfficeName" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeListOfficeName" IS 'Auction Office Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ListingStatusID" text;
    COMMENT ON COLUMN mtrmls."Property"."ListingStatusID" IS 'Listing Status';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HighSchool" text;
    COMMENT ON COLUMN mtrmls."Property"."HighSchool" IS 'High School';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ZipCode" text;
    COMMENT ON COLUMN mtrmls."Property"."ZipCode" IS 'Zip Code';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SqFtOther" integer;
    COMMENT ON COLUMN mtrmls."Property"."SqFtOther" IS 'Sq. Ft. Other';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitOneBedrooms" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitOneBedrooms" IS 'Unit 1 Bedrooms';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AppliancesOther" text[];
    COMMENT ON COLUMN mtrmls."Property"."AppliancesOther" IS 'Appliances Other';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "RecRoomDim" text;
    COMMENT ON COLUMN mtrmls."Property"."RecRoomDim" IS 'Rec Room Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PoolDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."PoolDesc" IS 'Pool Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "WaterMeter" text;
    COMMENT ON COLUMN mtrmls."Property"."WaterMeter" IS 'Water Meter';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AuctionDate" text;
    COMMENT ON COLUMN mtrmls."Property"."AuctionDate" IS 'Auction Date';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomTwoDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."BedroomTwoDesc" IS 'Bedroom 2 Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomTwoDim" text;
    COMMENT ON COLUMN mtrmls."Property"."BedroomTwoDim" IS 'Bedroom 2 Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ExteriorAlterations" boolean;
    COMMENT ON COLUMN mtrmls."Property"."ExteriorAlterations" IS 'Exterior Alterations';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MediaUpdateDate" text;
    COMMENT ON COLUMN mtrmls."Property"."MediaUpdateDate" IS 'Media Update Date';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AssociationFeeIncludes" text[];
    COMMENT ON COLUMN mtrmls."Property"."AssociationFeeIncludes" IS 'Association Fee Includes';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "TotalHalfBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."TotalHalfBaths" IS 'Total Half Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "GasPaidBy" text;
    COMMENT ON COLUMN mtrmls."Property"."GasPaidBy" IS 'Gas Paid By';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitLocation" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitLocation" IS 'Unit Location';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PetsPermitted" text;
    COMMENT ON COLUMN mtrmls."Property"."PetsPermitted" IS 'Pets Permitted';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomOneDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."BedroomOneDesc" IS 'Bedroom 1 Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "State" text;
    COMMENT ON COLUMN mtrmls."Property"."State" IS 'State';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitTwoRent" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitTwoRent" IS 'Unit 2 Rent';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HalfBathsThird" integer;
    COMMENT ON COLUMN mtrmls."Property"."HalfBathsThird" IS 'Half Baths Third';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "FullBathsSecond" integer;
    COMMENT ON COLUMN mtrmls."Property"."FullBathsSecond" IS 'Full Baths Second';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitOneRestrictions" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitOneRestrictions" IS 'Unit 1 Restrictions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitThreeInteriorFeatures" text[];
    COMMENT ON COLUMN mtrmls."Property"."UnitThreeInteriorFeatures" IS 'Unit 3 Interior Features';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "RangeDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."RangeDesc" IS 'Range Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AcreageSource" text;
    COMMENT ON COLUMN mtrmls."Property"."AcreageSource" IS 'Acreage Source';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeListCompanyID" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeListCompanyID" IS 'Listing Office Company ID';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "IsNewConstruction" boolean;
    COMMENT ON COLUMN mtrmls."Property"."IsNewConstruction" IS 'New Construction';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "VerticalLocation" text;
    COMMENT ON COLUMN mtrmls."Property"."VerticalLocation" IS 'Vertical Location';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentCoListPhone" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentCoListPhone" IS 'Co-Auction Agent Phone';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AcresTimber" decimal;
    COMMENT ON COLUMN mtrmls."Property"."AcresTimber" IS 'Acres Timber';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MasterBathType" text;
    COMMENT ON COLUMN mtrmls."Property"."MasterBathType" IS 'Master Bath Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OvenSource" text;
    COMMENT ON COLUMN mtrmls."Property"."OvenSource" IS 'Oven Source';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomsBasement" integer;
    COMMENT ON COLUMN mtrmls."Property"."BedroomsBasement" IS 'Bedrooms Basement';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "TaxAmount" integer;
    COMMENT ON COLUMN mtrmls."Property"."TaxAmount" IS 'Tax Amount';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitTwoFullBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitTwoFullBaths" IS 'Unit 2 Full Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "LeasePerSqFt" decimal;
    COMMENT ON COLUMN mtrmls."Property"."LeasePerSqFt" IS 'Lease Per Sq. Ft.';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitTwoRestrictions" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitTwoRestrictions" IS 'Unit 2 Restrictions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomFourDim" text;
    COMMENT ON COLUMN mtrmls."Property"."BedroomFourDim" IS 'Bedroom 4 Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "StreetNumber" integer;
    COMMENT ON COLUMN mtrmls."Property"."StreetNumber" IS 'Street Number';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "FullBathsOther" integer;
    COMMENT ON COLUMN mtrmls."Property"."FullBathsOther" IS 'Full Baths Other';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "LicenseNumber" text;
    COMMENT ON COLUMN mtrmls."Property"."LicenseNumber" IS 'Auction Firm License';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN mtrmls."Property"."StreetName" IS 'Street Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HasHouse" boolean;
    COMMENT ON COLUMN mtrmls."Property"."HasHouse" IS 'Has House';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "CommunityAmenities" text[];
    COMMENT ON COLUMN mtrmls."Property"."CommunityAmenities" IS 'Community Amenities';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PropertySubType" text;
    COMMENT ON COLUMN mtrmls."Property"."PropertySubType" IS 'Property Sub-Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "KitchenDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."KitchenDesc" IS 'Kitchen Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "StreetAddressDisplay" text;
    COMMENT ON COLUMN mtrmls."Property"."StreetAddressDisplay" IS 'Street Address';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BuiltInfo" text;
    COMMENT ON COLUMN mtrmls."Property"."BuiltInfo" IS 'Built Information';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "GasMeter" text;
    COMMENT ON COLUMN mtrmls."Property"."GasMeter" IS 'Gas Meter';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeListIsIDX" boolean;
    COMMENT ON COLUMN mtrmls."Property"."OfficeListIsIDX" IS 'Listing Office Is IDX';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SecurityDesc" text[];
    COMMENT ON COLUMN mtrmls."Property"."SecurityDesc" IS 'Security Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BuyersPremium" boolean;
    COMMENT ON COLUMN mtrmls."Property"."BuyersPremium" IS 'Buyers Premium';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ExteriorTrim" text;
    COMMENT ON COLUMN mtrmls."Property"."ExteriorTrim" IS 'Exterior Trim';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "CompletionDate" text;
    COMMENT ON COLUMN mtrmls."Property"."CompletionDate" IS 'Completion Date';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeListID" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeListID" IS 'Listing Office ID';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitOneFullBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitOneFullBaths" IS 'Unit 1 Full Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeListCode" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeListCode" IS 'Listing Office Code';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HalfBathsBasement" integer;
    COMMENT ON COLUMN mtrmls."Property"."HalfBathsBasement" IS 'Half Baths Basement';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Acres" decimal;
    COMMENT ON COLUMN mtrmls."Property"."Acres" IS 'Acres';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentListFirstName" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentListFirstName" IS 'Auction Agent First Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AcresTobacco" decimal;
    COMMENT ON COLUMN mtrmls."Property"."AcresTobacco" IS 'Acres Tobacco';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "InteriorOther" text[];
    COMMENT ON COLUMN mtrmls."Property"."InteriorOther" IS 'Interior Other';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HeatingSystem" text;
    COMMENT ON COLUMN mtrmls."Property"."HeatingSystem" IS 'Heating System';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitFourHalfBaths" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitFourHalfBaths" IS 'Unit 4 Half Baths';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitFourRent" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitFourRent" IS 'Unit 4 Rent';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MinimumBid" integer;
    COMMENT ON COLUMN mtrmls."Property"."MinimumBid" IS 'Minimum Bid';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OtherRoomOneDim" text;
    COMMENT ON COLUMN mtrmls."Property"."OtherRoomOneDim" IS 'Other Room 1 Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentListLastName" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentListLastName" IS 'Auction Agent Last Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "IsCertifiedGreen" boolean;
    COMMENT ON COLUMN mtrmls."Property"."IsCertifiedGreen" IS 'Certified Green Home';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HalfBathsMain" integer;
    COMMENT ON COLUMN mtrmls."Property"."HalfBathsMain" IS 'Half Baths Main';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "FloorTypes" text[];
    COMMENT ON COLUMN mtrmls."Property"."FloorTypes" IS 'Floor Types';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "RangeSource" text;
    COMMENT ON COLUMN mtrmls."Property"."RangeSource" IS 'Range Source';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitTwoLease" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitTwoLease" IS 'Unit 2 Lease';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MiscOther" text[];
    COMMENT ON COLUMN mtrmls."Property"."MiscOther" IS 'Miscellaneous Other';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitTwoBedrooms" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitTwoBedrooms" IS 'Unit 2 Bedrooms';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ElectricityPaidBy" text;
    COMMENT ON COLUMN mtrmls."Property"."ElectricityPaidBy" IS 'Electricity Paid By';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "FullBathsBasement" integer;
    COMMENT ON COLUMN mtrmls."Property"."FullBathsBasement" IS 'Full Baths Basement';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitNumber" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitNumber" IS 'Unit Number';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentListFullName" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentListFullName" IS 'Auction Agent Full Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HobbyRoomDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."HobbyRoomDesc" IS 'Hobby Room Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "RecRoomDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."RecRoomDesc" IS 'Rec Room Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "FenceType" text;
    COMMENT ON COLUMN mtrmls."Property"."FenceType" IS 'Fence Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "CoolingSystem" text;
    COMMENT ON COLUMN mtrmls."Property"."CoolingSystem" IS 'Cooling System';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "KitchenDim" text;
    COMMENT ON COLUMN mtrmls."Property"."KitchenDim" IS 'Kitchen Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SqFtSecondFloor" integer;
    COMMENT ON COLUMN mtrmls."Property"."SqFtSecondFloor" IS 'Sq. Ft. Second Floor';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "DenDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."DenDesc" IS 'Den Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitOneLease" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitOneLease" IS 'Unit 1 Lease';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitThreeRent" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitThreeRent" IS 'Unit 3 Rent';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomThreeDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."BedroomThreeDesc" IS 'Bedroom 3 Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SewerSystem" text;
    COMMENT ON COLUMN mtrmls."Property"."SewerSystem" IS 'Sewer System';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomOneDim" text;
    COMMENT ON COLUMN mtrmls."Property"."BedroomOneDim" IS 'Bedroom 1 Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomFourDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."BedroomFourDesc" IS 'Bedroom 4 Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "IsListedOnInternet" boolean;
    COMMENT ON COLUMN mtrmls."Property"."IsListedOnInternet" IS 'Is Listed On Internet';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MinimumLease" integer;
    COMMENT ON COLUMN mtrmls."Property"."MinimumLease" IS 'Minimum Lease';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeCoListPhone" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeCoListPhone" IS 'Co-Auction Office Phone';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BasementDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."BasementDesc" IS 'Basement Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PreviewFromDate" text;
    COMMENT ON COLUMN mtrmls."Property"."PreviewFromDate" IS 'Preview From Date';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MapNumber" text;
    COMMENT ON COLUMN mtrmls."Property"."MapNumber" IS 'Map Number';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomsThird" integer;
    COMMENT ON COLUMN mtrmls."Property"."BedroomsThird" IS 'Bedrooms Third';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HeatingSource" text;
    COMMENT ON COLUMN mtrmls."Property"."HeatingSource" IS 'Heating Source';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeCoListOfficeName" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeCoListOfficeName" IS 'Co-Auction Office Name';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PrimaryPictureURL" text;
    COMMENT ON COLUMN mtrmls."Property"."PrimaryPictureURL" IS 'Primary Picture URL';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "DiningRoomDim" text;
    COMMENT ON COLUMN mtrmls."Property"."DiningRoomDim" IS 'Dining Room Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "NumberOfFireplaces" integer;
    COMMENT ON COLUMN mtrmls."Property"."NumberOfFireplaces" IS 'Number Of Fireplaces';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "DrapesRemain" text;
    COMMENT ON COLUMN mtrmls."Property"."DrapesRemain" IS 'Drapes Remain';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitOneDeposit" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitOneDeposit" IS 'Unit 1 Deposit';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HasPetRestriction" boolean;
    COMMENT ON COLUMN mtrmls."Property"."HasPetRestriction" IS 'Has Pet Restriction';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HasCableTV" boolean;
    COMMENT ON COLUMN mtrmls."Property"."HasCableTV" IS 'Has Cable TV';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PermitAvmUse" boolean;
    COMMENT ON COLUMN mtrmls."Property"."PermitAvmUse" IS 'Permit AVM Use';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitThreeAppliances" text[];
    COMMENT ON COLUMN mtrmls."Property"."UnitThreeAppliances" IS 'Unit 3 Appliances';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HandicapAccess" text;
    COMMENT ON COLUMN mtrmls."Property"."HandicapAccess" IS 'Handicap Accessible';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "RoadSurface" text[];
    COMMENT ON COLUMN mtrmls."Property"."RoadSurface" IS 'Road Surface';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitTwoInteriorFeatures" text[];
    COMMENT ON COLUMN mtrmls."Property"."UnitTwoInteriorFeatures" IS 'Unit 2 Interior Features';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomsSecond" integer;
    COMMENT ON COLUMN mtrmls."Property"."BedroomsSecond" IS 'Bedrooms Second';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HorizontalLocation" text;
    COMMENT ON COLUMN mtrmls."Property"."HorizontalLocation" IS 'Horizontal Location';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "GarageCapacity" integer;
    COMMENT ON COLUMN mtrmls."Property"."GarageCapacity" IS 'Parking Capacity';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "LotNum" text;
    COMMENT ON COLUMN mtrmls."Property"."LotNum" IS 'Lot Number';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "JuniorHighSchool" text;
    COMMENT ON COLUMN mtrmls."Property"."JuniorHighSchool" IS 'Junior High School';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ParcelIDDisplay" text;
    COMMENT ON COLUMN mtrmls."Property"."ParcelIDDisplay" IS 'Parcel ID Display';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "LeasePerMonth" integer;
    COMMENT ON COLUMN mtrmls."Property"."LeasePerMonth" IS 'Lease Per Month';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HalfBathsSecond" integer;
    COMMENT ON COLUMN mtrmls."Property"."HalfBathsSecond" IS 'Half Baths Second';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeCoListID" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeCoListID" IS 'Co-Listing Office ID';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AssociationFee" integer;
    COMMENT ON COLUMN mtrmls."Property"."AssociationFee" IS 'Association Fee';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SecurityDeposit" integer;
    COMMENT ON COLUMN mtrmls."Property"."SecurityDeposit" IS 'Security Deposit';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "TotalBedrooms" integer;
    COMMENT ON COLUMN mtrmls."Property"."TotalBedrooms" IS 'Total Bedrooms';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitFourLease" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitFourLease" IS 'Unit 4 Lease';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SqFtBasement" integer;
    COMMENT ON COLUMN mtrmls."Property"."SqFtBasement" IS 'Sq. Ft. Basement';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OvenDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."OvenDesc" IS 'Oven Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ModDate" text;
    COMMENT ON COLUMN mtrmls."Property"."ModDate" IS 'Mod Date';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HasClubhouse" boolean;
    COMMENT ON COLUMN mtrmls."Property"."HasClubhouse" IS 'Has Clubhouse';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitThreeDeposit" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitThreeDeposit" IS 'Unit 3 Deposit';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentListPhone" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentListPhone" IS 'Listing Agent Phone';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "LotDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."LotDesc" IS 'Lot Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "CoolingSource" text;
    COMMENT ON COLUMN mtrmls."Property"."CoolingSource" IS 'Cooling Source';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "DiningRoomDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."DiningRoomDesc" IS 'Dining Room Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomThreeDim" text;
    COMMENT ON COLUMN mtrmls."Property"."BedroomThreeDim" IS 'Bedroom 3 Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Equipment" text[];
    COMMENT ON COLUMN mtrmls."Property"."Equipment" IS 'Equipment';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AcresFenced" decimal;
    COMMENT ON COLUMN mtrmls."Property"."AcresFenced" IS 'Acres Fenced';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OtherRoomOneDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."OtherRoomOneDesc" IS 'Other Room 1 Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "NextOpenHouseDate" text;
    COMMENT ON COLUMN mtrmls."Property"."NextOpenHouseDate" IS 'NextOpenHouseDate';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "LivingRoomDesc" text;
    COMMENT ON COLUMN mtrmls."Property"."LivingRoomDesc" IS 'Living Room Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "WaterSource" text;
    COMMENT ON COLUMN mtrmls."Property"."WaterSource" IS 'Water Source';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "WaterfrontDock" text;
    COMMENT ON COLUMN mtrmls."Property"."WaterfrontDock" IS 'Waterfront Dock';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeListPhone" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeListPhone" IS 'Auction Office Phone';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "GarageDescription" text;
    COMMENT ON COLUMN mtrmls."Property"."GarageDescription" IS 'Garage Description';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "AgentListID" text;
    COMMENT ON COLUMN mtrmls."Property"."AgentListID" IS 'Listing Agent ID';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "TrailersPermitted" boolean;
    COMMENT ON COLUMN mtrmls."Property"."TrailersPermitted" IS 'Trailers Permitted';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitOneRent" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitOneRent" IS 'Unit 1 Rent';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OtherRoomTwoDim" text;
    COMMENT ON COLUMN mtrmls."Property"."OtherRoomTwoDim" IS 'Other Room 2 Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "ElementarySchoolTwo" text;
    COMMENT ON COLUMN mtrmls."Property"."ElementarySchoolTwo" IS 'Elementary School 2';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BedroomsOther" integer;
    COMMENT ON COLUMN mtrmls."Property"."BedroomsOther" IS 'Bedrooms Other';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "SqFtMainFloor" integer;
    COMMENT ON COLUMN mtrmls."Property"."SqFtMainFloor" IS 'Sq. Ft. Main Floor';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "StreetLetter" text;
    COMMENT ON COLUMN mtrmls."Property"."StreetLetter" IS 'Street Letter';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "BasementType" text;
    COMMENT ON COLUMN mtrmls."Property"."BasementType" IS 'Basement Type';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Restrictions" text;
    COMMENT ON COLUMN mtrmls."Property"."Restrictions" IS 'Restrictions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Subdivision" text;
    COMMENT ON COLUMN mtrmls."Property"."Subdivision" IS 'Subdivision';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitFourDeposit" integer;
    COMMENT ON COLUMN mtrmls."Property"."UnitFourDeposit" IS 'Unit 4 Deposit';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "PetDeposit" integer;
    COMMENT ON COLUMN mtrmls."Property"."PetDeposit" IS 'Pet Deposit';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "OfficeCoListCompanyID" text;
    COMMENT ON COLUMN mtrmls."Property"."OfficeCoListCompanyID" IS 'Co-Listing Office Company ID';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "LivingRoomDim" text;
    COMMENT ON COLUMN mtrmls."Property"."LivingRoomDim" IS 'Living Room Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN mtrmls."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "HobbyRoomDim" text;
    COMMENT ON COLUMN mtrmls."Property"."HobbyRoomDim" IS 'Hobby Room Dimensions';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "MailBox" text;
    COMMENT ON COLUMN mtrmls."Property"."MailBox" IS 'Mail Box';
     
    ALTER TABLE mtrmls."Property" ADD COLUMN "UnitFourRestrictions" text;
    COMMENT ON COLUMN mtrmls."Property"."UnitFourRestrictions" IS 'Unit 4 Restrictions';
     

COMMIT;