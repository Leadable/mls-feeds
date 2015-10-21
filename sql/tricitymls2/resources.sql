BEGIN;

  CREATE TABLE tricitymls2."Property"() INHERITS (property);
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_Address2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_Address2" IS 'LA1Agent Address2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_AddressStreet" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_AddressStreet" IS 'LA1AgentAddressStreetName';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_AgentID" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_AgentID" IS 'LA1User Code';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_Char10_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_Char10_1" IS 'LA1Last 4 of SSN';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_Char10_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_Char10_2" IS 'LA1Originating MLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_City" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_City" IS 'LA1Agent City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_DateTime_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_DateTime_1" IS 'LA1Inactive Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_Email" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_Email" IS 'LA1Agent Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_HiddenUsCID" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_HiddenUsCID" IS 'LA1Agent Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_LoginName" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_LoginName" IS 'LA1Agent Logon Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber1" IS 'LA1Agent Phone1 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber1CountryCodeId" IS 'LA1Agent Phone1 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber1Desc" IS 'LA1AgentPhone1Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber1Ext" IS 'LA1Agent Phone1 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber2" IS 'LA1Agent Phone2 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber2CountryCodeId" IS 'LA1Agent Phone2 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber2Desc" IS 'LA1AgentPhone2Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber2Ext" IS 'LA1Agent Phone2 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber3" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber3" IS 'LA1Agent Phone3 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber3CountryCodeId" IS 'LA1Agent Phone3 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber3Desc" IS 'LA1AgentPhone3Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber3Ext" IS 'LA1Agent Phone3 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber4" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber4" IS 'LA1Agent Phone4 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber4CountryCodeId" IS 'LA1Agent Phone4 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber4Desc" IS 'LA1AgentPhone4Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber4Ext" IS 'LA1Agent Phone4 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber5" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber5" IS 'LA1Agent Phone5 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber5CountryCodeId" IS 'LA1Agent Phone5 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber5Desc" IS 'LA1AgentPhone5Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_PhoneNumber5Ext" IS 'LA1Agent Phone5 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_State" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_State" IS 'LA1Agent State';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_Status" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_Status" IS 'LA1Agent Status';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_UserFirstName" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_UserFirstName" IS 'LA1Agent First Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_UserLastName" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_UserLastName" IS 'LA1Agent Last Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_UserMI" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_UserMI" IS 'LA1Agent Middle Initial';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_WebPage" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_WebPage" IS 'LA1Agent Url';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA1_Zip" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA1_Zip" IS 'LA1Agent Zip';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_Address2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_Address2" IS 'LA2Agent Address2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_AddressStreet" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_AddressStreet" IS 'LA2AgentAddressStreetName';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_Char10_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_Char10_1" IS 'LA2Last 4 of SSN';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_Char10_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_Char10_2" IS 'LA2Originating MLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_City" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_City" IS 'LA2Agent City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_DateTime_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_DateTime_1" IS 'LA2Inactive Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_Email" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_Email" IS 'LA2Agent Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_HiddenUsCID" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_HiddenUsCID" IS 'LA2Agent Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber1" IS 'LA2Agent Phone1 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber1CountryCodeId" IS 'LA2Agent Phone1 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber1Desc" IS 'LA2AgentPhone1Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber1Ext" IS 'LA2Agent Phone1 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber2" IS 'LA2Agent Phone2 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber2CountryCodeId" IS 'LA2Agent Phone2 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber2Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber2Desc" IS 'LA2AgentPhone2Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber2Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber2Ext" IS 'LA2Agent Phone2 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber3" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber3" IS 'LA2Agent Phone3 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber3CountryCodeId" IS 'LA2Agent Phone3 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber3Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber3Desc" IS 'LA2AgentPhone3Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber3Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber3Ext" IS 'LA2Agent Phone3 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber4" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber4" IS 'LA2Agent Phone4 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber4CountryCodeId" IS 'LA2Agent Phone4 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber4Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber4Desc" IS 'LA2AgentPhone4Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber4Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber4Ext" IS 'LA2Agent Phone4 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber5" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber5" IS 'LA2Agent Phone5 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber5CountryCodeId" IS 'LA2Agent Phone5 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber5Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber5Desc" IS 'LA2AgentPhone5Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_PhoneNumber5Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_PhoneNumber5Ext" IS 'LA2Agent Phone5 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_State" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_State" IS 'LA2Agent State';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_Status" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_Status" IS 'LA2Agent Status';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_UserFirstName" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_UserFirstName" IS 'LA2Agent First Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_UserLastName" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_UserLastName" IS 'LA2Agent Last Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_UserMI" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_UserMI" IS 'LA2Agent Middle Initial';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_WebPage" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_WebPage" IS 'LA2Agent Url';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LA2_Zip" text;
    COMMENT ON COLUMN tricitymls2."Property"."LA2_Zip" IS 'LA2Agent Zip';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AGENTINFOSHOWINGINST_34" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AGENTINFOSHOWINGINST_34" IS 'AGENT INFO/SHOWING INST.';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AIRCONDITIONING_13" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AIRCONDITIONING_13" IS 'AIR CONDITIONING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AIRCONDITIONING_49" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AIRCONDITIONING_49" IS 'AIR CONDITIONING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AIRCONDITIONING_69" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AIRCONDITIONING_69" IS 'AIR CONDITIONING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_APPLIANCES_10" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_APPLIANCES_10" IS 'APPLIANCES';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_APPLIANCES_66" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_APPLIANCES_66" IS 'APPLIANCES';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AVAILABLEFINANCING_1" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AVAILABLEFINANCING_1" IS 'AVAILABLE FINANCING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AVAILABLEFINANCING_26" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AVAILABLEFINANCING_26" IS 'AVAILABLE FINANCING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AVAILABLEFINANCING_39" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AVAILABLEFINANCING_39" IS 'AVAILABLE FINANCING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AVAILABLEFINANCING_56" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AVAILABLEFINANCING_56" IS 'AVAILABLE FINANCING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AVAILABLEFINANCING_81" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AVAILABLEFINANCING_81" IS 'AVAILABLE FINANCING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AgentInfoShowingInstru_17" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AgentInfoShowingInstru_17" IS 'Agent Info/Showing Instru';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AgentInfoShowingInstru_52" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AgentInfoShowingInstru_52" IS 'Agent Info/Showing Instru';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AgentInfoShowingInstru_73" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AgentInfoShowingInstru_73" IS 'Agent Info/Showing Instru';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_AgentInfoShowingInstru_89" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_AgentInfoShowingInstru_89" IS 'Agent Info/Showing Instru';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Agreements_100" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Agreements_100" IS 'Agreements';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Agreements_94" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Agreements_94" IS 'Agreements';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Agreements_95" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Agreements_95" IS 'Agreements';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Agreements_97" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Agreements_97" IS 'Agreements';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Agreements_98" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Agreements_98" IS 'Agreements';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_BASEMENT_4" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_BASEMENT_4" IS 'BASEMENT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_BASEMENT_42" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_BASEMENT_42" IS 'BASEMENT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_BASEMENT_60" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_BASEMENT_60" IS 'BASEMENT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_BUILDINGEXTERIOR_43" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_BUILDINGEXTERIOR_43" IS 'BUILDING EXTERIOR';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_BldgExteriorSiding_5" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_BldgExteriorSiding_5" IS 'Bldg Exterior/Siding';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_BldgExteriorSiding_61" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_BldgExteriorSiding_61" IS 'Bldg Exterior/Siding';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_CLOSINGPOSSESSION_18" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_CLOSINGPOSSESSION_18" IS 'CLOSING/POSSESSION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_CLOSINGPOSSESSION_35" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_CLOSINGPOSSESSION_35" IS 'CLOSING/POSSESSION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_CLOSINGPOSSESSION_53" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_CLOSINGPOSSESSION_53" IS 'CLOSING/POSSESSION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_CLOSINGPOSSESSION_74" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_CLOSINGPOSSESSION_74" IS 'CLOSING/POSSESSION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_CLOSINGPOSSESSION_90" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_CLOSINGPOSSESSION_90" IS 'CLOSING/POSSESSION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Crops_101" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Crops_101" IS 'Crops';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Crops_96" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Crops_96" IS 'Crops';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_DOMESTICWATERSEWER_83" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_DOMESTICWATERSEWER_83" IS 'DOMESTIC WATER/SEWER';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_EXTERIORFEATURES_16" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_EXTERIORFEATURES_16" IS 'EXTERIOR FEATURES';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_EXTERIORFEATURES_51" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_EXTERIORFEATURES_51" IS 'EXTERIOR FEATURES';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_EXTERIORFEATURES_72" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_EXTERIORFEATURES_72" IS 'EXTERIOR FEATURES';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_FIREPLACE_14" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_FIREPLACE_14" IS 'FIREPLACE';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_FIREPLACE_70" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_FIREPLACE_70" IS 'FIREPLACE';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Fencing_99" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Fencing_99" IS 'Fencing';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_FoundationConstruction_2" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_FoundationConstruction_2" IS 'Foundation/Construction';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_FoundationConstruction_58" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_FoundationConstruction_58" IS 'Foundation/Construction';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_GARAGEPARKING_19" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_GARAGEPARKING_19" IS 'Garage Parking';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_GARAGEPARKING_75" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_GARAGEPARKING_75" IS 'GARAGE/PARKING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Heating_12" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Heating_12" IS 'Heating';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Heating_48" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Heating_48" IS 'Heating';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_Heating_68" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_Heating_68" IS 'Heating';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IMPROVEMENTS_31" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IMPROVEMENTS_31" IS 'IMPROVEMENTS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IMPROVEMENTS_86" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IMPROVEMENTS_86" IS 'IMPROVEMENTS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_INTERIORFEATURES_46" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_INTERIORFEATURES_46" IS 'INTERIOR FEATURES';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONSYSTEM_21" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONSYSTEM_21" IS 'IRRIGATION SYSTEM';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONSYSTEM_32" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONSYSTEM_32" IS 'IRRIGATION SYSTEM';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONSYSTEM_54" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONSYSTEM_54" IS 'IRRIGATION SYSTEM';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONSYSTEM_76" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONSYSTEM_76" IS 'IRRIGATION SYSTEM';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONSYSTEM_87" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONSYSTEM_87" IS 'IRRIGATION SYSTEM';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONWATERSOURCE_22" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONWATERSOURCE_22" IS 'IRRIGATION WATER SOURCE';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONWATERSOURCE_33" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONWATERSOURCE_33" IS 'IRRIGATION WATER SOURCE';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONWATERSOURCE_55" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONWATERSOURCE_55" IS 'IRRIGATION WATER SOURCE';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONWATERSOURCE_77" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONWATERSOURCE_77" IS 'IRRIGATION WATER SOURCE';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_IRRIGATIONWATERSOURCE_88" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_IRRIGATIONWATERSOURCE_88" IS 'IRRIGATION WATER SOURCE';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_InteriorFlooring_64" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_InteriorFlooring_64" IS 'Interior/Flooring';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_InteriorFlooring_8" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_InteriorFlooring_8" IS 'Interior/Flooring';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_MULTIFAMILYINFORMATION_57" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_MULTIFAMILYINFORMATION_57" IS 'MULTI-FAMILY INFORMATION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_ManMobileHome_20" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_ManMobileHome_20" IS 'Man/Mobile Home';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_MfgMobileHome_103" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_MfgMobileHome_103" IS 'Mfg/Mobile Home';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_OtherFeatures_102" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_OtherFeatures_102" IS 'Other Features';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_POOL_11" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_POOL_11" IS 'POOL';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_POOL_67" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_POOL_67" IS 'POOL';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_PROPERTYDESCRIPTION_27" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_PROPERTYDESCRIPTION_27" IS 'PROPERTY DESCRIPTION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_PROPERTYDESCRIPTION_44" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_PROPERTYDESCRIPTION_44" IS 'PROPERTY DESCRIPTION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_PROPERTYDESCRIPTION_6" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_PROPERTYDESCRIPTION_6" IS 'PROPERTY DESCRIPTION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_PROPERTYDESCRIPTION_62" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_PROPERTYDESCRIPTION_62" IS 'PROPERTY DESCRIPTION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_PROPERTYDESCRIPTION_82" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_PROPERTYDESCRIPTION_82" IS 'PROPERTY DESCRIPTION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_ROOF_3" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_ROOF_3" IS 'ROOF';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_ROOF_41" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_ROOF_41" IS 'ROOF';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_ROOF_59" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_ROOF_59" IS 'ROOF';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_STREETROADINFORMATION_15" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_STREETROADINFORMATION_15" IS 'STREET/ROAD INFORMATION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_STREETROADINFORMATION_30" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_STREETROADINFORMATION_30" IS 'STREET/ROAD INFORMATION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_STREETROADINFORMATION_50" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_STREETROADINFORMATION_50" IS 'STREET/ROAD INFORMATION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_STREETROADINFORMATION_71" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_STREETROADINFORMATION_71" IS 'STREET/ROAD INFORMATION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_STREETROADINFORMATION_85" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_STREETROADINFORMATION_85" IS 'STREET/ROAD INFORMATION';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_STYLEBUILDING_40" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_STYLEBUILDING_40" IS 'STYLE/BUILDING';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_UtilitiesElectricity_29" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_UtilitiesElectricity_29" IS 'Utilities/Electricity';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_UtilitiesElectricity_47" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_UtilitiesElectricity_47" IS 'Utilities/Electricity';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_UtilitiesElectricity_65" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_UtilitiesElectricity_65" IS 'Utilities/Electricity';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_UtilitiesElectricity_84" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_UtilitiesElectricity_84" IS 'Utilities/Electricity';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_UtilitiesElectricity_9" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_UtilitiesElectricity_9" IS 'Utilities/Electricity';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_WATERSEWER_28" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_WATERSEWER_28" IS 'WATER/SEWER';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_WATERSEWER_45" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_WATERSEWER_45" IS 'WATER/SEWER';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_WATERSEWER_63" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_WATERSEWER_63" IS 'WATER/SEWER';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LFD_WATERSEWER_7" text[];
    COMMENT ON COLUMN tricitymls2."Property"."LFD_WATERSEWER_7" IS 'WATER/SEWER';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_AddressLine" text;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_AddressLine" IS 'Geo Address Line';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_Latitude" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_Latitude" IS 'Geo Latitude';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_Longitude" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_Longitude" IS 'Geo Longitude';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_MatchCode" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_MatchCode" IS 'Geo Match Code';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_MatchedMethod" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_MatchedMethod" IS 'Geo Matched Method';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_PostalCode" text;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_PostalCode" IS 'Geo Postal Code';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_PrimaryCity" text;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_PrimaryCity" IS 'Geo Primary City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_Quality" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_Quality" IS 'Geo Quality';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_SecondaryCity" text;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_SecondaryCity" IS 'Geo Secondary City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_Subdivision" text;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_Subdivision" IS 'Geo Subdivision';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_UpdateDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_UpdateDate" IS 'Geo Update Timestamp';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LMD_MP_ZoomLevel" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LMD_MP_ZoomLevel" IS 'Geo Zoom Level';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_1" IS 'Compensation: SA';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_10" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_10" IS 'LID Amount Owed';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_11" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_11" IS 'Irrigation Assmt';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_12" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_12" IS 'Annual Taxes';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_13" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_13" IS 'Tax Year';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_14" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_14" IS 'Lease Option (Y/N)';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_15" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_15" IS 'Special Tax Desig. (Y/N)';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_16" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_16" IS '1031 Exchange (Y/N)';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_17" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_17" IS 'Days Under Contract';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_18" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_18" IS 'Closing Agent';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_19" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_19" IS 'Appraiser';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_2" IS 'Comp. Variable (Y/N)';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_21" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_21" IS 'Irrigable Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_22" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_22" IS 'Dryland Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_23" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_23" IS 'Orchard Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_24" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_24" IS 'Water Rights Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_25" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_25" IS 'Frontage (Linear Ft.)';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_26" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_26" IS 'Annual Lease Rate';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_27" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_27" IS 'Tillable Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_28" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_28" IS 'Non-Tillable Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_29" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_29" IS 'Timber Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_3" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_3" IS 'Listing Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_30" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_30" IS 'Pasture Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_4" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_4" IS 'Excluded Buyer Y/N';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_5" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_5" IS 'Subdivision';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_6" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_6" IS 'School District';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_7" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_7" IS 'Zoning Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_8" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_8" IS 'New Construction (Y/N)';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char10_9" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char10_9" IS 'HOA/Condo Fees';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_1" IS 'Basement';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_10" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_10" IS '1 Bedroom Heat Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_11" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_11" IS '1 Bedroom Elec Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_12" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_12" IS '1 Bedroom # of Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_13" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_13" IS '2 Bedroom Heat Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_14" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_14" IS '2 Bedroom Heat Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_15" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_15" IS '2 Bedroom Elec Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_16" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_16" IS '2 Bedroom # of Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_17" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_17" IS '3 Bedroom Heat Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_18" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_18" IS '3 Bedroom Heat Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_19" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_19" IS '3 Bedroom Elec Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_2" IS 'Tax Open Spaces';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_3" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_3" IS 'Asking Price Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_4" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_4" IS 'For Sale/Lease';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_5" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_5" IS 'Studio Heat Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_6" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_6" IS 'Studio Heat Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_7" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_7" IS 'Studio Elec Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_8" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_8" IS 'Studio # of Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char1_9" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char1_9" IS '1 Bedroom Heat Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_1" IS 'Occupant';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_10" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_10" IS 'Dry Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_11" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_11" IS 'Latitude';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_12" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_12" IS 'Longitude';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_13" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_13" IS 'Owner Phone';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_14" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_14" IS 'Outbuilding';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_15" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_15" IS 'Livestock';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_16" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_16" IS 'Equipment';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_17" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_17" IS 'Business Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_18" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_18" IS 'Park Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_19" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_19" IS 'Make/Model';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_2" IS 'Occupant Phone';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_20" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_20" IS 'Serial #/VIN';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_3" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_3" IS 'Lot Dimensions';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_4" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_4" IS 'Cross Street';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_5" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_5" IS 'Tax Parcel #';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_6" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_6" IS 'Additional Comments';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_7" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_7" IS 'Crop Information';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_8" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_8" IS 'Business Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char25_9" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char25_9" IS 'Type Business Opportunity';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char50_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char50_1" IS 'Sale Includes';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char50_3" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char50_3" IS 'Financing Remarks';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char50_4" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char50_4" IS 'Detailed Financial';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Char50_5" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Char50_5" IS '# Orchard Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_DateTime_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_DateTime_1" IS 'New Const. Start Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_DateTime_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_DateTime_2" IS 'New Const. End Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_1" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_1" IS 'Unit A # of Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_10" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_10" IS 'Gross Annual Income';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_11" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_11" IS 'Price per Gross Acre';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_12" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_12" IS '# of Irrigated Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_13" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_13" IS 'Price per Irrigated Acre';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_14" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_14" IS 'Gross Annual Expenses';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_2" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_2" IS 'Unit A Monthly Rent';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_3" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_3" IS 'Unit B # of Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_4" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_4" IS 'Unit B Monthly Rent';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_5" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_5" IS 'Unit C # of Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_6" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_6" IS 'Unit C Monthly Rent';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_7" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_7" IS 'Unit D # of Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_8" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_8" IS 'Unit D Monthly Rent';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Dec_9" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Dec_9" IS 'Lot Sq Ft';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int1_1" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int1_1" IS '# of Full Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int1_2" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int1_2" IS '# of 3/4 Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int1_3" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int1_3" IS '# of 1/2 Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int1_4" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int1_4" IS 'Unit A # of Bedrooms';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int1_5" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int1_5" IS 'Unit B # of Bedrooms';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int1_6" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int1_6" IS 'Unit C # of Bedrooms';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int1_7" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int1_7" IS 'Unit D # of Bedrooms';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int2_1" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int2_1" IS '# of Tenants';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_1" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_1" IS 'Total SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_10" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_10" IS 'Unit B SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_11" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_11" IS 'Unit C SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_12" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_12" IS 'Unit D SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_2" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_2" IS 'Finished SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_3" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_3" IS 'Below Grade SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_4" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_4" IS 'Year Built';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_5" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_5" IS 'Retail SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_6" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_6" IS 'Office SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_7" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_7" IS 'Warehouse SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_8" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_8" IS 'Showroom SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_Int4_9" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LM_Int4_9" IS 'Unit A SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char100_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char100_2" IS 'Sale Includes';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char100_3" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char100_3" IS 'Sellers Title Ins. Co';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_31" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_31" IS 'Lot Rent';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_32" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_32" IS 'Assessment Fees';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_33" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_33" IS 'Owner Financing (Y/N)';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_34" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_34" IS 'Avg. Monthly Utilities';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_35" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_35" IS 'Proj. Annual Income';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_36" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_36" IS 'Proj. Annual Vacancy';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_37" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_37" IS 'Proj. Annual Expenses';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_38" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_38" IS 'Projected NOI';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_39" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_39" IS 'Projected Cap Rate';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_40" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_40" IS 'Points Offered';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_41" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_41" IS 'Lock Box Location';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_42" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_42" IS 'Distressed Property';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_43" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_43" IS 'Originating MLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_44" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_44" IS 'Annual NOI';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_45" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_45" IS 'Space Rent';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_46" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_46" IS 'Vineyard Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_47" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_47" IS 'Original MLS ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_57" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_57" IS 'Lock Box Serial#';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_67" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_67" IS 'FIPS Code';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_69" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_69" IS 'Neighborhood';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char10_70" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char10_70" IS 'Dues/Fees/Amount';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char1_21" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char1_21" IS '3 Bedroom # of Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char1_22" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char1_22" IS '4 Bedroom Heat Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char1_23" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char1_23" IS '4 Bedroom Heat Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char1_24" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char1_24" IS '4 Bedroom Elec Paid By';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char1_25" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char1_25" IS '4 Bedroom # of Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char1_26" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char1_26" IS 'Owner Financing';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char1_27" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char1_27" IS 'Application Y/N';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char1_28" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char1_28" IS 'Ever Occupied';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char30_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char30_1" IS 'Owner';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char50_10" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char50_10" IS 'Detailed Financial Info.';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char50_11" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char50_11" IS 'IMAPP Address';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char50_12" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char50_12" IS 'Other Building';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char50_6" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char50_6" IS 'Age of Trees';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char50_7" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char50_7" IS 'Crop Information';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char50_8" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char50_8" IS 'House Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char50_9" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char50_9" IS 'Other Buildings';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_1" IS 'Studio # of Units';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_10" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_10" IS '3 Bedroom # of Units';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_11" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_11" IS '3 Bedroom Avg Rent/Unit$';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_12" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_12" IS '3 Bedroom Avg Sqft/Unit';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_13" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_13" IS '4 Bedroom # of Units';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_14" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_14" IS '4 Bedroom Avg Rent/Unit$';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_15" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_15" IS '4 Bedroom Avg Sqft/Unit';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_16" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_16" IS 'Bedroom 2 Location';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_17" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_17" IS 'Bedroom 3 Size';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_18" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_18" IS 'Bedroom 4 Size';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_19" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_19" IS 'Bedroom 4 Location';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_2" IS 'Studio Avg Rent/Unit$';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_20" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_20" IS 'Percent Leased';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_21" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_21" IS 'Ceiling Height';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_22" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_22" IS 'Unit/Space #';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_23" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_23" IS 'Bedroom 5 Size';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_24" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_24" IS 'Bedroom 5 Location';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_25" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_25" IS 'Bedroom 6 Size';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_26" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_26" IS 'Bedroom 6 Location';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_3" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_3" IS 'Studio Avg Sqft/Unit';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_34" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_34" IS 'Lock Box';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_4" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_4" IS '1 Bedroom # of Units';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_5" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_5" IS '1 Bedroom Avg Rent/Unit$';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_6" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_6" IS '1 Bedroom Avg Sqft/Unit';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_7" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_7" IS '2 Bedroom # of Units';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_8" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_8" IS '2 Bedroom Avg Rent/Unit$';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LM_char5_9" text;
    COMMENT ON COLUMN tricitymls2."Property"."LM_char5_9" IS '2 Bedroom Avg Sqft/Unit';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_BranchOfOrgID" IS 'LO1Main Office ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_Char100_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_Char100_1" IS 'LO1Firm Authorized Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_Char10_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_Char10_1" IS 'LO1Originating MLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_EMail" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_EMail" IS 'LO1Office Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_HiddenOrgID" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_HiddenOrgID" IS 'LO1Office Identifier';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_HiddenOtyID" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_HiddenOtyID" IS 'LO1Office Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_OrgAddress2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_OrgAddress2" IS 'LO1Office Address2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_OrgAddressStreet" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_OrgAddressStreet" IS 'LO1OffceAddressStreetName';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_OrgCity" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_OrgCity" IS 'LO1Office City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_OrgState" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_OrgState" IS 'LO1Office State';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_OrgZip" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_OrgZip" IS 'LO1Office Zip';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_OrganizationName" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_OrganizationName" IS 'LO1Office Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_PhoneNumber1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_PhoneNumber1" IS 'LO1Office Phone1 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_PhoneNumber1CountryCodeId" IS 'LO1OfficePhone1CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_PhoneNumber1Desc" IS 'LO1OfficePhone1Descriptin';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_PhoneNumber1Ext" IS 'LO1OfficePhone1Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_ShortName" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_ShortName" IS 'LO1Office Abbreviation';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_WebPage" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_WebPage" IS 'LO1Office Url';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO1_board_id" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LO1_board_id" IS 'LO1Board ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_BranchOfOrgID" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_BranchOfOrgID" IS 'LO2Main Office ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_Char100_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_Char100_1" IS 'LO2Firm Authorized Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_Char10_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_Char10_1" IS 'LO2Originating MLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_EMail" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_EMail" IS 'LO2Office Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_HiddenOrgID" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_HiddenOrgID" IS 'LO2Office Identifier';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_HiddenOtyID" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_HiddenOtyID" IS 'LO2Office Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_OrgAddress2" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_OrgAddress2" IS 'LO2Office Address2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_OrgAddressStreet" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_OrgAddressStreet" IS 'LO2OffceAddressStreetName';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_OrgCity" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_OrgCity" IS 'LO2Office City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_OrgState" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_OrgState" IS 'LO2Office State';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_OrgZip" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_OrgZip" IS 'LO2Office Zip';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_OrganizationName" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_OrganizationName" IS 'LO2Office Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_PhoneNumber1" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_PhoneNumber1" IS 'LO2Office Phone1 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_PhoneNumber1CountryCodeId" IS 'LO2OfficePhone1CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_PhoneNumber1Desc" IS 'LO2OfficePhone1Descriptin';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_PhoneNumber1Ext" IS 'LO2OfficePhone1Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_ShortName" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_ShortName" IS 'LO2Office Abbreviation';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_WebPage" text;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_WebPage" IS 'LO2Office Url';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LO2_board_id" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LO2_board_id" IS 'LO2Board ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LR_remarks11" text;
    COMMENT ON COLUMN tricitymls2."Property"."LR_remarks11" IS 'Agent Conf. Remarks';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LR_remarks22" text;
    COMMENT ON COLUMN tricitymls2."Property"."LR_remarks22" IS 'Legal Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LR_remarks33" text;
    COMMENT ON COLUMN tricitymls2."Property"."LR_remarks33" IS 'Directions';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LR_remarks44" text;
    COMMENT ON COLUMN tricitymls2."Property"."LR_remarks44" IS 'Public Remarks';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LVC_Agent_Hit_Count" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LVC_Agent_Hit_Count" IS 'Agent Hit Count';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LVC_Client_Hit_Count" integer;
    COMMENT ON COLUMN tricitymls2."Property"."LVC_Client_Hit_Count" IS 'Client Hit Count';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LV_vow_address" text;
    COMMENT ON COLUMN tricitymls2."Property"."LV_vow_address" IS 'VOW Address';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LV_vow_avm" text;
    COMMENT ON COLUMN tricitymls2."Property"."LV_vow_avm" IS 'VOW AVM';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LV_vow_comment" text;
    COMMENT ON COLUMN tricitymls2."Property"."LV_vow_comment" IS 'VOW Comment';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "LV_vow_include" text;
    COMMENT ON COLUMN tricitymls2."Property"."LV_vow_include" IS 'VOW Include';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Accelerate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Accelerate" IS 'Accelerate';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Address" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Address" IS 'Address';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Address2" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Address2" IS 'Headline';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_AddressDirection" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_AddressDirection" IS 'Address Direction';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_AddressNumber" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_AddressNumber" IS 'Address Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_AddressSearchNumber" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_AddressSearchNumber" IS 'Address Search Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_AddressStreet" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_AddressStreet" IS 'Address Street';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Area" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Area" IS 'County';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_AskingPrice" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_AskingPrice" IS 'Asking Price';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_AssumPayAmt" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."L_AssumPayAmt" IS 'Present Payment (PITI)';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Assumable" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Assumable" IS 'Assumable';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_CDOM" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_CDOM" IS 'Cumulative DOM';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_City" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_City" IS 'City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Class" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Class" IS 'Class';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_ClosingDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_ClosingDate" IS 'Closing Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_ContractDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_ContractDate" IS 'Contract Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_DOM" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_DOM" IS 'DOM';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_DOMLS" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_DOMLS" IS 'DOMLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_DisplayId" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_DisplayId" IS 'MLS #';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_EquityAmount" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_EquityAmount" IS 'Equity Amount';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_ExpirationDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_ExpirationDate" IS 'Expiration Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_FirstPhotoAddDt" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_FirstPhotoAddDt" IS 'First Photo Add Timestamp';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_HotSheetDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_HotSheetDate" IS 'HotSheet Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_HowSold" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_HowSold" IS 'How Sold';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_IdxInclude" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_IdxInclude" IS 'IDX Include';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_InputDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_InputDate" IS 'Input Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword1" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword1" IS 'Bedrooms';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword10" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword10" IS 'Equipment Included';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword2" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword2" IS 'Dock-High';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword3" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword3" IS 'Crops';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword4" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword4" IS 'Total Baths';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword5" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword5" IS 'Residence';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword6" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword6" IS 'Waterfront';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword7" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword7" IS 'Flood Zone';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword8" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword8" IS 'Other Buildings';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Keyword9" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Keyword9" IS 'Irrigated';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_LastDocUpdate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_LastDocUpdate" IS 'Doc Timestamp';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Last_Photo_updt" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Last_Photo_updt" IS 'PhotoTimestamp';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_ListAgent1" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_ListAgent1" IS 'Agent';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_ListAgent2" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_ListAgent2" IS 'Listing Agent 2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_ListOffice1" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_ListOffice1" IS 'Listing Office 1';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_ListOffice2" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_ListOffice2" IS 'Listing Office 2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_ListingDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_ListingDate" IS 'Listing Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_ListingID" integer PRIMARY KEY;
    COMMENT ON COLUMN tricitymls2."Property"."L_ListingID" IS 'SystemID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_NumAcres" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."L_NumAcres" IS 'Gross # of Acres';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_NumUnits" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_NumUnits" IS 'Number of Units';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_OffMarketDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_OriginalPrice" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_OriginalPrice" IS 'Original Price';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_PictureCount" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_PictureCount" IS 'Photo Count';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_PriceDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_PriceDate" IS 'Price Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_PricePerSQFT" decimal;
    COMMENT ON COLUMN tricitymls2."Property"."L_PricePerSQFT" IS 'Price Per SQFT';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Qualify" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Qualify" IS 'Qualify';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_SaleRent" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_SaleRent" IS 'Sale/Rent';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_SellingAgent1" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_SellingAgent1" IS 'Selling Agent 1';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_SellingAgent2" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_SellingAgent2" IS 'Selling Agent 2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_SellingOffice1" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_SellingOffice1" IS 'Selling Office 1';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_SellingOffice2" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_SellingOffice2" IS 'Selling Office 2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_SoldPrice" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_SoldPrice" IS 'Sold Price';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_State" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_State" IS 'State';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Status" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Status" IS 'Status';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_StatusCatID" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_StatusCatID" IS 'Status Category';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_StatusDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_StatusDate" IS 'Status Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_StatusID" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_StatusID" IS 'Status Detail';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_SystemPrice" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_SystemPrice" IS 'Search Price';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Type_" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Type_" IS 'Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_UpdateDate" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_UpdateDate" IS 'Update Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_Zip" text;
    COMMENT ON COLUMN tricitymls2."Property"."L_Zip" IS 'Zip';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "L_listings_associated_doc_count" integer;
    COMMENT ON COLUMN tricitymls2."Property"."L_listings_associated_doc_count" IS 'Associated Document Count';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_Address2" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_Address2" IS 'SA1Agent Address2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_AddressStreet" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_AddressStreet" IS 'SA1AgentAddressStreetName';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_Char10_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_Char10_1" IS 'SA1Last 4 of SSN';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_Char10_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_Char10_2" IS 'SA1Originating MLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_City" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_City" IS 'SA1Agent City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_DateTime_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_DateTime_1" IS 'SA1Inactive Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_Email" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_Email" IS 'SA1Agent Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_HiddenUsCID" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_HiddenUsCID" IS 'SA1Agent Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber1" IS 'SA1Agent Phone1 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber1CountryCodeId" IS 'SA1Agent Phone1 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber1Desc" IS 'SA1AgentPhone1Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber1Ext" IS 'SA1Agent Phone1 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber2" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber2" IS 'SA1Agent Phone2 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber2CountryCodeId" IS 'SA1Agent Phone2 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber2Desc" IS 'SA1AgentPhone2Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber2Ext" IS 'SA1Agent Phone2 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber3" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber3" IS 'SA1Agent Phone3 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber3CountryCodeId" IS 'SA1Agent Phone3 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber3Desc" IS 'SA1AgentPhone3Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber3Ext" IS 'SA1Agent Phone3 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber4" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber4" IS 'SA1Agent Phone4 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber4CountryCodeId" IS 'SA1Agent Phone4 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber4Desc" IS 'SA1AgentPhone4Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber4Ext" IS 'SA1Agent Phone4 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber5" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber5" IS 'SA1Agent Phone5 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber5CountryCodeId" IS 'SA1Agent Phone5 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber5Desc" IS 'SA1AgentPhone5Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_PhoneNumber5Ext" IS 'SA1Agent Phone5 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_State" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_State" IS 'SA1Agent State';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_Status" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_Status" IS 'SA1Agent Status';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_UserFirstName" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_UserFirstName" IS 'SA1Agent First Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_UserLastName" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_UserLastName" IS 'SA1Agent Last Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_UserMI" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_UserMI" IS 'SA1Agent Middle Initial';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_WebPage" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_WebPage" IS 'SA1Agent Url';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA1_Zip" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA1_Zip" IS 'SA1Agent Zip';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_Address2" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_Address2" IS 'SA2Agent Address2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_AddressStreet" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_AddressStreet" IS 'SA2AgentAddressStreetName';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_Char10_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_Char10_1" IS 'SA2Last 4 of SSN';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_Char10_2" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_Char10_2" IS 'SA2Originating MLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_City" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_City" IS 'SA2Agent City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_DateTime_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_DateTime_1" IS 'SA2Inactive Date';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_Email" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_Email" IS 'SA2Agent Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_HiddenUsCID" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_HiddenUsCID" IS 'SA2Agent Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber1" IS 'SA2Agent Phone1 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber1CountryCodeId" IS 'SA2Agent Phone1 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber1Desc" IS 'SA2AgentPhone1Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber1Ext" IS 'SA2Agent Phone1 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber2" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber2" IS 'SA2Agent Phone2 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber2CountryCodeId" IS 'SA2Agent Phone2 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber2Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber2Desc" IS 'SA2AgentPhone2Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber2Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber2Ext" IS 'SA2Agent Phone2 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber3" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber3" IS 'SA2Agent Phone3 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber3CountryCodeId" IS 'SA2Agent Phone3 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber3Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber3Desc" IS 'SA2AgentPhone3Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber3Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber3Ext" IS 'SA2Agent Phone3 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber4" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber4" IS 'SA2Agent Phone4 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber4CountryCodeId" IS 'SA2Agent Phone4 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber4Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber4Desc" IS 'SA2AgentPhone4Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber4Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber4Ext" IS 'SA2Agent Phone4 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber5" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber5" IS 'SA2Agent Phone5 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber5CountryCodeId" IS 'SA2Agent Phone5 CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber5Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber5Desc" IS 'SA2AgentPhone5Description';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_PhoneNumber5Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_PhoneNumber5Ext" IS 'SA2Agent Phone5 Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_State" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_State" IS 'SA2Agent State';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_Status" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_Status" IS 'SA2Agent Status';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_UserFirstName" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_UserFirstName" IS 'SA2Agent First Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_UserLastName" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_UserLastName" IS 'SA2Agent Last Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_UserMI" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_UserMI" IS 'SA2Agent Middle Initial';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_WebPage" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_WebPage" IS 'SA2Agent Url';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SA2_Zip" text;
    COMMENT ON COLUMN tricitymls2."Property"."SA2_Zip" IS 'SA2Agent Zip';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_BranchOfOrgID" IS 'SO1Main Office ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_Char100_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_Char100_1" IS 'SO1Firm Authorized Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_Char10_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_Char10_1" IS 'SO1Originating MLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_EMail" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_EMail" IS 'SO1Office Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_HiddenOrgID" integer;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_HiddenOrgID" IS 'SO1Office Identifier';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_HiddenOtyID" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_HiddenOtyID" IS 'SO1Office Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_OrgAddress2" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_OrgAddress2" IS 'SO1Office Address2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_OrgAddressStreet" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_OrgAddressStreet" IS 'SO1OffceAddressStreetName';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_OrgCity" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_OrgCity" IS 'SO1Office City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_OrgState" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_OrgState" IS 'SO1Office State';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_OrgZip" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_OrgZip" IS 'SO1Office Zip';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_OrganizationName" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_OrganizationName" IS 'SO1Office Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_PhoneNumber1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_PhoneNumber1" IS 'SO1Office Phone1 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_PhoneNumber1CountryCodeId" IS 'SO1OfficePhone1CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_PhoneNumber1Desc" IS 'SO1OfficePhone1Descriptin';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_PhoneNumber1Ext" IS 'SO1OfficePhone1Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_ShortName" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_ShortName" IS 'SO1Office Abbreviation';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_WebPage" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_WebPage" IS 'SO1Office Url';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO1_board_id" integer;
    COMMENT ON COLUMN tricitymls2."Property"."SO1_board_id" IS 'SO1Board ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_BranchOfOrgID" integer;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_BranchOfOrgID" IS 'SO2Main Office ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_Char100_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_Char100_1" IS 'SO2Firm Authorized Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_Char10_1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_Char10_1" IS 'SO2Originating MLS';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_EMail" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_EMail" IS 'SO2Office Email';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_HiddenOrgID" integer;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_HiddenOrgID" IS 'SO2Office Identifier';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_HiddenOtyID" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_HiddenOtyID" IS 'SO2Office Type';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_OrgAddress2" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_OrgAddress2" IS 'SO2Office Address2';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_OrgAddressStreet" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_OrgAddressStreet" IS 'SO2OffceAddressStreetName';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_OrgCity" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_OrgCity" IS 'SO2Office City';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_OrgState" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_OrgState" IS 'SO2Office State';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_OrgZip" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_OrgZip" IS 'SO2Office Zip';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_OrganizationName" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_OrganizationName" IS 'SO2Office Name';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_PhoneNumber1" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_PhoneNumber1" IS 'SO2Office Phone1 Number';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_PhoneNumber1CountryCodeId" IS 'SO2OfficePhone1CountryId';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_PhoneNumber1Desc" IS 'SO2OfficePhone1Descriptin';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_PhoneNumber1Ext" IS 'SO2OfficePhone1Extension';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_ShortName" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_ShortName" IS 'SO2Office Abbreviation';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_WebPage" text;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_WebPage" IS 'SO2Office Url';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "SO2_board_id" integer;
    COMMENT ON COLUMN tricitymls2."Property"."SO2_board_id" IS 'SO2Board ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "T_list_tax_property_id" text;
    COMMENT ON COLUMN tricitymls2."Property"."T_list_tax_property_id" IS 'Tax Property ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "T_tax_db_id" integer;
    COMMENT ON COLUMN tricitymls2."Property"."T_tax_db_id" IS 'Tax Database ID';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "VT_ExtVTourURL1" text;
    COMMENT ON COLUMN tricitymls2."Property"."VT_ExtVTourURL1" IS 'Video Tour';
     
    ALTER TABLE tricitymls2."Property" ADD COLUMN "VT_VTourURL" text;
    COMMENT ON COLUMN tricitymls2."Property"."VT_VTourURL" IS 'Virtual Tour';
     

COMMIT;