BEGIN;

  CREATE TABLE snakemls."Property"() INHERITS (property);
    ALTER TABLE snakemls."Property" ADD COLUMN "Abv_Grd_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Abv_Grd_SqFt" IS 'Abv Grade SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Act_Annual_Rent" text;
    COMMENT ON COLUMN snakemls."Property"."Act_Annual_Rent" IS 'Actual Annual Rent';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Actl_Anl_GI" text;
    COMMENT ON COLUMN snakemls."Property"."Actl_Anl_GI" IS 'Actual Annual Gross Income';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Addl_Res_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Addl_Res_SqFt" IS 'Additional Residence SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Addl_Residence" boolean;
    COMMENT ON COLUMN snakemls."Property"."Addl_Residence" IS 'Additional Residence';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Address" text;
    COMMENT ON COLUMN snakemls."Property"."Address" IS 'Street/Road Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Agent_Remarks" text;
    COMMENT ON COLUMN snakemls."Property"."Agent_Remarks" IS 'Private Info';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Agt_Bonus" text;
    COMMENT ON COLUMN snakemls."Property"."Agt_Bonus" IS 'Agent Bonus';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Agt_Owned" boolean;
    COMMENT ON COLUMN snakemls."Property"."Agt_Owned" IS 'Agent Owned';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Annual_Insurnc" text;
    COMMENT ON COLUMN snakemls."Property"."Annual_Insurnc" IS 'Annual Insurance';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Apx_Acrg" numeric;
    COMMENT ON COLUMN snakemls."Property"."Apx_Acrg" IS 'Apx Acreage';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Assoc_Fees" text;
    COMMENT ON COLUMN snakemls."Property"."Assoc_Fees" IS 'Assoc Fee $';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Avg_Electric" text;
    COMMENT ON COLUMN snakemls."Property"."Avg_Electric" IS 'Avg Electric $/Mo';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Avg_Gas" text;
    COMMENT ON COLUMN snakemls."Property"."Avg_Gas" IS 'Avg Gas $/Mo';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Avg_Heat" text;
    COMMENT ON COLUMN snakemls."Property"."Avg_Heat" IS 'Avg Heat $/Mo';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "BA_Comp" text;
    COMMENT ON COLUMN snakemls."Property"."BA_Comp" IS 'BA Comp Offer';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bedroom" integer;
    COMMENT ON COLUMN snakemls."Property"."Bedroom" IS 'Total Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Blw_Grd_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Blw_Grd_SqFt" IS 'Blw Grade SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_Bd" IS 'Basement # Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_Den" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_Den" IS 'Basement # Dens/Offices';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_FB" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_FB" IS 'Basement # Full Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_Fam" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_Fam" IS 'Basement # Family Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_Fin" text;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_Fin" IS '% Basement Fin';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_Frml_Dng" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_Frml_Dng" IS 'Basement # Formal Dining Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_Frplcs" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_Frplcs" IS 'Basement # Fireplaces';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_HB" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_HB" IS 'Basement # Half Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_Kit" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_Kit" IS 'Basement # Kitchens';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_Lndry" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_Lndry" IS 'Basement # Laundry Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_Lvg" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_Lvg" IS 'Basement # Living Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Bsmt_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Bsmt_SqFt" IS 'Basement SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Builder" text;
    COMMENT ON COLUMN snakemls."Property"."Builder" IS 'Builder';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Business_Nm" text;
    COMMENT ON COLUMN snakemls."Property"."Business_Nm" IS 'Business Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Byr_Exclsns" boolean;
    COMMENT ON COLUMN snakemls."Property"."Byr_Exclsns" IS 'Buyer Exclusions';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CAP_Rate" text;
    COMMENT ON COLUMN snakemls."Property"."CAP_Rate" IS 'CAP Rate';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_A" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_A" IS 'Showing Instructions';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_AA" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_AA" IS 'Topography/Setting';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_B" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_B" IS 'Type';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_BB" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_BB" IS 'Driveway Type';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_C" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_C" IS 'Possible Use';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_CC" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_CC" IS 'Access Road';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_D" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_D" IS 'Provider/Other Info';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_DD" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_DD" IS 'Terms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_E" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_E" IS 'Telephone';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_EE" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_EE" IS 'Possession';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_F" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_F" IS 'Natural Gas';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_G" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_G" IS 'Water';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_H" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_H" IS 'Sewer';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_I" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_I" IS 'Irrigation';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_J" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_J" IS 'Soil Type';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_K" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_K" IS 'View';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_L" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_L" IS 'Landscaping';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_M" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_M" IS 'Topography/Setting';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_N" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_N" IS 'Location';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_O" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_O" IS 'Curbs/Gutters';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_P" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_P" IS 'Sidewalks';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_Q" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_Q" IS 'Amenities';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_R" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_R" IS 'Access Roads';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_S" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_S" IS 'Terms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_T" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_T" IS 'Possession';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_U" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_U" IS 'Provider/Other Info';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_V" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_V" IS 'Landscaping';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_W" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_W" IS 'Topography/Setting';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_X" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_X" IS 'Association Fee Includes';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_Y" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_Y" IS 'Terms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CF_Z" text[];
    COMMENT ON COLUMN snakemls."Property"."CF_Z" IS 'Possession';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Ceiling_Ht" text;
    COMMENT ON COLUMN snakemls."Property"."Ceiling_Ht" IS 'Ceiling Height';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Circ_Brkr" text;
    COMMENT ON COLUMN snakemls."Property"."Circ_Brkr" IS 'Circuit Brkr Exempt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN snakemls."Property"."City" IS 'City';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Cntrct_Type" text;
    COMMENT ON COLUMN snakemls."Property"."Cntrct_Type" IS 'Contract Type';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CoList_Agt" text;
    COMMENT ON COLUMN snakemls."Property"."CoList_Agt" IS 'Co-List Agent';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "CoList_Ofc" text;
    COMMENT ON COLUMN snakemls."Property"."CoList_Ofc" IS 'Co-List Office';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Cvnts" boolean;
    COMMENT ON COLUMN snakemls."Property"."Cvnts" IS 'Covenants';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Date_Avail" text;
    COMMENT ON COLUMN snakemls."Property"."Date_Avail" IS 'Date Available';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Deed_Amt_Tlbl" decimal;
    COMMENT ON COLUMN snakemls."Property"."Deed_Amt_Tlbl" IS 'Deeded Acres Amt Tillable';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Deed_CRP" decimal;
    COMMENT ON COLUMN snakemls."Property"."Deed_CRP" IS 'Deeded Acres CRP';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Deed_Irrig" decimal;
    COMMENT ON COLUMN snakemls."Property"."Deed_Irrig" IS 'Deeded Acres Irrigated';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Deed_Other" decimal;
    COMMENT ON COLUMN snakemls."Property"."Deed_Other" IS 'Deeded Acres Other';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Deed_Ttl_Acr" decimal;
    COMMENT ON COLUMN snakemls."Property"."Deed_Ttl_Acr" IS 'Deeded Total Acres';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Depth" text;
    COMMENT ON COLUMN snakemls."Property"."Depth" IS 'Depth';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Direction" text;
    COMMENT ON COLUMN snakemls."Property"."Direction" IS 'Compass Point';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN snakemls."Property"."Directions" IS 'Driving Directions Beginning At';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Dist_Property" text;
    COMMENT ON COLUMN snakemls."Property"."Dist_Property" IS 'Distressed Property';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Door_Ht" text;
    COMMENT ON COLUMN snakemls."Property"."Door_Ht" IS 'Door Height';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Dual_Var_Rate" boolean;
    COMMENT ON COLUMN snakemls."Property"."Dual_Var_Rate" IS 'Dual/Var Rate';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Dup_Entry" boolean;
    COMMENT ON COLUMN snakemls."Property"."Dup_Entry" IS 'Duplicate Entry';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Effectv_Age" integer;
    COMMENT ON COLUMN snakemls."Property"."Effectv_Age" IS 'Effective Age';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Elementary_School" text;
    COMMENT ON COLUMN snakemls."Property"."Elementary_School" IS 'Elementary School';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Exclusions" text;
    COMMENT ON COLUMN snakemls."Property"."Exclusions" IS 'Exclusions';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Expire_Date" text;
    COMMENT ON COLUMN snakemls."Property"."Expire_Date" IS 'Expire Date';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Fire_sprs" boolean;
    COMMENT ON COLUMN snakemls."Property"."Fire_sprs" IS 'Fire Suppression';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Fixer_Upper" boolean;
    COMMENT ON COLUMN snakemls."Property"."Fixer_Upper" IS 'Fixer Upper';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Flood_Plain" text;
    COMMENT ON COLUMN snakemls."Property"."Flood_Plain" IS 'Flood Plain';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Frame_Type" text;
    COMMENT ON COLUMN snakemls."Property"."Frame_Type" IS 'Frame Type';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Frontage" text;
    COMMENT ON COLUMN snakemls."Property"."Frontage" IS 'Frontage';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Full_Bath" integer;
    COMMENT ON COLUMN snakemls."Property"."Full_Bath" IS 'Total Full Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Gross_Mo_Rent" text;
    COMMENT ON COLUMN snakemls."Property"."Gross_Mo_Rent" IS 'Gross Monthly Rent';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "HOA" boolean;
    COMMENT ON COLUMN snakemls."Property"."HOA" IS 'HOA';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "HOA_Fee" text;
    COMMENT ON COLUMN snakemls."Property"."HOA_Fee" IS 'HOA Fee Amount';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "HOA_Pd" text;
    COMMENT ON COLUMN snakemls."Property"."HOA_Pd" IS 'HOA Paid';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "HO_Exmpt" text;
    COMMENT ON COLUMN snakemls."Property"."HO_Exmpt" IS 'HO Exempt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Half_Bath" integer;
    COMMENT ON COLUMN snakemls."Property"."Half_Bath" IS 'Total Half Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "High_School" text;
    COMMENT ON COLUMN snakemls."Property"."High_School" IS 'High School';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Hndcp_Accs" boolean;
    COMMENT ON COLUMN snakemls."Property"."Hndcp_Accs" IS 'Handicap Access';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Improvements" text;
    COMMENT ON COLUMN snakemls."Property"."Improvements" IS 'Improvements';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Inclusions" text;
    COMMENT ON COLUMN snakemls."Property"."Inclusions" IS 'Inclusions';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Internet" boolean;
    COMMENT ON COLUMN snakemls."Property"."Internet" IS 'Display on Internet';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Irrig_Details" text;
    COMMENT ON COLUMN snakemls."Property"."Irrig_Details" IS 'Irrigation Details';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Irrig_Type_Equip" text;
    COMMENT ON COLUMN snakemls."Property"."Irrig_Type_Equip" IS 'Irrigation Type/Equipment';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Irrig_Water" boolean;
    COMMENT ON COLUMN snakemls."Property"."Irrig_Water" IS 'Irrigation Water';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Key_Box_Time" text;
    COMMENT ON COLUMN snakemls."Property"."Key_Box_Time" IS 'Key Box Time';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Key_Box_Type" text;
    COMMENT ON COLUMN snakemls."Property"."Key_Box_Type" IS 'Key Box Type';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Key_Location" text;
    COMMENT ON COLUMN snakemls."Property"."Key_Location" IS 'Key Location';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN snakemls."Property"."Latitude" IS 'Latitude';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Legal" text;
    COMMENT ON COLUMN snakemls."Property"."Legal" IS 'Legal Description';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Levy_Yr" integer;
    COMMENT ON COLUMN snakemls."Property"."Levy_Yr" IS 'Levy Year';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "List_Date" text;
    COMMENT ON COLUMN snakemls."Property"."List_Date" IS 'List Date';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "List_Price" integer;
    COMMENT ON COLUMN snakemls."Property"."List_Price" IS 'List Price';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN snakemls."Property"."Longitude" IS 'Longitude';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lot_Size" text;
    COMMENT ON COLUMN snakemls."Property"."Lot_Size" IS 'Lot Size (Apx SqFt)';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_Bd" IS 'Lower # Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_Den" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_Den" IS 'Lower # Dens/Offices';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_FB" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_FB" IS 'Lower # Full Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_Fam" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_Fam" IS 'Lower # Family Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_Frml_Dng" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_Frml_Dng" IS 'Lower # Formal Dining Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_Frplcs" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_Frplcs" IS 'Lower # Fireplaces';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_HB" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_HB" IS 'Lower # Half Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_Kit" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_Kit" IS 'Lower # Kitchens';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_Lndry" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_Lndry" IS 'Lower # Laundry Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_Lvg" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_Lvg" IS 'Lower # Living Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lower_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Lower_SqFt" IS 'Lower SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lse_Terms" text;
    COMMENT ON COLUMN snakemls."Property"."Lse_Terms" IS 'Lease Terms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lsed_Amt_Tlbl" decimal;
    COMMENT ON COLUMN snakemls."Property"."Lsed_Amt_Tlbl" IS 'Leased Acres Amt Tillable';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lsed_CRP" decimal;
    COMMENT ON COLUMN snakemls."Property"."Lsed_CRP" IS 'Leased Acres CRP';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lsed_Irrig" decimal;
    COMMENT ON COLUMN snakemls."Property"."Lsed_Irrig" IS 'Leased Acres Irrigated';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lsed_Other" decimal;
    COMMENT ON COLUMN snakemls."Property"."Lsed_Other" IS 'Leased Acres Other';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Lsed_Ttl_Acr" decimal;
    COMMENT ON COLUMN snakemls."Property"."Lsed_Ttl_Acr" IS 'Leased Total Acres';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "MLS_Area" text;
    COMMENT ON COLUMN snakemls."Property"."MLS_Area" IS 'County';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "MST_MLS_NUMBER" integer PRIMARY KEY;
    COMMENT ON COLUMN snakemls."Property"."MST_MLS_NUMBER" IS 'MLS Number';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_Bd" IS 'Main # Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_Den" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_Den" IS 'Main # Dens/Offices';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_FB" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_FB" IS 'Main # Full Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_Fam" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_Fam" IS 'Main # Family Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_Frml_Dng" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_Frml_Dng" IS 'Main # Formal Dining Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_Frplcs" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_Frplcs" IS 'Main # Fireplaces';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_HB" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_HB" IS 'Main # Half Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_Kit" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_Kit" IS 'Main # Kitchens';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_Lndry" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_Lndry" IS 'Main # Laundry Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_Lvg" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_Lvg" IS 'Main # Living Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Main_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Main_SqFt" IS 'Main SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Max_Clg" text;
    COMMENT ON COLUMN snakemls."Property"."Max_Clg" IS 'Max. Ceiling Height';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Middle_School" text;
    COMMENT ON COLUMN snakemls."Property"."Middle_School" IS 'Middle School';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Mill_Levy" text;
    COMMENT ON COLUMN snakemls."Property"."Mill_Levy" IS 'Mill Levy';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Min_Clg" text;
    COMMENT ON COLUMN snakemls."Property"."Min_Clg" IS 'Min. Ceiling Height';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Min_Comm" text;
    COMMENT ON COLUMN snakemls."Property"."Min_Comm" IS 'Min Commission';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Min_Trm_Lse" text;
    COMMENT ON COLUMN snakemls."Property"."Min_Trm_Lse" IS 'Min. Term of Lease Wanted';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Mo_Lsed_Rate" integer;
    COMMENT ON COLUMN snakemls."Property"."Mo_Lsed_Rate" IS 'Monthly Leased Rate';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Net_Oper_Incm" text;
    COMMENT ON COLUMN snakemls."Property"."Net_Oper_Incm" IS 'Net Operating Income';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Non_Agt_Offer" text;
    COMMENT ON COLUMN snakemls."Property"."Non_Agt_Offer" IS 'Non Agent Offer';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Num_Bldgs" integer;
    COMMENT ON COLUMN snakemls."Property"."Num_Bldgs" IS '# Buildings';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Num_Ofcs" integer;
    COMMENT ON COLUMN snakemls."Property"."Num_Ofcs" IS '# Offices/Unit(s)';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Num_Off_Str_Prkg" integer;
    COMMENT ON COLUMN snakemls."Property"."Num_Off_Str_Prkg" IS '# Off Street Parking';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Num_Ovrhd_Drs" integer;
    COMMENT ON COLUMN snakemls."Property"."Num_Ovrhd_Drs" IS '# Overhead Doors';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Num_Rstrms" integer;
    COMMENT ON COLUMN snakemls."Property"."Num_Rstrms" IS '# Restrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Num_Stories" integer;
    COMMENT ON COLUMN snakemls."Property"."Num_Stories" IS '# Stories';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Occ_Cntct_Alt_Phn" text;
    COMMENT ON COLUMN snakemls."Property"."Occ_Cntct_Alt_Phn" IS 'Occupant/Contact Alt Phone';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Occ_Cntct_Alt_Phn2" text;
    COMMENT ON COLUMN snakemls."Property"."Occ_Cntct_Alt_Phn2" IS 'Occupant/Contact Alt Phone 2';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Occ_Cntct_Prm_Phn" text;
    COMMENT ON COLUMN snakemls."Property"."Occ_Cntct_Prm_Phn" IS 'Occupant/Contact Primary Phone';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Occ_Nm" text;
    COMMENT ON COLUMN snakemls."Property"."Occ_Nm" IS 'Occupant/Contact Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Org_LP" integer;
    COMMENT ON COLUMN snakemls."Property"."Org_LP" IS 'Original List Price';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Other_MLS_Num" text;
    COMMENT ON COLUMN snakemls."Property"."Other_MLS_Num" IS 'Other MLS#';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Ovrhd_Drs" boolean;
    COMMENT ON COLUMN snakemls."Property"."Ovrhd_Drs" IS 'Overhead Doors';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Owner_Nm" text;
    COMMENT ON COLUMN snakemls."Property"."Owner_Nm" IS 'Owner Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Parcel_Num" text;
    COMMENT ON COLUMN snakemls."Property"."Parcel_Num" IS 'Parcel #';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Pending_Date" text;
    COMMENT ON COLUMN snakemls."Property"."Pending_Date" IS 'Pending Date';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Pr_SqFt_Annually" integer;
    COMMENT ON COLUMN snakemls."Property"."Pr_SqFt_Annually" IS '$/SqFt Annually';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Priority_Date" text;
    COMMENT ON COLUMN snakemls."Property"."Priority_Date" IS 'Priority Date';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Prmry_Lse_Exp" text;
    COMMENT ON COLUMN snakemls."Property"."Prmry_Lse_Exp" IS 'Primary Lease Expires';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Property_Status" text;
    COMMENT ON COLUMN snakemls."Property"."Property_Status" IS 'Property Status';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Property_Type" text;
    COMMENT ON COLUMN snakemls."Property"."Property_Type" IS 'Property Type';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Prsnl_Prop_Tax" text;
    COMMENT ON COLUMN snakemls."Property"."Prsnl_Prop_Tax" IS 'Personal Property Tax';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Rate_Type" text;
    COMMENT ON COLUMN snakemls."Property"."Rate_Type" IS 'Rate Type';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Remarks" text;
    COMMENT ON COLUMN snakemls."Property"."Remarks" IS 'Public Info';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Rntl_Rate" integer;
    COMMENT ON COLUMN snakemls."Property"."Rntl_Rate" IS 'Rental Rate';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Selling_Date" text;
    COMMENT ON COLUMN snakemls."Property"."Selling_Date" IS 'Sold Date';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Selling_Price" integer;
    COMMENT ON COLUMN snakemls."Property"."Selling_Price" IS 'Sold Price';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Selling_off_Number" integer;
    COMMENT ON COLUMN snakemls."Property"."Selling_off_Number" IS 'Selling Office';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Selr_Conc" boolean;
    COMMENT ON COLUMN snakemls."Property"."Selr_Conc" IS 'Seller Conc';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Selr_Conc_Desc" text;
    COMMENT ON COLUMN snakemls."Property"."Selr_Conc_Desc" IS 'Seller Concessions';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Sep_Utilities" boolean;
    COMMENT ON COLUMN snakemls."Property"."Sep_Utilities" IS 'Sep Utilities';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Sign" boolean;
    COMMENT ON COLUMN snakemls."Property"."Sign" IS 'Sign';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Slr_Cnsn_Cmmsn" boolean;
    COMMENT ON COLUMN snakemls."Property"."Slr_Cnsn_Cmmsn" IS 'Commission Paid on Seller Concessions';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "State" text;
    COMMENT ON COLUMN snakemls."Property"."State" IS 'State';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Street_Num" text;
    COMMENT ON COLUMN snakemls."Property"."Street_Num" IS 'Street #';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style1_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Style1_Bd" IS 'Style1 Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style1_Bth" text;
    COMMENT ON COLUMN snakemls."Property"."Style1_Bth" IS 'Style1 Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style1_Rent" text;
    COMMENT ON COLUMN snakemls."Property"."Style1_Rent" IS 'Style1 Rent';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style1_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Style1_SqFt" IS 'Style1 SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style1_Units" integer;
    COMMENT ON COLUMN snakemls."Property"."Style1_Units" IS 'Style1 Units';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style2_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Style2_Bd" IS 'Style2 Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style2_Bth" text;
    COMMENT ON COLUMN snakemls."Property"."Style2_Bth" IS 'Style2 Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style2_Rent" text;
    COMMENT ON COLUMN snakemls."Property"."Style2_Rent" IS 'Style2 Rent';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style2_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Style2_SqFt" IS 'Style2 SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style2_Units" integer;
    COMMENT ON COLUMN snakemls."Property"."Style2_Units" IS 'Style2 Units';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style3_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Style3_Bd" IS 'Style3 Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style3_Bth" text;
    COMMENT ON COLUMN snakemls."Property"."Style3_Bth" IS 'Style3 Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style3_Rent" text;
    COMMENT ON COLUMN snakemls."Property"."Style3_Rent" IS 'Style3 Rent';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style3_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Style3_SqFt" IS 'Style3 SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style3_Units" integer;
    COMMENT ON COLUMN snakemls."Property"."Style3_Units" IS 'Style3 Units';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style4_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Style4_Bd" IS 'Style4 Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style4_Bth" text;
    COMMENT ON COLUMN snakemls."Property"."Style4_Bth" IS 'Style4 Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style4_Rent" text;
    COMMENT ON COLUMN snakemls."Property"."Style4_Rent" IS 'Style4 Rent';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style4_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Style4_SqFt" IS 'Style4 SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style4_Units" integer;
    COMMENT ON COLUMN snakemls."Property"."Style4_Units" IS 'Style4 Units';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style5_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Style5_Bd" IS 'Style5 Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style5_Bth" text;
    COMMENT ON COLUMN snakemls."Property"."Style5_Bth" IS 'Style5 Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style5_Rent" text;
    COMMENT ON COLUMN snakemls."Property"."Style5_Rent" IS 'Style5 Rent';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style5_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Style5_SqFt" IS 'Style5 SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style5_Units" integer;
    COMMENT ON COLUMN snakemls."Property"."Style5_Units" IS 'Style5 Units';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style6_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Style6_Bd" IS 'Style6 Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style6_Bth" text;
    COMMENT ON COLUMN snakemls."Property"."Style6_Bth" IS 'Style6 Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style6_Rent" text;
    COMMENT ON COLUMN snakemls."Property"."Style6_Rent" IS 'Style6 Rent';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style6_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Style6_SqFt" IS 'Style6 SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Style6_Units" integer;
    COMMENT ON COLUMN snakemls."Property"."Style6_Units" IS 'Style6 Units';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Sub_Area" text;
    COMMENT ON COLUMN snakemls."Property"."Sub_Area" IS 'Sub Area';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Subdivision" text;
    COMMENT ON COLUMN snakemls."Property"."Subdivision" IS 'Subdivision';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Sublease" boolean;
    COMMENT ON COLUMN snakemls."Property"."Sublease" IS 'Sublease';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Tax_Yr" integer;
    COMMENT ON COLUMN snakemls."Property"."Tax_Yr" IS 'Tax Year';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Taxes" text;
    COMMENT ON COLUMN snakemls."Property"."Taxes" IS 'Taxes';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Three_qtr_bath" integer;
    COMMENT ON COLUMN snakemls."Property"."Three_qtr_bath" IS 'Total 3/4 Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Ttl_Bths" decimal;
    COMMENT ON COLUMN snakemls."Property"."Ttl_Bths" IS 'Total Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Ttl_Gar_Stalls" integer;
    COMMENT ON COLUMN snakemls."Property"."Ttl_Gar_Stalls" IS 'Total # Garage Stalls';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Ttl_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Ttl_SqFt" IS 'Apx Total SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Ttl_Units" integer;
    COMMENT ON COLUMN snakemls."Property"."Ttl_Units" IS 'Total # Units';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Type_Lse" text;
    COMMENT ON COLUMN snakemls."Property"."Type_Lse" IS 'Type Lease';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Type_Prop" text;
    COMMENT ON COLUMN snakemls."Property"."Type_Prop" IS 'Type Property';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Unit_Num" text;
    COMMENT ON COLUMN snakemls."Property"."Unit_Num" IS 'Unit #';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_Bd" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_Bd" IS 'Upper # Bedrooms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_Den" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_Den" IS 'Upper # Dens/Offices';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_FB" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_FB" IS 'Upper # Full Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_Fam" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_Fam" IS 'Upper # Family Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_Frml_Dng" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_Frml_Dng" IS 'Upper # Formal Dining Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_Frplcs" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_Frplcs" IS 'Upper # Fireplaces';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_HB" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_HB" IS 'Upper # Half Baths';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_Kit" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_Kit" IS 'Upper # Kitchens';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_Lndry" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_Lndry" IS 'Upper # Laundry Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_Lvg" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_Lvg" IS 'Upper # Living Rms';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Upper_SqFt" integer;
    COMMENT ON COLUMN snakemls."Property"."Upper_SqFt" IS 'Upper SqFt';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "VOWAddressDisplay" boolean;
    COMMENT ON COLUMN snakemls."Property"."VOWAddressDisplay" IS 'VOWAddressDisplay';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "VOW_AVM" boolean;
    COMMENT ON COLUMN snakemls."Property"."VOW_AVM" IS 'VOW AVM';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "VOW_Cmnt" boolean;
    COMMENT ON COLUMN snakemls."Property"."VOW_Cmnt" IS 'VOW Comments';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Virtual_Tour" text;
    COMMENT ON COLUMN snakemls."Property"."Virtual_Tour" IS 'Virtual Tour';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Well_Depth" text;
    COMMENT ON COLUMN snakemls."Property"."Well_Depth" IS 'Well Depth';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Window_Panes" text;
    COMMENT ON COLUMN snakemls."Property"."Window_Panes" IS '# Window Panes';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Wtr_Rights" text;
    COMMENT ON COLUMN snakemls."Property"."Wtr_Rights" IS 'Water Rights';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Year_Blt" integer;
    COMMENT ON COLUMN snakemls."Property"."Year_Blt" IS 'Apx Year Built';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "ZipCode" text;
    COMMENT ON COLUMN snakemls."Property"."ZipCode" IS 'Zip Code';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Zng_General" text;
    COMMENT ON COLUMN snakemls."Property"."Zng_General" IS 'Zoning-General';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "Zng_Specific" text;
    COMMENT ON COLUMN snakemls."Property"."Zng_Specific" IS 'Zoning-Specific';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "agt_name" text;
    COMMENT ON COLUMN snakemls."Property"."agt_name" IS 'Agent Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "dom_computed" integer;
    COMMENT ON COLUMN snakemls."Property"."dom_computed" IS 'Days on Market';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "finance_Code" text;
    COMMENT ON COLUMN snakemls."Property"."finance_Code" IS 'How Sold';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "off_Number" integer;
    COMMENT ON COLUMN snakemls."Property"."off_Number" IS 'Listing Office';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "off_name" integer;
    COMMENT ON COLUMN snakemls."Property"."off_name" IS 'Office Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_email" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_email" IS 'LA Email';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_first_name" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_first_name" IS 'LA First Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_last_name" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_last_name" IS 'LA First Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_mail1" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_mail1" IS 'LA MAIL1';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_mail_city" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_mail_city" IS 'LA MAIL CITY';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_mail_state" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_mail_state" IS 'LA MAIL STATE';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_mail_zip" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_mail_zip" IS 'LA MAIL ZIP';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_nrds" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_nrds" IS 'LA NRDS';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_phone1" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_phone1" IS 'LA Phone1';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_phone2" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_phone2" IS 'LA Phone2';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_la_url" text;
    COMMENT ON COLUMN snakemls."Property"."rets_la_url" IS 'LA URL';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_list_agt_id" text;
    COMMENT ON COLUMN snakemls."Property"."rets_list_agt_id" IS 'LA ID';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_listing_synd" text;
    COMMENT ON COLUMN snakemls."Property"."rets_listing_synd" IS 'Listing Syndication Link';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_email" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_email" IS 'LO Email';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_mail1" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_mail1" IS 'LO MAIL1';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_mail_city" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_mail_city" IS 'LO MAIL CITY';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_mail_state" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_mail_state" IS 'LO MAIL STATE';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_mail_zip" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_mail_zip" IS 'LO MAIL ZIP';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_name" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_name" IS 'LO Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_nrds" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_nrds" IS 'LO NRDS';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_phone1" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_phone1" IS 'LO Phone1';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_phone2" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_phone2" IS 'LO Phone2';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_lo_url" text;
    COMMENT ON COLUMN snakemls."Property"."rets_lo_url" IS 'LO URL';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_photo_count" integer;
    COMMENT ON COLUMN snakemls."Property"."rets_photo_count" IS 'Photo Count';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_photo_timestamp" text;
    COMMENT ON COLUMN snakemls."Property"."rets_photo_timestamp" IS 'Photo TimeStamp';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_email" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_email" IS 'SA Email';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_first_name" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_first_name" IS 'SA First Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_last_name" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_last_name" IS 'SA Last Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_mail1" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_mail1" IS 'SA MAIL1';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_mail_city" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_mail_city" IS 'SA MAIL CITY';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_mail_state" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_mail_state" IS 'SA MAIL STATE';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_mail_zip" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_mail_zip" IS 'SA MAIL ZIP';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_nrds" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_nrds" IS 'SA NRDS';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_phone1" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_phone1" IS 'SA Phone1';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_phone2" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_phone2" IS 'SA Phone2';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_sa_url" text;
    COMMENT ON COLUMN snakemls."Property"."rets_sa_url" IS 'SA URL';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_selling_agt_id" text;
    COMMENT ON COLUMN snakemls."Property"."rets_selling_agt_id" IS 'SA ID';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_email" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_email" IS 'SO Email';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_mail1" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_mail1" IS 'SO MAIL1';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_mail_city" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_mail_city" IS 'SO MAIL CITY';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_mail_state" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_mail_state" IS 'SO MAIL STATE';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_mail_zip" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_mail_zip" IS 'SO MAIL ZIP';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_name" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_name" IS 'SO Name';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_nrds" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_nrds" IS 'SO NRDS';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_phone1" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_phone1" IS 'SO Phone1';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_phone2" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_phone2" IS 'SO Phone2';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_so_url" text;
    COMMENT ON COLUMN snakemls."Property"."rets_so_url" IS 'SO URL';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_status" text;
    COMMENT ON COLUMN snakemls."Property"."rets_status" IS 'RETS STATUS';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "rets_synd_exclude_channels" text;
    COMMENT ON COLUMN snakemls."Property"."rets_synd_exclude_channels" IS 'Listing Syndication Exclude Channels';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "sys_Last_Modified" text;
    COMMENT ON COLUMN snakemls."Property"."sys_Last_Modified" IS 'sys_Last_Modified';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "sys_New" text;
    COMMENT ON COLUMN snakemls."Property"."sys_New" IS 'sys_New';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "sys_Off_Market" text;
    COMMENT ON COLUMN snakemls."Property"."sys_Off_Market" IS 'sys_Off_Market';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "sys_Pending" text;
    COMMENT ON COLUMN snakemls."Property"."sys_Pending" IS 'sys_Pending';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "sys_PriceChange" text;
    COMMENT ON COLUMN snakemls."Property"."sys_PriceChange" IS 'sys_PriceChange';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "sys_Under" text;
    COMMENT ON COLUMN snakemls."Property"."sys_Under" IS 'sys_Under';
     
    ALTER TABLE snakemls."Property" ADD COLUMN "sys_Withdraw" text;
    COMMENT ON COLUMN snakemls."Property"."sys_Withdraw" IS 'sys_Withdraw';
     

COMMIT;