BEGIN;

  CREATE TABLE wiregrass."Property"() INHERITS (property);
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_Address2" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_Address2" IS 'LA1Agent Address2';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_AddressStreet" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_AddressStreet" IS 'LA1AgentAddressStreetName';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_AgentID" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_AgentID" IS 'LA1User Code';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_City" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_City" IS 'LA1Agent City';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_Email" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_Email" IS 'LA1Agent Email';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_HiddenUsCID" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_HiddenUsCID" IS 'LA1Agent Type';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_LoginName" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_LoginName" IS 'LA1Agent Logon Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber1" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber1" IS 'LA1Agent Phone1 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber1CountryCodeId" IS 'LA1Agent Phone1 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber1Desc" IS 'LA1AgentPhone1Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber1Ext" IS 'LA1Agent Phone1 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber2" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber2" IS 'LA1Agent Phone2 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber2CountryCodeId" IS 'LA1Agent Phone2 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber2Desc" IS 'LA1AgentPhone2Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber2Ext" IS 'LA1Agent Phone2 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber3" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber3" IS 'LA1Agent Phone3 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber3CountryCodeId" IS 'LA1Agent Phone3 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber3Desc" IS 'LA1AgentPhone3Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber3Ext" IS 'LA1Agent Phone3 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber4" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber4" IS 'LA1Agent Phone4 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber4CountryCodeId" IS 'LA1Agent Phone4 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber4Desc" IS 'LA1AgentPhone4Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber4Ext" IS 'LA1Agent Phone4 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber5" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber5" IS 'LA1Agent Phone5 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber5CountryCodeId" IS 'LA1Agent Phone5 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber5Desc" IS 'LA1AgentPhone5Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_PhoneNumber5Ext" IS 'LA1Agent Phone5 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_State" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_State" IS 'LA1Agent State';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_Status" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_Status" IS 'LA1Agent Status';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_UserFirstName" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_UserFirstName" IS 'LA1Agent First Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_UserLastName" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_UserLastName" IS 'LA1Agent Last Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_UserMI" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_UserMI" IS 'LA1Agent Middle Initial';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_WebPage" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_WebPage" IS 'LA1Agent Url';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA1_Zip" text;
    COMMENT ON COLUMN wiregrass."Property"."LA1_Zip" IS 'LA1Agent Zip';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_Address2" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_Address2" IS 'LA2Agent Address2';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_AddressStreet" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_AddressStreet" IS 'LA2AgentAddressStreetName';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_City" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_City" IS 'LA2Agent City';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_Email" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_Email" IS 'LA2Agent Email';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_HiddenUsCID" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_HiddenUsCID" IS 'LA2Agent Type';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber1" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber1" IS 'LA2Agent Phone1 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber1CountryCodeId" IS 'LA2Agent Phone1 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber1Desc" IS 'LA2AgentPhone1Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber1Ext" IS 'LA2Agent Phone1 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber2" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber2" IS 'LA2Agent Phone2 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber2CountryCodeId" IS 'LA2Agent Phone2 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber2Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber2Desc" IS 'LA2AgentPhone2Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber2Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber2Ext" IS 'LA2Agent Phone2 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber3" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber3" IS 'LA2Agent Phone3 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber3CountryCodeId" IS 'LA2Agent Phone3 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber3Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber3Desc" IS 'LA2AgentPhone3Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber3Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber3Ext" IS 'LA2Agent Phone3 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber4" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber4" IS 'LA2Agent Phone4 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber4CountryCodeId" IS 'LA2Agent Phone4 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber4Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber4Desc" IS 'LA2AgentPhone4Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber4Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber4Ext" IS 'LA2Agent Phone4 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber5" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber5" IS 'LA2Agent Phone5 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber5CountryCodeId" IS 'LA2Agent Phone5 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber5Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber5Desc" IS 'LA2AgentPhone5Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_PhoneNumber5Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_PhoneNumber5Ext" IS 'LA2Agent Phone5 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_State" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_State" IS 'LA2Agent State';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_Status" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_Status" IS 'LA2Agent Status';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_UserFirstName" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_UserFirstName" IS 'LA2Agent First Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_UserLastName" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_UserLastName" IS 'LA2Agent Last Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_UserMI" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_UserMI" IS 'LA2Agent Middle Initial';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_WebPage" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_WebPage" IS 'LA2Agent Url';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LA2_Zip" text;
    COMMENT ON COLUMN wiregrass."Property"."LA2_Zip" IS 'LA2Agent Zip';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ADDITIONALAMENITIES_118" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ADDITIONALAMENITIES_118" IS 'ADDITIONAL AMENITIES';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_APPLIANCES_10" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_APPLIANCES_10" IS 'APPLIANCES';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_APPLIANCES_128" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_APPLIANCES_128" IS 'APPLIANCES';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_APPLIANCES_95" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_APPLIANCES_95" IS 'APPLIANCES';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ATTIC_107" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ATTIC_107" IS 'ATTIC';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ATTIC_22" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ATTIC_22" IS 'ATTIC';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_BASEMENT_101" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_BASEMENT_101" IS 'BASEMENT';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_BASEMENT_134" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_BASEMENT_134" IS 'BASEMENT';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_BASEMENT_16" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_BASEMENT_16" IS 'BASEMENT';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_BATHROOMINFO_111" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_BATHROOMINFO_111" IS 'BATHROOM INFO';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_BATHROOMINFO_144" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_BATHROOMINFO_144" IS 'BATHROOM INFO';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_BATHROOMINFO_26" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_BATHROOMINFO_26" IS 'BATHROOM INFO';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_BEDROOMINFO_110" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_BEDROOMINFO_110" IS 'BEDROOM INFO';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_BEDROOMINFO_143" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_BEDROOMINFO_143" IS 'BEDROOM INFO';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_BEDROOMINFO_25" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_BEDROOMINFO_25" IS 'BEDROOM INFO';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_CONSTRUCTION_46" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_CONSTRUCTION_46" IS 'CONSTRUCTION';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_COOLING_120" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_COOLING_120" IS 'COOLING';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_COOLING_2" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_COOLING_2" IS 'COOLING';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_COOLING_48" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_COOLING_48" IS 'COOLING';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_COOLING_87" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_COOLING_87" IS 'COOLING';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_DININGROOMTYPE_127" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_DININGROOMTYPE_127" IS 'DINING ROOM TYPE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_DININGROOMTYPE_9" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_DININGROOMTYPE_9" IS 'DINING ROOM TYPE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_DININGROOMTYPE_94" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_DININGROOMTYPE_94" IS 'DINING ROOM TYPE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_DOCUMENTSONFILE_112" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_DOCUMENTSONFILE_112" IS 'DOCUMENTS ON FILE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_DOCUMENTSONFILE_27" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_DOCUMENTSONFILE_27" IS 'DOCUMENTS ON FILE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_DOCUMENTSONFILE_39" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_DOCUMENTSONFILE_39" IS 'DOCUMENTS ON FILE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_DOCUMENTSONFILE_52" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_DOCUMENTSONFILE_52" IS 'DOCUMENTS ON FILE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ELECTRICAUTHORITY_123" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ELECTRICAUTHORITY_123" IS 'ELECTRIC AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ELECTRICAUTHORITY_40" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ELECTRICAUTHORITY_40" IS 'ELECTRIC AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ELECTRICAUTHORITY_5" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ELECTRICAUTHORITY_5" IS 'ELECTRIC AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ELECTRICAUTHORITY_53" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ELECTRICAUTHORITY_53" IS 'ELECTRIC AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ELECTRICAUTHORITY_90" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ELECTRICAUTHORITY_90" IS 'ELECTRIC AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ELECTRIC_38" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ELECTRIC_38" IS 'ELECTRIC';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ELECTRIC_49" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ELECTRIC_49" IS 'ELECTRIC';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_EXTERIOR_14" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_EXTERIOR_14" IS 'EXTERIOR';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_EXTERIOR_99" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_EXTERIOR_99" IS 'EXTERIOR';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_EXTRAROOMS_126" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_EXTRAROOMS_126" IS 'EXTRA ROOMS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_EXTRAROOMS_8" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_EXTRAROOMS_8" IS 'EXTRA ROOMS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_EXTRAROOMS_93" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_EXTRAROOMS_93" IS 'EXTRA ROOMS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_EXTRAS_11" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_EXTRAS_11" IS 'EXTRAS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_EXTRAS_129" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_EXTRAS_129" IS 'EXTRAS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_EXTRAS_50" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_EXTRAS_50" IS 'EXTRAS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_EXTRAS_96" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_EXTRAS_96" IS 'EXTRAS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FENCE_102" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FENCE_102" IS 'FENCE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FENCE_135" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FENCE_135" IS 'FENCE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FENCE_17" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FENCE_17" IS 'FENCE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FENCE_33" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FENCE_33" IS 'FENCE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FIREPLACE_125" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FIREPLACE_125" IS 'FIREPLACE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FIREPLACE_7" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FIREPLACE_7" IS 'FIREPLACE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FIREPLACE_92" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FIREPLACE_92" IS 'FIREPLACE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FLOORCOVERING_104" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FLOORCOVERING_104" IS 'FLOOR COVERING';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FLOORCOVERING_137" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FLOORCOVERING_137" IS 'FLOOR COVERING';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FLOORCOVERING_19" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FLOORCOVERING_19" IS 'FLOOR COVERING';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FOUNDATION_100" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FOUNDATION_100" IS 'FOUNDATION';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_FOUNDATION_15" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_FOUNDATION_15" IS 'FOUNDATION';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_GAS_37" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_GAS_37" IS 'GAS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_HEAT_1" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_HEAT_1" IS 'HEAT';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_HEAT_119" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_HEAT_119" IS 'HEAT';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_HEAT_47" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_HEAT_47" IS 'HEAT';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_HEAT_86" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_HEAT_86" IS 'HEAT';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_IMPROVEMENTS_114" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_IMPROVEMENTS_114" IS 'IMPROVEMENTS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_IMPROVEMENTS_29" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_IMPROVEMENTS_29" IS 'IMPROVEMENTS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_LAUNDRYLOCATION_12" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_LAUNDRYLOCATION_12" IS 'LAUNDRY LOCATION';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_LAUNDRYLOCATION_130" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_LAUNDRYLOCATION_130" IS 'LAUNDRY LOCATION';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_LAUNDRYLOCATION_97" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_LAUNDRYLOCATION_97" IS 'LAUNDRY LOCATION';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_LOTDESCRIPTION_115" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_LOTDESCRIPTION_115" IS 'LOT DESCRIPTION';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_LOTDESCRIPTION_116" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_LOTDESCRIPTION_116" IS 'LOT DESCRIPTION';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_LOTDESCRIPTION_30" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_LOTDESCRIPTION_30" IS 'LOT DESCRIPTION';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_PATIO_109" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_PATIO_109" IS 'PATIO';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_PATIO_142" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_PATIO_142" IS 'PATIO';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_PATIO_24" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_PATIO_24" IS 'PATIO';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_POOL_108" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_POOL_108" IS 'POOL';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_POOL_141" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_POOL_141" IS 'POOL';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_POOL_23" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_POOL_23" IS 'POOL';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ROADTYPE_36" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ROADTYPE_36" IS 'ROAD TYPE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ROADTYPE_51" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ROADTYPE_51" IS 'ROAD TYPE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ROOF_13" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ROOF_13" IS 'ROOF';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ROOF_85" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ROOF_85" IS 'ROOF';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ROOF_98" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ROOF_98" IS 'ROOF';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_SEWER_121" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_SEWER_121" IS 'SEWER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_SEWER_3" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_SEWER_3" IS 'SEWER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_SEWER_35" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_SEWER_35" IS 'SEWER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_SEWER_44" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_SEWER_44" IS 'SEWER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_SEWER_88" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_SEWER_88" IS 'SEWER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_SHOWINSTRUCTIONS_113" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_SHOWINSTRUCTIONS_113" IS 'SHOW INSTRUCTIONS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_SHOWINSTRUCTIONS_146" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_SHOWINSTRUCTIONS_146" IS 'SHOW INSTRUCTIONS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_SHOWINSTRUCTIONS_28" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_SHOWINSTRUCTIONS_28" IS 'SHOW INSTRUCTIONS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_STYLE_103" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_STYLE_103" IS 'STYLE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_STYLE_18" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_STYLE_18" IS 'STYLE';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_TOPOGRAPHY_31" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_TOPOGRAPHY_31" IS 'TOPOGRAPHY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_TRASH_105" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_TRASH_105" IS 'TRASH';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_TRASH_138" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_TRASH_138" IS 'TRASH';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_TRASH_20" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_TRASH_20" IS 'TRASH';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_VIEW_32" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_VIEW_32" IS 'VIEW';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATERAUTHORITY_124" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATERAUTHORITY_124" IS 'WATER AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATERAUTHORITY_41" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATERAUTHORITY_41" IS 'WATER AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATERAUTHORITY_54" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATERAUTHORITY_54" IS 'WATER AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATERAUTHORITY_6" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATERAUTHORITY_6" IS 'WATER AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATERAUTHORITY_91" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATERAUTHORITY_91" IS 'WATER AUTHORITY';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATER_122" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATER_122" IS 'WATER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATER_34" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATER_34" IS 'WATER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATER_4" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATER_4" IS 'WATER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATER_43" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATER_43" IS 'WATER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WATER_89" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WATER_89" IS 'WATER';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WINDOWS_106" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WINDOWS_106" IS 'WINDOWS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_WINDOWS_21" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_WINDOWS_21" IS 'WINDOWS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LFD_ZONING_42" text[];
    COMMENT ON COLUMN wiregrass."Property"."LFD_ZONING_42" IS 'ZONING';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_AddressLine" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_AddressLine" IS 'Geo Address Line';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_Latitude" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_Latitude" IS 'Geo Latitude';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_Longitude" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_Longitude" IS 'Geo Longitude';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_MatchCode" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_MatchCode" IS 'Geo Match Code';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_MatchedMethod" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_MatchedMethod" IS 'Geo Matched Method';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_PostalCode" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_PostalCode" IS 'Geo Postal Code';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_PrimaryCity" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_PrimaryCity" IS 'Geo Primary City';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_Quality" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_Quality" IS 'Geo Quality';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_SecondaryCity" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_SecondaryCity" IS 'Geo Secondary City';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_Subdivision" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_Subdivision" IS 'Geo Subdivision';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_UpdateDate" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_UpdateDate" IS 'Geo Update Timestamp';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LMD_MP_ZoomLevel" text;
    COMMENT ON COLUMN wiregrass."Property"."LMD_MP_ZoomLevel" IS 'Geo Zoom Level';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_1" IS 'Seller Contribution $';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_10" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_10" IS 'SD Restrict Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_11" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_11" IS 'Elementary School';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_12" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_12" IS 'Middle High';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_13" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_13" IS 'High School';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_14" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_14" IS 'Subdivision';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_15" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_15" IS 'Lender';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_16" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_16" IS 'Loan Balance';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_17" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_17" IS 'Lease Purchase Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_18" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_18" IS 'Owner Financing Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_19" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_19" IS 'Existing Terms';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_2" IS 'Appraiser';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_20" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_20" IS 'HOA Fees';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_21" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_21" IS 'Exclusions Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_22" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_22" IS 'Discount';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_24" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_24" IS 'ADA Accessible Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_25" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_25" IS 'Vacant Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_26" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_26" IS 'Method Measured';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_27" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_27" IS 'Short Sale Yes/No';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_28" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_28" IS 'Combo Lockbox';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_29" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_29" IS 'City Limits Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_3" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_3" IS 'Variable Comm Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_30" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_30" IS 'Manufactured Home Rest';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_4" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_4" IS 'Agency Type';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_5" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_5" IS 'New Construction Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_6" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_6" IS 'Home Warranty Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_7" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_7" IS 'MLS Lock Box';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_8" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_8" IS 'Serial #';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char10_9" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char10_9" IS 'Yard Sign Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char1_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char1_1" IS 'Pets';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char25_10" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char25_10" IS 'Business Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char25_17" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char25_17" IS 'Owner Will Subdivide';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char25_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char25_2" IS 'Owner Phone';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char25_3" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char25_3" IS 'Lot Size';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char25_4" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char25_4" IS 'Parcel #';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char25_5" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char25_5" IS 'County';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char25_6" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char25_6" IS 'Occupant';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char50_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char50_1" IS 'Legal';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char50_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char50_2" IS 'Financing Terms';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char50_3" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char50_3" IS 'Park Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Char50_4" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Char50_4" IS 'Builder';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_DateTime_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_DateTime_1" IS 'Appraisal Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_DateTime_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_DateTime_2" IS 'Lease Exp Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_DateTime_3" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_DateTime_3" IS 'Appraisal Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_DateTime_4" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_DateTime_4" IS 'Proposed Const Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_1" IS 'Unit 1 Sq Ft';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_10" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_10" IS 'Price Per Acre';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_11" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_11" IS 'Deposit $';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_12" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_12" IS 'Pet Dep $';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_13" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_13" IS 'Pet Fee $';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_2" IS 'Unit 2 Sq Ft';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_3" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_3" IS 'Unit 3 Sq Ft';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_4" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_4" IS 'Unit 4 Sq Ft';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_5" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_5" IS 'Unit 1 $ Rent/Mo';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_6" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_6" IS 'Unit 2 $ Rent/Mo';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_7" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_7" IS 'Unit 3 $ Rent/Mo';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_8" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_8" IS 'Unit 4 $ Rent/Mo';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Dec_9" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Dec_9" IS 'Price Per SqFt';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int1_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int1_1" IS 'Total # Of Rooms';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int2_12" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int2_12" IS 'Min. Sqft for Structure';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int2_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int2_2" IS 'Unit 1 # Bedrooms';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int2_3" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int2_3" IS 'Unit 2 # Bedrooms';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int2_4" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int2_4" IS 'Unit 3 # Bedrooms';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int2_5" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int2_5" IS 'Unit 4 # Bedrooms';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int2_6" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int2_6" IS 'Unit 1 # Baths';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int2_7" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int2_7" IS 'Unit 2 # Baths';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int2_8" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int2_8" IS 'Unit 3 # Baths';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int2_9" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int2_9" IS 'Unit 4 # Baths';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int4_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int4_1" IS 'Appx Year Built';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int4_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int4_2" IS 'Age';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int4_3" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int4_3" IS 'Tax Year';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int4_4" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int4_4" IS 'Office Sq Ft';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_Int4_5" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_Int4_5" IS 'Warehouse Sq Ft';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char100_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char100_1" IS 'Showing Instructions';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char100_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char100_2" IS 'Comp';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_31" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_31" IS 'Length';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_32" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_32" IS 'Width';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_33" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_33" IS 'Make';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_34" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_34" IS 'Model';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_37" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_37" IS 'Soil Report Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_38" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_38" IS 'Crops Included Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_39" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_39" IS 'Timber Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_40" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_40" IS 'Annual Expenses';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_41" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_41" IS 'Annual Income';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_42" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_42" IS 'Gross Income';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_43" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_43" IS 'Factory';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_44" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_44" IS 'Office Equipment Incld';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_45" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_45" IS 'Basement Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_46" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_46" IS 'Fence Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_47" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_47" IS 'Restrooms';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_48" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_48" IS 'Rail Access Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_49" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_49" IS 'Road Frontage Y/N';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_50" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_50" IS 'Number of Tenants';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_51" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_51" IS 'Electric Avg';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_52" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_52" IS 'Call Listing Ofc For Appt';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_53" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_53" IS 'Photo';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_54" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_54" IS 'Unit 1 Unit #';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_55" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_55" IS 'Unit 2 Unit #';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_56" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_56" IS 'Unit 3 Unit #';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char10_57" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char10_57" IS 'Unit 4 Unit #';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char255_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char255_1" IS 'Addl Comments/Incentives';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char255_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char255_2" IS 'Directions';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char50_7" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char50_7" IS 'Owner';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char50_9" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char50_9" IS 'Foreclosure Yes/No';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char5_1" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char5_1" IS 'Assessed SqFt';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char5_10" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char5_10" IS 'Home Owner Fees$';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char5_2" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char5_2" IS 'Comp Coop';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char5_3" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char5_3" IS 'Comp BA';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char5_4" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char5_4" IS 'Mortgage';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char5_5" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char5_5" IS 'Loan Rate %';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LM_char5_6" text;
    COMMENT ON COLUMN wiregrass."Property"."LM_char5_6" IS 'Taxes';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_BranchOfOrgID" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_BranchOfOrgID" IS 'LO1Main Office ID';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_EMail" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_EMail" IS 'LO1Office Email';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_HiddenOrgID" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_HiddenOrgID" IS 'LO1Office Identifier';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_HiddenOtyID" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_HiddenOtyID" IS 'LO1Office Type';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_OrgAddress2" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_OrgAddress2" IS 'LO1Office Address2';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_OrgAddressStreet" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_OrgAddressStreet" IS 'LO1OffceAddressStreetName';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_OrgCity" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_OrgCity" IS 'LO1Office City';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_OrgState" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_OrgState" IS 'LO1Office State';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_OrgZip" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_OrgZip" IS 'LO1Office Zip';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_OrganizationName" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_OrganizationName" IS 'LO1Office Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_PhoneNumber1" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_PhoneNumber1" IS 'LO1Office Phone1 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_PhoneNumber1CountryCodeId" IS 'LO1OfficePhone1CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_PhoneNumber1Desc" IS 'LO1OfficePhone1Descriptin';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_PhoneNumber1Ext" IS 'LO1OfficePhone1Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_ShortName" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_ShortName" IS 'LO1Office Abbreviation';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_WebPage" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_WebPage" IS 'LO1Office Url';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO1_board_id" text;
    COMMENT ON COLUMN wiregrass."Property"."LO1_board_id" IS 'LO1Board ID';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_BranchOfOrgID" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_BranchOfOrgID" IS 'LO2Main Office ID';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_EMail" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_EMail" IS 'LO2Office Email';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_HiddenOrgID" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_HiddenOrgID" IS 'LO2Office Identifier';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_HiddenOtyID" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_HiddenOtyID" IS 'LO2Office Type';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_OrgAddress2" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_OrgAddress2" IS 'LO2Office Address2';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_OrgAddressStreet" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_OrgAddressStreet" IS 'LO2OffceAddressStreetName';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_OrgCity" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_OrgCity" IS 'LO2Office City';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_OrgState" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_OrgState" IS 'LO2Office State';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_OrgZip" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_OrgZip" IS 'LO2Office Zip';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_OrganizationName" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_OrganizationName" IS 'LO2Office Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_PhoneNumber1" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_PhoneNumber1" IS 'LO2Office Phone1 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_PhoneNumber1CountryCodeId" IS 'LO2OfficePhone1CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_PhoneNumber1Desc" IS 'LO2OfficePhone1Descriptin';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_PhoneNumber1Ext" IS 'LO2OfficePhone1Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_ShortName" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_ShortName" IS 'LO2Office Abbreviation';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_WebPage" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_WebPage" IS 'LO2Office Url';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LO2_board_id" text;
    COMMENT ON COLUMN wiregrass."Property"."LO2_board_id" IS 'LO2Board ID';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LR_remarks11" text;
    COMMENT ON COLUMN wiregrass."Property"."LR_remarks11" IS 'Agent Confidential Remark';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LR_remarks22" text;
    COMMENT ON COLUMN wiregrass."Property"."LR_remarks22" IS 'Public Remarks';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LV_vow_address" text;
    COMMENT ON COLUMN wiregrass."Property"."LV_vow_address" IS 'VOW Address';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LV_vow_avm" text;
    COMMENT ON COLUMN wiregrass."Property"."LV_vow_avm" IS 'VOW AVM';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LV_vow_comment" text;
    COMMENT ON COLUMN wiregrass."Property"."LV_vow_comment" IS 'VOW Comment';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "LV_vow_include" text;
    COMMENT ON COLUMN wiregrass."Property"."LV_vow_include" IS 'VOW Include';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Accelerate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Accelerate" IS 'VA Substitution';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Address" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Address" IS 'Address';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Address2" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Address2" IS 'Address 2';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_AddressDirection" text;
    COMMENT ON COLUMN wiregrass."Property"."L_AddressDirection" IS 'Address Direction';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_AddressNumber" text;
    COMMENT ON COLUMN wiregrass."Property"."L_AddressNumber" IS 'Address Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_AddressSearchNumber" text;
    COMMENT ON COLUMN wiregrass."Property"."L_AddressSearchNumber" IS 'Address Search Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_AddressStreet" text;
    COMMENT ON COLUMN wiregrass."Property"."L_AddressStreet" IS 'Address Street';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Area" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Area" IS 'Area';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_AskingPrice" integer;
    COMMENT ON COLUMN wiregrass."Property"."L_AskingPrice" IS 'Rent $';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_AssumPayAmt" text;
    COMMENT ON COLUMN wiregrass."Property"."L_AssumPayAmt" IS 'Payments';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Assumable" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Assumable" IS 'Assumable';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_City" text;
    COMMENT ON COLUMN wiregrass."Property"."L_City" IS 'City';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Class" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Class" IS 'Class';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_ClosingDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_ClosingDate" IS 'Closing Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_ContractDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_ContractDate" IS 'Contract Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_DOM" text;
    COMMENT ON COLUMN wiregrass."Property"."L_DOM" IS 'DOM';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_DOMLS" text;
    COMMENT ON COLUMN wiregrass."Property"."L_DOMLS" IS 'DOMLS';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_DisplayId" text;
    COMMENT ON COLUMN wiregrass."Property"."L_DisplayId" IS 'MLS #';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_EquityAmount" text;
    COMMENT ON COLUMN wiregrass."Property"."L_EquityAmount" IS 'Equity Amount';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_ExpirationDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_ExpirationDate" IS 'Expiration Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_FirstPhotoAddDt" text;
    COMMENT ON COLUMN wiregrass."Property"."L_FirstPhotoAddDt" IS 'First Photo Add Timestamp';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_HotSheetDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_HotSheetDate" IS 'HotSheet Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_HowSold" text;
    COMMENT ON COLUMN wiregrass."Property"."L_HowSold" IS 'How Sold';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_IdxInclude" text;
    COMMENT ON COLUMN wiregrass."Property"."L_IdxInclude" IS 'IDX Include';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_InputDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_InputDate" IS 'Input Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword1" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword1" IS 'Bedrooms';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword10" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword10" IS 'Manufactured Home';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword2" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword2" IS 'Full Baths';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword3" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword3" IS 'Half Baths';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword4" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword4" IS 'Garage Capacity';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword5" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword5" IS 'Garage Type';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword6" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword6" IS 'Stories';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword7" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword7" IS 'Pool';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword8" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword8" IS 'Fireplace';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Keyword9" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Keyword9" IS 'Extra Room';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_LastDocUpdate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_LastDocUpdate" IS 'Doc Timestamp';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Last_Photo_updt" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Last_Photo_updt" IS 'PhotoTimestamp';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_ListAgent1" text;
    COMMENT ON COLUMN wiregrass."Property"."L_ListAgent1" IS 'Agent';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_ListAgent2" text;
    COMMENT ON COLUMN wiregrass."Property"."L_ListAgent2" IS 'Listing Agent 2';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_ListOffice1" text;
    COMMENT ON COLUMN wiregrass."Property"."L_ListOffice1" IS 'Listing Office 1';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_ListOffice2" text;
    COMMENT ON COLUMN wiregrass."Property"."L_ListOffice2" IS 'Listing Office 2';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_ListingDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_ListingDate" IS 'Listing Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_ListingID" text PRIMARY KEY;
    COMMENT ON COLUMN wiregrass."Property"."L_ListingID" IS 'SystemID';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_NumAcres" text;
    COMMENT ON COLUMN wiregrass."Property"."L_NumAcres" IS '# of Acres';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_OffMarketDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_OriginalPrice" integer;
    COMMENT ON COLUMN wiregrass."Property"."L_OriginalPrice" IS 'Original Price';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_PictureCount" text;
    COMMENT ON COLUMN wiregrass."Property"."L_PictureCount" IS 'Photo Count';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_PriceDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_PriceDate" IS 'Price Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Qualify" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Qualify" IS 'Qualify';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Remarks" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Remarks" IS 'Public Remarks';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_SaleRent" text;
    COMMENT ON COLUMN wiregrass."Property"."L_SaleRent" IS 'Sale/Rent';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_SellingAgent1" text;
    COMMENT ON COLUMN wiregrass."Property"."L_SellingAgent1" IS 'Selling Agent 1';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_SellingOffice1" text;
    COMMENT ON COLUMN wiregrass."Property"."L_SellingOffice1" IS 'Selling Office 1';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_SoldPrice" integer;
    COMMENT ON COLUMN wiregrass."Property"."L_SoldPrice" IS 'Sold Price';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_SquareFeet" text;
    COMMENT ON COLUMN wiregrass."Property"."L_SquareFeet" IS 'Appx Square Footage';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_State" text;
    COMMENT ON COLUMN wiregrass."Property"."L_State" IS 'State';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Status" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Status" IS 'Status';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_StatusCatID" text;
    COMMENT ON COLUMN wiregrass."Property"."L_StatusCatID" IS 'Status Category';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_StatusDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_StatusDate" IS 'Status Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_StatusID" text;
    COMMENT ON COLUMN wiregrass."Property"."L_StatusID" IS 'Status Detail';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_SystemPrice" integer;
    COMMENT ON COLUMN wiregrass."Property"."L_SystemPrice" IS 'Search Price';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Type_" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Type_" IS 'Type';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_UpdateDate" text;
    COMMENT ON COLUMN wiregrass."Property"."L_UpdateDate" IS 'Update Date';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_Zip" text;
    COMMENT ON COLUMN wiregrass."Property"."L_Zip" IS 'Zip';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "L_listings_associated_doc_count" text;
    COMMENT ON COLUMN wiregrass."Property"."L_listings_associated_doc_count" IS 'Associated Document Count';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_Address2" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_Address2" IS 'SA1Agent Address2';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_AddressStreet" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_AddressStreet" IS 'SA1AgentAddressStreetName';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_City" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_City" IS 'SA1Agent City';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_Email" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_Email" IS 'SA1Agent Email';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_HiddenUsCID" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_HiddenUsCID" IS 'SA1Agent Type';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber1" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber1" IS 'SA1Agent Phone1 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber1CountryCodeId" IS 'SA1Agent Phone1 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber1Desc" IS 'SA1AgentPhone1Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber1Ext" IS 'SA1Agent Phone1 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber2" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber2" IS 'SA1Agent Phone2 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber2CountryCodeId" IS 'SA1Agent Phone2 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber2Desc" IS 'SA1AgentPhone2Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber2Ext" IS 'SA1Agent Phone2 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber3" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber3" IS 'SA1Agent Phone3 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber3CountryCodeId" IS 'SA1Agent Phone3 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber3Desc" IS 'SA1AgentPhone3Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber3Ext" IS 'SA1Agent Phone3 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber4" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber4" IS 'SA1Agent Phone4 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber4CountryCodeId" IS 'SA1Agent Phone4 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber4Desc" IS 'SA1AgentPhone4Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber4Ext" IS 'SA1Agent Phone4 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber5" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber5" IS 'SA1Agent Phone5 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber5CountryCodeId" IS 'SA1Agent Phone5 CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber5Desc" IS 'SA1AgentPhone5Description';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_PhoneNumber5Ext" IS 'SA1Agent Phone5 Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_State" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_State" IS 'SA1Agent State';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_Status" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_Status" IS 'SA1Agent Status';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_UserFirstName" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_UserFirstName" IS 'SA1Agent First Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_UserLastName" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_UserLastName" IS 'SA1Agent Last Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_UserMI" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_UserMI" IS 'SA1Agent Middle Initial';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_WebPage" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_WebPage" IS 'SA1Agent Url';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SA1_Zip" text;
    COMMENT ON COLUMN wiregrass."Property"."SA1_Zip" IS 'SA1Agent Zip';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_BranchOfOrgID" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_BranchOfOrgID" IS 'SO1Main Office ID';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_EMail" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_EMail" IS 'SO1Office Email';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_HiddenOrgID" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_HiddenOrgID" IS 'SO1Office Identifier';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_HiddenOtyID" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_HiddenOtyID" IS 'SO1Office Type';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_OrgAddress2" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_OrgAddress2" IS 'SO1Office Address2';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_OrgAddressStreet" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_OrgAddressStreet" IS 'SO1OffceAddressStreetName';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_OrgCity" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_OrgCity" IS 'SO1Office City';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_OrgState" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_OrgState" IS 'SO1Office State';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_OrgZip" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_OrgZip" IS 'SO1Office Zip';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_OrganizationName" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_OrganizationName" IS 'SO1Office Name';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_PhoneNumber1" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_PhoneNumber1" IS 'SO1Office Phone1 Number';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_PhoneNumber1CountryCodeId" IS 'SO1OfficePhone1CountryId';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_PhoneNumber1Desc" IS 'SO1OfficePhone1Descriptin';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_PhoneNumber1Ext" IS 'SO1OfficePhone1Extension';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_ShortName" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_ShortName" IS 'SO1Office Abbreviation';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_WebPage" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_WebPage" IS 'SO1Office Url';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "SO1_board_id" text;
    COMMENT ON COLUMN wiregrass."Property"."SO1_board_id" IS 'SO1Board ID';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "T_list_tax_property_id" text;
    COMMENT ON COLUMN wiregrass."Property"."T_list_tax_property_id" IS 'Tax Property ID';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "T_tax_db_id" text;
    COMMENT ON COLUMN wiregrass."Property"."T_tax_db_id" IS 'Tax Database ID';
     
    ALTER TABLE wiregrass."Property" ADD COLUMN "VT_VTourURL" text;
    COMMENT ON COLUMN wiregrass."Property"."VT_VTourURL" IS 'Virtual Tour';
     

COMMIT;