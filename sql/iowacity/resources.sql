BEGIN;

  CREATE TABLE iowacity."Property"() INHERITS (property);
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_Address2" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_Address2" IS 'LA1Agent Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_AddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_AddressStreet" IS 'LA1AgentAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_AgentID" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_AgentID" IS 'LA1User Code';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_City" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_City" IS 'LA1Agent City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_Email" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_Email" IS 'LA1Agent Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_HiddenUsCID" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_HiddenUsCID" IS 'LA1Agent Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_LoginName" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_LoginName" IS 'LA1Agent Logon Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber1" IS 'LA1Agent Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber1CountryCodeId" IS 'LA1Agent Phone1 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber1Desc" IS 'LA1AgentPhone1Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber1Ext" IS 'LA1Agent Phone1 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber2" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber2" IS 'LA1Agent Phone2 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber2CountryCodeId" IS 'LA1Agent Phone2 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber2Desc" IS 'LA1AgentPhone2Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber2Ext" IS 'LA1Agent Phone2 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber3" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber3" IS 'LA1Agent Phone3 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber3CountryCodeId" IS 'LA1Agent Phone3 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber3Desc" IS 'LA1AgentPhone3Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber3Ext" IS 'LA1Agent Phone3 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber4" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber4" IS 'LA1Agent Phone4 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber4CountryCodeId" IS 'LA1Agent Phone4 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber4Desc" IS 'LA1AgentPhone4Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber4Ext" IS 'LA1Agent Phone4 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber5" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber5" IS 'LA1Agent Phone5 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber5CountryCodeId" IS 'LA1Agent Phone5 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber5Desc" IS 'LA1AgentPhone5Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_PhoneNumber5Ext" IS 'LA1Agent Phone5 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_State" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_State" IS 'LA1Agent State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_Status" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_Status" IS 'LA1Agent Status';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_UserFirstName" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_UserFirstName" IS 'LA1Agent First Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_UserLastName" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_UserLastName" IS 'LA1Agent Last Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_UserMI" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_UserMI" IS 'LA1Agent Middle Initial';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_WebPage" IS 'LA1Agent Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA1_Zip" text;
    COMMENT ON COLUMN iowacity."Property"."LA1_Zip" IS 'LA1Agent Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_Address2" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_Address2" IS 'LA2Agent Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_AddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_AddressStreet" IS 'LA2AgentAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_City" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_City" IS 'LA2Agent City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_Email" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_Email" IS 'LA2Agent Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_HiddenUsCID" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_HiddenUsCID" IS 'LA2Agent Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber1" IS 'LA2Agent Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber1CountryCodeId" IS 'LA2Agent Phone1 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber1Desc" IS 'LA2AgentPhone1Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber1Ext" IS 'LA2Agent Phone1 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber2" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber2" IS 'LA2Agent Phone2 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber2CountryCodeId" IS 'LA2Agent Phone2 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber2Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber2Desc" IS 'LA2AgentPhone2Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber2Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber2Ext" IS 'LA2Agent Phone2 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber3" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber3" IS 'LA2Agent Phone3 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber3CountryCodeId" IS 'LA2Agent Phone3 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber3Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber3Desc" IS 'LA2AgentPhone3Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber3Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber3Ext" IS 'LA2Agent Phone3 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber4" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber4" IS 'LA2Agent Phone4 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber4CountryCodeId" IS 'LA2Agent Phone4 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber4Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber4Desc" IS 'LA2AgentPhone4Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber4Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber4Ext" IS 'LA2Agent Phone4 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber5" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber5" IS 'LA2Agent Phone5 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber5CountryCodeId" IS 'LA2Agent Phone5 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber5Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber5Desc" IS 'LA2AgentPhone5Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_PhoneNumber5Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_PhoneNumber5Ext" IS 'LA2Agent Phone5 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_State" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_State" IS 'LA2Agent State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_Status" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_Status" IS 'LA2Agent Status';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_UserFirstName" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_UserFirstName" IS 'LA2Agent First Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_UserLastName" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_UserLastName" IS 'LA2Agent Last Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_UserMI" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_UserMI" IS 'LA2Agent Middle Initial';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_WebPage" IS 'LA2Agent Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA2_Zip" text;
    COMMENT ON COLUMN iowacity."Property"."LA2_Zip" IS 'LA2Agent Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_Address2" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_Address2" IS 'LA3Agent Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_AddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_AddressStreet" IS 'LA3AgentAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_City" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_City" IS 'LA3Agent City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_Email" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_Email" IS 'LA3Agent Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_HiddenUsCID" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_HiddenUsCID" IS 'LA3Agent Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber1" IS 'LA3Agent Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber1CountryCodeId" IS 'LA3Agent Phone1 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber1Desc" IS 'LA3AgentPhone1Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber1Ext" IS 'LA3Agent Phone1 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber2" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber2" IS 'LA3Agent Phone2 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber2CountryCodeId" IS 'LA3Agent Phone2 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber2Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber2Desc" IS 'LA3AgentPhone2Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber2Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber2Ext" IS 'LA3Agent Phone2 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber3" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber3" IS 'LA3Agent Phone3 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber3CountryCodeId" IS 'LA3Agent Phone3 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber3Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber3Desc" IS 'LA3AgentPhone3Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber3Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber3Ext" IS 'LA3Agent Phone3 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber4" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber4" IS 'LA3Agent Phone4 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber4CountryCodeId" IS 'LA3Agent Phone4 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber4Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber4Desc" IS 'LA3AgentPhone4Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber4Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber4Ext" IS 'LA3Agent Phone4 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber5" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber5" IS 'LA3Agent Phone5 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber5CountryCodeId" IS 'LA3Agent Phone5 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber5Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber5Desc" IS 'LA3AgentPhone5Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_PhoneNumber5Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_PhoneNumber5Ext" IS 'LA3Agent Phone5 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_State" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_State" IS 'LA3Agent State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_Status" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_Status" IS 'LA3Agent Status';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_UserFirstName" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_UserFirstName" IS 'LA3Agent First Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_UserLastName" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_UserLastName" IS 'LA3Agent Last Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_UserMI" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_UserMI" IS 'LA3Agent Middle Initial';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_WebPage" IS 'LA3Agent Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LA3_Zip" text;
    COMMENT ON COLUMN iowacity."Property"."LA3_Zip" IS 'LA3Agent Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_ACCESS_95" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_ACCESS_95" IS 'ACCESS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_AMENITIES_29" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_AMENITIES_29" IS 'AMENITIES';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_AMENITIES_65" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_AMENITIES_65" IS 'AMENITIES';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_AMENITIES_66" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_AMENITIES_66" IS 'AMENITIES';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_APPLIANCESUNIT1_68" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_APPLIANCESUNIT1_68" IS 'APPLIANCES UNIT-1';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_APPLIANCESUNIT2_70" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_APPLIANCESUNIT2_70" IS 'APPLIANCES UNIT-2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_APPLIANCESUNIT3_71" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_APPLIANCESUNIT3_71" IS 'APPLIANCES UNIT-3';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_APPLIANCESUNIT4_72" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_APPLIANCESUNIT4_72" IS 'APPLIANCES UNIT-4';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_BANKOWNED_113" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_BANKOWNED_113" IS 'BANK OWNED';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_BANKOWNED_116" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_BANKOWNED_116" IS 'BANK OWNED';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_BANKOWNED_117" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_BANKOWNED_117" IS 'BANK OWNED';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_BANKOWNED_118" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_BANKOWNED_118" IS 'BANK OWNED';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_BANKOWNED_119" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_BANKOWNED_119" IS 'BANK OWNED';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_BASEMENT_2" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_BASEMENT_2" IS 'BASEMENT';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_BASEMENT_73" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_BASEMENT_73" IS 'BASEMENT';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_BUILDINGS_96" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_BUILDINGS_96" IS 'BUILDINGS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_BUSINESS_44" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_BUSINESS_44" IS 'BUSINESS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_CIFEATURES_45" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_CIFEATURES_45" IS 'CI FEATURES';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_CONSTRUCTCM_46" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_CONSTRUCTCM_46" IS 'CONSTRUCT CM';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_CONSTRUCTION_3" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_CONSTRUCTION_3" IS 'CONSTRUCTION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_CONSTRUCTION_74" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_CONSTRUCTION_74" IS 'CONSTRUCTION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_COOLING_4" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_COOLING_4" IS 'COOLING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_COOLING_47" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_COOLING_47" IS 'COOLING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_COOLING_75" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_COOLING_75" IS 'COOLING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_DOCUMENTS_106" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_DOCUMENTS_106" IS 'DOCUMENTS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_DOCUMENTS_30" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_DOCUMENTS_30" IS 'DOCUMENTS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_DOCUMENTS_48" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_DOCUMENTS_48" IS 'DOCUMENTS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_ENERGYRELATED_5" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_ENERGYRELATED_5" IS 'ENERGY RELATED';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_ENERGYRELATED_76" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_ENERGYRELATED_76" IS 'ENERGY RELATED';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_EQUIPMENT_6" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_EQUIPMENT_6" IS 'EQUIPMENT';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_EXTERIOR_7" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_EXTERIOR_7" IS 'EXTERIOR';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_FEEINCLUDES_77" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_FEEINCLUDES_77" IS 'FEE INCLUDES';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_FEEINCLUDES_8" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_FEEINCLUDES_8" IS 'FEE INCLUDES';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_FIREPLACELOCATION_9" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_FIREPLACELOCATION_9" IS 'FIREPLACE LOCATION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_FIREPLACETYPE_11" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_FIREPLACETYPE_11" IS 'FIREPLACE TYPE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_FLOORTYPE_49" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_FLOORTYPE_49" IS 'FLOOR TYPE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_HEATING_50" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_HEATING_50" IS 'HEATING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_HEATING_67" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_HEATING_67" IS 'HEATING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_HEATING_78" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_HEATING_78" IS 'HEATING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_IDX_105" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_IDX_105" IS 'IDX';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_IDX_27" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_IDX_27" IS 'IDX';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_IDX_43" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_IDX_43" IS 'IDX';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_IDX_63" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_IDX_63" IS 'IDX';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_IDX_93" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_IDX_93" IS 'IDX';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_IMPROVEMENTS_31" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_IMPROVEMENTS_31" IS 'IMPROVEMENTS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_INTERIOR_12" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_INTERIOR_12" IS 'INTERIOR';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_KITCHENBREAKFAST_13" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_KITCHENBREAKFAST_13" IS 'KITCHEN BREAKFAST';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LAUNDRYLOCATION_15" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LAUNDRYLOCATION_15" IS 'LAUNDRY LOCATION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LAUNDRYTYPE_14" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LAUNDRYTYPE_14" IS 'LAUNDRY TYPE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LAUNDRY_79" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LAUNDRY_79" IS 'LAUNDRY';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LEASETERMUNIT1_80" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LEASETERMUNIT1_80" IS 'LEASE TERM UNIT-1';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LEASETERMUNIT2_82" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LEASETERMUNIT2_82" IS 'LEASE TERM UNIT-2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LEASETERMUNIT3_83" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LEASETERMUNIT3_83" IS 'LEASE TERM UNIT-3';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LEASETERMUNIT4_84" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LEASETERMUNIT4_84" IS 'LEASE TERM UNIT-4';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LOCATION_51" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LOCATION_51" IS 'LOCATION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LOTDESCRIPTION_16" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LOTDESCRIPTION_16" IS 'LOT DESCRIPTION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LOTSIZE_32" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LOTSIZE_32" IS 'LOT SIZE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_LOTSIZE_52" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_LOTSIZE_52" IS 'LOT SIZE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_MISCELLANEOUS_98" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_MISCELLANEOUS_98" IS 'MISCELLANEOUS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_PARKING_21" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_PARKING_21" IS 'PARKING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_PARKING_88" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_PARKING_88" IS 'PARKING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_PHOTOCODE_100" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_PHOTOCODE_100" IS 'PHOTO CODE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_PHOTOCODE_19" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_PHOTOCODE_19" IS 'PHOTO CODE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_PHOTOCODE_34" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_PHOTOCODE_34" IS 'PHOTO CODE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_PHOTOCODE_54" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_PHOTOCODE_54" IS 'PHOTO CODE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_PHOTOCODE_86" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_PHOTOCODE_86" IS 'PHOTO CODE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POSSESSION_101" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POSSESSION_101" IS 'POSSESSION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POSSESSION_20" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POSSESSION_20" IS 'POSSESSION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POSSESSION_55" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POSSESSION_55" IS 'POSSESSION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POSSESSION_87" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POSSESSION_87" IS 'POSSESSION';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POSSIBLEFINANCE_18" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POSSIBLEFINANCE_18" IS 'POSSIBLE FINANCE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POSSIBLEFINANCE_85" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POSSIBLEFINANCE_85" IS 'POSSIBLE FINANCE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POSSIBLEFINANCING_33" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POSSIBLEFINANCING_33" IS 'POSSIBLE FINANCING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POSSIBLEFINANCING_53" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POSSIBLEFINANCING_53" IS 'POSSIBLE FINANCING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POSSIBLEFINANCING_99" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POSSIBLEFINANCING_99" IS 'POSSIBLE FINANCING';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_POTENTIALUSE_36" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_POTENTIALUSE_36" IS 'POTENTIAL USE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_PRESENTUSE_35" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_PRESENTUSE_35" IS 'PRESENT USE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_ROADFRONTAGE_37" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_ROADFRONTAGE_37" IS 'ROAD FRONTAGE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_ROADFRONTAGE_56" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_ROADFRONTAGE_56" IS 'ROAD FRONTAGE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_ROOFTYPE_23" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_ROOFTYPE_23" IS 'ROOF TYPE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_ROOFTYPE_57" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_ROOFTYPE_57" IS 'ROOF TYPE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_ROOMS_22" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_ROOMS_22" IS 'ROOMS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_SALEINCLUDES_59" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_SALEINCLUDES_59" IS 'SALE INCLUDES';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_SHOWINGINSTRUCTIONS_102" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_SHOWINGINSTRUCTIONS_102" IS 'SHOWING INSTRUCTIONS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_SHOWINGINSTRUCTIONS_24" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_SHOWINGINSTRUCTIONS_24" IS 'SHOWING INSTRUCTIONS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_SHOWINGINSTRUCTIONS_38" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_SHOWINGINSTRUCTIONS_38" IS 'SHOWING INSTRUCTIONS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_SHOWINGINSTRUCTIONS_58" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_SHOWINGINSTRUCTIONS_58" IS 'SHOWING INSTRUCTIONS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_SHOWINGINSTRUCTIONS_89" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_SHOWINGINSTRUCTIONS_89" IS 'SHOWING INSTRUCTIONS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_SPECIALFEATURES_60" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_SPECIALFEATURES_60" IS 'SPECIAL FEATURES';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_SQUAREFEET_61" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_SQUAREFEET_61" IS 'SQUARE FEET';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_STORIESSTYLE_25" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_STORIESSTYLE_25" IS 'STORIES/STYLE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_STRUCTURE_39" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_STRUCTURE_39" IS 'STRUCTURE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_TOPOLOGY_103" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_TOPOLOGY_103" IS 'TOPOLOGY';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_TOPOLOGY_40" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_TOPOLOGY_40" IS 'TOPOLOGY';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_TYPEMULTIFAMILY_90" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_TYPEMULTIFAMILY_90" IS 'TYPE MULTI FAMILY';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_UTILITIESAVAILABLE_104" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_UTILITIESAVAILABLE_104" IS 'UTILITIES AVAILABLE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_UTILITIESAVAILABLE_41" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_UTILITIESAVAILABLE_41" IS 'UTILITIES AVAILABLE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_UTILITIESAVAILABLE_62" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_UTILITIESAVAILABLE_62" IS 'UTILITIES AVAILABLE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_UTILITIESAVAILABLE_91" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_UTILITIESAVAILABLE_91" IS 'UTILITIES AVAILABLE';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_WATERSEWER_26" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_WATERSEWER_26" IS 'WATER/SEWER';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_WATERSEWER_92" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_WATERSEWER_92" IS 'WATER/SEWER';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LFD_WATER_42" text[];
    COMMENT ON COLUMN iowacity."Property"."LFD_WATER_42" IS 'WATER';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_AddressLine" text;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_AddressLine" IS 'Geo Address Line';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_Latitude" decimal;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_Latitude" IS 'Geo Latitude';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_Longitude" decimal;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_Longitude" IS 'Geo Longitude';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_MatchCode" integer;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_MatchCode" IS 'Geo Match Code';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_MatchedMethod" integer;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_MatchedMethod" IS 'Geo Matched Method';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_PostalCode" text;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_PostalCode" IS 'Geo Postal Code';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_PrimaryCity" text;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_PrimaryCity" IS 'Geo Primary City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_Quality" decimal;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_Quality" IS 'Geo Quality';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_SecondaryCity" text;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_SecondaryCity" IS 'Geo Secondary City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_Subdivision" text;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_Subdivision" IS 'Geo Subdivision';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_UpdateDate" text;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_UpdateDate" IS 'Geo Update Timestamp';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LMD_MP_ZoomLevel" decimal;
    COMMENT ON COLUMN iowacity."Property"."LMD_MP_ZoomLevel" IS 'Geo Zoom Level';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char10_1" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char10_1" IS 'Comm. to SB ($/%)';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char10_14" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char10_14" IS 'Lease Value';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char10_15" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char10_15" IS 'Photo Code';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_1" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_1" IS 'New Construction';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_10" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_10" IS 'Truck Farm';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_11" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_11" IS 'Tree Farm';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_12" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_12" IS 'Hog Farm';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_13" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_13" IS 'Horse Farm';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_14" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_14" IS 'Poultry Farm';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_15" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_15" IS 'Dairy Farm';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_16" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_16" IS 'Beef Farm';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_17" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_17" IS 'Basement';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_18" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_18" IS 'House Livable';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_19" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_19" IS 'Farm w/House';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_2" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_2" IS 'Internet';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_3" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_3" IS 'Variable Rate';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_5" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_5" IS 'Hog Shed';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_6" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_6" IS 'Horse Water in Pasture';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_7" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_7" IS 'Dairy Pasture Fenced';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_8" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_8" IS 'Beef Pasture Fenced';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char1_9" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char1_9" IS 'Farrow House';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char25_1" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char25_1" IS 'Subdivision';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char25_10" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char25_10" IS 'Property Code';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char25_11" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char25_11" IS 'Lease Term';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char25_2" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char25_2" IS 'Builder';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char25_29" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char25_29" IS 'Zoning';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char25_30" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char25_30" IS 'Type of Lease';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char25_4" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char25_4" IS 'Elementary School';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char25_5" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char25_5" IS 'Jr./Middle School';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char25_6" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char25_6" IS 'High School';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Char50_1" text;
    COMMENT ON COLUMN iowacity."Property"."LM_Char50_1" IS 'Owner Name (L,F,MI)';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_1" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_1" IS 'Gross Tax (County & City)';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_10" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_10" IS 'Floors';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_11" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_11" IS 'Lease Price';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_12" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_12" IS 'Base Price/Square Foot';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_13" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_13" IS 'Additional Charges/Sq. Ft';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_24" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_24" IS 'Annual Gross Income';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_25" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_25" IS 'Annual Gross Expense';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_26" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_26" IS 'Maintenance Annually';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_27" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_27" IS 'Gas Annually';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_28" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_28" IS 'Water Annually';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_29" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_29" IS 'Electric Annually';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_30" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_30" IS 'Insurance Annually';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_4" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_4" IS 'T-Val';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_7" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_7" IS 'Unit4 Monthly Rent';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_8" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_8" IS 'Unit3 Monthly Rent';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Dec_9" decimal;
    COMMENT ON COLUMN iowacity."Property"."LM_Dec_9" IS 'Unit2 Monthly Rent';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_10" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_10" IS 'Unit3 # 3/4 Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_11" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_11" IS 'Unit2 # 3/4 Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_12" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_12" IS 'Unit1 # 3/4 Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_13" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_13" IS 'Unit4 # Full Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_14" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_14" IS 'Unit3 # Full Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_15" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_15" IS 'Unit2 # Full Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_16" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_16" IS 'Unit1 # Full Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_17" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_17" IS 'Unit4 #Bedrooms';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_18" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_18" IS 'Unit3 #Bedrooms';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_19" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_19" IS 'Unit2 #Bedrooms';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_20" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_20" IS 'Unit1 #Bedrooms';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_5" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_5" IS 'Unit4 # Half Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_6" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_6" IS 'Unit3 # Half Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_7" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_7" IS 'Unit2 # Half Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_8" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_8" IS 'Unit1 # Half Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int1_9" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int1_9" IS 'Unit4 # 3/4 Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int2_1" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int2_1" IS 'Closing Costs';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_1" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_1" IS 'Tax Year Report';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_10" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_10" IS 'Total Half Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_11" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_11" IS 'Total Full Baths';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_12" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_12" IS 'Total Bedrooms';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_13" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_13" IS 'Acres Cultivated';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_14" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_14" IS 'Acres Pasture';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_15" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_15" IS 'Acres Wooded';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_16" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_16" IS 'Acres Open';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_17" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_17" IS 'Road Frontage';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_18" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_18" IS 'Plat Page';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_19" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_19" IS 'Block';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_2" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_2" IS 'Year Built';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_20" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_20" IS 'Lot';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_3" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_3" IS 'Truck Acres Cultivated';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_4" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_4" IS 'Tree Acres Pulp';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_5" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_5" IS 'Hog Herd Capacity';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_6" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_6" IS 'Horse Herd Capacity';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_7" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_7" IS 'Poultry Houses';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_8" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_8" IS 'Dairy Herd Capacity';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_Int4_9" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_Int4_9" IS 'Beef Herd Capacity';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char100_1" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char100_1" IS 'Closing Costs';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char10_31" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char10_31" IS 'Annual Assoc. Fee';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char1_55" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char1_55" IS 'Hog Auto Feeder';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char1_56" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char1_56" IS 'Dairy Milk Parlor';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char1_57" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char1_57" IS 'Hog Acres Pasture';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char1_58" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char1_58" IS 'Horse Riding Area';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char1_59" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char1_59" IS 'Dairy Water in Pasture';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char1_60" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char1_60" IS 'Beef Water in Pasture';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char255_2" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char255_2" IS 'Directions';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char30_1" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char30_1" IS 'Zoning';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char30_13" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char30_13" IS 'Tax ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char30_2" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char30_2" IS 'County';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char30_3" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char30_3" IS 'Township/Range';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char30_6" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char30_6" IS 'Buyers Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char5_1" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char5_1" IS 'Section';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char5_57" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char5_57" IS 'Unit4 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char5_58" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char5_58" IS 'Unit3 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char5_59" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char5_59" IS 'Unit2 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_char5_60" text;
    COMMENT ON COLUMN iowacity."Property"."LM_char5_60" IS 'Section';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_21" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_21" IS 'Truck Tax Year';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_22" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_22" IS 'Yearly Truck Farm Income';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_23" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_23" IS 'Trees Acres Orchard';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_24" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_24" IS 'Trees Acres Xmas';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_25" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_25" IS 'Number of Stalls';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_26" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_26" IS 'Annual Poultry Exp';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_27" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_27" IS 'Dairy Barn Stalls';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_28" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_28" IS 'Beef Barn Stalls';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_29" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_29" IS 'Truck Trac Stall';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_30" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_30" IS 'Tree Year Cut';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_31" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_31" IS 'Annual Poultry Income';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_32" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_32" IS 'Truck Proc House';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_33" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_33" IS 'Tree Acre Pine';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_34" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_34" IS 'Poultry Capacity';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_35" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_35" IS 'Truck Farm Irrigated';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_36" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_36" IS 'Tree Acres Hard';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_37" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_37" IS 'Horse Acres Pasture';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_38" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_38" IS 'Poultry House Size (WxL)';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_39" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_39" IS 'Dairy Acres Pasture';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LM_int4_40" integer;
    COMMENT ON COLUMN iowacity."Property"."LM_int4_40" IS 'Beef Acres Pasture';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."LO1_BranchOfOrgID" IS 'LO1Main Office ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_EMail" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_EMail" IS 'LO1Office Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_HiddenOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."LO1_HiddenOrgID" IS 'LO1Office Identifier';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_HiddenOtyID" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_HiddenOtyID" IS 'LO1Office Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_OrgAddress2" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_OrgAddress2" IS 'LO1Office Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_OrgAddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_OrgAddressStreet" IS 'LO1OffceAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_OrgCity" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_OrgCity" IS 'LO1Office City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_OrgState" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_OrgState" IS 'LO1Office State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_OrgZip" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_OrgZip" IS 'LO1Office Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_OrganizationName" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_OrganizationName" IS 'LO1Office Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_PhoneNumber1" IS 'LO1Office Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_PhoneNumber1CountryCodeId" IS 'LO1OfficePhone1CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_PhoneNumber1Desc" IS 'LO1OfficePhone1Descriptin';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_PhoneNumber1Ext" IS 'LO1OfficePhone1Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_ShortName" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_ShortName" IS 'LO1Office Abbreviation';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."LO1_WebPage" IS 'LO1Office Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO1_board_id" integer;
    COMMENT ON COLUMN iowacity."Property"."LO1_board_id" IS 'LO1Board ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_BranchOfOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."LO2_BranchOfOrgID" IS 'LO2Main Office ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_EMail" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_EMail" IS 'LO2Office Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_HiddenOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."LO2_HiddenOrgID" IS 'LO2Office Identifier';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_HiddenOtyID" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_HiddenOtyID" IS 'LO2Office Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_OrgAddress2" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_OrgAddress2" IS 'LO2Office Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_OrgAddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_OrgAddressStreet" IS 'LO2OffceAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_OrgCity" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_OrgCity" IS 'LO2Office City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_OrgState" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_OrgState" IS 'LO2Office State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_OrgZip" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_OrgZip" IS 'LO2Office Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_OrganizationName" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_OrganizationName" IS 'LO2Office Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_PhoneNumber1" IS 'LO2Office Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_PhoneNumber1CountryCodeId" IS 'LO2OfficePhone1CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_PhoneNumber1Desc" IS 'LO2OfficePhone1Descriptin';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_PhoneNumber1Ext" IS 'LO2OfficePhone1Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_ShortName" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_ShortName" IS 'LO2Office Abbreviation';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."LO2_WebPage" IS 'LO2Office Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO2_board_id" integer;
    COMMENT ON COLUMN iowacity."Property"."LO2_board_id" IS 'LO2Board ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_BranchOfOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."LO3_BranchOfOrgID" IS 'LO3Main Office ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_EMail" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_EMail" IS 'LO3Office Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_HiddenOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."LO3_HiddenOrgID" IS 'LO3Office Identifier';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_HiddenOtyID" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_HiddenOtyID" IS 'LO3Office Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_OrgAddress2" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_OrgAddress2" IS 'LO3Office Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_OrgAddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_OrgAddressStreet" IS 'LO3OffceAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_OrgCity" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_OrgCity" IS 'LO3Office City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_OrgState" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_OrgState" IS 'LO3Office State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_OrgZip" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_OrgZip" IS 'LO3Office Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_OrganizationName" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_OrganizationName" IS 'LO3Office Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_PhoneNumber1" IS 'LO3Office Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_PhoneNumber1CountryCodeId" IS 'LO3OfficePhone1CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_PhoneNumber1Desc" IS 'LO3OfficePhone1Descriptin';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_PhoneNumber1Ext" IS 'LO3OfficePhone1Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_ShortName" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_ShortName" IS 'LO3Office Abbreviation';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."LO3_WebPage" IS 'LO3Office Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LO3_board_id" integer;
    COMMENT ON COLUMN iowacity."Property"."LO3_board_id" IS 'LO3Board ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LR_remarks11" text;
    COMMENT ON COLUMN iowacity."Property"."LR_remarks11" IS 'Addendum';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LVC_Agent_Hit_Count" integer;
    COMMENT ON COLUMN iowacity."Property"."LVC_Agent_Hit_Count" IS 'Agent Hit Count';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LVC_Client_Hit_Count" integer;
    COMMENT ON COLUMN iowacity."Property"."LVC_Client_Hit_Count" IS 'Client Hit Count';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LV_vow_address" text;
    COMMENT ON COLUMN iowacity."Property"."LV_vow_address" IS 'VOW Address';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LV_vow_avm" text;
    COMMENT ON COLUMN iowacity."Property"."LV_vow_avm" IS 'VOW AVM';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LV_vow_comment" text;
    COMMENT ON COLUMN iowacity."Property"."LV_vow_comment" IS 'VOW Comment';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "LV_vow_include" text;
    COMMENT ON COLUMN iowacity."Property"."LV_vow_include" IS 'VOW Include';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Address" text;
    COMMENT ON COLUMN iowacity."Property"."L_Address" IS 'Address';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Address2" text;
    COMMENT ON COLUMN iowacity."Property"."L_Address2" IS 'Address 2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_AddressDirection" text;
    COMMENT ON COLUMN iowacity."Property"."L_AddressDirection" IS 'Address Direction';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_AddressNumber" text;
    COMMENT ON COLUMN iowacity."Property"."L_AddressNumber" IS 'Address Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_AddressSearchNumber" integer;
    COMMENT ON COLUMN iowacity."Property"."L_AddressSearchNumber" IS 'Address Search Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_AddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."L_AddressStreet" IS 'Address Street';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Area" text;
    COMMENT ON COLUMN iowacity."Property"."L_Area" IS 'Area';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_AskingPrice" integer;
    COMMENT ON COLUMN iowacity."Property"."L_AskingPrice" IS 'List Price';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_City" text;
    COMMENT ON COLUMN iowacity."Property"."L_City" IS 'City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Class" text;
    COMMENT ON COLUMN iowacity."Property"."L_Class" IS 'Property Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ClosingDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_ClosingDate" IS 'Closing Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ContractDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_ContractDate" IS 'Pending Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_DOM" integer;
    COMMENT ON COLUMN iowacity."Property"."L_DOM" IS 'DOM';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_DOMLS" integer;
    COMMENT ON COLUMN iowacity."Property"."L_DOMLS" IS 'DOMLS';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_DisplayId" text;
    COMMENT ON COLUMN iowacity."Property"."L_DisplayId" IS 'MLS #';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ExpirationDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_ExpirationDate" IS 'Expiration Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_FirstPhotoAddDt" text;
    COMMENT ON COLUMN iowacity."Property"."L_FirstPhotoAddDt" IS 'First Photo Add Timestamp';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_HotSheetDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_HotSheetDate" IS 'HotSheet Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_HowSold" text;
    COMMENT ON COLUMN iowacity."Property"."L_HowSold" IS 'Sales Term';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_IdxInclude" text;
    COMMENT ON COLUMN iowacity."Property"."L_IdxInclude" IS 'IDX Include';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_InputDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_InputDate" IS 'Input Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Keyword1" integer;
    COMMENT ON COLUMN iowacity."Property"."L_Keyword1" IS 'Total SqFt';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_LastDocUpdate" text;
    COMMENT ON COLUMN iowacity."Property"."L_LastDocUpdate" IS 'Doc Timestamp';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Last_Photo_updt" text;
    COMMENT ON COLUMN iowacity."Property"."L_Last_Photo_updt" IS 'PhotoTimestamp';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ListAgent1" integer;
    COMMENT ON COLUMN iowacity."Property"."L_ListAgent1" IS 'List Agent1 Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ListAgent2" integer;
    COMMENT ON COLUMN iowacity."Property"."L_ListAgent2" IS 'List Agent2 Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ListAgent3" integer;
    COMMENT ON COLUMN iowacity."Property"."L_ListAgent3" IS 'List Agent3 Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ListOffice1" integer;
    COMMENT ON COLUMN iowacity."Property"."L_ListOffice1" IS 'List Broker1 Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ListOffice2" integer;
    COMMENT ON COLUMN iowacity."Property"."L_ListOffice2" IS 'List Broker2 Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ListOffice3" integer;
    COMMENT ON COLUMN iowacity."Property"."L_ListOffice3" IS 'List Broker3 Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ListingDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_ListingDate" IS 'Listing Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_ListingID" integer PRIMARY KEY;
    COMMENT ON COLUMN iowacity."Property"."L_ListingID" IS 'SystemID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_NumAcres" decimal;
    COMMENT ON COLUMN iowacity."Property"."L_NumAcres" IS 'Acreage';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_NumUnits" integer;
    COMMENT ON COLUMN iowacity."Property"."L_NumUnits" IS 'Units Total';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_OffMarketDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_OriginalPrice" integer;
    COMMENT ON COLUMN iowacity."Property"."L_OriginalPrice" IS 'Original Price';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_PictureCount" integer;
    COMMENT ON COLUMN iowacity."Property"."L_PictureCount" IS 'Photo Count';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_PriceDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_PriceDate" IS 'Price Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_PricePerAcre" integer;
    COMMENT ON COLUMN iowacity."Property"."L_PricePerAcre" IS 'Price Per Acre';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Remarks" text;
    COMMENT ON COLUMN iowacity."Property"."L_Remarks" IS 'Remarks';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SaleRent" text;
    COMMENT ON COLUMN iowacity."Property"."L_SaleRent" IS 'Sale/Lease';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SellingAgent1" integer;
    COMMENT ON COLUMN iowacity."Property"."L_SellingAgent1" IS 'Selling Agent 1';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SellingAgent2" integer;
    COMMENT ON COLUMN iowacity."Property"."L_SellingAgent2" IS 'Selling Agent 2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SellingAgent3" integer;
    COMMENT ON COLUMN iowacity."Property"."L_SellingAgent3" IS 'Selling Agent 3';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SellingOffice1" integer;
    COMMENT ON COLUMN iowacity."Property"."L_SellingOffice1" IS 'Selling Office 1';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SellingOffice2" integer;
    COMMENT ON COLUMN iowacity."Property"."L_SellingOffice2" IS 'Selling Office 2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SellingOffice3" integer;
    COMMENT ON COLUMN iowacity."Property"."L_SellingOffice3" IS 'Selling Office 3';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SoldPrice" integer;
    COMMENT ON COLUMN iowacity."Property"."L_SoldPrice" IS 'Sold Price';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SquareFeet" integer;
    COMMENT ON COLUMN iowacity."Property"."L_SquareFeet" IS 'Square Feet';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_State" text;
    COMMENT ON COLUMN iowacity."Property"."L_State" IS 'State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Status" text;
    COMMENT ON COLUMN iowacity."Property"."L_Status" IS 'Status';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_StatusCatID" text;
    COMMENT ON COLUMN iowacity."Property"."L_StatusCatID" IS 'Status Category';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_StatusDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_StatusDate" IS 'Status Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_StatusID" text;
    COMMENT ON COLUMN iowacity."Property"."L_StatusID" IS 'Status Detail';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_SystemPrice" integer;
    COMMENT ON COLUMN iowacity."Property"."L_SystemPrice" IS 'Search Price';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Type_" text;
    COMMENT ON COLUMN iowacity."Property"."L_Type_" IS 'Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_UpdateDate" text;
    COMMENT ON COLUMN iowacity."Property"."L_UpdateDate" IS 'Update Date';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_Zip" text;
    COMMENT ON COLUMN iowacity."Property"."L_Zip" IS 'Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "L_listings_associated_doc_count" integer;
    COMMENT ON COLUMN iowacity."Property"."L_listings_associated_doc_count" IS 'Associated Document Count';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_Address2" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_Address2" IS 'SA1Agent Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_AddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_AddressStreet" IS 'SA1AgentAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_City" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_City" IS 'SA1Agent City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_Email" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_Email" IS 'SA1Agent Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_HiddenUsCID" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_HiddenUsCID" IS 'SA1Agent Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber1" IS 'SA1Agent Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber1CountryCodeId" IS 'SA1Agent Phone1 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber1Desc" IS 'SA1AgentPhone1Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber1Ext" IS 'SA1Agent Phone1 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber2" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber2" IS 'SA1Agent Phone2 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber2CountryCodeId" IS 'SA1Agent Phone2 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber2Desc" IS 'SA1AgentPhone2Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber2Ext" IS 'SA1Agent Phone2 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber3" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber3" IS 'SA1Agent Phone3 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber3CountryCodeId" IS 'SA1Agent Phone3 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber3Desc" IS 'SA1AgentPhone3Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber3Ext" IS 'SA1Agent Phone3 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber4" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber4" IS 'SA1Agent Phone4 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber4CountryCodeId" IS 'SA1Agent Phone4 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber4Desc" IS 'SA1AgentPhone4Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber4Ext" IS 'SA1Agent Phone4 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber5" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber5" IS 'SA1Agent Phone5 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber5CountryCodeId" IS 'SA1Agent Phone5 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber5Desc" IS 'SA1AgentPhone5Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_PhoneNumber5Ext" IS 'SA1Agent Phone5 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_State" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_State" IS 'SA1Agent State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_Status" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_Status" IS 'SA1Agent Status';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_UserFirstName" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_UserFirstName" IS 'SA1Agent First Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_UserLastName" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_UserLastName" IS 'SA1Agent Last Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_UserMI" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_UserMI" IS 'SA1Agent Middle Initial';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_WebPage" IS 'SA1Agent Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA1_Zip" text;
    COMMENT ON COLUMN iowacity."Property"."SA1_Zip" IS 'SA1Agent Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_Address2" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_Address2" IS 'SA2Agent Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_AddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_AddressStreet" IS 'SA2AgentAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_City" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_City" IS 'SA2Agent City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_Email" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_Email" IS 'SA2Agent Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_HiddenUsCID" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_HiddenUsCID" IS 'SA2Agent Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber1" IS 'SA2Agent Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber1CountryCodeId" IS 'SA2Agent Phone1 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber1Desc" IS 'SA2AgentPhone1Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber1Ext" IS 'SA2Agent Phone1 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber2" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber2" IS 'SA2Agent Phone2 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber2CountryCodeId" IS 'SA2Agent Phone2 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber2Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber2Desc" IS 'SA2AgentPhone2Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber2Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber2Ext" IS 'SA2Agent Phone2 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber3" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber3" IS 'SA2Agent Phone3 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber3CountryCodeId" IS 'SA2Agent Phone3 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber3Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber3Desc" IS 'SA2AgentPhone3Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber3Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber3Ext" IS 'SA2Agent Phone3 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber4" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber4" IS 'SA2Agent Phone4 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber4CountryCodeId" IS 'SA2Agent Phone4 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber4Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber4Desc" IS 'SA2AgentPhone4Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber4Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber4Ext" IS 'SA2Agent Phone4 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber5" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber5" IS 'SA2Agent Phone5 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber5CountryCodeId" IS 'SA2Agent Phone5 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber5Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber5Desc" IS 'SA2AgentPhone5Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_PhoneNumber5Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_PhoneNumber5Ext" IS 'SA2Agent Phone5 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_State" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_State" IS 'SA2Agent State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_Status" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_Status" IS 'SA2Agent Status';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_UserFirstName" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_UserFirstName" IS 'SA2Agent First Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_UserLastName" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_UserLastName" IS 'SA2Agent Last Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_UserMI" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_UserMI" IS 'SA2Agent Middle Initial';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_WebPage" IS 'SA2Agent Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA2_Zip" text;
    COMMENT ON COLUMN iowacity."Property"."SA2_Zip" IS 'SA2Agent Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_Address2" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_Address2" IS 'SA3Agent Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_AddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_AddressStreet" IS 'SA3AgentAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_City" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_City" IS 'SA3Agent City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_Email" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_Email" IS 'SA3Agent Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_HiddenUsCID" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_HiddenUsCID" IS 'SA3Agent Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber1" IS 'SA3Agent Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber1CountryCodeId" IS 'SA3Agent Phone1 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber1Desc" IS 'SA3AgentPhone1Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber1Ext" IS 'SA3Agent Phone1 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber2" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber2" IS 'SA3Agent Phone2 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber2CountryCodeId" IS 'SA3Agent Phone2 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber2Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber2Desc" IS 'SA3AgentPhone2Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber2Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber2Ext" IS 'SA3Agent Phone2 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber3" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber3" IS 'SA3Agent Phone3 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber3CountryCodeId" IS 'SA3Agent Phone3 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber3Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber3Desc" IS 'SA3AgentPhone3Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber3Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber3Ext" IS 'SA3Agent Phone3 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber4" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber4" IS 'SA3Agent Phone4 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber4CountryCodeId" IS 'SA3Agent Phone4 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber4Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber4Desc" IS 'SA3AgentPhone4Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber4Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber4Ext" IS 'SA3Agent Phone4 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber5" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber5" IS 'SA3Agent Phone5 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber5CountryCodeId" IS 'SA3Agent Phone5 CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber5Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber5Desc" IS 'SA3AgentPhone5Description';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_PhoneNumber5Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_PhoneNumber5Ext" IS 'SA3Agent Phone5 Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_State" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_State" IS 'SA3Agent State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_Status" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_Status" IS 'SA3Agent Status';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_UserFirstName" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_UserFirstName" IS 'SA3Agent First Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_UserLastName" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_UserLastName" IS 'SA3Agent Last Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_UserMI" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_UserMI" IS 'SA3Agent Middle Initial';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_WebPage" IS 'SA3Agent Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SA3_Zip" text;
    COMMENT ON COLUMN iowacity."Property"."SA3_Zip" IS 'SA3Agent Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."SO1_BranchOfOrgID" IS 'SO1Main Office ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_EMail" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_EMail" IS 'SO1Office Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_HiddenOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."SO1_HiddenOrgID" IS 'SO1Office Identifier';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_HiddenOtyID" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_HiddenOtyID" IS 'SO1Office Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_OrgAddress2" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_OrgAddress2" IS 'SO1Office Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_OrgAddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_OrgAddressStreet" IS 'SO1OffceAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_OrgCity" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_OrgCity" IS 'SO1Office City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_OrgState" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_OrgState" IS 'SO1Office State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_OrgZip" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_OrgZip" IS 'SO1Office Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_OrganizationName" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_OrganizationName" IS 'SO1Office Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_PhoneNumber1" IS 'SO1Office Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_PhoneNumber1CountryCodeId" IS 'SO1OfficePhone1CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_PhoneNumber1Desc" IS 'SO1OfficePhone1Descriptin';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_PhoneNumber1Ext" IS 'SO1OfficePhone1Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_ShortName" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_ShortName" IS 'SO1Office Abbreviation';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."SO1_WebPage" IS 'SO1Office Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO1_board_id" integer;
    COMMENT ON COLUMN iowacity."Property"."SO1_board_id" IS 'SO1Board ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_BranchOfOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."SO2_BranchOfOrgID" IS 'SO2Main Office ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_EMail" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_EMail" IS 'SO2Office Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_HiddenOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."SO2_HiddenOrgID" IS 'SO2Office Identifier';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_HiddenOtyID" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_HiddenOtyID" IS 'SO2Office Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_OrgAddress2" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_OrgAddress2" IS 'SO2Office Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_OrgAddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_OrgAddressStreet" IS 'SO2OffceAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_OrgCity" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_OrgCity" IS 'SO2Office City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_OrgState" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_OrgState" IS 'SO2Office State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_OrgZip" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_OrgZip" IS 'SO2Office Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_OrganizationName" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_OrganizationName" IS 'SO2Office Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_PhoneNumber1" IS 'SO2Office Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_PhoneNumber1CountryCodeId" IS 'SO2OfficePhone1CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_PhoneNumber1Desc" IS 'SO2OfficePhone1Descriptin';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_PhoneNumber1Ext" IS 'SO2OfficePhone1Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_ShortName" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_ShortName" IS 'SO2Office Abbreviation';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."SO2_WebPage" IS 'SO2Office Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO2_board_id" integer;
    COMMENT ON COLUMN iowacity."Property"."SO2_board_id" IS 'SO2Board ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_BranchOfOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."SO3_BranchOfOrgID" IS 'SO3Main Office ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_EMail" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_EMail" IS 'SO3Office Email';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_HiddenOrgID" integer;
    COMMENT ON COLUMN iowacity."Property"."SO3_HiddenOrgID" IS 'SO3Office Identifier';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_HiddenOtyID" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_HiddenOtyID" IS 'SO3Office Type';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_OrgAddress2" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_OrgAddress2" IS 'SO3Office Address2';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_OrgAddressStreet" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_OrgAddressStreet" IS 'SO3OffceAddressStreetName';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_OrgCity" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_OrgCity" IS 'SO3Office City';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_OrgState" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_OrgState" IS 'SO3Office State';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_OrgZip" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_OrgZip" IS 'SO3Office Zip';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_OrganizationName" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_OrganizationName" IS 'SO3Office Name';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_PhoneNumber1" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_PhoneNumber1" IS 'SO3Office Phone1 Number';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_PhoneNumber1CountryCodeId" IS 'SO3OfficePhone1CountryId';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_PhoneNumber1Desc" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_PhoneNumber1Desc" IS 'SO3OfficePhone1Descriptin';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_PhoneNumber1Ext" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_PhoneNumber1Ext" IS 'SO3OfficePhone1Extension';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_ShortName" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_ShortName" IS 'SO3Office Abbreviation';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_WebPage" text;
    COMMENT ON COLUMN iowacity."Property"."SO3_WebPage" IS 'SO3Office Url';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "SO3_board_id" integer;
    COMMENT ON COLUMN iowacity."Property"."SO3_board_id" IS 'SO3Board ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "T_list_tax_property_id" text;
    COMMENT ON COLUMN iowacity."Property"."T_list_tax_property_id" IS 'Tax Property ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "T_tax_db_id" integer;
    COMMENT ON COLUMN iowacity."Property"."T_tax_db_id" IS 'Tax Database ID';
     
    ALTER TABLE iowacity."Property" ADD COLUMN "VT_VTourURL" text;
    COMMENT ON COLUMN iowacity."Property"."VT_VTourURL" IS 'Virtual Tour';
     

COMMIT;