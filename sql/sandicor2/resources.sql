BEGIN;

  CREATE TABLE sandicor2."Property"() INHERITS (property);
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_AgentID" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_AgentID" IS 'LA1User Code';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_Char255_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_Char255_1" IS 'LA1User Designation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_Char50_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_Char50_1" IS 'LA1Assistant For';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_Char50_3" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_Char50_3" IS 'LA1Agent Full Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_LoginName" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_LoginName" IS 'LA1Agent Logon Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber1" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber1" IS 'LA1Agent Phone1 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber1CountryCodeId" IS 'LA1Agent Phone1 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber1Desc" IS 'LA1AgentPhone1Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber1Ext" IS 'LA1Agent Phone1 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber2" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber2" IS 'LA1Agent Phone2 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber2CountryCodeId" IS 'LA1Agent Phone2 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber2Desc" IS 'LA1AgentPhone2Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber2Ext" IS 'LA1Agent Phone2 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber3" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber3" IS 'LA1Agent Phone3 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber3CountryCodeId" IS 'LA1Agent Phone3 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber3Desc" IS 'LA1AgentPhone3Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber3Ext" IS 'LA1Agent Phone3 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber4" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber4" IS 'LA1Agent Phone4 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber4CountryCodeId" IS 'LA1Agent Phone4 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber4Desc" IS 'LA1AgentPhone4Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber4Ext" IS 'LA1Agent Phone4 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber5" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber5" IS 'LA1Agent Phone5 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber5CountryCodeId" IS 'LA1Agent Phone5 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber5Desc" IS 'LA1AgentPhone5Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_PhoneNumber5Ext" IS 'LA1Agent Phone5 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_UserFirstName" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_UserFirstName" IS 'LA1Agent First Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_UserLastName" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_UserLastName" IS 'LA1Agent Last Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA1_UserMI" text;
    COMMENT ON COLUMN sandicor2."Property"."LA1_UserMI" IS 'LA1Agent Middle Initial';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_Char255_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_Char255_1" IS 'LA2User Designation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_Char50_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_Char50_1" IS 'LA2Assistant For';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_Char50_3" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_Char50_3" IS 'LA2Agent Full Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber1" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber1" IS 'LA2Agent Phone1 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber1CountryCodeId" IS 'LA2Agent Phone1 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber1Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber1Desc" IS 'LA2AgentPhone1Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber1Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber1Ext" IS 'LA2Agent Phone1 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber2" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber2" IS 'LA2Agent Phone2 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber2CountryCodeId" IS 'LA2Agent Phone2 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber2Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber2Desc" IS 'LA2AgentPhone2Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber2Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber2Ext" IS 'LA2Agent Phone2 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber3" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber3" IS 'LA2Agent Phone3 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber3CountryCodeId" IS 'LA2Agent Phone3 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber3Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber3Desc" IS 'LA2AgentPhone3Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber3Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber3Ext" IS 'LA2Agent Phone3 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber4" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber4" IS 'LA2Agent Phone4 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber4CountryCodeId" IS 'LA2Agent Phone4 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber4Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber4Desc" IS 'LA2AgentPhone4Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber4Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber4Ext" IS 'LA2Agent Phone4 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber5" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber5" IS 'LA2Agent Phone5 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber5CountryCodeId" IS 'LA2Agent Phone5 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber5Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber5Desc" IS 'LA2AgentPhone5Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_PhoneNumber5Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_PhoneNumber5Ext" IS 'LA2Agent Phone5 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_UserFirstName" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_UserFirstName" IS 'LA2Agent First Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_UserLastName" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_UserLastName" IS 'LA2Agent Last Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LA2_UserMI" text;
    COMMENT ON COLUMN sandicor2."Property"."LA2_UserMI" IS 'LA2Agent Middle Initial';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_AdditionalPropertyUse_113" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_AdditionalPropertyUse_113" IS 'Additional Property Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_AdditionalPropertyUse_156" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_AdditionalPropertyUse_156" IS 'Additional Property Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_AdditionalPropertyUse_295" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_AdditionalPropertyUse_295" IS 'Additional Property Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_AdditionalPropertyUse_296" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_AdditionalPropertyUse_296" IS 'Additional Property Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_AdditionalPropertyUse_297" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_AdditionalPropertyUse_297" IS 'Additional Property Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Amenities_204" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Amenities_204" IS 'Amenities';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Amenities_223" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Amenities_223" IS 'Amenities';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Amenities_239" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Amenities_239" IS 'Amenities';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_BusinessType_265" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_BusinessType_265" IS 'Business Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_CommercialPropertyType_246" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_CommercialPropertyType_246" IS 'Commercial Property Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ComplexFeatures_1" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ComplexFeatures_1" IS 'Complex Features';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ComplexFeatures_114" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ComplexFeatures_114" IS 'Complex Features';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ComplexFeatures_157" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ComplexFeatures_157" IS 'Complex Features';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ComplexFeatures_47" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ComplexFeatures_47" IS 'Complex Features';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ComplexFeatures_86" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ComplexFeatures_86" IS 'Complex Features';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Configuration_2" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Configuration_2" IS 'Configuration';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Construction_205" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Construction_205" IS 'Construction';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Construction_224" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Construction_224" IS 'Construction';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Construction_247" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Construction_247" IS 'Construction';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Cooling_115" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Cooling_115" IS 'Cooling';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Cooling_158" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Cooling_158" IS 'Cooling';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Cooling_206" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Cooling_206" IS 'Cooling';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Cooling_225" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Cooling_225" IS 'Cooling';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Cooling_248" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Cooling_248" IS 'Cooling';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Cooling_3" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Cooling_3" IS 'Cooling';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Cooling_48" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Cooling_48" IS 'Cooling';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Crops_275" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Crops_275" IS 'Crops';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_CurrentUse_276" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_CurrentUse_276" IS 'Current Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_CurrentUse_87" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_CurrentUse_87" IS 'Current Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_DevelopmentStatus_277" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_DevelopmentStatus_277" IS 'Development Status';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Development_88" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Development_88" IS 'Development';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Documents_278" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Documents_278" IS 'Documents';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Equipment_116" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Equipment_116" IS 'Equipment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Equipment_159" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Equipment_159" IS 'Equipment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Equipment_4" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Equipment_4" IS 'Equipment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ExistingFinancing_207" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ExistingFinancing_207" IS 'Existing Financing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ExistingFinancing_226" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ExistingFinancing_226" IS 'Existing Financing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ExistingFinancing_240" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ExistingFinancing_240" IS 'Existing Financing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ExistingFinancing_249" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ExistingFinancing_249" IS 'Existing Financing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ExistingFinancing_266" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ExistingFinancing_266" IS 'Existing Financing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ExistingFinancing_279" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ExistingFinancing_279" IS 'Existing Financing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Exterior_117" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Exterior_117" IS 'Exterior';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Exterior_160" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Exterior_160" IS 'Exterior';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Exterior_208" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Exterior_208" IS 'Exterior';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Exterior_49" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Exterior_49" IS 'Exterior';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Exterior_5" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Exterior_5" IS 'Exterior';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Features_161" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Features_161" IS 'Features';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Fencing_118" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Fencing_118" IS 'Fencing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Fencing_162" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Fencing_162" IS 'Fencing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Fencing_50" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Fencing_50" IS 'Fencing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Fencing_6" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Fencing_6" IS 'Fencing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Fencing_89" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Fencing_89" IS 'Fencing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FinancialInfoSource_209" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FinancialInfoSource_209" IS 'Financial Info Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FinancialInfoSource_227" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FinancialInfoSource_227" IS 'Financial Info Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FinancialInfoSource_241" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FinancialInfoSource_241" IS 'Financial Info Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FinancialInfoSource_250" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FinancialInfoSource_250" IS 'Financial Info Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FinancialInfoSource_267" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FinancialInfoSource_267" IS 'Financial Info Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FinancialInfoSource_281" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FinancialInfoSource_281" IS 'Financial Info Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FireplaceLocation_119" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FireplaceLocation_119" IS 'Fireplace Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FireplaceLocation_163" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FireplaceLocation_163" IS 'Fireplace Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FireplaceLocation_7" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FireplaceLocation_7" IS 'Fireplace Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FloorCovering_210" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FloorCovering_210" IS 'Floor Covering';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FloorCoverings_120" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FloorCoverings_120" IS 'Floor Coverings';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FloorCoverings_164" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FloorCoverings_164" IS 'Floor Coverings';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_FloorCoverings_8" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_FloorCoverings_8" IS 'Floor Coverings';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Floors_211" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Floors_211" IS 'Floors';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Floors_228" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Floors_228" IS 'Floors';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Floors_251" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Floors_251" IS 'Floors';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Frontage_121" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Frontage_121" IS 'Frontage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Frontage_165" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Frontage_165" IS 'Frontage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Frontage_51" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Frontage_51" IS 'Frontage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Frontage_9" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Frontage_9" IS 'Frontage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Frontage_90" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Frontage_90" IS 'Frontage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_GuestHouse_10" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_GuestHouse_10" IS 'Guest House';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_GuestHouse_122" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_GuestHouse_122" IS 'Guest House';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_GuestHouse_166" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_GuestHouse_166" IS 'Guest House';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HeatEquipment_11" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HeatEquipment_11" IS 'Heat Equipment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HeatEquipment_123" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HeatEquipment_123" IS 'Heat Equipment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HeatEquipment_167" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HeatEquipment_167" IS 'Heat Equipment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HeatEquipment_52" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HeatEquipment_52" IS 'Heat Equipment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HeatSource_12" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HeatSource_12" IS 'Heat Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HeatSource_124" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HeatSource_124" IS 'Heat Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HeatSource_168" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HeatSource_168" IS 'Heat Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HeatSource_53" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HeatSource_53" IS 'Heat Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Heating_212" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Heating_212" IS 'Heating';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Heating_229" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Heating_229" IS 'Heating';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Heating_252" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Heating_252" IS 'Heating';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Heating_268" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Heating_268" IS 'Heating';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HighestBestUse_280" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HighestBestUse_280" IS 'Highest Best Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HighestBestUse_91" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HighestBestUse_91" IS 'Highest Best Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HomeOwnersFeeIncludes_13" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HomeOwnersFeeIncludes_13" IS 'Home Owners Fee Includes';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HomeOwnersFeeIncludes_169" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HomeOwnersFeeIncludes_169" IS 'Home Owners Fee Includes';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HomeOwnersFeeIncludes_54" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HomeOwnersFeeIncludes_54" IS 'Home Owners Fee Includes';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_HomeOwnersFeeIncludes_92" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_HomeOwnersFeeIncludes_92" IS 'Home Owners Fee Includes';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Improvements_282" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Improvements_282" IS 'Improvements';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Irrigation_125" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Irrigation_125" IS 'Irrigation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Irrigation_14" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Irrigation_14" IS 'Irrigation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Irrigation_170" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Irrigation_170" IS 'Irrigation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Irrigation_55" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Irrigation_55" IS 'Irrigation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Irrigation_93" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Irrigation_93" IS 'Irrigation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_LandType_283" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_LandType_283" IS 'Land Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_LaundryLocation_126" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_LaundryLocation_126" IS 'Laundry Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_LaundryLocation_15" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_LaundryLocation_15" IS 'Laundry Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_LaundryLocation_171" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_LaundryLocation_171" IS 'Laundry Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_LaundryUtilities_127" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_LaundryUtilities_127" IS 'Laundry Utilities';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_LaundryUtilities_16" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_LaundryUtilities_16" IS 'Laundry Utilities';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_LaundryUtilities_172" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_LaundryUtilities_172" IS 'Laundry Utilities';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Laundry_213" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Laundry_213" IS 'Laundry';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Location_174" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Location_174" IS 'Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Location_253" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Location_253" IS 'Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Location_269" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Location_269" IS 'Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Miscellaneous_129" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Miscellaneous_129" IS 'Miscellaneous';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Miscellaneous_175" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Miscellaneous_175" IS 'Miscellaneous';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Miscellaneous_18" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Miscellaneous_18" IS 'Miscellaneous';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Miscellaneous_57" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Miscellaneous_57" IS 'Miscellaneous';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Miscellaneous_95" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Miscellaneous_95" IS 'Miscellaneous';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_MoveInRequirements_130" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_MoveInRequirements_130" IS 'Move In Requirements';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_OtherFeeType_176" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_OtherFeeType_176" IS 'Other Fee Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_OtherFeeType_19" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_OtherFeeType_19" IS 'Other Fee Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_OtherFeeType_58" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_OtherFeeType_58" IS 'Other Fee Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_OtherFeeType_96" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_OtherFeeType_96" IS 'Other Fee Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Ownership_131" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Ownership_131" IS 'Ownership';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Ownership_177" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Ownership_177" IS 'Ownership';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Ownership_20" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Ownership_20" IS 'Ownership';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Ownership_97" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Ownership_97" IS 'Ownership';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingGarageUnit1_60" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingGarageUnit1_60" IS 'Parking Garage Unit 1';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingGarageUnit2_61" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingGarageUnit2_61" IS 'Parking Garage Unit 2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingGarageUnit3_62" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingGarageUnit3_62" IS 'Parking Garage Unit 3';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingGarageUnit4_63" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingGarageUnit4_63" IS 'Parking Garage Unit 4';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingGarage_133" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingGarage_133" IS 'Parking Garage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingGarage_179" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingGarage_179" IS 'Parking Garage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingGarage_22" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingGarage_22" IS 'Parking Garage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingNonGarageUnit1_64" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingNonGarageUnit1_64" IS 'Parking Non-Garage Unit 1';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingNonGarageUnit2_65" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingNonGarageUnit2_65" IS 'Parking Non-Garage Unit 2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingNonGarageUnit3_66" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingNonGarageUnit3_66" IS 'Parking Non-Garage Unit 3';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingNonGarageUnit4_67" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingNonGarageUnit4_67" IS 'Parking Non-Garage Unit 4';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingNonGarage_134" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingNonGarage_134" IS 'Parking Non-Garage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingNonGarage_180" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingNonGarage_180" IS 'Parking Non-Garage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingNonGarage_23" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingNonGarage_23" IS 'Parking Non-Garage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Parking_214" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Parking_214" IS 'Parking';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Parking_230" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Parking_230" IS 'Parking';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Parking_254" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Parking_254" IS 'Parking';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Parking_270" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Parking_270" IS 'Parking';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingforRV_132" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingforRV_132" IS 'Parking for RV';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingforRV_178" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingforRV_178" IS 'Parking for RV';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingforRV_21" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingforRV_21" IS 'Parking for RV';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ParkingforRV_59" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ParkingforRV_59" IS 'Parking for RV';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Patio_135" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Patio_135" IS 'Patio';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Patio_181" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Patio_181" IS 'Patio';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Patio_24" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Patio_24" IS 'Patio';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_PoolHeat_137" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_PoolHeat_137" IS 'Pool Heat';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_PoolHeat_183" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_PoolHeat_183" IS 'Pool Heat';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_PoolHeat_26" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_PoolHeat_26" IS 'Pool Heat';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_PoolHeat_69" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_PoolHeat_69" IS 'Pool Heat';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Pool_136" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Pool_136" IS 'Pool';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Pool_182" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Pool_182" IS 'Pool';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Pool_25" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Pool_25" IS 'Pool';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Pool_68" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Pool_68" IS 'Pool';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Possession_100" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Possession_100" IS 'Possession';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Possession_184" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Possession_184" IS 'Possession';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Possession_70" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Possession_70" IS 'Possession';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_PropRestrictionsKnown_101" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_PropRestrictionsKnown_101" IS 'Prop. Restrictions Known';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_PropRestrictionsKnown_138" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_PropRestrictionsKnown_138" IS 'Prop Restrictions Known';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_PropRestrictionsKnown_185" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_PropRestrictionsKnown_185" IS 'Prop Restrictions Known';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_PropRestrictionsKnown_28" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_PropRestrictionsKnown_28" IS 'Prop Restrictions Known';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_PropertyType_255" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_PropertyType_255" IS 'Property Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ResidentialUnitLocation_139" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ResidentialUnitLocation_139" IS 'Residential Unit Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ResidentialUnitLocation_186" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ResidentialUnitLocation_186" IS 'Residential Unit Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_ResidentialUnitLocation_29" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_ResidentialUnitLocation_29" IS 'Residential Unit Location';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Roads_284" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Roads_284" IS 'Roads';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Roof_140" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Roof_140" IS 'Roof';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Roof_187" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Roof_187" IS 'Roof';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Roof_215" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Roof_215" IS 'Roof';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Roof_231" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Roof_231" IS 'Roof';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Roof_256" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Roof_256" IS 'Roof';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Roof_30" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Roof_30" IS 'Roof';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Roof_71" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Roof_71" IS 'Roof';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SaleIncludes_232" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SaleIncludes_232" IS 'Sale Includes';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SaleIncludes_257" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SaleIncludes_257" IS 'Sale Includes';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SaleIncludes_271" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SaleIncludes_271" IS 'Sale Includes';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SalesRestrictions_102" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SalesRestrictions_102" IS 'Sales Restrictions';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SalesRestrictions_188" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SalesRestrictions_188" IS 'Sales Restrictions';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SalesRestrictions_233" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SalesRestrictions_233" IS 'Sales Restrictions';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SalesRestrictions_242" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SalesRestrictions_242" IS 'Sales Restrictions';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SalesRestrictions_258" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SalesRestrictions_258" IS 'Sales Restrictions';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SalesRestrictions_272" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SalesRestrictions_272" IS 'Sales Restrictions';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SalesRestrictions_285" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SalesRestrictions_285" IS 'Sales Restrictions';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SalesRestrictions_31" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SalesRestrictions_31" IS 'Sales Restrictions';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SalesRestrictions_72" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SalesRestrictions_72" IS 'Sales Restrictions';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SchoolDistrict_103" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SchoolDistrict_103" IS 'School District';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SchoolDistrict_142" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SchoolDistrict_142" IS 'School District';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SchoolDistrict_189" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SchoolDistrict_189" IS 'School District';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SchoolDistrict_32" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SchoolDistrict_32" IS 'School District';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SchoolDistrict_73" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SchoolDistrict_73" IS 'School District';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SearchableRooms_143" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SearchableRooms_143" IS 'Searchable Rooms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SearchableRooms_190" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SearchableRooms_190" IS 'Searchable Rooms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SearchableRooms_33" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SearchableRooms_33" IS 'Searchable Rooms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Seasons_191" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Seasons_191" IS 'Seasons';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Security_144" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Security_144" IS 'Security';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Security_192" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Security_192" IS 'Security';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Security_34" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Security_34" IS 'Security';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Security_74" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Security_74" IS 'Security';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SewerSeptic_104" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SewerSeptic_104" IS 'Sewer/Septic';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SewerSeptic_145" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SewerSeptic_145" IS 'Sewer/Septic';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SewerSeptic_193" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SewerSeptic_193" IS 'Sewer/Septic';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SewerSeptic_35" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SewerSeptic_35" IS 'Sewer/Septic';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SewerSeptic_75" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SewerSeptic_75" IS 'Sewer/Septic';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Site_105" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Site_105" IS 'Site';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Site_146" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Site_146" IS 'Site';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Site_194" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Site_194" IS 'Site';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Site_36" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Site_36" IS 'Site';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Site_76" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Site_76" IS 'Site';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Skirting_37" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Skirting_37" IS 'Skirting';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SpaHeat_148" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SpaHeat_148" IS 'Spa Heat';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SpaHeat_196" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SpaHeat_196" IS 'Spa Heat';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SpaHeat_39" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SpaHeat_39" IS 'Spa Heat';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SpaHeat_78" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SpaHeat_78" IS 'Spa Heat';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Spa_147" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Spa_147" IS 'Spa';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Spa_195" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Spa_195" IS 'Spa';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Spa_38" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Spa_38" IS 'Spa';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Spa_77" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Spa_77" IS 'Spa';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SpecialRequirements_288" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SpecialRequirements_288" IS 'Special Requirements';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SpecialZones_289" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SpecialZones_289" IS 'Special Zones';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Special_218" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Special_218" IS 'Special';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Special_235" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Special_235" IS 'Special';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Special_244" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Special_244" IS 'Special';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Special_260" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Special_260" IS 'Special';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Special_287" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Special_287" IS 'Special';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SqFtSource_219" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SqFtSource_219" IS 'SqFt Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SqFtSource_236" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SqFtSource_236" IS 'SqFt Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_SqFtSource_261" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_SqFtSource_261" IS 'SqFt Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Stories_220" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Stories_220" IS 'Stories';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Stories_237" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Stories_237" IS 'Stories';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Stories_262" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Stories_262" IS 'Stories';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Structures_106" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Structures_106" IS 'Structures';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Structures_40" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Structures_40" IS 'Structures';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Subordinate_290" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Subordinate_290" IS 'Subordinate';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Telecommunications_149" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Telecommunications_149" IS 'Telecommunications';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Telecommunications_197" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Telecommunications_197" IS 'Telecommunications';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Telecommunications_41" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Telecommunications_41" IS 'Telecommunications';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Telecommunications_79" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Telecommunications_79" IS 'Telecommunications';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_TenantPays_150" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_TenantPays_150" IS 'Tenant Pays';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_TenantPays_263" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_TenantPays_263" IS 'Tenant Pays';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_TenantPays_80" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_TenantPays_80" IS 'Tenant Pays';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_107" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_107" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_198" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_198" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_221" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_221" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_238" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_238" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_245" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_245" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_264" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_264" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_274" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_274" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_291" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_291" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_42" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_42" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Terms_81" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Terms_81" IS 'Terms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Topography_108" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Topography_108" IS 'Topography';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Topography_151" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Topography_151" IS 'Topography';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Topography_199" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Topography_199" IS 'Topography';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Topography_292" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Topography_292" IS 'Topography';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Topography_43" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Topography_43" IS 'Topography';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Topography_82" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Topography_82" IS 'Topography';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_UnitFeatures_152" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_UnitFeatures_152" IS 'Unit Features';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_UnitFeatures_200" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_UnitFeatures_200" IS 'Unit Features';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_UnitType_222" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_UnitType_222" IS 'Unit Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_UtilitiesAvailable_109" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_UtilitiesAvailable_109" IS 'Utilities Available';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_UtilitiesAvailable_293" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_UtilitiesAvailable_293" IS 'Utilities Available';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_UtilitiestoSite_110" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_UtilitiestoSite_110" IS 'Utilities to Site';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_View_111" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_View_111" IS 'View';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_View_153" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_View_153" IS 'View';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_View_201" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_View_201" IS 'View';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_View_294" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_View_294" IS 'View';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_View_44" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_View_44" IS 'View';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_View_83" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_View_83" IS 'View';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_WaterHeaterType_155" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_WaterHeaterType_155" IS 'Water Heater Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_WaterHeaterType_203" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_WaterHeaterType_203" IS 'Water Heater Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_WaterHeaterType_46" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_WaterHeaterType_46" IS 'Water Heater Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_WaterHeaterType_85" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_WaterHeaterType_85" IS 'Water Heater Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Water_112" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Water_112" IS 'Water';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Water_154" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Water_154" IS 'Water';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Water_202" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Water_202" IS 'Water';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Water_45" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Water_45" IS 'Water';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LFD_Water_84" text[];
    COMMENT ON COLUMN sandicor2."Property"."LFD_Water_84" IS 'Water';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_1" IS 'County';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_10" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_10" IS 'SqFt Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_11" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_11" IS 'Stories';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_12" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_12" IS 'Interior Walls';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_13" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_13" IS 'Internet Address Field';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_14" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_14" IS 'Boat Facilities';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_15" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_15" IS 'Lot Size';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_16" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_16" IS 'Lot Size Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_18" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_18" IS 'Existing Bonds';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_19" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_19" IS 'Special Assessments';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_2" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_2" IS 'Market Area';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_20" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_20" IS 'Department of Housing 3';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_21" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_21" IS 'Department of Housing 4';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_22" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_22" IS 'Department of Housing 5';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_23" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_23" IS 'Fenced';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_24" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_24" IS 'License #2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_25" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_25" IS 'License #3';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_26" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_26" IS 'License #4';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_27" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_27" IS 'License #5';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_28" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_28" IS 'Model';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_29" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_29" IS 'Make';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_3" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_3" IS 'Trees (1)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_30" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_30" IS 'Serial #1';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_4" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_4" IS 'Zoning';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_5" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_5" IS 'Possible New Zoning';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_6" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_6" IS 'Price Inc Lease Value';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_7" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_7" IS 'Price Include Real Estate';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char10_9" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char10_9" IS 'Price Includes License';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_1" IS 'Value Range Pricing?';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_10" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_10" IS 'Exclusive Use Yard';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_12" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_12" IS 'Incorporated';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_13" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_13" IS 'Real Estate Included';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_14" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_14" IS 'Tax Rolls';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_15" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_15" IS 'Variance';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_17" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_17" IS 'Paved Streets';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_18" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_18" IS 'Septic';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_19" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_19" IS 'Storm Drains';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_3" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_3" IS 'Entry Only';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_4" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_4" IS 'Vacation Rental By Owner';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_5" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_5" IS 'Short Sale';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_6" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_6" IS 'Internet Syndication Y/N';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_7" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_7" IS 'Sign on Property';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_8" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_8" IS 'Elevator';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char1_9" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char1_9" IS 'Entry: 3+ Steps to Entry';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_1" IS 'Assessors Parcel #';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_10" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_10" IS 'Year (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_11" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_11" IS 'Map Coordinates';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_12" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_12" IS 'List Firm Code';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_14" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_14" IS 'Actual Other Income';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_15" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_15" IS 'Act. Vacancy&Credit Loss';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_16" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_16" IS 'Actual Gross Oper Income';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_17" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_17" IS 'Actual Operating Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_18" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_18" IS 'Present Loan';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_19" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_19" IS 'Down Payment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_2" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_2" IS 'Age 4';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_20" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_20" IS 'Have';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_21" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_21" IS 'Type of Land';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_22" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_22" IS 'Tract Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_23" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_23" IS 'Land Use (1)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_24" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_24" IS 'Land Use (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_25" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_25" IS 'Land Use (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_26" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_26" IS 'Land Use (4)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_27" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_27" IS 'Land Use (5)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_28" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_28" IS 'Age 1';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_29" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_29" IS 'Age 2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_3" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_3" IS 'Age 5';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_30" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_30" IS 'Age 3';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_4" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_4" IS 'Lot Dimensions Approx';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_5" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_5" IS 'Actual Cash on Cash';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_6" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_6" IS 'Gross Multiplier';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_7" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_7" IS 'Actual Total P&I Pay';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_8" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_8" IS 'Actual Cash Flow';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char25_9" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char25_9" IS 'Year (1)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char50_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char50_1" IS 'Distance to Phone';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char50_2" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char50_2" IS 'Expense Stops';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char50_3" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char50_3" IS 'Distance to Elec';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char50_4" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char50_4" IS 'Tax Parcel';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Char50_5" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_Char50_5" IS 'Buildings';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_DateTime_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_DateTime_1" IS 'Date Available';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_DateTime_2" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_DateTime_2" IS 'Remodel Date';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_DateTime_6" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_DateTime_6" IS 'Lease Expires';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_1" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_1" IS 'LP/SqFt';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_10" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_10" IS 'Cap Rate Actual';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_11" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_11" IS 'SP$/LP$';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_12" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_12" IS 'SP$/SqFt';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_13" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_13" IS 'Proj Other Annual Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_14" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_14" IS 'Cap Rate Projected';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_15" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_15" IS 'Acres 1';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_16" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_16" IS 'Acres 2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_17" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_17" IS 'Acres 3';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_18" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_18" IS 'Acres 4';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_19" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_19" IS 'Acres 5';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_20" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_20" IS 'Act. Equipment Rental Exp';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_21" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_21" IS 'Actual Repairs Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_22" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_22" IS 'Actual Payroll Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_23" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_23" IS 'Actual Payroll Tax';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_24" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_24" IS 'Actual Annual Other Exp.';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_25" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_25" IS 'Projected Rent Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_26" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_26" IS 'Proj Utilities Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_27" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_27" IS 'Proj Expense Ins/Adv';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_28" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_28" IS 'Proj Accounting Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_29" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_29" IS 'Proj Phone Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_3" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_3" IS 'Price Per Acre';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_30" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_30" IS 'Proj Equipment Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_4" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_4" IS 'Proj Payroll Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_5" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_5" IS 'Proj Payroll Tax';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_6" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_6" IS 'Actual Adjusted Net Inc';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_7" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_7" IS 'Actual Gross Schd Income';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_8" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_8" IS 'Proj Gross Sales';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Dec_9" decimal;
    COMMENT ON COLUMN sandicor2."Property"."LM_Dec_9" IS 'Price per SqFt';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_1" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_1" IS '# of Buildings';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_10" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_10" IS 'Land %';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_11" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_11" IS 'Improvements %';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_12" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_12" IS 'Personal Property %';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_13" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_13" IS '% Grade';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_14" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_14" IS 'Unit 3 # Total Baths';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_15" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_15" IS 'Total Useable %';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_16" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_16" IS '# Units w/Dishwashers';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_17" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_17" IS '# of Bedrooms (9)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_18" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_18" IS '# of Bedrooms (10)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_2" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_2" IS 'Restrooms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_20" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_20" IS '# of Bedrooms (5)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_3" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_3" IS 'Common Restrooms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_4" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_4" IS 'Private Restrooms';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_5" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_5" IS 'Occupancy %';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_6" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_6" IS 'Overall % Vacant';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_7" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_7" IS '# of Stories';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int1_8" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int1_8" IS 'Fireplaces(s)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_1" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_1" IS 'Year Built';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_10" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_10" IS 'Monthly Rate (1)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_11" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_11" IS 'Monthly Rate (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_12" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_12" IS '# of Units (6)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_13" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_13" IS 'Monthly Rate (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_14" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_14" IS '# of Units (8)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_15" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_15" IS '# of Units (9)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_16" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_16" IS '# of Units (10)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_17" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_17" IS '# of Units (1)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_18" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_18" IS '# of Units (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_19" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_19" IS '# of Units (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_2" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_2" IS '# of Leased Apartments';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_20" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_20" IS '# of Units (4)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_3" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_3" IS 'Full Time Employees';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_4" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_4" IS 'Average Room Days per Yr';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_5" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_5" IS '# Sections';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_6" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_6" IS 'Bath Totals';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_7" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_7" IS 'Part Time Employees';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_8" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_8" IS '# of Spaces (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int2_9" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int2_9" IS '# of Spaces (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_1" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_1" IS 'Actual Depreciation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_10" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_10" IS 'Actual Gross Profit';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_13" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_13" IS 'Max Search Price';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_14" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_14" IS 'Original Low List Price';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_15" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_15" IS 'MT';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_16" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_16" IS 'Tax Rate';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_17" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_17" IS 'Actual Interest';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_18" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_18" IS 'Tax Area';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_20" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_20" IS 'Assumable Finance';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_3" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_3" IS 'Actual Owner Salary';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_4" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_4" IS 'Age';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_5" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_5" IS 'Lease Deposit';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_6" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_6" IS 'Lot SqFt Approx';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_7" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_7" IS 'Parking Garage Spaces';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_8" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_8" IS 'Parking Spaces Total';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_Int4_9" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_Int4_9" IS 'Actual Cost of Sales';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char100_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char100_1" IS 'Mandatory Remarks for VRP';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char100_10" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char100_10" IS 'Unit Size (6)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char100_2" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char100_2" IS 'Mandatory Rmks 1stRgt Rfs';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char100_3" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char100_3" IS 'Variance Comments';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char100_4" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char100_4" IS 'Lease Expires (9)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char100_5" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char100_5" IS 'List Agent Fax';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char100_7" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char100_7" IS 'Internet Address';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char100_8" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char100_8" IS 'Unit Size (10)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char100_9" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char100_9" IS 'Lease Expires (10)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_31" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_31" IS 'Serial #2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_32" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_32" IS 'Serial #3';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_33" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_33" IS 'Serial #4';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_34" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_34" IS 'Serial #5';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_37" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_37" IS 'Financing';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_38" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_38" IS 'Unit Number (1)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_39" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_39" IS 'Unit Number (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_40" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_40" IS 'Unit Number (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_41" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_41" IS 'Unit Number (4)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_42" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_42" IS 'Unit Number (5)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_43" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_43" IS 'Other Income Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_44" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_44" IS 'Other Income Amount';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_45" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_45" IS 'BLN Year Due';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_46" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_46" IS 'Flood Zone';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_47" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_47" IS 'Geological Hazard Zone';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_48" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_48" IS 'List Agent BRE License #';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_49" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_49" IS 'Other Income Source';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_50" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_50" IS 'Price/Spaces';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_51" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_51" IS 'Minimum Lease Terms (1)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_52" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_52" IS 'Minimum Lease Terms (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_53" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_53" IS 'Minimum Lease Terms (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_54" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_54" IS 'Minimum Lease Terms (4)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_55" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_55" IS 'Minimum Lease Terms (5)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_56" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_56" IS 'Minimum Lease Terms (6)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_57" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_57" IS 'Minimum Lease Terms (7)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_58" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_58" IS 'Minimum Lease Terms (8)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_59" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_59" IS 'Minimum Lease Terms (9)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_60" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_60" IS 'Minimum Lease Terms (10)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_61" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_61" IS 'Common Area Maintenance';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_62" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_62" IS 'Floor Load';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_63" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_63" IS 'Alley Access';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_64" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_64" IS 'Sign Space';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_65" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_65" IS 'Country';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_66" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_66" IS 'Country';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_67" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_67" IS 'Assets Inventory';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_68" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_68" IS 'Owner Works';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_69" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_69" IS 'Owner Train Employees';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char10_70" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char10_70" IS 'Price Includes Goodwill';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_23" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_23" IS 'Sidewalks/Curbs';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_24" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_24" IS 'Land Fee';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_25" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_25" IS 'Land Lease';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_26" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_26" IS 'Monthly Lease';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_27" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_27" IS 'Yearly Lease';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_28" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_28" IS 'Easements';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_29" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_29" IS 'Easement Fee';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_30" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_30" IS 'Cleared';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_31" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_31" IS 'Mineral Rights';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_32" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_32" IS 'Unit Furnished (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_33" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_33" IS 'Potable';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_34" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_34" IS 'City Water';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_35" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_35" IS 'Unit Furnished (5)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_36" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_36" IS 'Unit Furnished (6)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_37" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_37" IS 'Unit Furnished (7)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_38" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_38" IS 'Unit Furnished (8)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_39" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_39" IS 'Unit Furnished (9)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_40" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_40" IS 'Unit Furnished (10)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_41" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_41" IS 'Tenant Pays Gas';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_42" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_42" IS 'Tenant Pays Water';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_43" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_43" IS 'Tenant Pays Electric';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_44" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_44" IS 'Manager Operated';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_45" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_45" IS 'Own/Lease Bar';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_46" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_46" IS 'Own/Lease Other 2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_47" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_47" IS 'Own/Lease Other 1';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_48" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_48" IS 'Own/Lease Restaurant';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_49" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_49" IS 'Own/Lease Telephone';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_50" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_50" IS 'Own/Lease Vending';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_51" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_51" IS 'Owner Operated';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_53" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_53" IS 'Will Manager Stay';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_54" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_54" IS 'Well';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_55" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_55" IS 'Public Sewage Facility';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_56" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_56" IS 'Private Sewage Facility';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_57" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_57" IS 'Sprinkler';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_58" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_58" IS 'Railroad';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_59" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_59" IS 'Truck Dock';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char1_60" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char1_60" IS 'Truck Well';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char255_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char255_1" IS 'Price Includes Equipment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char255_2" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char255_2" IS 'Tenant Improvmnt Allowanc';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_1" IS 'Proj. Gross Sched. Income';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_10" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_10" IS 'Distance to City/Water';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_11" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_11" IS 'Distance to Sewer';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_12" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_12" IS 'Distance to Shopping';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_13" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_13" IS 'Distance to School';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_14" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_14" IS 'Distance to Church';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_15" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_15" IS 'Distance to Freeway';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_16" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_16" IS 'Distance to Bus';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_17" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_17" IS 'Sewer';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_18" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_18" IS 'Lease $';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_19" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_19" IS 'Year Lease Expires';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_2" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_2" IS 'Projected Other Income';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_20" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_20" IS 'Ingress/Egress';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_21" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_21" IS 'Soil Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_22" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_22" IS 'Setbacks';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_23" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_23" IS 'Actual Other Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_24" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_24" IS 'Actual Total Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_25" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_25" IS 'Projected Taxes Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_26" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_26" IS 'Projected F&L Ins Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_27" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_27" IS 'Projected Gas & Electric';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_28" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_28" IS 'Proj Wtr/Sewer Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_29" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_29" IS 'Projected Trash Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_3" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_3" IS 'Proj Vacancy & Credit Los';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_30" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_30" IS 'Number of Wells';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_4" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_4" IS 'Proj Gross Operating Inc';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_5" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_5" IS 'Proj Operating Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_6" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_6" IS 'Projected Net Income';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_7" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_7" IS 'Proj Annual P & I Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_8" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_8" IS 'Projected Cash Flow';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char30_9" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char30_9" IS 'Projected Cash on Cash';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_10" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_10" IS 'Projected License Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_11" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_11" IS 'Proj Gardener Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_12" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_12" IS 'Projected Manager Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_13" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_13" IS 'Proj Prop Management Exp';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_14" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_14" IS 'Projected Other Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_15" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_15" IS 'Projected Total Expense';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_16" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_16" IS 'Income Year (1)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_17" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_17" IS '1st Loan Balance';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_18" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_18" IS 'Loan 1 Payment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_19" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_19" IS '1st Loan Interest';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_20" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_20" IS 'Loan 1 Balloon';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_21" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_21" IS 'Loan 1 Year Due';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_22" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_22" IS 'Loan 2 Balance';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_23" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_23" IS 'Loan 2 Payment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_24" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_24" IS '2nd Loan Interest Rate';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_25" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_25" IS 'Loan 2 Balloon';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_26" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_26" IS 'Loan 2 Year Due';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_27" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_27" IS 'BLN Balance';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_28" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_28" IS 'BLN Payment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_29" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_29" IS 'BLN Interest';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_30" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_30" IS 'BLN Balloon';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_31" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_31" IS 'Show Phone';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_32" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_32" IS 'Income Year (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_33" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_33" IS 'Income Year (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_34" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_34" IS 'Expense 1';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_35" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_35" IS 'Expense 2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_36" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_36" IS 'Expense 3';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_37" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_37" IS '2nd Improvement';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_38" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_38" IS '3rd Improvement';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_39" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_39" IS 'Present Use';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_40" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_40" IS 'Distance to Gas';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_6" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_6" IS 'Year (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_7" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_7" IS 'Motive/Want';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_8" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_8" IS 'Well Depth';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char50_9" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char50_9" IS 'Gallons per Min.';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char512_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char512_1" IS 'Building Amenities';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_10" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_10" IS 'Water District URL';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_11" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_11" IS 'Trees (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_12" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_12" IS 'Entry Level Building';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_13" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_13" IS '2nd Loan Assumable';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_14" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_14" IS 'Fiscal Year From';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_15" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_15" IS 'Fiscal Year To';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_16" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_16" IS 'BLN Assumable';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_17" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_17" IS 'Trees (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_18" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_18" IS 'Trees (4)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_19" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_19" IS 'Trees (5)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_2" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_2" IS 'Map Code Column';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_20" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_20" IS 'Unit Number (9)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_21" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_21" IS 'Unit Number (10)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_22" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_22" IS 'Amps';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_23" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_23" IS 'Well Casing Size';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_24" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_24" IS 'Water Table';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_25" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_25" IS 'Well Pump HP';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_26" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_26" IS 'Sub-Flooring';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_27" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_27" IS 'Animal Designation Code';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_28" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_28" IS 'Land Use Code';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_29" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_29" IS 'Home Owner Fee Reflects';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_3" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_3" IS 'Map Code Page';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_30" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_30" IS 'Home Owners Payment Freq.';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_31" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_31" IS 'Other Fees Reflect';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_32" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_32" IS 'Other Fees Payment Freq.';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_34" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_34" IS 'CFD/Mello-Roos Fee Reflct';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_35" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_35" IS 'CFD/Mello-Roos Pay Freq.';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_36" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_36" IS 'Assessments';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_37" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_37" IS 'Occupied';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_38" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_38" IS 'Mandatory Remarks';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_4" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_4" IS 'Map Code Row';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_42" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_42" IS 'Length';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_43" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_43" IS 'Width';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_44" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_44" IS 'Association ID';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_45" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_45" IS 'Unit 1 Laundry Hook Ups';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_46" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_46" IS 'Unit 2 Laundry Hook Ups';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_47" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_47" IS 'Unit 3 Laundry Hook Ups';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_48" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_48" IS 'Unit 4 Laundry Hook Ups';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_49" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_49" IS 'Unit 1 Occupied';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_5" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_5" IS 'Limited Service';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_50" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_50" IS 'Unit 2 Occupied';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_51" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_51" IS 'Unit 3 Occupied';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_52" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_52" IS 'Unit 4 Occupied';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_53" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_53" IS 'Parcel Map Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_54" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_54" IS 'Tentative Map Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_55" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_55" IS 'Price Reflects';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_58" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_58" IS 'Lease Required';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_59" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_59" IS 'Rental Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_6" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_6" IS '1st Loan Assumable';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_7" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_7" IS 'Jurisdiction';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_8" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_8" IS 'Listing Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_char5_9" text;
    COMMENT ON COLUMN sandicor2."Property"."LM_char5_9" IS 'Water District';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_22" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_22" IS 'Price/Unit';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_23" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_23" IS 'Tax Year From';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_24" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_24" IS 'Gross Equity';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_25" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_25" IS 'Tax Year To';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_26" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_26" IS 'Tax Amount';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_27" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_27" IS 'Street Frontage';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_28" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_28" IS 'Accounts Receiveable';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_29" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_29" IS 'Assets Equipment';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_30" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_30" IS 'Assets Leasehold Imp.';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_31" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_31" IS 'Assets Real Estate';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_32" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_32" IS 'Assets Other';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_33" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_33" IS 'Assets Total';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_34" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_34" IS 'Accounts Payable';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_35" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_35" IS 'Monthly Rent Total';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_36" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_36" IS 'Accrued Expenses';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_37" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_37" IS 'Long Term Liability';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_38" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_38" IS 'Total Liability';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_39" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_39" IS 'Retained Earnings';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LM_int4_40" integer;
    COMMENT ON COLUMN sandicor2."Property"."LM_int4_40" IS 'Number of Employees';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN sandicor2."Property"."LO1_BranchOfOrgID" IS 'LO1Main Office ID';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_Char10_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LO1_Char10_1" IS 'LO1InternetSyndicationYN';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_Char50_1" text;
    COMMENT ON COLUMN sandicor2."Property"."LO1_Char50_1" IS 'LO1SignOnSanDiego Y/N';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_HiddenOrgID" integer;
    COMMENT ON COLUMN sandicor2."Property"."LO1_HiddenOrgID" IS 'LO1Office Identifier';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_OrganizationName" text;
    COMMENT ON COLUMN sandicor2."Property"."LO1_OrganizationName" IS 'LO1Office Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_PhoneNumber1" text;
    COMMENT ON COLUMN sandicor2."Property"."LO1_PhoneNumber1" IS 'LO1Office Phone1 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."LO1_PhoneNumber1CountryCodeId" IS 'LO1OfficePhone1CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."LO1_PhoneNumber1Desc" IS 'LO1OfficePhone1Descriptin';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."LO1_PhoneNumber1Ext" IS 'LO1OfficePhone1Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_ShortName" text;
    COMMENT ON COLUMN sandicor2."Property"."LO1_ShortName" IS 'LO1Office Abbreviation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LO1_WebPage" text;
    COMMENT ON COLUMN sandicor2."Property"."LO1_WebPage" IS 'LO1Office Url';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks1010" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks1010" IS 'Neighboring Bus. Type (3)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks11" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks11" IS 'Remarks';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks1111" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks1111" IS 'Neighboring Bus. Type (4)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks1212" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks1212" IS 'Neighboring Bus. Type (5)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks1313" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks1313" IS 'Neighboring Bus. Type (6)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks1515" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks1515" IS 'Selling Agent BRE #';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks1616" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks1616" IS 'Full Address';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks44" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks44" IS 'Directions To Property';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks66" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks66" IS 'Supplement';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks77" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks77" IS 'Ground Level Doors';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks88" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks88" IS 'Neighboring Bus. Type (1)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LR_remarks99" text;
    COMMENT ON COLUMN sandicor2."Property"."LR_remarks99" IS 'Neighboring Bus. Type (2)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LVC_Agent_Hit_Count" integer;
    COMMENT ON COLUMN sandicor2."Property"."LVC_Agent_Hit_Count" IS 'Agent Hit Count';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LVC_Client_Hit_Count" integer;
    COMMENT ON COLUMN sandicor2."Property"."LVC_Client_Hit_Count" IS 'Client Hit Count';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LV_vow_address" text;
    COMMENT ON COLUMN sandicor2."Property"."LV_vow_address" IS 'VOW Address';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LV_vow_avm" text;
    COMMENT ON COLUMN sandicor2."Property"."LV_vow_avm" IS 'AVM (Y/N)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LV_vow_comment" text;
    COMMENT ON COLUMN sandicor2."Property"."LV_vow_comment" IS 'Allow Comments/Review';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "LV_vow_include" text;
    COMMENT ON COLUMN sandicor2."Property"."LV_vow_include" IS 'VOW (Y/N)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Address" text;
    COMMENT ON COLUMN sandicor2."Property"."L_Address" IS 'Address';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Address2" text;
    COMMENT ON COLUMN sandicor2."Property"."L_Address2" IS 'Address 2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_AddressDirection" text;
    COMMENT ON COLUMN sandicor2."Property"."L_AddressDirection" IS 'Address Direction';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_AddressNumber" text;
    COMMENT ON COLUMN sandicor2."Property"."L_AddressNumber" IS 'Address Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_AddressSearchNumber" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_AddressSearchNumber" IS 'Address Search Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_AddressStreet" text;
    COMMENT ON COLUMN sandicor2."Property"."L_AddressStreet" IS 'Address Street';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Area" text;
    COMMENT ON COLUMN sandicor2."Property"."L_Area" IS 'Zip/Area';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_AskingPrice" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_AskingPrice" IS 'List Price (H)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_City" text;
    COMMENT ON COLUMN sandicor2."Property"."L_City" IS 'City';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Class" text;
    COMMENT ON COLUMN sandicor2."Property"."L_Class" IS 'Class';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_ClosingDate" text;
    COMMENT ON COLUMN sandicor2."Property"."L_ClosingDate" IS 'Close of Escrow Date';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_ContractDate" text;
    COMMENT ON COLUMN sandicor2."Property"."L_ContractDate" IS 'Pending Date';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_DOM" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_DOM" IS 'DOM';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_DOMLS" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_DOMLS" IS 'DOMLS';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_DisplayId" text;
    COMMENT ON COLUMN sandicor2."Property"."L_DisplayId" IS 'MLS #';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_FirstPhotoAddDt" text;
    COMMENT ON COLUMN sandicor2."Property"."L_FirstPhotoAddDt" IS 'First Photo Add Timestamp';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_HowSold" text;
    COMMENT ON COLUMN sandicor2."Property"."L_HowSold" IS 'How Sold';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_IdxInclude" text;
    COMMENT ON COLUMN sandicor2."Property"."L_IdxInclude" IS 'IDX (Y/N)';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_InputDate" text;
    COMMENT ON COLUMN sandicor2."Property"."L_InputDate" IS 'List Date Received';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Keyword2" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_Keyword2" IS 'Proj Cost of Sales';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Keyword3" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_Keyword3" IS 'Proj Gross Profit';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Keyword4" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_Keyword4" IS 'Proj Owner Salary';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Keyword5" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_Keyword5" IS 'Proj Manager Salary';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Keyword6" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_Keyword6" IS 'Projected Interest';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Keyword7" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_Keyword7" IS 'Projected Depreciation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Keyword8" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_Keyword8" IS 'Proj Adjusted Net Income';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_LastDocUpdate" text;
    COMMENT ON COLUMN sandicor2."Property"."L_LastDocUpdate" IS 'Doc Timestamp';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Last_Photo_updt" text;
    COMMENT ON COLUMN sandicor2."Property"."L_Last_Photo_updt" IS 'PhotoTimestamp';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_ListAgent1" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_ListAgent1" IS 'Listing Agent';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_ListAgent2" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_ListAgent2" IS 'Co-Listing Agent';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_ListOffice1" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_ListOffice1" IS 'Listing Office';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_ListingDate" text;
    COMMENT ON COLUMN sandicor2."Property"."L_ListingDate" IS 'Listing Date';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_ListingID" integer PRIMARY KEY;
    COMMENT ON COLUMN sandicor2."Property"."L_ListingID" IS 'SystemID';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_NumAcres" decimal;
    COMMENT ON COLUMN sandicor2."Property"."L_NumAcres" IS 'Approx # of Acres';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_NumUnits" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_NumUnits" IS '# of Units';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_OffMarketDate" text;
    COMMENT ON COLUMN sandicor2."Property"."L_OffMarketDate" IS 'Off Market Date';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_OriginalPrice" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_OriginalPrice" IS 'Original Price';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_PictureCount" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_PictureCount" IS 'Photo Count';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_PricePerSQFT" decimal;
    COMMENT ON COLUMN sandicor2."Property"."L_PricePerSQFT" IS 'Price Per SQFT';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_SaleRent" text;
    COMMENT ON COLUMN sandicor2."Property"."L_SaleRent" IS 'Sale/Rent';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_SellingAgent1" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_SellingAgent1" IS 'Selling Agent';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_SellingOffice1" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_SellingOffice1" IS 'Selling Office';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_SoldPrice" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_SoldPrice" IS 'Sold Price';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_State" text;
    COMMENT ON COLUMN sandicor2."Property"."L_State" IS 'State';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Status" text;
    COMMENT ON COLUMN sandicor2."Property"."L_Status" IS 'Status';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_StatusCatID" text;
    COMMENT ON COLUMN sandicor2."Property"."L_StatusCatID" IS 'Status Category';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_StatusDate" text;
    COMMENT ON COLUMN sandicor2."Property"."L_StatusDate" IS 'Status Date';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_StatusID" text;
    COMMENT ON COLUMN sandicor2."Property"."L_StatusID" IS 'Status Detail';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_SystemPrice" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_SystemPrice" IS 'Search Price';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Type_" text;
    COMMENT ON COLUMN sandicor2."Property"."L_Type_" IS 'Type';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_UpdateDate" text;
    COMMENT ON COLUMN sandicor2."Property"."L_UpdateDate" IS 'Update Date';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_Zip" text;
    COMMENT ON COLUMN sandicor2."Property"."L_Zip" IS 'Zip';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_asking_price_low" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_asking_price_low" IS 'Asking Price Low';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_listings_associated_doc_count" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_listings_associated_doc_count" IS 'Associated Document Count';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_public_documents_count" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_public_documents_count" IS 'Doc Manager';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_walk_score" integer;
    COMMENT ON COLUMN sandicor2."Property"."L_walk_score" IS 'WalkScore';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "L_walk_score_source_link" text;
    COMMENT ON COLUMN sandicor2."Property"."L_walk_score_source_link" IS 'Walk Score Link';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_Char50_3" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_Char50_3" IS 'SA1Agent Full Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_LoginName" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_LoginName" IS 'SA1Agent Logon Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber1" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber1" IS 'SA1Agent Phone1 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber1CountryCodeId" IS 'SA1Agent Phone1 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber1Desc" IS 'SA1AgentPhone1Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber1Ext" IS 'SA1Agent Phone1 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber2" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber2" IS 'SA1Agent Phone2 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber2CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber2CountryCodeId" IS 'SA1Agent Phone2 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber2Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber2Desc" IS 'SA1AgentPhone2Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber2Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber2Ext" IS 'SA1Agent Phone2 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber3" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber3" IS 'SA1Agent Phone3 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber3CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber3CountryCodeId" IS 'SA1Agent Phone3 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber3Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber3Desc" IS 'SA1AgentPhone3Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber3Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber3Ext" IS 'SA1Agent Phone3 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber4" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber4" IS 'SA1Agent Phone4 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber4CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber4CountryCodeId" IS 'SA1Agent Phone4 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber4Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber4Desc" IS 'SA1AgentPhone4Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber4Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber4Ext" IS 'SA1Agent Phone4 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber5" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber5" IS 'SA1Agent Phone5 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber5CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber5CountryCodeId" IS 'SA1Agent Phone5 CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber5Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber5Desc" IS 'SA1AgentPhone5Description';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_PhoneNumber5Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_PhoneNumber5Ext" IS 'SA1Agent Phone5 Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_UserFirstName" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_UserFirstName" IS 'SA1Agent First Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_UserLastName" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_UserLastName" IS 'SA1Agent Last Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SA1_UserMI" text;
    COMMENT ON COLUMN sandicor2."Property"."SA1_UserMI" IS 'SA1Agent Middle Initial';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_BranchOfOrgID" integer;
    COMMENT ON COLUMN sandicor2."Property"."SO1_BranchOfOrgID" IS 'SO1Main Office ID';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_Char10_1" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_Char10_1" IS 'SO1InternetSyndicationYN';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_Char10_4" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_Char10_4" IS 'SO1RPR Y/N';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_Char50_1" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_Char50_1" IS 'SO1SignOnSanDiego Y/N';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_Char50_4" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_Char50_4" IS 'SO1Point 2 Technology';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_HiddenOrgID" integer;
    COMMENT ON COLUMN sandicor2."Property"."SO1_HiddenOrgID" IS 'SO1Office Identifier';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_OrgZip" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_OrgZip" IS 'SO1Office Zip';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_OrganizationName" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_OrganizationName" IS 'SO1Office Name';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_PhoneNumber1" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_PhoneNumber1" IS 'SO1Office Phone1 Number';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_PhoneNumber1CountryCodeId" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_PhoneNumber1CountryCodeId" IS 'SO1OfficePhone1CountryId';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_PhoneNumber1Desc" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_PhoneNumber1Desc" IS 'SO1OfficePhone1Descriptin';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_PhoneNumber1Ext" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_PhoneNumber1Ext" IS 'SO1OfficePhone1Extension';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_ShortName" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_ShortName" IS 'SO1Office Abbreviation';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "SO1_WebPage" text;
    COMMENT ON COLUMN sandicor2."Property"."SO1_WebPage" IS 'SO1Office Url';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "T_list_tax_property_id" text;
    COMMENT ON COLUMN sandicor2."Property"."T_list_tax_property_id" IS 'Tax Property ID';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "VT_ExtVTourURL1" text;
    COMMENT ON COLUMN sandicor2."Property"."VT_ExtVTourURL1" IS 'VRBO URL';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "VT_ExtVTourURL2" text;
    COMMENT ON COLUMN sandicor2."Property"."VT_ExtVTourURL2" IS 'Virtual Tour Link 2';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "VT_ExtVTourURL3" text;
    COMMENT ON COLUMN sandicor2."Property"."VT_ExtVTourURL3" IS 'PP_Insta';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "VT_ExtVTourURL4" text;
    COMMENT ON COLUMN sandicor2."Property"."VT_ExtVTourURL4" IS '3D_URL';
     
    ALTER TABLE sandicor2."Property" ADD COLUMN "VT_VTourURL" text;
    COMMENT ON COLUMN sandicor2."Property"."VT_VTourURL" IS 'Virtual Tour Link';
     

COMMIT;