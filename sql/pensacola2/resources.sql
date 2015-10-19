BEGIN;

  CREATE TABLE pensacola2."Property"() INHERITS (property);
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_Address2" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_Address2" IS 'LA1Agent Address2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_AddressStreet" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_AddressStreet" IS 'LA1AgentAddressStreetName';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_AgentID" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_AgentID" IS 'LA1User Code';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_City" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_City" IS 'LA1Agent City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_Email" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_Email" IS 'LA1Agent Email';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_HiddenUsCID" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_HiddenUsCID" IS 'LA1Agent Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_LoginName" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_LoginName" IS 'LA1Agent Logon Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber1" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber1" IS 'LA1Agent Phone1 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber1CountryCodeId" IS 'LA1Agent Phone1 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber1Desc" IS 'LA1AgentPhone1Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber1Ext" IS 'LA1Agent Phone1 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber2" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber2" IS 'LA1Agent Phone2 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber2CountryCodeId" IS 'LA1Agent Phone2 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber2Desc" IS 'LA1AgentPhone2Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber2Ext" IS 'LA1Agent Phone2 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber3" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber3" IS 'LA1Agent Phone3 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber3CountryCodeId" IS 'LA1Agent Phone3 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber3Desc" IS 'LA1AgentPhone3Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber3Ext" IS 'LA1Agent Phone3 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber4" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber4" IS 'LA1Agent Phone4 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber4CountryCodeId" IS 'LA1Agent Phone4 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber4Desc" IS 'LA1AgentPhone4Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber4Ext" IS 'LA1Agent Phone4 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber5" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber5" IS 'LA1Agent Phone5 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber5CountryCodeId" IS 'LA1Agent Phone5 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber5Desc" IS 'LA1AgentPhone5Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_PhoneNumber5Ext" IS 'LA1Agent Phone5 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_State" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_State" IS 'LA1Agent State';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_Status" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_Status" IS 'LA1Agent Status';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_UserFirstName" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_UserFirstName" IS 'LA1Agent First Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_UserLastName" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_UserLastName" IS 'LA1Agent Last Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_UserMI" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_UserMI" IS 'LA1Agent Middle Initial';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_WebPage" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_WebPage" IS 'LA1Agent Url';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA1_Zip" text;
    COMMENT ON COLUMN pensacola2."Property"."LA1_Zip" IS 'LA1Agent Zip';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_Address2" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_Address2" IS 'LA2Agent Address2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_AddressStreet" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_AddressStreet" IS 'LA2AgentAddressStreetName';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_AgentID" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_AgentID" IS 'LA2User Code';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_City" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_City" IS 'LA2Agent City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_Email" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_Email" IS 'LA2Agent Email';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_HiddenUsCID" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_HiddenUsCID" IS 'LA2Agent Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber1" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber1" IS 'LA2Agent Phone1 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber1CountryCodeId" IS 'LA2Agent Phone1 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber1Desc" IS 'LA2AgentPhone1Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber1Ext" IS 'LA2Agent Phone1 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber2" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber2" IS 'LA2Agent Phone2 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber2CountryCodeId" IS 'LA2Agent Phone2 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber2Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber2Desc" IS 'LA2AgentPhone2Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber2Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber2Ext" IS 'LA2Agent Phone2 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber3" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber3" IS 'LA2Agent Phone3 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber3CountryCodeId" IS 'LA2Agent Phone3 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber3Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber3Desc" IS 'LA2AgentPhone3Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber3Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber3Ext" IS 'LA2Agent Phone3 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber4" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber4" IS 'LA2Agent Phone4 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber4CountryCodeId" IS 'LA2Agent Phone4 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber4Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber4Desc" IS 'LA2AgentPhone4Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber4Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber4Ext" IS 'LA2Agent Phone4 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber5" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber5" IS 'LA2Agent Phone5 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber5CountryCodeId" IS 'LA2Agent Phone5 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber5Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber5Desc" IS 'LA2AgentPhone5Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_PhoneNumber5Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_PhoneNumber5Ext" IS 'LA2Agent Phone5 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_State" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_State" IS 'LA2Agent State';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_Status" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_Status" IS 'LA2Agent Status';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_UserFirstName" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_UserFirstName" IS 'LA2Agent First Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_UserLastName" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_UserLastName" IS 'LA2Agent Last Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_UserMI" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_UserMI" IS 'LA2Agent Middle Initial';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_WebPage" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_WebPage" IS 'LA2Agent Url';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LA2_Zip" text;
    COMMENT ON COLUMN pensacola2."Property"."LA2_Zip" IS 'LA2Agent Zip';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ACCEPTFINANCING_60" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ACCEPTFINANCING_60" IS 'ACCEPT FINANCING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ACCESSSURFACE_44" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ACCESSSURFACE_44" IS 'ACCESS/SURFACE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_CERTIFICATION_30" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_CERTIFICATION_30" IS 'CERTIFICATION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_CITYCNTY_59" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_CITYCNTY_59" IS 'CITY/CNTY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_CONSTRUCTIONSTATUS_102" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_CONSTRUCTIONSTATUS_102" IS 'CONSTRUCTION STATUS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_CONSTRUCTIONSTATUS_34" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_CONSTRUCTIONSTATUS_34" IS 'CONSTRUCTION STATUS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_CONSTRUCTION_116" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_CONSTRUCTION_116" IS 'CONSTRUCTION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_CONSTRUCTION_13" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_CONSTRUCTION_13" IS 'CONSTRUCTION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_CONSTRUCTION_75" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_CONSTRUCTION_75" IS 'CONSTRUCTION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_COOLING_110" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_COOLING_110" IS 'COOLING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_COOLING_7" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_COOLING_7" IS 'COOLING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_COOLING_81" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_COOLING_81" IS 'COOLING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DESIGN_117" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DESIGN_117" IS 'DESIGN';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DESIGN_14" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DESIGN_14" IS 'DESIGN';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DESIGN_73" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DESIGN_73" IS 'DESIGN';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DEVFACILITY_129" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DEVFACILITY_129" IS 'DEV FACILITY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DEVFACILITY_27" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DEVFACILITY_27" IS 'DEV FACILITY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DEVFACILITY_49" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DEVFACILITY_49" IS 'DEV FACILITY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DEVFACILITY_83" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DEVFACILITY_83" IS 'DEV FACILITY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DININGTYPE_107" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DININGTYPE_107" IS 'DINING TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DININGTYPE_4" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DININGTYPE_4" IS 'DINING TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_DOCUMENTS_66" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_DOCUMENTS_66" IS 'DOCUMENTS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ELECTRICAL_10" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ELECTRICAL_10" IS 'ELECTRICAL';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ELECTRICAL_113" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ELECTRICAL_113" IS 'ELECTRICAL';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ELECTRICAL_84" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ELECTRICAL_84" IS 'ELECTRICAL';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ELECTRIC_137" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ELECTRIC_137" IS 'ELECTRIC';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ELECTRIC_142" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ELECTRIC_142" IS 'ELECTRIC';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ELECTRIC_65" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ELECTRIC_65" IS 'ELECTRIC';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ENERGYSTARQUALIFIED_28" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ENERGYSTARQUALIFIED_28" IS 'ENERGY STAR QUALIFIED';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ENERGY_11" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ENERGY_11" IS 'ENERGY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ENERGY_114" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ENERGY_114" IS 'ENERGY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ENERGY_92" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ENERGY_92" IS 'ENERGY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_EXISTINGLEASE_77" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_EXISTINGLEASE_77" IS 'EXISTING LEASE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_EXTERIOR_122" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_EXTERIOR_122" IS 'EXTERIOR';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_EXTERIOR_19" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_EXTERIOR_19" IS 'EXTERIOR';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_EXTERIOR_71" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_EXTERIOR_71" IS 'EXTERIOR';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FARMRANCHINFO_51" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FARMRANCHINFO_51" IS 'FARM/RANCH INFO';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FEESINCLUDE_33" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FEESINCLUDE_33" IS 'FEES INCLUDE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FEESINCLUDE_61" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FEESINCLUDE_61" IS 'FEES INCLUDE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FEESINCLUDE_95" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FEESINCLUDE_95" IS 'FEES INCLUDE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FINANCING_37" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FINANCING_37" IS 'FINANCING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FINANCING_93" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FINANCING_93" IS 'FINANCING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FLOORS_105" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FLOORS_105" IS 'FLOORS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FLOORS_2" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FLOORS_2" IS 'FLOORS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FLOORS_87" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FLOORS_87" IS 'FLOORS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FOUNDATION_118" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FOUNDATION_118" IS 'FOUNDATION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FOUNDATION_15" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FOUNDATION_15" IS 'FOUNDATION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FOUNDATION_74" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FOUNDATION_74" IS 'FOUNDATION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_FRONTACCESS_47" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_FRONTACCESS_47" IS 'FRONT ACCESS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_GAS_64" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_GAS_64" IS 'GAS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_GEOTHERMALHEATPUMP_29" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_GEOTHERMALHEATPUMP_29" IS 'GEOTHERMAL HEAT PUMP';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_HEATING_111" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_HEATING_111" IS 'HEATING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_HEATING_8" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_HEATING_8" IS 'HEATING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_HEATING_88" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_HEATING_88" IS 'HEATING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_HOMEOWNERSASSOCIATION_48" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_HOMEOWNERSASSOCIATION_48" IS 'HOME OWNERS ASSOCIATION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_HOMEWARRANTY_32" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_HOMEWARRANTY_32" IS 'HOME WARRANTY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_HOMEWARRANTY_94" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_HOMEWARRANTY_94" IS 'HOME WARRANTY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_IMPROVEMENTS_46" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_IMPROVEMENTS_46" IS 'IMPROVEMENTS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INDUSTRIALSUBTYPE_138" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INDUSTRIALSUBTYPE_138" IS 'INDUSTRIAL SUB-TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INDUSTRIALSUBTYPE_143" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INDUSTRIALSUBTYPE_143" IS 'INDUSTRIAL SUB-TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INTERIOR_1" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INTERIOR_1" IS 'INTERIOR';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INTERIOR_104" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INTERIOR_104" IS 'INTERIOR';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INTERIOR_78" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INTERIOR_78" IS 'INTERIOR';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INTERNET_103" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INTERNET_103" IS 'INTERNET';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INTERNET_135" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INTERNET_135" IS 'INTERNET';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INTERNET_140" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INTERNET_140" IS 'INTERNET';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INTERNET_145" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INTERNET_145" IS 'INTERNET';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INTERNET_41" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INTERNET_41" IS 'INTERNET';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_INTERNET_69" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_INTERNET_69" IS 'INTERNET';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_KITCHENFEATURES_106" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_KITCHENFEATURES_106" IS 'KITCHEN FEATURES';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_KITCHENFEATURES_3" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_KITCHENFEATURES_3" IS 'KITCHEN FEATURES';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_KITCHENFEATURES_79" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_KITCHENFEATURES_79" IS 'KITCHEN FEATURES';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_LANDSUBTYPE_139" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_LANDSUBTYPE_139" IS 'LAND SUB-TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_LANDSUBTYPE_144" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_LANDSUBTYPE_144" IS 'LAND SUB-TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_LEASEPERIOD_58" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_LEASEPERIOD_58" IS 'LEASE PERIOD';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_LOTLOCATION_125" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_LOTLOCATION_125" IS 'LOT LOCATION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_LOTLOCATION_22" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_LOTLOCATION_22" IS 'LOT LOCATION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_LOTLOCATION_43" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_LOTLOCATION_43" IS 'LOT LOCATION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_LOTLOCATION_70" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_LOTLOCATION_70" IS 'LOT LOCATION';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_MASTERBATH_109" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_MASTERBATH_109" IS 'MASTER BATH';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_MASTERBATH_6" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_MASTERBATH_6" IS 'MASTER BATH';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_MASTERBEDROOM_108" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_MASTERBEDROOM_108" IS 'MASTER BEDROOM';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_MASTERBEDROOM_5" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_MASTERBEDROOM_5" IS 'MASTER BEDROOM';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_MISCELLANEOUS_50" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_MISCELLANEOUS_50" IS 'MISCELLANEOUS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_MISCEQUIPMENT_115" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_MISCEQUIPMENT_115" IS 'MISC EQUIPMENT';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_MISCEQUIPMENT_12" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_MISCEQUIPMENT_12" IS 'MISC EQUIPMENT';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_MISCEQUIPMENT_80" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_MISCEQUIPMENT_80" IS 'MISC EQUIPMENT';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_OCCUPANCY_101" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_OCCUPANCY_101" IS 'OCCUPANCY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_OCCUPANCY_133" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_OCCUPANCY_133" IS 'OCCUPANCY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_OCCUPANCY_39" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_OCCUPANCY_39" IS 'OCCUPANCY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_OPERATINGEXPENSESINCL_97" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_OPERATINGEXPENSESINCL_97" IS 'OPERATING EXPENSES INCL';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_OTHERGREENFEATURES_31" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_OTHERGREENFEATURES_31" IS 'OTHER GREEN FEATURES';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_OTHERUTILITIES_57" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_OTHERUTILITIES_57" IS 'OTHER UTILITIES';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_PARKING_124" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_PARKING_124" IS 'PARKING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_PARKING_21" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_PARKING_21" IS 'PARKING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_PARKING_90" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_PARKING_90" IS 'PARKING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_PETOPTIONS_134" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_PETOPTIONS_134" IS 'PET OPTIONS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_POOL_123" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_POOL_123" IS 'POOL';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_POOL_20" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_POOL_20" IS 'POOL';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_POOL_72" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_POOL_72" IS 'POOL';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ROADMAINTENANCE_130" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ROADMAINTENANCE_130" IS 'ROAD MAINTENANCE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ROADMAINTENANCE_35" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ROADMAINTENANCE_35" IS 'ROAD MAINTENANCE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ROADMAINTENANCE_89" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ROADMAINTENANCE_89" IS 'ROAD MAINTENANCE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ROOF_119" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ROOF_119" IS 'ROOF';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ROOF_17" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ROOF_17" IS 'ROOF';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ROOF_85" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ROOF_85" IS 'ROOF';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SEWER_56" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SEWER_56" IS 'SEWER';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SHOWING_132" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SHOWING_132" IS 'SHOWING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SHOWING_38" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SHOWING_38" IS 'SHOWING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SHOWING_67" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SHOWING_67" IS 'SHOWING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SIDING_121" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SIDING_121" IS 'SIDING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SIDING_18" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SIDING_18" IS 'SIDING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SIDING_96" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SIDING_96" IS 'SIDING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SPECIALSALETYPE_146" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SPECIALSALETYPE_146" IS 'SPECIAL SALE TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SPECIALSALETYPE_150" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SPECIALSALETYPE_150" IS 'SPECIAL SALE TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SPECIALSALETYPE_40" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SPECIALSALETYPE_40" IS 'SPECIAL SALE TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_SPECIALSALETYPE_68" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_SPECIALSALETYPE_68" IS 'SPECIAL SALE TYPE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_STYLE_16" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_STYLE_16" IS 'STYLE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_TENANTPAYS_76" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_TENANTPAYS_76" IS 'TENANT PAYS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_TERM_131" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_TERM_131" IS 'TERM';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_TOPOGRAPHY_45" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_TOPOGRAPHY_45" IS 'TOPOGRAPHY';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_TOSHOW_100" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_TOSHOW_100" IS 'TO SHOW';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_TYPEUSEPERMITTED_136" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_TYPEUSEPERMITTED_136" IS 'TYPE USE PERMITTED';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_TYPEUSEPERMITTED_141" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_TYPEUSEPERMITTED_141" IS 'TYPE USE PERMITTED';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_TYPEUSE_42" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_TYPEUSE_42" IS 'TYPE USE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_VEGMINRIGHTS_52" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_VEGMINRIGHTS_52" IS 'VEG/MIN RIGHTS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERFEATURE_128" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERFEATURE_128" IS 'WATER FEATURE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERFEATURE_25" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERFEATURE_25" IS 'WATER FEATURE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERFRONTFEATURE_62" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERFRONTFEATURE_62" IS 'WATERFRONT FEATURE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERFRONTFEATURE_98" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERFRONTFEATURE_98" IS 'WATERFRONT FEATURE';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERFRONT_126" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERFRONT_126" IS 'WATERFRONT';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERFRONT_23" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERFRONT_23" IS 'WATERFRONT';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERFRONT_53" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERFRONT_53" IS 'WATERFRONT';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERFRONT_86" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERFRONT_86" IS 'WATERFRONT';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERHEATER_112" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERHEATER_112" IS 'WATER HEATER';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERHEATER_82" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERHEATER_82" IS 'WATER HEATER';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERHEATER_9" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERHEATER_9" IS 'WATER HEATER';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERSEWER_120" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERSEWER_120" IS 'WATER/SEWER';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERSEWER_26" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERSEWER_26" IS 'WATER/SEWER';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERSEWER_91" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERSEWER_91" IS 'WATER/SEWER';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERVIEW_127" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERVIEW_127" IS 'WATERVIEW';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERVIEW_149" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERVIEW_149" IS 'WATERVIEW';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERVIEW_24" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERVIEW_24" IS 'WATERVIEW';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATERVIEW_54" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATERVIEW_54" IS 'WATER VIEW';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_WATER_55" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_WATER_55" IS 'WATER';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ZONING_36" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ZONING_36" IS 'ZONING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ZONING_63" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ZONING_63" IS 'ZONING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LFD_ZONING_99" text[];
    COMMENT ON COLUMN pensacola2."Property"."LFD_ZONING_99" IS 'ZONING';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_AddressLine" text;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_AddressLine" IS 'Geo Address Line';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_Latitude" decimal;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_Latitude" IS 'Geo Latitude';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_Longitude" decimal;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_Longitude" IS 'Geo Longitude';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_MatchCode" integer;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_MatchCode" IS 'Geo Match Code';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_MatchedMethod" integer;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_MatchedMethod" IS 'Geo Matched Method';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_PostalCode" text;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_PostalCode" IS 'Geo Postal Code';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_PrimaryCity" text;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_PrimaryCity" IS 'Geo Primary City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_Quality" decimal;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_Quality" IS 'Geo Quality';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_SecondaryCity" text;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_SecondaryCity" IS 'Geo Secondary City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_Subdivision" text;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_Subdivision" IS 'Geo Subdivision';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_UpdateDate" text;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_UpdateDate" IS 'Geo Update Timestamp';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LMD_MP_ZoomLevel" decimal;
    COMMENT ON COLUMN pensacola2."Property"."LMD_MP_ZoomLevel" IS 'Geo Zoom Level';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_1" IS 'Agency Relationship';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_10" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_10" IS 'County Zoning';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_11" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_11" IS 'Elementary School';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_12" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_12" IS 'FLU';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_13" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_13" IS 'Front Foot Price';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_14" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_14" IS 'High School';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_15" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_15" IS 'Intermediate School';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_16" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_16" IS 'Kitchen Update';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_17" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_17" IS 'Kitchen Update Timeline';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_18" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_18" IS 'Lease Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_19" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_19" IS 'List Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_2" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_2" IS 'Assn';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_20" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_20" IS 'Listing Class';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_21" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_21" IS 'Man Comp Pd';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_22" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_22" IS 'Middle School';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_23" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_23" IS 'Comp: Non-Rep';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_24" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_24" IS 'Occupancy Status';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_25" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_25" IS 'Paid By 1';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_26" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_26" IS 'Paid By 2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_27" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_27" IS 'Paid By 3';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_28" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_28" IS 'Paid By 4';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_29" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_29" IS 'Paid By 5';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_3" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_3" IS 'Bathroom Update';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_30" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_30" IS 'Paid By 6';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_4" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_4" IS 'Bathroom Update Timeline';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_5" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_5" IS 'Commission';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_6" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_6" IS 'Comp: Buyer Agent';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_7" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_7" IS 'Comp: Trans Broker';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_8" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_8" IS 'Construction Status';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char10_9" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char10_9" IS 'Contingency Reason';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_1" IS 'Assignment of Interest';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_10" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_10" IS 'Level L';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_11" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_11" IS 'Level C';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_12" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_12" IS 'Level D';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_13" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_13" IS 'Level E';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_14" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_14" IS 'Level F';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_15" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_15" IS 'Level G';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_16" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_16" IS 'Level H';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_17" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_17" IS 'Level I';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_18" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_18" IS 'Level J';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_19" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_19" IS 'Level K';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_2" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_2" IS 'Background Check';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_3" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_3" IS 'Credit Check';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_4" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_4" IS 'Dual/Var Comm';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_5" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_5" IS 'Furnished';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_6" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_6" IS 'Homestead';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_7" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_7" IS 'Immediate Occupancy';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_8" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_8" IS 'Level A';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char1_9" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char1_9" IS 'Level B';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_1" IS 'Alt';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_10" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_10" IS 'Dimension H';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_11" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_11" IS 'Dimension I';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_12" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_12" IS 'Dimension J';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_13" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_13" IS 'Dimension K';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_14" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_14" IS 'Dimension L';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_15" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_15" IS 'Dimension M';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_16" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_16" IS 'Dimension N';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_17" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_17" IS 'Dimension O';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_18" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_18" IS 'Lease Term';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_19" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_19" IS 'Sellers Phone';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_2" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_2" IS 'Contact Phone';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_3" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_3" IS 'Dimension A';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_4" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_4" IS 'Dimension B';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_5" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_5" IS 'Dimension C';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_6" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_6" IS 'Dimension D';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_7" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_7" IS 'Dimension E';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_8" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_8" IS 'Dimension F';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char25_9" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char25_9" IS 'Dimension G';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Char50_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_Char50_1" IS 'Property Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_DateTime_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_DateTime_1" IS 'Bonus Exp Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_DateTime_2" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_DateTime_2" IS 'Date Available';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_DateTime_3" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_DateTime_3" IS 'Lease Expire Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Dec_1" decimal;
    COMMENT ON COLUMN pensacola2."Property"."LM_Dec_1" IS 'Interest Rate';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Dec_10" decimal;
    COMMENT ON COLUMN pensacola2."Property"."LM_Dec_10" IS 'Assoc Fee (per year)';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Dec_2" decimal;
    COMMENT ON COLUMN pensacola2."Property"."LM_Dec_2" IS 'Land Lease';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Dec_3" decimal;
    COMMENT ON COLUMN pensacola2."Property"."LM_Dec_3" IS 'Min Annual SqFt Lease Rat';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_1" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_1" IS '# Bedrooms';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_10" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_10" IS '2 Bedroom # Full Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_11" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_11" IS '2 Bedroom # Part Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_12" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_12" IS '2 Bedroom # Rooms';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_13" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_13" IS '3 Bedroom # Beds';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_14" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_14" IS '3 Bedroom # Full Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_15" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_15" IS '3 Bedroom # Part Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_16" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_16" IS '3 Bedroom # Rooms';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_18" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_18" IS 'Efficiency # Beds';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_19" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_19" IS 'Efficiency # Full Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_2" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_2" IS '# Full Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_20" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_20" IS 'Efficiency # Part Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_3" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_3" IS '# Half Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_4" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_4" IS '# Rooms';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_5" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_5" IS '1 Bedroom # Beds';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_6" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_6" IS '1 Bedroom # Full Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_7" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_7" IS '1 Bedroom # Part Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_8" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_8" IS '1 Bedroom # Rooms';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int1_9" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int1_9" IS '2 Bedroom # Beds';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_1" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_1" IS '1 Bedroom # of Units';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_10" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_10" IS 'Application Fee';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_11" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_11" IS 'Year Built';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_13" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_13" IS 'Efficiency SqFt';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_14" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_14" IS 'In-Law Guest Suite Sqft';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_15" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_15" IS 'Monthly Rent';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_16" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_16" IS 'Number of Lots';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_17" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_17" IS 'Parking Spaces';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_18" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_18" IS 'Pet Fee';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_19" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_19" IS 'Sec Deposit';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_20" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_20" IS 'Stories';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_3" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_3" IS '1 Bedroom Sq Ft';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_4" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_4" IS '2 Bedroom # of Units';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_6" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_6" IS '2 Bedroom Sq Ft';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_7" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_7" IS '3 Bedroom # of Units';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_8" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_8" IS '# Baths';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int2_9" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int2_9" IS '3 Bedroom Sq Ft';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_1" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_1" IS '1st Mort Amount';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_10" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_10" IS 'Lot Frontage';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_11" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_11" IS 'Maintenance Fee';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_13" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_13" IS 'Mtg Amt Offered';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_14" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_14" IS 'Potential Gross Yr';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_15" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_15" IS 'Potential Net Inc';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_16" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_16" IS 'Total Building SqFt';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_17" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_17" IS 'Water Frontage';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_18" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_18" IS 'Road Front Feet';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_19" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_19" IS 'Vacancy Rate';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_2" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_2" IS '1st Mtg Mo Pymt';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_20" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_20" IS 'Efficiency # of Units';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_3" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_3" IS 'Approx Sqft';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_4" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_4" IS 'Available Building SqFt';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_5" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_5" IS 'Bonus Amount';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_6" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_6" IS 'Depth';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_7" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_7" IS 'Est Expense';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_8" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_8" IS 'Lot SqFt';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_Int4_9" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_Int4_9" IS 'Lot Depth';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char100_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char100_1" IS 'Contact Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char100_2" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char100_2" IS 'Pet Restrictions';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char100_3" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char100_3" IS 'Buyer Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_31" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_31" IS 'Paid By 7';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_32" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_32" IS 'Paid By 8';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_33" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_33" IS 'Paid By 9';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_34" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_34" IS 'Condo Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_35" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_35" IS 'Ro-Comp';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_36" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_36" IS 'Room A';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_37" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_37" IS 'Room B';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_38" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_38" IS 'Room C';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_39" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_39" IS 'Room D';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_40" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_40" IS 'Room E';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_41" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_41" IS 'Room F';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_42" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_42" IS 'Room G';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_43" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_43" IS 'Room H';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_44" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_44" IS 'Room I';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_45" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_45" IS 'Room J';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_46" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_46" IS 'Room K';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_47" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_47" IS 'Room L';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_48" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_48" IS 'Room M';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_49" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_49" IS 'Room N';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_50" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_50" IS 'Room O';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_51" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_51" IS 'Subdivision';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_52" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_52" IS 'Utility Type 1';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_53" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_53" IS 'Utility Type 2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_54" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_54" IS 'Utility Type 3';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_55" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_55" IS 'Utility Type 4';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_56" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_56" IS 'Utility Type 5';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_57" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_57" IS 'Utility Type 6';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_58" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_58" IS 'Utility Type 7';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_59" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_59" IS 'Utility Type 8';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_60" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_60" IS 'Utility Type 9';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_61" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_61" IS 'Zoning';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char10_62" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char10_62" IS 'Available Floors';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_21" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_21" IS 'Level M';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_22" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_22" IS 'Level N';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_23" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_23" IS 'Level O';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_24" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_24" IS 'Limited Service';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_25" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_25" IS 'Mineral Rights';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_26" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_26" IS 'Per Adult';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_27" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_27" IS 'Pets';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_28" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_28" IS 'Pets Considered';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_29" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_29" IS 'Rental Assist. Avail';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_30" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_30" IS 'Sale Subject to Lease';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_31" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_31" IS 'Sub Lease';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char1_32" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char1_32" IS 'Variable Comp';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char255_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char255_1" IS 'Bathroom Update Remarks';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char255_2" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char255_2" IS 'Kitchen Update Remarks';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char30_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char30_1" IS 'Dimensions';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char30_2" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char30_2" IS 'Lot Dimensions';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char30_3" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char30_3" IS 'Lot Size';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char30_4" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char30_4" IS 'Parcel #';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char512_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char512_1" IS 'Financing';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char5_1" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char5_1" IS '1st Mtg Incl';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char5_2" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char5_2" IS 'Seller Terms';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char5_3" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char5_3" IS 'Seller Concessions';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_char5_4" text;
    COMMENT ON COLUMN pensacola2."Property"."LM_char5_4" IS 'Lease Terms';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_int4_21" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_int4_21" IS 'Efficiency # of Rooms';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_int4_22" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_int4_22" IS 'Efficiency Rent Per Unit';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_int4_23" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_int4_23" IS '1 Bedroom Rent Per Unit';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_int4_24" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_int4_24" IS '2 Bedroom Rent Per Unit';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_int4_25" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_int4_25" IS '3 Bedroom Rent Per Unit';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LM_int4_34" integer;
    COMMENT ON COLUMN pensacola2."Property"."LM_int4_34" IS 'DUC';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN pensacola2."Property"."LO1_BranchOfOrgID" IS 'LO1Main Office ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_EMail" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_EMail" IS 'LO1Office Email';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_HiddenOrgID" integer;
    COMMENT ON COLUMN pensacola2."Property"."LO1_HiddenOrgID" IS 'LO1Office Identifier';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_HiddenOtyID" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_HiddenOtyID" IS 'LO1Office Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_OrgAddress2" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_OrgAddress2" IS 'LO1Office Address2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_OrgAddressStreet" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_OrgAddressStreet" IS 'LO1OffceAddressStreetName';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_OrgCity" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_OrgCity" IS 'LO1Office City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_OrgState" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_OrgState" IS 'LO1Office State';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_OrgZip" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_OrgZip" IS 'LO1Office Zip';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_OrganizationName" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_OrganizationName" IS 'LO1Office Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_PhoneNumber1" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_PhoneNumber1" IS 'LO1Office Phone1 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_PhoneNumber1CountryCodeId" IS 'LO1OfficePhone1CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_PhoneNumber1Desc" IS 'LO1OfficePhone1Descriptin';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_PhoneNumber1Ext" IS 'LO1OfficePhone1Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_ShortName" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_ShortName" IS 'LO1Office Abbreviation';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_WebPage" text;
    COMMENT ON COLUMN pensacola2."Property"."LO1_WebPage" IS 'LO1Office Url';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO1_board_id" integer;
    COMMENT ON COLUMN pensacola2."Property"."LO1_board_id" IS 'LO1Board ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_BranchOfOrgID" integer;
    COMMENT ON COLUMN pensacola2."Property"."LO2_BranchOfOrgID" IS 'LO2Main Office ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_EMail" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_EMail" IS 'LO2Office Email';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_HiddenOrgID" integer;
    COMMENT ON COLUMN pensacola2."Property"."LO2_HiddenOrgID" IS 'LO2Office Identifier';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_HiddenOtyID" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_HiddenOtyID" IS 'LO2Office Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_OrgAddress2" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_OrgAddress2" IS 'LO2Office Address2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_OrgAddressStreet" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_OrgAddressStreet" IS 'LO2OffceAddressStreetName';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_OrgCity" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_OrgCity" IS 'LO2Office City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_OrgState" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_OrgState" IS 'LO2Office State';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_OrgZip" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_OrgZip" IS 'LO2Office Zip';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_OrganizationName" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_OrganizationName" IS 'LO2Office Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_PhoneNumber1" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_PhoneNumber1" IS 'LO2Office Phone1 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_PhoneNumber1CountryCodeId" IS 'LO2OfficePhone1CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_PhoneNumber1Desc" IS 'LO2OfficePhone1Descriptin';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_PhoneNumber1Ext" IS 'LO2OfficePhone1Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_ShortName" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_ShortName" IS 'LO2Office Abbreviation';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_WebPage" text;
    COMMENT ON COLUMN pensacola2."Property"."LO2_WebPage" IS 'LO2Office Url';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LO2_board_id" integer;
    COMMENT ON COLUMN pensacola2."Property"."LO2_board_id" IS 'LO2Board ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks1010" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks1010" IS 'Rental Instructions';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks11" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks11" IS 'Property Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks1111" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks1111" IS 'Sale Factors';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks22" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks22" IS 'Agent Notes';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks33" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks33" IS 'Directions';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks44" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks44" IS 'Legal Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks55" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks55" IS 'Bonus Terms';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks66" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks66" IS 'As Is Disclaimer';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks77" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks77" IS 'Area Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks88" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks88" IS 'Reduction Disclosure';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LR_remarks99" text;
    COMMENT ON COLUMN pensacola2."Property"."LR_remarks99" IS 'Rental Advertised Concess';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LVC_Agent_Hit_Count" integer;
    COMMENT ON COLUMN pensacola2."Property"."LVC_Agent_Hit_Count" IS 'Agent Hit Count';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LVC_Client_Hit_Count" integer;
    COMMENT ON COLUMN pensacola2."Property"."LVC_Client_Hit_Count" IS 'Client Hit Count';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LV_vow_address" text;
    COMMENT ON COLUMN pensacola2."Property"."LV_vow_address" IS 'Display Address';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LV_vow_avm" text;
    COMMENT ON COLUMN pensacola2."Property"."LV_vow_avm" IS 'Allow AVM on VOW';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LV_vow_comment" text;
    COMMENT ON COLUMN pensacola2."Property"."LV_vow_comment" IS 'Allow Comments on VOW';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "LV_vow_include" text;
    COMMENT ON COLUMN pensacola2."Property"."LV_vow_include" IS 'Display on Internet';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_Address" text;
    COMMENT ON COLUMN pensacola2."Property"."L_Address" IS 'Address';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_Address2" text;
    COMMENT ON COLUMN pensacola2."Property"."L_Address2" IS 'Unit #';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_AddressDirection" text;
    COMMENT ON COLUMN pensacola2."Property"."L_AddressDirection" IS 'Address Direction';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_AddressNumber" text;
    COMMENT ON COLUMN pensacola2."Property"."L_AddressNumber" IS 'Address Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_AddressSearchNumber" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_AddressSearchNumber" IS 'Address Search Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_AddressStreet" text;
    COMMENT ON COLUMN pensacola2."Property"."L_AddressStreet" IS 'Address Street';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_Area" text;
    COMMENT ON COLUMN pensacola2."Property"."L_Area" IS 'County';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_AskingPrice" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_AskingPrice" IS 'Lease Price $';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_CDOM" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_CDOM" IS 'Cumulative DOM';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_City" text;
    COMMENT ON COLUMN pensacola2."Property"."L_City" IS 'City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_Class" text;
    COMMENT ON COLUMN pensacola2."Property"."L_Class" IS 'Category';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_ClosingDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_ClosingDate" IS 'Leased Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_ContractDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_ContractDate" IS 'Contract Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_DOM" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_DOM" IS 'DOM';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_DOMLS" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_DOMLS" IS 'DOMLS';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_DisplayId" text;
    COMMENT ON COLUMN pensacola2."Property"."L_DisplayId" IS 'MLS #';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_EquityAmount" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_EquityAmount" IS 'Equity';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_ExpirationDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_ExpirationDate" IS 'Expiration Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_FirstPhotoAddDt" text;
    COMMENT ON COLUMN pensacola2."Property"."L_FirstPhotoAddDt" IS 'First Photo Add Timestamp';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_HotSheetDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_HotSheetDate" IS 'HotSheet Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_HowSold" text;
    COMMENT ON COLUMN pensacola2."Property"."L_HowSold" IS 'Mortgage Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_IdxInclude" text;
    COMMENT ON COLUMN pensacola2."Property"."L_IdxInclude" IS 'IDX Include';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_InputDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_InputDate" IS 'Input Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_LastDocUpdate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_LastDocUpdate" IS 'Doc Timestamp';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_Last_Photo_updt" text;
    COMMENT ON COLUMN pensacola2."Property"."L_Last_Photo_updt" IS 'PhotoTimestamp';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_ListAgent1" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_ListAgent1" IS 'List Agent';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_ListAgent2" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_ListAgent2" IS 'Co-List Agent';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_ListOffice1" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_ListOffice1" IS 'List Office';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_ListOffice2" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_ListOffice2" IS 'Co-List Office';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_ListingDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_ListingDate" IS 'List Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_ListingID" integer PRIMARY KEY;
    COMMENT ON COLUMN pensacola2."Property"."L_ListingID" IS 'SystemID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_NumAcres" decimal;
    COMMENT ON COLUMN pensacola2."Property"."L_NumAcres" IS 'Lot Acreage';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_NumUnits" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_NumUnits" IS 'Total Units';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_OffMarketDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_OriginalPrice" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_OriginalPrice" IS 'Original Price';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_PictureCount" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_PictureCount" IS 'Photo Count';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_PriceDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_PriceDate" IS 'Price Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_PricePerSQFT" decimal;
    COMMENT ON COLUMN pensacola2."Property"."L_PricePerSQFT" IS 'Price Per SQFT';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_Remarks" text;
    COMMENT ON COLUMN pensacola2."Property"."L_Remarks" IS 'Tenant Lease Info';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_SaleRent" text;
    COMMENT ON COLUMN pensacola2."Property"."L_SaleRent" IS 'Sale/Rent';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_SellingAgent1" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_SellingAgent1" IS 'Leasing Agent';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_SellingAgent2" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_SellingAgent2" IS 'Selling Co-Agent';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_SellingOffice1" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_SellingOffice1" IS 'Selling Office';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_SellingOffice2" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_SellingOffice2" IS 'Selling Co-Office';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_SoldPrice" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_SoldPrice" IS 'Leased Price';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_State" text;
    COMMENT ON COLUMN pensacola2."Property"."L_State" IS 'State';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_Status" text;
    COMMENT ON COLUMN pensacola2."Property"."L_Status" IS 'Status';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_StatusCatID" text;
    COMMENT ON COLUMN pensacola2."Property"."L_StatusCatID" IS 'Status Category';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_StatusDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_StatusDate" IS 'Status Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_StatusID" text;
    COMMENT ON COLUMN pensacola2."Property"."L_StatusID" IS 'Status Detail';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_SystemPrice" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_SystemPrice" IS 'Search Price';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_Type_" text;
    COMMENT ON COLUMN pensacola2."Property"."L_Type_" IS 'Property Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_UpdateDate" text;
    COMMENT ON COLUMN pensacola2."Property"."L_UpdateDate" IS 'Update Date';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_Zip" text;
    COMMENT ON COLUMN pensacola2."Property"."L_Zip" IS 'Zip';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "L_listings_associated_doc_count" integer;
    COMMENT ON COLUMN pensacola2."Property"."L_listings_associated_doc_count" IS 'Associated Document Count';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_Address2" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_Address2" IS 'SA1Agent Address2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_AddressStreet" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_AddressStreet" IS 'SA1AgentAddressStreetName';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_AgentID" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_AgentID" IS 'SA1User Code';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_City" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_City" IS 'SA1Agent City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_Email" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_Email" IS 'SA1Agent Email';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_HiddenUsCID" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_HiddenUsCID" IS 'SA1Agent Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber1" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber1" IS 'SA1Agent Phone1 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber1CountryCodeId" IS 'SA1Agent Phone1 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber1Desc" IS 'SA1AgentPhone1Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber1Ext" IS 'SA1Agent Phone1 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber2" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber2" IS 'SA1Agent Phone2 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber2CountryCodeId" IS 'SA1Agent Phone2 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber2Desc" IS 'SA1AgentPhone2Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber2Ext" IS 'SA1Agent Phone2 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber3" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber3" IS 'SA1Agent Phone3 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber3CountryCodeId" IS 'SA1Agent Phone3 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber3Desc" IS 'SA1AgentPhone3Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber3Ext" IS 'SA1Agent Phone3 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber4" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber4" IS 'SA1Agent Phone4 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber4CountryCodeId" IS 'SA1Agent Phone4 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber4Desc" IS 'SA1AgentPhone4Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber4Ext" IS 'SA1Agent Phone4 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber5" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber5" IS 'SA1Agent Phone5 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber5CountryCodeId" IS 'SA1Agent Phone5 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber5Desc" IS 'SA1AgentPhone5Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_PhoneNumber5Ext" IS 'SA1Agent Phone5 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_State" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_State" IS 'SA1Agent State';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_Status" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_Status" IS 'SA1Agent Status';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_UserFirstName" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_UserFirstName" IS 'SA1Agent First Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_UserLastName" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_UserLastName" IS 'SA1Agent Last Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_UserMI" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_UserMI" IS 'SA1Agent Middle Initial';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_WebPage" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_WebPage" IS 'SA1Agent Url';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA1_Zip" text;
    COMMENT ON COLUMN pensacola2."Property"."SA1_Zip" IS 'SA1Agent Zip';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_Address2" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_Address2" IS 'SA2Agent Address2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_AddressStreet" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_AddressStreet" IS 'SA2AgentAddressStreetName';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_AgentID" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_AgentID" IS 'SA2User Code';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_City" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_City" IS 'SA2Agent City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_Email" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_Email" IS 'SA2Agent Email';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_HiddenUsCID" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_HiddenUsCID" IS 'SA2Agent Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber1" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber1" IS 'SA2Agent Phone1 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber1CountryCodeId" IS 'SA2Agent Phone1 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber1Desc" IS 'SA2AgentPhone1Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber1Ext" IS 'SA2Agent Phone1 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber2" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber2" IS 'SA2Agent Phone2 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber2CountryCodeId" IS 'SA2Agent Phone2 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber2Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber2Desc" IS 'SA2AgentPhone2Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber2Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber2Ext" IS 'SA2Agent Phone2 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber3" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber3" IS 'SA2Agent Phone3 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber3CountryCodeId" IS 'SA2Agent Phone3 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber3Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber3Desc" IS 'SA2AgentPhone3Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber3Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber3Ext" IS 'SA2Agent Phone3 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber4" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber4" IS 'SA2Agent Phone4 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber4CountryCodeId" IS 'SA2Agent Phone4 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber4Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber4Desc" IS 'SA2AgentPhone4Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber4Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber4Ext" IS 'SA2Agent Phone4 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber5" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber5" IS 'SA2Agent Phone5 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber5CountryCodeId" IS 'SA2Agent Phone5 CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber5Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber5Desc" IS 'SA2AgentPhone5Description';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_PhoneNumber5Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_PhoneNumber5Ext" IS 'SA2Agent Phone5 Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_State" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_State" IS 'SA2Agent State';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_Status" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_Status" IS 'SA2Agent Status';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_UserFirstName" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_UserFirstName" IS 'SA2Agent First Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_UserLastName" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_UserLastName" IS 'SA2Agent Last Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_UserMI" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_UserMI" IS 'SA2Agent Middle Initial';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_WebPage" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_WebPage" IS 'SA2Agent Url';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SA2_Zip" text;
    COMMENT ON COLUMN pensacola2."Property"."SA2_Zip" IS 'SA2Agent Zip';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN pensacola2."Property"."SO1_BranchOfOrgID" IS 'SO1Main Office ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_EMail" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_EMail" IS 'SO1Office Email';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_HiddenOrgID" integer;
    COMMENT ON COLUMN pensacola2."Property"."SO1_HiddenOrgID" IS 'SO1Office Identifier';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_HiddenOtyID" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_HiddenOtyID" IS 'SO1Office Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_OrgAddress2" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_OrgAddress2" IS 'SO1Office Address2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_OrgAddressStreet" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_OrgAddressStreet" IS 'SO1OffceAddressStreetName';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_OrgCity" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_OrgCity" IS 'SO1Office City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_OrgState" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_OrgState" IS 'SO1Office State';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_OrgZip" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_OrgZip" IS 'SO1Office Zip';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_OrganizationName" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_OrganizationName" IS 'SO1Office Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_PhoneNumber1" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_PhoneNumber1" IS 'SO1Office Phone1 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_PhoneNumber1CountryCodeId" IS 'SO1OfficePhone1CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_PhoneNumber1Desc" IS 'SO1OfficePhone1Descriptin';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_PhoneNumber1Ext" IS 'SO1OfficePhone1Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_ShortName" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_ShortName" IS 'SO1Office Abbreviation';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_WebPage" text;
    COMMENT ON COLUMN pensacola2."Property"."SO1_WebPage" IS 'SO1Office Url';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO1_board_id" integer;
    COMMENT ON COLUMN pensacola2."Property"."SO1_board_id" IS 'SO1Board ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_BranchOfOrgID" integer;
    COMMENT ON COLUMN pensacola2."Property"."SO2_BranchOfOrgID" IS 'SO2Main Office ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_EMail" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_EMail" IS 'SO2Office Email';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_HiddenOrgID" integer;
    COMMENT ON COLUMN pensacola2."Property"."SO2_HiddenOrgID" IS 'SO2Office Identifier';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_HiddenOtyID" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_HiddenOtyID" IS 'SO2Office Type';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_OrgAddress2" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_OrgAddress2" IS 'SO2Office Address2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_OrgAddressStreet" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_OrgAddressStreet" IS 'SO2OffceAddressStreetName';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_OrgCity" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_OrgCity" IS 'SO2Office City';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_OrgState" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_OrgState" IS 'SO2Office State';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_OrgZip" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_OrgZip" IS 'SO2Office Zip';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_OrganizationName" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_OrganizationName" IS 'SO2Office Name';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_PhoneNumber1" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_PhoneNumber1" IS 'SO2Office Phone1 Number';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_PhoneNumber1CountryCodeId" IS 'SO2OfficePhone1CountryId';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_PhoneNumber1Desc" IS 'SO2OfficePhone1Descriptin';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_PhoneNumber1Ext" IS 'SO2OfficePhone1Extension';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_ShortName" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_ShortName" IS 'SO2Office Abbreviation';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_WebPage" text;
    COMMENT ON COLUMN pensacola2."Property"."SO2_WebPage" IS 'SO2Office Url';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "SO2_board_id" integer;
    COMMENT ON COLUMN pensacola2."Property"."SO2_board_id" IS 'SO2Board ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "T_list_tax_property_id" text;
    COMMENT ON COLUMN pensacola2."Property"."T_list_tax_property_id" IS 'Tax Property ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "T_tax_db_id" integer;
    COMMENT ON COLUMN pensacola2."Property"."T_tax_db_id" IS 'Tax Database ID';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "VT_ExtVTourURL1" text;
    COMMENT ON COLUMN pensacola2."Property"."VT_ExtVTourURL1" IS 'Virtual Tour 2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "VT_ExtVTourURL2" text;
    COMMENT ON COLUMN pensacola2."Property"."VT_ExtVTourURL2" IS 'Virtual Tour 3';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "VT_ExtVTourURL3" text;
    COMMENT ON COLUMN pensacola2."Property"."VT_ExtVTourURL3" IS 'Media Link 1';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "VT_ExtVTourURL4" text;
    COMMENT ON COLUMN pensacola2."Property"."VT_ExtVTourURL4" IS 'Media Link 2';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "VT_ExtVTourURL5" text;
    COMMENT ON COLUMN pensacola2."Property"."VT_ExtVTourURL5" IS 'Media Link 3';
     
    ALTER TABLE pensacola2."Property" ADD COLUMN "VT_VTourURL" text;
    COMMENT ON COLUMN pensacola2."Property"."VT_VTourURL" IS 'Virtual Tour';
     

COMMIT;