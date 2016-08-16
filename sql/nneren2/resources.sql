BEGIN;

  CREATE TABLE nneren2."Property"() INHERITS (property);
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Address2" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Address2" IS 'LA1Agent Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_AddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_AddressStreet" IS 'LA1AgentAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_AgentID" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_AgentID" IS 'LA1User Code';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char100_1" IS 'LA1Member Bio';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char100_2" IS 'LA1Member Designations';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char100_3" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char100_3" IS 'LA1Member Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char100_4" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char100_4" IS 'LA1License 4 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char100_5" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char100_5" IS 'LA1Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char10_1" IS 'LA1Member Half Price';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char10_2" IS 'LA1Promo';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char10_3" IS 'LA1License 1 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char10_4" IS 'LA1License 2 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char10_5" IS 'LA1License 3 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char255_1" IS 'LA1Member Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char50_10" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char50_10" IS 'LA1License 4 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char50_2" IS 'LA1License 1 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char50_3" IS 'LA1Languages';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char50_4" IS 'LA1License 1 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char50_5" IS 'LA1License 2 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char50_6" IS 'LA1License 2 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char50_7" IS 'LA1License 3 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char50_8" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char50_8" IS 'LA1License 3 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Char50_9" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Char50_9" IS 'LA1License 4 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_City" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_City" IS 'LA1Agent City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_DateTime_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_DateTime_1" IS 'LA1Membership Date';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Email" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Email" IS 'LA1Agent Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_HiddenUsCID" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_HiddenUsCID" IS 'LA1Agent Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_LoginName" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_LoginName" IS 'LA1Agent Logon Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber1" IS 'LA1Agent Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber1CountryCodeId" IS 'LA1Agent Phone1 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber1Desc" IS 'LA1AgentPhone1Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber1Ext" IS 'LA1Agent Phone1 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber2" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber2" IS 'LA1Agent Phone2 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber2CountryCodeId" IS 'LA1Agent Phone2 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber2Desc" IS 'LA1AgentPhone2Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber2Ext" IS 'LA1Agent Phone2 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber3" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber3" IS 'LA1Agent Phone3 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber3CountryCodeId" IS 'LA1Agent Phone3 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber3Desc" IS 'LA1AgentPhone3Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber3Ext" IS 'LA1Agent Phone3 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber4" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber4" IS 'LA1Agent Phone4 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber4CountryCodeId" IS 'LA1Agent Phone4 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber4Desc" IS 'LA1AgentPhone4Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber4Ext" IS 'LA1Agent Phone4 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber5" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber5" IS 'LA1Agent Phone5 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber5CountryCodeId" IS 'LA1Agent Phone5 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber5Desc" IS 'LA1AgentPhone5Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_PhoneNumber5Ext" IS 'LA1Agent Phone5 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_State" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_State" IS 'LA1Agent State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Status" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Status" IS 'LA1Agent Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_UserFirstName" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_UserFirstName" IS 'LA1Agent First Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_UserLastName" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_UserLastName" IS 'LA1Agent Last Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_UserMI" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_UserMI" IS 'LA1Agent Middle Initial';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_WebPage" IS 'LA1Agent Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA1_Zip" text;
    COMMENT ON COLUMN nneren2."Property"."LA1_Zip" IS 'LA1Agent Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Address2" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Address2" IS 'LA2Agent Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_AddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_AddressStreet" IS 'LA2AgentAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char100_1" IS 'LA2Member Bio';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char100_2" IS 'LA2Member Designations';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char100_3" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char100_3" IS 'LA2Member Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char100_4" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char100_4" IS 'LA2License 4 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char100_5" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char100_5" IS 'LA2Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char10_1" IS 'LA2Member Half Price';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char10_2" IS 'LA2Promo';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char10_3" IS 'LA2License 1 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char10_4" IS 'LA2License 2 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char10_5" IS 'LA2License 3 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char255_1" IS 'LA2Member Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char50_10" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char50_10" IS 'LA2License 4 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char50_2" IS 'LA2License 1 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char50_3" IS 'LA2Languages';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char50_4" IS 'LA2License 1 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char50_5" IS 'LA2License 2 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char50_6" IS 'LA2License 2 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char50_7" IS 'LA2License 3 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char50_8" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char50_8" IS 'LA2License 3 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Char50_9" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Char50_9" IS 'LA2License 4 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_City" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_City" IS 'LA2Agent City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_DateTime_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_DateTime_1" IS 'LA2Membership Date';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Email" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Email" IS 'LA2Agent Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_HiddenUsCID" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_HiddenUsCID" IS 'LA2Agent Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber1" IS 'LA2Agent Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber1CountryCodeId" IS 'LA2Agent Phone1 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber1Desc" IS 'LA2AgentPhone1Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber1Ext" IS 'LA2Agent Phone1 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber2" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber2" IS 'LA2Agent Phone2 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber2CountryCodeId" IS 'LA2Agent Phone2 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber2Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber2Desc" IS 'LA2AgentPhone2Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber2Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber2Ext" IS 'LA2Agent Phone2 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber3" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber3" IS 'LA2Agent Phone3 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber3CountryCodeId" IS 'LA2Agent Phone3 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber3Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber3Desc" IS 'LA2AgentPhone3Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber3Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber3Ext" IS 'LA2Agent Phone3 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber4" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber4" IS 'LA2Agent Phone4 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber4CountryCodeId" IS 'LA2Agent Phone4 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber4Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber4Desc" IS 'LA2AgentPhone4Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber4Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber4Ext" IS 'LA2Agent Phone4 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber5" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber5" IS 'LA2Agent Phone5 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber5CountryCodeId" IS 'LA2Agent Phone5 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber5Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber5Desc" IS 'LA2AgentPhone5Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_PhoneNumber5Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_PhoneNumber5Ext" IS 'LA2Agent Phone5 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_State" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_State" IS 'LA2Agent State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Status" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Status" IS 'LA2Agent Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_UserFirstName" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_UserFirstName" IS 'LA2Agent First Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_UserLastName" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_UserLastName" IS 'LA2Agent Last Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_UserMI" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_UserMI" IS 'LA2Agent Middle Initial';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_WebPage" IS 'LA2Agent Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA2_Zip" text;
    COMMENT ON COLUMN nneren2."Property"."LA2_Zip" IS 'LA2Agent Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Address2" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Address2" IS 'LA3Agent Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_AddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_AddressStreet" IS 'LA3AgentAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char100_1" IS 'LA3Member Bio';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char100_2" IS 'LA3Member Designations';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char100_3" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char100_3" IS 'LA3Member Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char100_4" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char100_4" IS 'LA3License 4 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char100_5" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char100_5" IS 'LA3Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char10_1" IS 'LA3Member Half Price';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char10_2" IS 'LA3Promo';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char10_3" IS 'LA3License 1 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char10_4" IS 'LA3License 2 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char10_5" IS 'LA3License 3 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char255_1" IS 'LA3Member Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char50_10" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char50_10" IS 'LA3License 4 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char50_2" IS 'LA3License 1 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char50_3" IS 'LA3Languages';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char50_4" IS 'LA3License 1 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char50_5" IS 'LA3License 2 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char50_6" IS 'LA3License 2 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char50_7" IS 'LA3License 3 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char50_8" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char50_8" IS 'LA3License 3 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Char50_9" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Char50_9" IS 'LA3License 4 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_City" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_City" IS 'LA3Agent City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_DateTime_1" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_DateTime_1" IS 'LA3Membership Date';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Email" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Email" IS 'LA3Agent Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_HiddenUsCID" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_HiddenUsCID" IS 'LA3Agent Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber1" IS 'LA3Agent Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber1CountryCodeId" IS 'LA3Agent Phone1 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber1Desc" IS 'LA3AgentPhone1Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber1Ext" IS 'LA3Agent Phone1 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber2" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber2" IS 'LA3Agent Phone2 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber2CountryCodeId" IS 'LA3Agent Phone2 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber2Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber2Desc" IS 'LA3AgentPhone2Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber2Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber2Ext" IS 'LA3Agent Phone2 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber3" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber3" IS 'LA3Agent Phone3 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber3CountryCodeId" IS 'LA3Agent Phone3 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber3Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber3Desc" IS 'LA3AgentPhone3Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber3Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber3Ext" IS 'LA3Agent Phone3 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber4" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber4" IS 'LA3Agent Phone4 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber4CountryCodeId" IS 'LA3Agent Phone4 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber4Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber4Desc" IS 'LA3AgentPhone4Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber4Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber4Ext" IS 'LA3Agent Phone4 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber5" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber5" IS 'LA3Agent Phone5 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber5CountryCodeId" IS 'LA3Agent Phone5 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber5Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber5Desc" IS 'LA3AgentPhone5Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_PhoneNumber5Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_PhoneNumber5Ext" IS 'LA3Agent Phone5 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_State" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_State" IS 'LA3Agent State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Status" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Status" IS 'LA3Agent Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_UserFirstName" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_UserFirstName" IS 'LA3Agent First Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_UserLastName" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_UserLastName" IS 'LA3Agent Last Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_UserMI" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_UserMI" IS 'LA3Agent Middle Initial';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_WebPage" IS 'LA3Agent Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LA3_Zip" text;
    COMMENT ON COLUMN nneren2."Property"."LA3_Zip" IS 'LA3Agent Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Amenities_1" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Amenities_1" IS 'Amenities';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Amenities_159" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Amenities_159" IS 'Amenities';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Amenities_215" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Amenities_215" IS 'Amenities';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Amenities_234" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Amenities_234" IS 'Amenities';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Appliances_160" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Appliances_160" IS 'Appliances';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Appliances_2" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Appliances_2" IS 'Appliances';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AreaDescription_203" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AreaDescription_203" IS 'Area Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AreaDescription_204" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AreaDescription_204" IS 'Area Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AreaDescription_205" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AreaDescription_205" IS 'Area Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AreaDescription_206" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AreaDescription_206" IS 'Area Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AreaDescription_47" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AreaDescription_47" IS 'Area Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AreaDescription_73" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AreaDescription_73" IS 'Area Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AreaDescription_97" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AreaDescription_97" IS 'Area Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AuctionInfo_107" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AuctionInfo_107" IS 'Auction Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AuctionInfo_197" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AuctionInfo_197" IS 'Auction Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AuctionInfo_198" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AuctionInfo_198" IS 'Auction Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AuctionInfo_37" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AuctionInfo_37" IS 'Auction Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AuctionInfo_60" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AuctionInfo_60" IS 'Auction Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_AuctionInfo_84" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_AuctionInfo_84" IS 'Auction Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_BasementDescription_108" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_BasementDescription_108" IS 'Basement Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_BasementDescription_161" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_BasementDescription_161" IS 'Basement Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_BasementDescription_3" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_BasementDescription_3" IS 'Basement Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_BasementDescription_61" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_BasementDescription_61" IS 'Basement Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_BasementDescription_85" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_BasementDescription_85" IS 'Basement Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Construction_109" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Construction_109" IS 'Construction';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Construction_162" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Construction_162" IS 'Construction';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Construction_4" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Construction_4" IS 'Construction';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Construction_62" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Construction_62" IS 'Construction';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Construction_86" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Construction_86" IS 'Construction';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Contingencies_110" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Contingencies_110" IS 'Contingencies';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Contingencies_146" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Contingencies_146" IS 'Contingencies';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Contingencies_163" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Contingencies_163" IS 'Contingencies';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Contingencies_38" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Contingencies_38" IS 'Contingencies';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Contingencies_5" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Contingencies_5" IS 'Contingencies';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Contingencies_63" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Contingencies_63" IS 'Contingencies';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Contingencies_87" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Contingencies_87" IS 'Contingencies';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Cooling_111" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Cooling_111" IS 'Cooling';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Cooling_164" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Cooling_164" IS 'Cooling';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Cooling_237" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Cooling_237" IS 'Cooling';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Cooling_238" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Cooling_238" IS 'Cooling';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Cooling_6" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Cooling_6" IS 'Cooling';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Description_235" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Description_235" IS 'Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_DocumentsAvailable_112" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_DocumentsAvailable_112" IS 'Documents Available';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_DocumentsAvailable_165" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_DocumentsAvailable_165" IS 'Documents Available';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_DocumentsAvailable_250" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_DocumentsAvailable_250" IS 'Documents Available';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_DocumentsAvailable_251" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_DocumentsAvailable_251" IS 'Documents Available';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_DocumentsAvailable_252" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_DocumentsAvailable_252" IS 'Documents Available';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_DocumentsAvailable_39" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_DocumentsAvailable_39" IS 'Documents Available';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_DocumentsAvailable_7" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_DocumentsAvailable_7" IS 'Documents Available';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Driveway_113" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Driveway_113" IS 'Driveway';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Driveway_166" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Driveway_166" IS 'Driveway';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Driveway_255" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Driveway_255" IS 'Driveway';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Driveway_8" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Driveway_8" IS 'Driveway';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Electric_114" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Electric_114" IS 'Electric';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Electric_167" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Electric_167" IS 'Electric';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Electric_244" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Electric_244" IS 'Electric';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Electric_245" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Electric_245" IS 'Electric';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Electric_254" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Electric_254" IS 'Electric';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Electric_40" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Electric_40" IS 'Electric';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Electric_9" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Electric_9" IS 'Electric';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Equipment_10" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Equipment_10" IS 'Equipment';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Equipment_115" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Equipment_115" IS 'Equipment';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Equipment_147" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Equipment_147" IS 'Equipment';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Equipment_168" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Equipment_168" IS 'Equipment';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Equipment_41" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Equipment_41" IS 'Equipment';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Equipment_64" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Equipment_64" IS 'Equipment';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Equipment_88" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Equipment_88" IS 'Equipment';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_ExpensesOperating_116" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_ExpensesOperating_116" IS 'Expenses - Operating';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exposure_11" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exposure_11" IS 'Exposure';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exposure_117" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exposure_117" IS 'Exposure';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exposure_148" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exposure_148" IS 'Exposure';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exposure_169" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exposure_169" IS 'Exposure';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exposure_42" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exposure_42" IS 'Exposure';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exposure_65" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exposure_65" IS 'Exposure';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exposure_89" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exposure_89" IS 'Exposure';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exterior_118" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exterior_118" IS 'Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exterior_12" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exterior_12" IS 'Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exterior_170" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exterior_170" IS 'Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exterior_66" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exterior_66" IS 'Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Exterior_90" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Exterior_90" IS 'Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesAccessibility_13" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesAccessibility_13" IS 'Features - Accessibility';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesAccessibility_199" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesAccessibility_199" IS 'Features - Accessibility';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesAccessibility_210" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesAccessibility_210" IS 'Features - Accessibility';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesAccessibility_231" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesAccessibility_231" IS 'Features - Accessibility';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesAccessibility_232" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesAccessibility_232" IS 'Features - Accessibility';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesAssistLiving_171" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesAssistLiving_171" IS 'Features - Assist Living';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesCommercial_67" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesCommercial_67" IS 'Features - Commercial';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesCommercial_91" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesCommercial_91" IS 'Features - Commercial';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesExterior_14" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesExterior_14" IS 'Features - Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesExterior_172" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesExterior_172" IS 'Features - Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesExterior_212" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesExterior_212" IS 'Features - Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesExterior_213" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesExterior_213" IS 'Features - Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesExterior_214" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesExterior_214" IS 'Features - Exterior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesInterior_15" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesInterior_15" IS 'Features - Interior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeaturesInterior_173" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeaturesInterior_173" IS 'Features - Interior';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee2Includes_119" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee2Includes_119" IS 'Fee 2 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee2Includes_149" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee2Includes_149" IS 'Fee 2 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee2Includes_16" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee2Includes_16" IS 'Fee 2 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee2Includes_174" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee2Includes_174" IS 'Fee 2 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee2Includes_43" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee2Includes_43" IS 'Fee 2 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee2Includes_68" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee2Includes_68" IS 'Fee 2 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee2Includes_92" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee2Includes_92" IS 'Fee 2 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee3Includes_256" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee3Includes_256" IS 'Fee 3 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee3Includes_258" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee3Includes_258" IS 'Fee 3 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee3Includes_260" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee3Includes_260" IS 'Fee 3 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee3Includes_262" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee3Includes_262" IS 'Fee 3 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee3Includes_264" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee3Includes_264" IS 'Fee 3 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee3Includes_266" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee3Includes_266" IS 'Fee 3 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Fee3Includes_268" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Fee3Includes_268" IS 'Fee 3 Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludesLegacy_257" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludesLegacy_257" IS 'Fee Includes (Legacy)';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludesLegacy_259" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludesLegacy_259" IS 'Fee Includes (Legacy)';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludesLegacy_261" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludesLegacy_261" IS 'Fee Includes (Legacy)';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludesLegacy_263" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludesLegacy_263" IS 'Fee Includes (Legacy)';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludesLegacy_265" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludesLegacy_265" IS 'Fee Includes (Legacy)';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludesLegacy_267" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludesLegacy_267" IS 'Fee Includes (Legacy)';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludesLegacy_269" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludesLegacy_269" IS 'Fee Includes (Legacy)';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludes_120" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludes_120" IS 'Fee Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludes_150" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludes_150" IS 'Fee Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludes_17" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludes_17" IS 'Fee Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludes_175" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludes_175" IS 'Fee Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludes_44" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludes_44" IS 'Fee Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludes_69" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludes_69" IS 'Fee Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_FeeIncludes_93" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_FeeIncludes_93" IS 'Fee Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Financing_121" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Financing_121" IS 'Financing';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Financing_151" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Financing_151" IS 'Financing';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Financing_176" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Financing_176" IS 'Financing';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Financing_18" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Financing_18" IS 'Financing';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Financing_45" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Financing_45" IS 'Financing';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Financing_70" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Financing_70" IS 'Financing';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Financing_94" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Financing_94" IS 'Financing';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Flooring_122" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Flooring_122" IS 'Flooring';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Flooring_177" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Flooring_177" IS 'Flooring';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Flooring_19" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Flooring_19" IS 'Flooring';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Flooring_71" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Flooring_71" IS 'Flooring';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Flooring_95" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Flooring_95" IS 'Flooring';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Foundation_123" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Foundation_123" IS 'Foundation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Foundation_178" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Foundation_178" IS 'Foundation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Foundation_20" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Foundation_20" IS 'Foundation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Foundation_72" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Foundation_72" IS 'Foundation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Foundation_96" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Foundation_96" IS 'Foundation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_GarageDescription_124" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_GarageDescription_124" IS 'Garage Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_GarageDescription_179" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_GarageDescription_179" IS 'Garage Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_GarageDescription_21" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_GarageDescription_21" IS 'Garage Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_GarageType_125" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_GarageType_125" IS 'Garage Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_HeatFuel_126" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_HeatFuel_126" IS 'Heat Fuel';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_HeatFuel_180" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_HeatFuel_180" IS 'Heat Fuel';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_HeatFuel_22" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_HeatFuel_22" IS 'Heat Fuel';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_HeatFuel_240" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_HeatFuel_240" IS 'Heat Fuel';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_HeatFuel_241" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_HeatFuel_241" IS 'Heat Fuel';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Heating_127" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Heating_127" IS 'Heating';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Heating_181" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Heating_181" IS 'Heating';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Heating_23" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Heating_23" IS 'Heating';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Heating_236" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Heating_236" IS 'Heating';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Heating_239" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Heating_239" IS 'Heating';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_IncomeDataSource_128" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_IncomeDataSource_128" IS 'Income Data Source';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_LandRestrictions_46" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_LandRestrictions_46" IS 'Land Restrictions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_LotDescription_129" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_LotDescription_129" IS 'Lot Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_LotDescription_182" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_LotDescription_182" IS 'Lot Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_LotDescription_233" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_LotDescription_233" IS 'Lot Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_LotDescription_24" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_LotDescription_24" IS 'Lot Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_LotDescription_242" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_LotDescription_242" IS 'Lot Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_LotDescription_243" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_LotDescription_243" IS 'Lot Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_MarinaAmenities_152" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_MarinaAmenities_152" IS 'Marina Amenities';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Negotiable_183" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Negotiable_183" IS 'Negotiable';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Negotiable_211" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Negotiable_211" IS 'Negotiable';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Parking_130" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Parking_130" IS 'Parking';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Parking_153" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Parking_153" IS 'Parking';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Parking_184" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Parking_184" IS 'Parking';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Parking_25" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Parking_25" IS 'Parking';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Parking_48" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Parking_48" IS 'Parking';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Parking_74" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Parking_74" IS 'Parking';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Parking_98" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Parking_98" IS 'Parking';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_PermitStatus_49" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_PermitStatus_49" IS 'Permit Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Possession_131" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Possession_131" IS 'Possession';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Possession_154" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Possession_154" IS 'Possession';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Possession_185" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Possession_185" IS 'Possession';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Possession_26" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Possession_26" IS 'Possession';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Possession_50" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Possession_50" IS 'Possession';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_RentIncludes_132" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_RentIncludes_132" IS 'Rent Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_RentIncludes_186" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_RentIncludes_186" IS 'Rent Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Restrictions_133" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Restrictions_133" IS 'Restrictions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Restrictions_155" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Restrictions_155" IS 'Restrictions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Restrictions_187" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Restrictions_187" IS 'Restrictions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Restrictions_27" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Restrictions_27" IS 'Restrictions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roads_134" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roads_134" IS 'Roads';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roads_188" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roads_188" IS 'Roads';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roads_28" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roads_28" IS 'Roads';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roads_51" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roads_51" IS 'Roads';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roads_75" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roads_75" IS 'Roads';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roof_135" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roof_135" IS 'Roof';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roof_189" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roof_189" IS 'Roof';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roof_29" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roof_29" IS 'Roof';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roof_76" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roof_76" IS 'Roof';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Roof_99" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Roof_99" IS 'Roof';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SaleIncludes_100" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SaleIncludes_100" IS 'Sale Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SaleIncludes_207" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SaleIncludes_207" IS 'Sale Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SaleIncludes_208" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SaleIncludes_208" IS 'Sale Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SaleIncludes_209" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SaleIncludes_209" IS 'Sale Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SaleIncludes_77" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SaleIncludes_77" IS 'Sale Includes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Services_106" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Services_106" IS 'Services';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Services_143" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Services_143" IS 'Services';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Services_200" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Services_200" IS 'Services';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Services_201" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Services_201" IS 'Services';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Services_202" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Services_202" IS 'Services';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Services_57" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Services_57" IS 'Services';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Services_83" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Services_83" IS 'Services';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Sewer_136" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Sewer_136" IS 'Sewer';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Sewer_190" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Sewer_190" IS 'Sewer';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Sewer_248" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Sewer_248" IS 'Sewer';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Sewer_249" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Sewer_249" IS 'Sewer';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Sewer_30" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Sewer_30" IS 'Sewer';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Sewer_52" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Sewer_52" IS 'Sewer';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_ShoreRights_53" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_ShoreRights_53" IS 'Shore Rights';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_ShowingInstructions_101" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_ShowingInstructions_101" IS 'Showing Instructions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_ShowingInstructions_137" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_ShowingInstructions_137" IS 'Showing Instructions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_ShowingInstructions_156" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_ShowingInstructions_156" IS 'Showing Instructions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_ShowingInstructions_191" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_ShowingInstructions_191" IS 'Showing Instructions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_ShowingInstructions_31" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_ShowingInstructions_31" IS 'Showing Instructions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_ShowingInstructions_54" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_ShowingInstructions_54" IS 'Showing Instructions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_ShowingInstructions_78" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_ShowingInstructions_78" IS 'Showing Instructions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SlipAmenities_157" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SlipAmenities_157" IS 'Slip Amenities';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Style_138" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Style_138" IS 'Style';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Style_192" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Style_192" IS 'Style';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Style_32" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Style_32" IS 'Style';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SubPropertyTypeUse_103" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SubPropertyTypeUse_103" IS 'Sub Property Type Use';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SubPropertyTypeUse_80" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SubPropertyTypeUse_80" IS 'Sub Property Type Use';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SubPropertyType_102" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SubPropertyType_102" IS 'Sub Property Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SubPropertyType_79" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SubPropertyType_79" IS 'Sub Property Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SuitableUse_193" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SuitableUse_193" IS 'Suitable Use';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SuitableUse_253" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SuitableUse_253" IS 'Suitable Use';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_SuitableUse_33" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_SuitableUse_33" IS 'Suitable Use';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_TenantPays_270" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_TenantPays_270" IS 'Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_TenantPays_271" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_TenantPays_271" IS 'Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_TransportAccess_105" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_TransportAccess_105" IS 'Transport/Access';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_TransportAccess_82" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_TransportAccess_82" IS 'Transport/Access';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Trash_141" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Trash_141" IS 'Trash';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit1Info_142" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit1Info_142" IS 'Unit 1 Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit1TenantPays_140" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit1TenantPays_140" IS 'Unit 1 Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit2Info_216" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit2Info_216" IS 'Unit 2 Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit2TenantPays_223" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit2TenantPays_223" IS 'Unit 2 Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit3Info_217" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit3Info_217" IS 'Unit 3 Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit3TenantPays_224" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit3TenantPays_224" IS 'Unit 3 Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit4Info_218" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit4Info_218" IS 'Unit 4 Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit4TenantPays_225" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit4TenantPays_225" IS 'Unit 4 Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit5Info_219" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit5Info_219" IS 'Unit 5 Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit5TenantPays_226" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit5TenantPays_226" IS 'Unit 5 Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit6Info_220" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit6Info_220" IS 'Unit 6 Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit6TenantPays_227" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit6TenantPays_227" IS 'Unit 6 Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit7Info_221" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit7Info_221" IS 'Unit 7 Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit7TenantPays_228" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit7TenantPays_228" IS 'Unit 7 Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit8Info_222" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit8Info_222" IS 'Unit 8 Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Unit8TenantPays_229" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Unit8TenantPays_229" IS 'Unit 8 Tenant Pays';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_UnitInfo_230" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_UnitInfo_230" IS 'Unit Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_WaterHeater_145" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_WaterHeater_145" IS 'Water Heater';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_WaterHeater_196" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_WaterHeater_196" IS 'Water Heater';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_WaterHeater_36" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_WaterHeater_36" IS 'Water Heater';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_WaterHeater_59" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_WaterHeater_59" IS 'Water Heater';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Water_144" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Water_144" IS 'Water';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Water_195" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Water_195" IS 'Water';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Water_246" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Water_246" IS 'Water';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Water_247" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Water_247" IS 'Water';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Water_35" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Water_35" IS 'Water';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LFD_Water_58" text[];
    COMMENT ON COLUMN nneren2."Property"."LFD_Water_58" IS 'Water';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LMD_MP_Quality" decimal;
    COMMENT ON COLUMN nneren2."Property"."LMD_MP_Quality" IS 'Geo Quality';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_1" IS 'SqFt-Apx Unfn AG Source';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_10" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_10" IS 'Neren.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_11" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_11" IS 'Green Verificatn Metric 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_12" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_12" IS 'Green Verificatn Body 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_13" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_13" IS 'Green Verificatn Body 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_14" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_14" IS 'Green Verificatn Progrm 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_15" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_15" IS 'Unit 4 Lease Term';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_16" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_16" IS 'Color';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_17" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_17" IS 'Auction';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_18" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_18" IS 'Deed - Page';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_19" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_19" IS 'Deed - Recorded Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_2" IS 'School - High';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_20" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_20" IS 'Unit 4 Level Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_21" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_21" IS 'Unit 4 Occupant Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_22" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_22" IS 'Dock Height';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_23" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_23" IS 'Unit 4 Rental Amt Freq';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_24" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_24" IS 'Short Sale';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_25" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_25" IS 'Fuel Company';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_26" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_26" IS 'Garage Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_27" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_27" IS 'Green Verification Body';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_28" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_28" IS 'Half Bath Size';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_29" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_29" IS 'Green Verification Progrm';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_3" IS 'Auction Price Determnd By';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_30" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_30" IS 'Green Verification Rating';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_4" IS 'Auctioneer License Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_5" IS 'Basement Access Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_6" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_6" IS 'Cable Company';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_7" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_7" IS 'RPR';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_8" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_8" IS 'ListHub';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char10_9" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char10_9" IS 'Realtor.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_1" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_1" IS 'Delayed Showing';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_10" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_10" IS 'NonAgency Facilitator Typ';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_11" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_11" IS 'Mobile Co-Op';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_12" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_12" IS 'Covenants';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_13" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_13" IS 'Unit 5 Rental Agreement';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_14" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_14" IS 'Listed in other Prop Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_15" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_15" IS 'Green Verificatn NewCon 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_16" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_16" IS 'Assessments - Special';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_17" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_17" IS 'Easements';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_18" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_18" IS 'Flood Zone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_19" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_19" IS 'Unit 6 Rental Agreement';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_2" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_2" IS 'Garage';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_3" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_3" IS 'Unit 2 Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_4" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_4" IS 'Appraisal Complete';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_5" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_5" IS 'Mobile Park Approval';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_6" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_6" IS 'Basement';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_8" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_8" IS 'SqFt-Apx Unfn BG Source';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char1_9" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char1_9" IS 'Unit 4 Rental Agremnt';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_1" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_1" IS 'Room 16 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_10" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_10" IS 'Block';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_11" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_11" IS 'Deed - Book';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_12" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_12" IS 'Lot';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_13" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_13" IS 'Electric Company';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_14" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_14" IS 'Footprint';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_15" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_15" IS 'Full Bath Size';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_16" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_16" IS 'Transactional Broker';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_17" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_17" IS 'Zoning';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_18" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_18" IS 'Tax Class';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_19" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_19" IS 'SPAN Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_2" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_2" IS 'Auction Time';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_20" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_20" IS 'Room 18 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_21" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_21" IS 'Room 19 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_22" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_22" IS 'Village/Dist/Locale';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_23" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_23" IS 'Room 20 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_24" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_24" IS 'Listing Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_25" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_25" IS 'Management Company';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_26" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_26" IS 'Unit 6 Lease Term';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_27" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_27" IS 'Management Company Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_28" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_28" IS 'Green Verificatn Progrm 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_29" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_29" IS 'Room 21 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_3" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_3" IS 'Occupant Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_30" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_30" IS 'Phone Company';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_4" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_4" IS 'Owner Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_5" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_5" IS 'Auctioneer - Responsible';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_6" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_6" IS 'Bath 3/4 Size';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_7" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_7" IS 'Map';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_8" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_8" IS 'Condo Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char25_9" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char25_9" IS 'Room 17 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char50_1" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char50_1" IS 'Title Company';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char50_2" IS 'Unit 4 Occupant Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char50_3" IS 'Parcel ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char50_4" IS 'Development / Subdivision';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."LM_Char50_5" IS 'Unit 6 Occupant Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_1" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_1" IS 'Date - Terminated';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_10" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_10" IS 'Date - Available';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_2" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_2" IS 'Date - Active Under Contr';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_3" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_3" IS 'Date - Auction';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_4" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_4" IS 'Date - Deleted';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_5" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_5" IS 'Date - Withdrawn';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_6" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_6" IS 'Date - Photo';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_7" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_7" IS 'Date - Leased';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_8" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_8" IS 'Date - Document';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_DateTime_9" text;
    COMMENT ON COLUMN nneren2."Property"."LM_DateTime_9" IS 'Date - Showings Begin';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_1" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_1" IS 'Fee 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_10" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_10" IS 'Fee';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_11" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_11" IS 'Fee 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_12" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_12" IS 'Unit 1 Deposit';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_13" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_13" IS 'Unit 1 Rental Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_14" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_14" IS 'Unit 7 Rental Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_15" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_15" IS 'Unit 2 Deposit';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_16" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_16" IS 'Unit 2 Rental Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_17" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_17" IS 'Unit 3 Deposit';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_18" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_18" IS 'Unit 3 Rental Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_19" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_19" IS 'Concession - Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_2" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_2" IS 'Tax Rate';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_20" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_20" IS 'Unit 4 Deposit';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_21" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_21" IS 'SqFt-Apx Fin Above Grade';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_22" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_22" IS 'SqFt-Apx Fin Below Grade';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_23" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_23" IS 'Unit 4 Rental Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_24" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_24" IS 'Deposit';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_25" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_25" IS 'Unit 6 Rental Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_26" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_26" IS 'Price Per SqFt';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_27" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_27" IS 'Unit 5 Deposit';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_28" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_28" IS 'Unit 5 Rental Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_29" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_29" IS 'Tax - Gross Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_3" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_3" IS 'Net Income';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_30" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_30" IS 'Unit 6 Deposit';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_4" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_4" IS 'Unit 7 Deposit';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_5" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_5" IS 'Buyer Agency';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_6" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_6" IS 'Unit 8 Rental Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_7" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_7" IS 'NonAgency Facilitator';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_8" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_8" IS 'Garage Capacity';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Dec_9" decimal;
    COMMENT ON COLUMN nneren2."Property"."LM_Dec_9" IS 'SubAgency';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_1" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_1" IS 'Baths - Full';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_10" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_10" IS 'Unit 4 Baths';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_11" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_11" IS 'Unit 2 Baths';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_12" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_12" IS 'Total 2 BR Units';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_13" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_13" IS 'Bedrooms - Level 1';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_14" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_14" IS 'Unit 1 Baths';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_15" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_15" IS 'Unit 1 Bedrooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_16" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_16" IS 'Rooms - Total';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_17" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_17" IS 'Unit 5 Baths';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_18" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_18" IS 'Total Units';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_19" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_19" IS 'Unit 5 Bedrooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_2" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_2" IS 'Baths - 1/2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_20" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_20" IS 'Unit 5 Rooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_3" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_3" IS 'Baths - 1/4';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_4" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_4" IS 'Baths - 3/4';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_5" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_5" IS 'Unit 7 Rooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_6" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_6" IS 'Bedrooms - Total';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_7" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_7" IS 'Unit 3 Baths';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_8" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_8" IS 'Unit 3 Rooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int1_9" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int1_9" IS 'Unit 8 Baths';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_1" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_1" IS 'Assessment Year';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_10" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_10" IS 'Bedrooms - Level 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_11" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_11" IS 'Bedrooms - Level 4';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_13" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_13" IS 'Green Verificatn Year 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_14" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_14" IS 'Green Verificatn Year 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_15" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_15" IS 'Total Gas Meters';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_16" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_16" IS 'Unit 4 Bedrooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_17" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_17" IS 'Floor Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_18" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_18" IS 'Max Length';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_19" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_19" IS 'Total Leases';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_2" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_2" IS 'Green Verification Year';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_20" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_20" IS 'Total 3+ BR Units';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_3" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_3" IS 'Unit 5 Apx Sqft';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_4" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_4" IS 'Year Built';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_5" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_5" IS 'Unit 6 Baths';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_6" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_6" IS 'Max Width';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_7" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_7" IS 'Unit 6 Bedrooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_8" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_8" IS 'Bedrooms - Basement';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int2_9" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int2_9" IS 'Bedrooms - Level 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_1" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_1" IS 'Assessment Amount';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_10" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_10" IS 'Expenses - Management';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_11" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_11" IS 'Gross Income';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_12" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_12" IS 'Expenses - Maintenance';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_13" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_13" IS 'Deeds Ã¢ÂÂ Total';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_14" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_14" IS 'SqFt-Apx Tot Below Grade';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_15" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_15" IS 'Total Electric Meters';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_16" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_16" IS 'SqFt-Apx Total Finished';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_17" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_17" IS 'Total Full Baths';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_18" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_18" IS 'Expenses - Taxes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_19" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_19" IS 'Total Heat Units';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_2" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_2" IS 'Price - Rent 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_20" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_20" IS 'Expenses - Snow';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_3" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_3" IS 'Price - Rent 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_4" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_4" IS 'Expenses - Annual';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_5" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_5" IS 'SqFt-Apx Total';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_7" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_7" IS 'Road Frontage Length';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_8" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_8" IS 'Lot - Sqft';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_Int4_9" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_Int4_9" IS 'Expenses - Insurance';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char100_1" IS 'Concession - Comments';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char100_2" IS 'Green Verification URL';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char100_3" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char100_3" IS 'Green Verificatn URL 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char100_4" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char100_4" IS 'Green Verificatn URL 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char100_5" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char100_5" IS 'Latitude';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char100_6" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char100_6" IS 'Longitude';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_31" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_31" IS 'Green Verificatn Metric 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_32" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_32" IS 'School - District';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_33" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_33" IS 'Unit 4 Showing Instructn';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_34" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_34" IS 'Unit 4 Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_35" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_35" IS 'Lease Term';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_36" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_36" IS 'Unit 1 Level Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_37" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_37" IS 'Unit 1 Occupant Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_38" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_38" IS 'Fee 3 Frequency';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_39" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_39" IS 'Unit 1 Rental Amt Freq';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_40" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_40" IS 'Unit 1 Showing Instructn';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_41" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_41" IS 'Unit 1 Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_42" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_42" IS 'Green Verificatn Status 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_43" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_43" IS 'Unit 2 Level Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_44" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_44" IS 'Unit 2 Occupant Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_45" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_45" IS 'Green Verificatn Rating 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_46" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_46" IS 'Unit 2 Rental Amt Freq';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_47" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_47" IS 'Unit 2 Showing Instructn';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_48" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_48" IS 'Tax Year';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_49" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_49" IS 'Green Verificatn Status 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_50" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_50" IS 'Unit 3 Level Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_51" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_51" IS 'Unit 3 Occupant Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_52" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_52" IS 'State-';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_53" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_53" IS 'Unit 3 Rental Amt Freq';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_54" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_54" IS 'Water Body Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_55" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_55" IS 'Water Body Access';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_57" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_57" IS 'Green Verificatn Rating 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_58" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_58" IS 'ROW - Length';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_59" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_59" IS 'ROW - Width';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_60" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_60" IS 'Lease Agent';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_61" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_61" IS 'Residence';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_62" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_62" IS 'Green Verification Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_63" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_63" IS 'Unit 5 Lease Term';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_64" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_64" IS 'Unit 3 Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_65" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_65" IS 'MLS Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_66" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_66" IS 'Unit 3 Showing Instructn';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_67" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_67" IS 'County DD';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_68" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_68" IS 'School - Elementary';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_69" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_69" IS 'School - Middle/Jr';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char10_70" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char10_70" IS 'Plan Survey Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_21" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_21" IS 'SubAgency Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_22" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_22" IS 'Transactional Broker Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_23" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_23" IS 'Gas - Natural Available';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_24" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_24" IS 'Unit 7 Rental Agreement';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_25" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_25" IS 'Unit 1 Rental Agremnt';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_26" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_26" IS 'Surveyed';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_27" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_27" IS 'Taxes TBD';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_28" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_28" IS 'Separate Utilities';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_29" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_29" IS 'Comp Only';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_30" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_30" IS 'Show Address';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_31" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_31" IS 'Comp Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_32" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_32" IS 'Unit 2 Rental Agremnt';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_33" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_33" IS 'Green Verificatn NewCon 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_34" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_34" IS 'Unit 3 Rental Agremnt';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_35" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_35" IS 'Green Verification New Co';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_36" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_36" IS 'Water Restrictions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_38" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_38" IS 'Variable Commission';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_39" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_39" IS 'ROW - Parcel Access';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_40" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_40" IS 'ROW to other Parcel';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_41" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_41" IS 'Concessions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_43" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_43" IS 'SqFt-Apx Fin AG Source';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_44" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_44" IS 'Current Use';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_45" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_45" IS 'Lease';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_46" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_46" IS 'Investment Info';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_47" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_47" IS 'SqFt-Apx Fin BG Source';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_48" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_48" IS 'SqFt-Apx Tot BG Source';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_49" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_49" IS 'Unit 8 Rental Agreement';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_50" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_50" IS 'Other';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_51" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_51" IS 'Partner Info Net';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_52" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_52" IS 'Partner Info Net2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_53" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_53" IS 'Planned Urban Developmt';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_54" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_54" IS 'Pre-Construction';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_55" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_55" IS 'Previsite Virtual Tour';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_56" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_56" IS 'See Non-Public Remarks';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_57" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_57" IS 'Rented';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_58" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_58" IS 'Resort';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char1_60" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char1_60" IS 'Road Frontage';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_1" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_1" IS 'Appraiser';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_10" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_10" IS 'Unit 6 Style';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_11" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_11" IS 'Room 1 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_12" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_12" IS 'Room 2 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_13" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_13" IS 'Room 3 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_14" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_14" IS 'Room 4 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_15" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_15" IS 'Room 5 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_16" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_16" IS 'Room 6 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_17" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_17" IS 'Room 7 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_18" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_18" IS 'Room 8 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_19" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_19" IS 'Room 9 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_2" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_2" IS 'Unit 5 Occupant Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_20" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_20" IS 'Room 10 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_21" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_21" IS 'Room 11 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_22" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_22" IS 'Room 12 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_23" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_23" IS 'Room 13 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_24" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_24" IS 'Room 14 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_25" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_25" IS 'Room 15 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_26" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_26" IS 'Green Verification Metric';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_27" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_27" IS 'Showing Service';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_28" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_28" IS 'Foreclosed/Bank-Owned/REO';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_29" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_29" IS 'Unit 2 Occupant Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_3" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_3" IS 'Room 22 Dimensions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_30" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_30" IS 'Unit 3 Style';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_4" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_4" IS 'Marina Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_5" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_5" IS 'Unit 6 Showing Instructn';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_6" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_6" IS 'Appraiser Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_7" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_7" IS 'Unofficial City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_8" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_8" IS 'Unit 6 Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char30_9" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char30_9" IS 'Property ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_10" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_10" IS 'Owner Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_11" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_11" IS 'Buyer Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_12" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_12" IS 'Primary MLS#';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_13" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_13" IS 'Surveyed By';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_14" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_14" IS 'CRS Auto Pop #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_15" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_15" IS 'Unit 5 Occupant Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_16" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_16" IS 'Mobile Park Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_25" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_25" IS 'Water Body Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_6" IS 'Unit 7 Occupant Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_7" IS 'Unit 8 Occupant Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_8" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_8" IS 'Construction Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char50_9" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char50_9" IS 'Occupant Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_1" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_1" IS 'Room 21 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_10" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_10" IS 'Room 21 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_11" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_11" IS 'Room 22 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_12" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_12" IS 'Occupant Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_13" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_13" IS 'Zillow Group';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_14" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_14" IS 'Room 1 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_15" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_15" IS 'Room 2 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_16" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_16" IS 'Room 3 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_17" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_17" IS 'Room 4 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_18" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_18" IS 'Room 5 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_19" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_19" IS 'Room 6 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_2" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_2" IS 'Rental Amount Frequency';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_20" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_20" IS 'Room 7 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_21" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_21" IS 'Room 8 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_22" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_22" IS 'Room 9 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_23" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_23" IS 'Room 10 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_24" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_24" IS 'Room 11 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_25" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_25" IS 'Room 12 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_26" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_26" IS 'Room 13 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_27" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_27" IS 'Room 14 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_28" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_28" IS 'Room 15 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_29" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_29" IS 'Room 16 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_3" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_3" IS 'Buyer Agency Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_30" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_30" IS 'Room 17 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_31" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_31" IS 'Room 18 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_32" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_32" IS 'Room 19 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_33" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_33" IS 'Room 20 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_34" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_34" IS 'Room 1 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_35" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_35" IS 'Room 2 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_36" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_36" IS 'Room 3 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_37" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_37" IS 'Room 4 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_38" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_38" IS 'Room 5 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_39" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_39" IS 'Room 6 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_4" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_4" IS 'Fee 2 Frequency';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_40" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_40" IS 'Room 7 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_41" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_41" IS 'Room 8 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_42" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_42" IS 'Room 9 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_43" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_43" IS 'Room 10 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_44" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_44" IS 'Room 11 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_45" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_45" IS 'Room 12 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_46" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_46" IS 'Room 13 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_47" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_47" IS 'Room 14 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_48" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_48" IS 'Room 15 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_49" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_49" IS 'Room 16 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_5" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_5" IS 'Fee Frequency';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_50" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_50" IS 'Room 18 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_51" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_51" IS 'Room 17 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_52" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_52" IS 'Room 19 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_53" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_53" IS 'Room 20 Level';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_54" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_54" IS 'Total Stories';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_55" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_55" IS 'Rental Amount Frequency 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_56" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_56" IS 'Input of Owner Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_57" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_57" IS 'Land Gains';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_58" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_58" IS 'Lease Office';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_59" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_59" IS 'Owned Land';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_6" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_6" IS 'Room 22 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_60" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_60" IS 'Seasonal';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_7" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_7" IS 'Rental Amount Frequency 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_8" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_8" IS 'Building Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_char5_9" text;
    COMMENT ON COLUMN nneren2."Property"."LM_char5_9" IS 'Listing Service';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_21" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_21" IS 'SqFt-Apx Unfn Above Grade';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_22" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_22" IS 'Maximum Occupancy';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_23" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_23" IS 'Total Refrigerators';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_24" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_24" IS 'Total Water Heaters';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_25" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_25" IS 'SqFt-Apx Unfn Below Grade';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_26" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_26" IS 'Unit 8 Bedrooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_27" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_27" IS 'Unit 1 Apx Sqft';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_28" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_28" IS 'Expenses - Trash';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_29" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_29" IS 'Expenses - Water';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_30" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_30" IS 'Unit 1 Rooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_31" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_31" IS 'Unit 8 Rooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_32" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_32" IS 'Unit 2 Apx Sqft';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_33" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_33" IS 'Expenses - Miscellaneous';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_34" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_34" IS 'Unit 2 Bedrooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_35" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_35" IS 'Unit 7 Apx Sqft';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_36" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_36" IS 'Baths - Total';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_37" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_37" IS 'Unit 3 Apx Sqft';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_38" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_38" IS 'Unit 8 Apx Sqft';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_39" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_39" IS 'Unit 3 Bedrooms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LM_int4_40" integer;
    COMMENT ON COLUMN nneren2."Property"."LM_int4_40" IS 'Water Frontage Length';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."LO1_BranchOfOrgID" IS 'LO1Main Office ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char100_1" IS 'LO1Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char100_2" IS 'LO1Billing Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char10_1" IS 'LO1Zillow Group';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char10_2" IS 'LO1Previsite Virtual Tour';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char10_3" IS 'LO1RPR';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char10_4" IS 'LO1ListHub';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char10_5" IS 'LO1NEREN.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char255_1" IS 'LO1Office Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char50_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char50_1" IS 'LO1Billing Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char50_2" IS 'LO1Concessions Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char50_3" IS 'LO1Billing Email 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char50_4" IS 'LO1Realtor.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char50_5" IS 'LO1Buyer Name Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char50_6" IS 'LO1Contact Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_Char50_7" IS 'LO1Contact Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_EMail" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_EMail" IS 'LO1Office Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_HiddenOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."LO1_HiddenOrgID" IS 'LO1Office Identifier';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_HiddenOtyID" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_HiddenOtyID" IS 'LO1Office Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_OrgAddress2" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_OrgAddress2" IS 'LO1Office Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_OrgAddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_OrgAddressStreet" IS 'LO1OffceAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_OrgCity" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_OrgCity" IS 'LO1Office City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_OrgState" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_OrgState" IS 'LO1Office State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_OrgZip" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_OrgZip" IS 'LO1Office Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_OrganizationName" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_OrganizationName" IS 'LO1Office Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_PhoneNumber1" IS 'LO1Office Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_PhoneNumber1CountryCodeId" IS 'LO1OfficePhone1CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_PhoneNumber1Desc" IS 'LO1OfficePhone1Descriptin';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_PhoneNumber1Ext" IS 'LO1OfficePhone1Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_ShortName" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_ShortName" IS 'LO1Office Abbreviation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_WebPage" IS 'LO1Office Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO1_board_id" text;
    COMMENT ON COLUMN nneren2."Property"."LO1_board_id" IS 'LO1Board ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_BranchOfOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."LO2_BranchOfOrgID" IS 'LO2Main Office ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char100_1" IS 'LO2Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char100_2" IS 'LO2Billing Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char10_1" IS 'LO2Zillow Group';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char10_2" IS 'LO2Previsite Virtual Tour';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char10_3" IS 'LO2RPR';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char10_4" IS 'LO2ListHub';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char10_5" IS 'LO2NEREN.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char255_1" IS 'LO2Office Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char50_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char50_1" IS 'LO2Billing Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char50_2" IS 'LO2Concessions Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char50_3" IS 'LO2Billing Email 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char50_4" IS 'LO2Realtor.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char50_5" IS 'LO2Buyer Name Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char50_6" IS 'LO2Contact Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_Char50_7" IS 'LO2Contact Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_EMail" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_EMail" IS 'LO2Office Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_HiddenOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."LO2_HiddenOrgID" IS 'LO2Office Identifier';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_HiddenOtyID" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_HiddenOtyID" IS 'LO2Office Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_OrgAddress2" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_OrgAddress2" IS 'LO2Office Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_OrgAddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_OrgAddressStreet" IS 'LO2OffceAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_OrgCity" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_OrgCity" IS 'LO2Office City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_OrgState" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_OrgState" IS 'LO2Office State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_OrgZip" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_OrgZip" IS 'LO2Office Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_OrganizationName" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_OrganizationName" IS 'LO2Office Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_PhoneNumber1" IS 'LO2Office Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_PhoneNumber1CountryCodeId" IS 'LO2OfficePhone1CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_PhoneNumber1Desc" IS 'LO2OfficePhone1Descriptin';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_PhoneNumber1Ext" IS 'LO2OfficePhone1Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_ShortName" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_ShortName" IS 'LO2Office Abbreviation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_WebPage" IS 'LO2Office Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO2_board_id" text;
    COMMENT ON COLUMN nneren2."Property"."LO2_board_id" IS 'LO2Board ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_BranchOfOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."LO3_BranchOfOrgID" IS 'LO3Main Office ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char100_1" IS 'LO3Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char100_2" IS 'LO3Billing Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char10_1" IS 'LO3Zillow Group';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char10_2" IS 'LO3Previsite Virtual Tour';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char10_3" IS 'LO3RPR';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char10_4" IS 'LO3ListHub';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char10_5" IS 'LO3NEREN.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char255_1" IS 'LO3Office Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char50_1" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char50_1" IS 'LO3Billing Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char50_2" IS 'LO3Concessions Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char50_3" IS 'LO3Billing Email 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char50_4" IS 'LO3Realtor.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char50_5" IS 'LO3Buyer Name Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char50_6" IS 'LO3Contact Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_Char50_7" IS 'LO3Contact Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_EMail" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_EMail" IS 'LO3Office Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_HiddenOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."LO3_HiddenOrgID" IS 'LO3Office Identifier';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_HiddenOtyID" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_HiddenOtyID" IS 'LO3Office Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_OrgAddress2" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_OrgAddress2" IS 'LO3Office Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_OrgAddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_OrgAddressStreet" IS 'LO3OffceAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_OrgCity" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_OrgCity" IS 'LO3Office City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_OrgState" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_OrgState" IS 'LO3Office State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_OrgZip" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_OrgZip" IS 'LO3Office Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_OrganizationName" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_OrganizationName" IS 'LO3Office Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_PhoneNumber1" IS 'LO3Office Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_PhoneNumber1CountryCodeId" IS 'LO3OfficePhone1CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_PhoneNumber1Desc" IS 'LO3OfficePhone1Descriptin';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_PhoneNumber1Ext" IS 'LO3OfficePhone1Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_ShortName" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_ShortName" IS 'LO3Office Abbreviation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_WebPage" IS 'LO3Office Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LO3_board_id" text;
    COMMENT ON COLUMN nneren2."Property"."LO3_board_id" IS 'LO3Board ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LR_remarks11" text;
    COMMENT ON COLUMN nneren2."Property"."LR_remarks11" IS 'Remarks - Non-Public';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LR_remarks1919" text;
    COMMENT ON COLUMN nneren2."Property"."LR_remarks1919" IS 'Remarks - Intra-Firm';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LR_remarks2020" text;
    COMMENT ON COLUMN nneren2."Property"."LR_remarks2020" IS 'Directions';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LR_remarks22" text;
    COMMENT ON COLUMN nneren2."Property"."LR_remarks22" IS 'Remarks - Public';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LR_remarks33" text;
    COMMENT ON COLUMN nneren2."Property"."LR_remarks33" IS 'Remarks - Advertising';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LR_remarks44" text;
    COMMENT ON COLUMN nneren2."Property"."LR_remarks44" IS 'Remarks - MLS Staff';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LR_remarks77" text;
    COMMENT ON COLUMN nneren2."Property"."LR_remarks77" IS 'Items Excluded';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LV_vow_address" text;
    COMMENT ON COLUMN nneren2."Property"."LV_vow_address" IS 'Display Address - Interne';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LV_vow_avm" text;
    COMMENT ON COLUMN nneren2."Property"."LV_vow_avm" IS 'Allow AVM';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LV_vow_comment" text;
    COMMENT ON COLUMN nneren2."Property"."LV_vow_comment" IS 'Allow Blogging';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "LV_vow_include" text;
    COMMENT ON COLUMN nneren2."Property"."LV_vow_include" IS 'Display Listing- Internet';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_Address" text;
    COMMENT ON COLUMN nneren2."Property"."L_Address" IS 'Address';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_Address2" text;
    COMMENT ON COLUMN nneren2."Property"."L_Address2" IS 'Unit/Lot #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_AddressDirection" text;
    COMMENT ON COLUMN nneren2."Property"."L_AddressDirection" IS 'Address Direction';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_AddressNumber" text;
    COMMENT ON COLUMN nneren2."Property"."L_AddressNumber" IS 'Address Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_AddressSearchNumber" integer;
    COMMENT ON COLUMN nneren2."Property"."L_AddressSearchNumber" IS 'Address Search Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_AddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."L_AddressStreet" IS 'Address Street';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_Area" text;
    COMMENT ON COLUMN nneren2."Property"."L_Area" IS 'County';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_AskingPrice" integer;
    COMMENT ON COLUMN nneren2."Property"."L_AskingPrice" IS 'Price - Rent';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_City" text;
    COMMENT ON COLUMN nneren2."Property"."L_City" IS 'City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_Class" text;
    COMMENT ON COLUMN nneren2."Property"."L_Class" IS 'Property Class';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ClosingDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_ClosingDate" IS 'Date - Closed';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ContractDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_ContractDate" IS 'Date - Pending';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_DOM" integer;
    COMMENT ON COLUMN nneren2."Property"."L_DOM" IS 'DOM';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_DOMLS" integer;
    COMMENT ON COLUMN nneren2."Property"."L_DOMLS" IS 'DOMLS';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_DisplayId" text;
    COMMENT ON COLUMN nneren2."Property"."L_DisplayId" IS 'MLS #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ExpirationDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_ExpirationDate" IS 'Date - Expiration';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_FirstPhotoAddDt" text;
    COMMENT ON COLUMN nneren2."Property"."L_FirstPhotoAddDt" IS 'First Photo Add Timestamp';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_HotSheetDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_HotSheetDate" IS 'HotSheet Date';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_HowSold" text;
    COMMENT ON COLUMN nneren2."Property"."L_HowSold" IS 'Financial Terms';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_IdxInclude" text;
    COMMENT ON COLUMN nneren2."Property"."L_IdxInclude" IS 'IDX Include';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_InputDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_InputDate" IS 'Date - Entered';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_LastDocUpdate" text;
    COMMENT ON COLUMN nneren2."Property"."L_LastDocUpdate" IS 'Doc Timestamp';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_Last_Photo_updt" text;
    COMMENT ON COLUMN nneren2."Property"."L_Last_Photo_updt" IS 'PhotoTimestamp';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ListAgent1" integer;
    COMMENT ON COLUMN nneren2."Property"."L_ListAgent1" IS 'List Agent';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ListAgent2" integer;
    COMMENT ON COLUMN nneren2."Property"."L_ListAgent2" IS 'Co List Agent';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ListAgent3" integer;
    COMMENT ON COLUMN nneren2."Property"."L_ListAgent3" IS 'Original List Agent';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ListOffice1" integer;
    COMMENT ON COLUMN nneren2."Property"."L_ListOffice1" IS 'Listing Office';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ListOffice2" integer;
    COMMENT ON COLUMN nneren2."Property"."L_ListOffice2" IS 'Co List Office';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ListOffice3" integer;
    COMMENT ON COLUMN nneren2."Property"."L_ListOffice3" IS 'Original List Office';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ListingDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_ListingDate" IS 'Date - MLS List';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_ListingID" integer PRIMARY KEY;
    COMMENT ON COLUMN nneren2."Property"."L_ListingID" IS 'System ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_NumAcres" decimal;
    COMMENT ON COLUMN nneren2."Property"."L_NumAcres" IS 'Lot - Acres';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_NumUnits" integer;
    COMMENT ON COLUMN nneren2."Property"."L_NumUnits" IS 'Units Per Building';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_OffMarketDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_OriginalPrice" integer;
    COMMENT ON COLUMN nneren2."Property"."L_OriginalPrice" IS 'Price - Original';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_PictureCount" integer;
    COMMENT ON COLUMN nneren2."Property"."L_PictureCount" IS 'Photo Count';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_PriceDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_PriceDate" IS 'Date - Price Change';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_PricePerAcre" integer;
    COMMENT ON COLUMN nneren2."Property"."L_PricePerAcre" IS 'Price Per Acre';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_PricePerSQFT" decimal;
    COMMENT ON COLUMN nneren2."Property"."L_PricePerSQFT" IS 'Price Per SQFT';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_SaleRent" text;
    COMMENT ON COLUMN nneren2."Property"."L_SaleRent" IS 'Sale/Rent';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_SellingAgent1" integer;
    COMMENT ON COLUMN nneren2."Property"."L_SellingAgent1" IS 'Selling Agent';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_SellingAgent3" integer;
    COMMENT ON COLUMN nneren2."Property"."L_SellingAgent3" IS 'Original Selling Agent';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_SellingOffice1" integer;
    COMMENT ON COLUMN nneren2."Property"."L_SellingOffice1" IS 'Selling Office';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_SellingOffice3" integer;
    COMMENT ON COLUMN nneren2."Property"."L_SellingOffice3" IS 'Original Selling Office';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_SoldPrice" integer;
    COMMENT ON COLUMN nneren2."Property"."L_SoldPrice" IS 'Price - Rented';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_State" text;
    COMMENT ON COLUMN nneren2."Property"."L_State" IS 'State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_Status" text;
    COMMENT ON COLUMN nneren2."Property"."L_Status" IS 'Listing Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_StatusCatID" text;
    COMMENT ON COLUMN nneren2."Property"."L_StatusCatID" IS 'Status Category';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_StatusDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_StatusDate" IS 'Date - Status Change';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_StatusID" text;
    COMMENT ON COLUMN nneren2."Property"."L_StatusID" IS 'Status Detail';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_StreetDesignationId" text;
    COMMENT ON COLUMN nneren2."Property"."L_StreetDesignationId" IS 'Street Designation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_SystemPrice" integer;
    COMMENT ON COLUMN nneren2."Property"."L_SystemPrice" IS 'Search Price';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_Type_" text;
    COMMENT ON COLUMN nneren2."Property"."L_Type_" IS 'Property Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_UpdateDate" text;
    COMMENT ON COLUMN nneren2."Property"."L_UpdateDate" IS 'Date - Updated';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_Zip" text;
    COMMENT ON COLUMN nneren2."Property"."L_Zip" IS 'Zip Code';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "L_listings_associated_doc_count" integer;
    COMMENT ON COLUMN nneren2."Property"."L_listings_associated_doc_count" IS 'Attachment Count';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Address2" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Address2" IS 'SA1Agent Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_AddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_AddressStreet" IS 'SA1AgentAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char100_1" IS 'SA1Member Bio';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char100_2" IS 'SA1Member Designations';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char100_3" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char100_3" IS 'SA1Member Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char100_4" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char100_4" IS 'SA1License 4 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char100_5" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char100_5" IS 'SA1Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char10_1" IS 'SA1Member Half Price';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char10_2" IS 'SA1Promo';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char10_3" IS 'SA1License 1 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char10_4" IS 'SA1License 2 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char10_5" IS 'SA1License 3 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char255_1" IS 'SA1Member Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char50_10" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char50_10" IS 'SA1License 4 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char50_2" IS 'SA1License 1 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char50_3" IS 'SA1Languages';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char50_4" IS 'SA1License 1 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char50_5" IS 'SA1License 2 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char50_6" IS 'SA1License 2 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char50_7" IS 'SA1License 3 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char50_8" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char50_8" IS 'SA1License 3 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Char50_9" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Char50_9" IS 'SA1License 4 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_City" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_City" IS 'SA1Agent City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_DateTime_1" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_DateTime_1" IS 'SA1Membership Date';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Email" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Email" IS 'SA1Agent Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_HiddenUsCID" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_HiddenUsCID" IS 'SA1Agent Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber1" IS 'SA1Agent Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber1CountryCodeId" IS 'SA1Agent Phone1 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber1Desc" IS 'SA1AgentPhone1Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber1Ext" IS 'SA1Agent Phone1 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber2" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber2" IS 'SA1Agent Phone2 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber2CountryCodeId" IS 'SA1Agent Phone2 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber2Desc" IS 'SA1AgentPhone2Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber2Ext" IS 'SA1Agent Phone2 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber3" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber3" IS 'SA1Agent Phone3 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber3CountryCodeId" IS 'SA1Agent Phone3 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber3Desc" IS 'SA1AgentPhone3Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber3Ext" IS 'SA1Agent Phone3 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber4" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber4" IS 'SA1Agent Phone4 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber4CountryCodeId" IS 'SA1Agent Phone4 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber4Desc" IS 'SA1AgentPhone4Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber4Ext" IS 'SA1Agent Phone4 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber5" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber5" IS 'SA1Agent Phone5 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber5CountryCodeId" IS 'SA1Agent Phone5 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber5Desc" IS 'SA1AgentPhone5Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_PhoneNumber5Ext" IS 'SA1Agent Phone5 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_State" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_State" IS 'SA1Agent State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Status" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Status" IS 'SA1Agent Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_UserFirstName" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_UserFirstName" IS 'SA1Agent First Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_UserLastName" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_UserLastName" IS 'SA1Agent Last Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_UserMI" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_UserMI" IS 'SA1Agent Middle Initial';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_WebPage" IS 'SA1Agent Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA1_Zip" text;
    COMMENT ON COLUMN nneren2."Property"."SA1_Zip" IS 'SA1Agent Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Address2" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Address2" IS 'SA3Agent Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_AddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_AddressStreet" IS 'SA3AgentAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char100_1" IS 'SA3Member Bio';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char100_2" IS 'SA3Member Designations';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char100_3" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char100_3" IS 'SA3Member Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char100_4" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char100_4" IS 'SA3License 4 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char100_5" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char100_5" IS 'SA3Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char10_1" IS 'SA3Member Half Price';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char10_2" IS 'SA3Promo';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char10_3" IS 'SA3License 1 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char10_4" IS 'SA3License 2 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char10_5" IS 'SA3License 3 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char255_1" IS 'SA3Member Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char50_10" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char50_10" IS 'SA3License 4 State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char50_2" IS 'SA3License 1 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char50_3" IS 'SA3Languages';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char50_4" IS 'SA3License 1 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char50_5" IS 'SA3License 2 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char50_6" IS 'SA3License 2 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char50_7" IS 'SA3License 3 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char50_8" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char50_8" IS 'SA3License 3 Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Char50_9" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Char50_9" IS 'SA3License 4 #';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_City" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_City" IS 'SA3Agent City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_DateTime_1" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_DateTime_1" IS 'SA3Membership Date';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Email" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Email" IS 'SA3Agent Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_HiddenUsCID" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_HiddenUsCID" IS 'SA3Agent Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber1" IS 'SA3Agent Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber1CountryCodeId" IS 'SA3Agent Phone1 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber1Desc" IS 'SA3AgentPhone1Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber1Ext" IS 'SA3Agent Phone1 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber2" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber2" IS 'SA3Agent Phone2 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber2CountryCodeId" IS 'SA3Agent Phone2 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber2Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber2Desc" IS 'SA3AgentPhone2Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber2Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber2Ext" IS 'SA3Agent Phone2 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber3" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber3" IS 'SA3Agent Phone3 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber3CountryCodeId" IS 'SA3Agent Phone3 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber3Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber3Desc" IS 'SA3AgentPhone3Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber3Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber3Ext" IS 'SA3Agent Phone3 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber4" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber4" IS 'SA3Agent Phone4 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber4CountryCodeId" IS 'SA3Agent Phone4 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber4Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber4Desc" IS 'SA3AgentPhone4Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber4Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber4Ext" IS 'SA3Agent Phone4 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber5" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber5" IS 'SA3Agent Phone5 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber5CountryCodeId" IS 'SA3Agent Phone5 CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber5Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber5Desc" IS 'SA3AgentPhone5Description';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_PhoneNumber5Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_PhoneNumber5Ext" IS 'SA3Agent Phone5 Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_State" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_State" IS 'SA3Agent State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Status" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Status" IS 'SA3Agent Status';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_UserFirstName" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_UserFirstName" IS 'SA3Agent First Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_UserLastName" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_UserLastName" IS 'SA3Agent Last Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_UserMI" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_UserMI" IS 'SA3Agent Middle Initial';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_WebPage" IS 'SA3Agent Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SA3_Zip" text;
    COMMENT ON COLUMN nneren2."Property"."SA3_Zip" IS 'SA3Agent Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."SO1_BranchOfOrgID" IS 'SO1Main Office ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char100_1" IS 'SO1Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char100_2" IS 'SO1Billing Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char10_1" IS 'SO1Zillow Group';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char10_2" IS 'SO1Previsite Virtual Tour';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char10_3" IS 'SO1RPR';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char10_4" IS 'SO1ListHub';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char10_5" IS 'SO1NEREN.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char255_1" IS 'SO1Office Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char50_1" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char50_1" IS 'SO1Billing Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char50_2" IS 'SO1Concessions Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char50_3" IS 'SO1Billing Email 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char50_4" IS 'SO1Realtor.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char50_5" IS 'SO1Buyer Name Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char50_6" IS 'SO1Contact Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_Char50_7" IS 'SO1Contact Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_EMail" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_EMail" IS 'SO1Office Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_HiddenOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."SO1_HiddenOrgID" IS 'SO1Office Identifier';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_HiddenOtyID" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_HiddenOtyID" IS 'SO1Office Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_OrgAddress2" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_OrgAddress2" IS 'SO1Office Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_OrgAddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_OrgAddressStreet" IS 'SO1OffceAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_OrgCity" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_OrgCity" IS 'SO1Office City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_OrgState" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_OrgState" IS 'SO1Office State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_OrgZip" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_OrgZip" IS 'SO1Office Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_OrganizationName" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_OrganizationName" IS 'SO1Office Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_PhoneNumber1" IS 'SO1Office Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_PhoneNumber1CountryCodeId" IS 'SO1OfficePhone1CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_PhoneNumber1Desc" IS 'SO1OfficePhone1Descriptin';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_PhoneNumber1Ext" IS 'SO1OfficePhone1Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_ShortName" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_ShortName" IS 'SO1Office Abbreviation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_WebPage" IS 'SO1Office Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO1_board_id" text;
    COMMENT ON COLUMN nneren2."Property"."SO1_board_id" IS 'SO1Board ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_BranchOfOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."SO3_BranchOfOrgID" IS 'SO3Main Office ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char100_1" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char100_1" IS 'SO3Legacy Board';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char100_2" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char100_2" IS 'SO3Billing Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char10_1" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char10_1" IS 'SO3Zillow Group';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char10_2" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char10_2" IS 'SO3Previsite Virtual Tour';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char10_3" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char10_3" IS 'SO3RPR';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char10_4" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char10_4" IS 'SO3ListHub';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char10_5" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char10_5" IS 'SO3NEREN.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char255_1" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char255_1" IS 'SO3Office Notes';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char50_1" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char50_1" IS 'SO3Billing Email 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char50_2" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char50_2" IS 'SO3Concessions Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char50_3" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char50_3" IS 'SO3Billing Email 3';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char50_4" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char50_4" IS 'SO3Realtor.com';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char50_5" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char50_5" IS 'SO3Buyer Name Entry';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char50_6" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char50_6" IS 'SO3Contact Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_Char50_7" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_Char50_7" IS 'SO3Contact Phone';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_EMail" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_EMail" IS 'SO3Office Email';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_HiddenOrgID" integer;
    COMMENT ON COLUMN nneren2."Property"."SO3_HiddenOrgID" IS 'SO3Office Identifier';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_HiddenOtyID" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_HiddenOtyID" IS 'SO3Office Type';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_OrgAddress2" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_OrgAddress2" IS 'SO3Office Address2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_OrgAddressStreet" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_OrgAddressStreet" IS 'SO3OffceAddressStreetName';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_OrgCity" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_OrgCity" IS 'SO3Office City';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_OrgState" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_OrgState" IS 'SO3Office State';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_OrgZip" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_OrgZip" IS 'SO3Office Zip';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_OrganizationName" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_OrganizationName" IS 'SO3Office Name';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_PhoneNumber1" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_PhoneNumber1" IS 'SO3Office Phone1 Number';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_PhoneNumber1CountryCodeId" IS 'SO3OfficePhone1CountryId';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_PhoneNumber1Desc" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_PhoneNumber1Desc" IS 'SO3OfficePhone1Descriptin';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_PhoneNumber1Ext" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_PhoneNumber1Ext" IS 'SO3OfficePhone1Extension';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_ShortName" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_ShortName" IS 'SO3Office Abbreviation';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_WebPage" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_WebPage" IS 'SO3Office Url';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "SO3_board_id" text;
    COMMENT ON COLUMN nneren2."Property"."SO3_board_id" IS 'SO3Board ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "T_list_tax_property_id" text;
    COMMENT ON COLUMN nneren2."Property"."T_list_tax_property_id" IS 'Tax Property ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "T_tax_db_id" integer;
    COMMENT ON COLUMN nneren2."Property"."T_tax_db_id" IS 'Tax Database ID';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "VT_ExtVTourURL1" text;
    COMMENT ON COLUMN nneren2."Property"."VT_ExtVTourURL1" IS 'Previsite VTour URL';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "VT_ExtVTourURL2" text;
    COMMENT ON COLUMN nneren2."Property"."VT_ExtVTourURL2" IS 'Unbranded Tour URL 2';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "VT_ExtVTourURL3" text;
    COMMENT ON COLUMN nneren2."Property"."VT_ExtVTourURL3" IS 'Branded Tour URL';
     
    ALTER TABLE nneren2."Property" ADD COLUMN "VT_VTourURL" text;
    COMMENT ON COLUMN nneren2."Property"."VT_VTourURL" IS 'Unbranded Tour URL 1';
     

COMMIT;