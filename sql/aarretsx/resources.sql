BEGIN;

  CREATE TABLE aarretsx."ActiveAgent"() ;
    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "TransferDate" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."TransferDate" IS 'Transfer Date';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactAddlPhoneType3" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactAddlPhoneType3" IS 'Contact Additional Phone Type 3';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "EmailAddress" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."EmailAddress" IS 'Email Address';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "LicenseNumber" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."LicenseNumber" IS 'License Number';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "Language" text[];
    COMMENT ON COLUMN aarretsx."ActiveAgent"."Language" IS 'Language';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactPhoneAreaCode1" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactPhoneAreaCode1" IS 'Contact Phone Area Code 1';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactPhoneType2" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactPhoneType2" IS 'Contact Phone Type 2';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "Password" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."Password" IS 'Password';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ZipCode" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ZipCode" IS 'Zip Code';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactPhoneAreaCode2" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactPhoneAreaCode2" IS 'Contact Phone Area Code 2';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "MiddleInitial" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."MiddleInitial" IS 'Middle Initial';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "LastName" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."LastName" IS 'Last Name';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."MLSID" IS 'MLS ID';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ZipPlus4" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ZipPlus4" IS 'Zip Plus 4';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "OfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."OfficeNumber" IS 'Office Number';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "Nickname" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."Nickname" IS 'Nickname';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "MemberNumber" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."MemberNumber" IS 'Member Number';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "PersonalFaxAreaCode" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."PersonalFaxAreaCode" IS 'Personal Fax Area Code';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "FirstName" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."FirstName" IS 'First Name';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactPhoneType3" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactPhoneType3" IS 'Contact Phone Type 3';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "OfficeName" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."OfficeName" IS 'Office Name';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "Generation" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."Generation" IS 'Generation';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "HomePhoneComplete" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."HomePhoneComplete" IS 'Home Phone Complete';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactAddlPhoneType2" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactAddlPhoneType2" IS 'Contact Additional Phone Type 2';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "NRDSID" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."NRDSID" IS 'NRDS ID';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "PhonePager" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."PhonePager" IS 'Pager Phone';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "HomePhoneAreaCode" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."HomePhoneAreaCode" IS 'Home Phone Area Code';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "IsActive" boolean;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."IsActive" IS 'Is Active in the MLS';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "State" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."State" IS 'State';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "Gender" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."Gender" IS 'Gender';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "LastModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."LastModifiedDateTime" IS 'LastModified Date Time';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactPhoneAreaCode3" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactPhoneAreaCode3" IS 'Contact Phone Area Code 3';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "CarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."CarrierRouteCode" IS 'Carrier Route Code';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "WebPageAddress" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."WebPageAddress" IS 'Web Page Address';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "LicenseExpirationDate" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."LicenseExpirationDate" IS 'License Expiration Date';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "County" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."County" IS 'County';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "Title" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."Title" IS 'Title';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactPhoneNumber1" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactPhoneNumber1" IS 'Contact Phone Number 1';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "City" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."City" IS 'City';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "PictureCount" integer;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."PictureCount" IS 'Agent Picture Count';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "OfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."OfficeMLSID" IS 'Office MLS ID';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "LicenseType" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."LicenseType" IS 'License Type';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "FullName" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."FullName" IS 'Full Name';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactAddlPhoneType1" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactAddlPhoneType1" IS 'Contact Additional Phone Type 1';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "BirthDate" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."BirthDate" IS 'Birth Date';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactPhoneNumber3" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactPhoneNumber3" IS 'Contact Phone Number 3';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "PersonalFaxPhone" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."PersonalFaxPhone" IS 'Personal Fax Phone';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "PhoneExtension" integer;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."PhoneExtension" IS 'Phone Extension';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "StreetAddress" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."StreetAddress" IS 'Street Address';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactPhoneNumber2" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactPhoneNumber2" IS 'Contact Phone Number 2';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "ContactPhoneType1" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."ContactPhoneType1" IS 'Contact Phone Type 1';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "PersonalFaxPhoneComplete" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."PersonalFaxPhoneComplete" IS 'Personal Fax Phone Complete';

    ALTER TABLE aarretsx."ActiveAgent" ADD COLUMN "HomePhoneNumber" text;
    COMMENT ON COLUMN aarretsx."ActiveAgent"."HomePhoneNumber" IS 'Home Phone Number';

  CREATE TABLE aarretsx."Agent"() ;
    ALTER TABLE aarretsx."Agent" ADD COLUMN "TransferDate" text;
    COMMENT ON COLUMN aarretsx."Agent"."TransferDate" IS 'Transfer Date';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "EmailAddress" text;
    COMMENT ON COLUMN aarretsx."Agent"."EmailAddress" IS 'Email Address';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "LicenseNumber" text;
    COMMENT ON COLUMN aarretsx."Agent"."LicenseNumber" IS 'License Number';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "Language" text[];
    COMMENT ON COLUMN aarretsx."Agent"."Language" IS 'Language';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ContactPhoneAreaCode1" text;
    COMMENT ON COLUMN aarretsx."Agent"."ContactPhoneAreaCode1" IS 'Contact Phone Area Code 1';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ContactPhoneType2" text;
    COMMENT ON COLUMN aarretsx."Agent"."ContactPhoneType2" IS 'Contact Phone Type 2';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ZipCode" text;
    COMMENT ON COLUMN aarretsx."Agent"."ZipCode" IS 'Zip Code';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "Password" text;
    COMMENT ON COLUMN aarretsx."Agent"."Password" IS 'Password';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "MiddleInitial" text;
    COMMENT ON COLUMN aarretsx."Agent"."MiddleInitial" IS 'Middle Initial';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "LastName" text;
    COMMENT ON COLUMN aarretsx."Agent"."LastName" IS 'Last Name';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ContactPhoneAreaCode2" text;
    COMMENT ON COLUMN aarretsx."Agent"."ContactPhoneAreaCode2" IS 'Contact Phone Area Code 2';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN aarretsx."Agent"."MLSID" IS 'MLS ID';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ZipPlus4" text;
    COMMENT ON COLUMN aarretsx."Agent"."ZipPlus4" IS 'Zip Plus 4';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "OfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."Agent"."OfficeNumber" IS 'Office Number';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "MemberNumber" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."Agent"."MemberNumber" IS 'Member Number';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "Nickname" text;
    COMMENT ON COLUMN aarretsx."Agent"."Nickname" IS 'Nickname';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "PersonalFaxAreaCode" text;
    COMMENT ON COLUMN aarretsx."Agent"."PersonalFaxAreaCode" IS 'Personal Fax Area Code';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ContactPhoneType3" text;
    COMMENT ON COLUMN aarretsx."Agent"."ContactPhoneType3" IS 'Contact Phone Type 3';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "FirstName" text;
    COMMENT ON COLUMN aarretsx."Agent"."FirstName" IS 'First Name';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "OfficeName" text;
    COMMENT ON COLUMN aarretsx."Agent"."OfficeName" IS 'Office Name';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "Generation" text;
    COMMENT ON COLUMN aarretsx."Agent"."Generation" IS 'Generation';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "HomePhoneComplete" text;
    COMMENT ON COLUMN aarretsx."Agent"."HomePhoneComplete" IS 'Home Phone Complete';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "NRDSID" text;
    COMMENT ON COLUMN aarretsx."Agent"."NRDSID" IS 'NRDS ID';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "PhonePager" text;
    COMMENT ON COLUMN aarretsx."Agent"."PhonePager" IS 'Pager Phone';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "HomePhoneAreaCode" text;
    COMMENT ON COLUMN aarretsx."Agent"."HomePhoneAreaCode" IS 'Home Phone Area Code';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "IsActive" boolean;
    COMMENT ON COLUMN aarretsx."Agent"."IsActive" IS 'Is Active in the MLS';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "Gender" text;
    COMMENT ON COLUMN aarretsx."Agent"."Gender" IS 'Gender';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "State" text;
    COMMENT ON COLUMN aarretsx."Agent"."State" IS 'State';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "LastModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."Agent"."LastModifiedDateTime" IS 'LastModified Date Time';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ContactPhoneAreaCode3" text;
    COMMENT ON COLUMN aarretsx."Agent"."ContactPhoneAreaCode3" IS 'Contact Phone Area Code 3';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "WebPageAddress" text;
    COMMENT ON COLUMN aarretsx."Agent"."WebPageAddress" IS 'Web Page Address';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "CarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."Agent"."CarrierRouteCode" IS 'Carrier Route Code';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "LicenseExpirationDate" text;
    COMMENT ON COLUMN aarretsx."Agent"."LicenseExpirationDate" IS 'License Expiration Date';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "County" text;
    COMMENT ON COLUMN aarretsx."Agent"."County" IS 'County';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ContactPhoneNumber1" text;
    COMMENT ON COLUMN aarretsx."Agent"."ContactPhoneNumber1" IS 'Contact Phone Number 1';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "Title" text;
    COMMENT ON COLUMN aarretsx."Agent"."Title" IS 'Title';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "OfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."Agent"."OfficeMLSID" IS 'Office MLS ID';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "PictureCount" integer;
    COMMENT ON COLUMN aarretsx."Agent"."PictureCount" IS 'Agent Picture Count';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "City" text;
    COMMENT ON COLUMN aarretsx."Agent"."City" IS 'City';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "LicenseType" text;
    COMMENT ON COLUMN aarretsx."Agent"."LicenseType" IS 'License Type';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "FullName" text;
    COMMENT ON COLUMN aarretsx."Agent"."FullName" IS 'Full Name';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "BirthDate" text;
    COMMENT ON COLUMN aarretsx."Agent"."BirthDate" IS 'Birth Date';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ContactPhoneNumber3" text;
    COMMENT ON COLUMN aarretsx."Agent"."ContactPhoneNumber3" IS 'Contact Phone Number 3';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "PersonalFaxPhone" text;
    COMMENT ON COLUMN aarretsx."Agent"."PersonalFaxPhone" IS 'Personal Fax Phone';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "PhoneExtension" integer;
    COMMENT ON COLUMN aarretsx."Agent"."PhoneExtension" IS 'Phone Extension';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "StreetAddress" text;
    COMMENT ON COLUMN aarretsx."Agent"."StreetAddress" IS 'Street Address';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ContactPhoneNumber2" text;
    COMMENT ON COLUMN aarretsx."Agent"."ContactPhoneNumber2" IS 'Contact Phone Number 2';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "ContactPhoneType1" text;
    COMMENT ON COLUMN aarretsx."Agent"."ContactPhoneType1" IS 'Contact Phone Type 1';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "PersonalFaxPhoneComplete" text;
    COMMENT ON COLUMN aarretsx."Agent"."PersonalFaxPhoneComplete" IS 'Personal Fax Phone Complete';

    ALTER TABLE aarretsx."Agent" ADD COLUMN "HomePhoneNumber" text;
    COMMENT ON COLUMN aarretsx."Agent"."HomePhoneNumber" IS 'Home Phone Number';

  CREATE TABLE aarretsx."History"() ;
    ALTER TABLE aarretsx."History" ADD COLUMN "ListingRid" integer;
    COMMENT ON COLUMN aarretsx."History"."ListingRid" IS 'Listing RID';

    ALTER TABLE aarretsx."History" ADD COLUMN "NewPrice" decimal;
    COMMENT ON COLUMN aarretsx."History"."NewPrice" IS 'New Price';

    ALTER TABLE aarretsx."History" ADD COLUMN "Commission3" text;
    COMMENT ON COLUMN aarretsx."History"."Commission3" IS 'Commission3';

    ALTER TABLE aarretsx."History" ADD COLUMN "NewStatus" text;
    COMMENT ON COLUMN aarretsx."History"."NewStatus" IS 'New Status';

    ALTER TABLE aarretsx."History" ADD COLUMN "Commission2" text;
    COMMENT ON COLUMN aarretsx."History"."Commission2" IS 'Commission2';

    ALTER TABLE aarretsx."History" ADD COLUMN "LastModifiedBy" integer;
    COMMENT ON COLUMN aarretsx."History"."LastModifiedBy" IS 'Last Modified By';

    ALTER TABLE aarretsx."History" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN aarretsx."History"."MLS" IS 'MLS';

    ALTER TABLE aarretsx."History" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN aarretsx."History"."DOM" IS 'DOM';

    ALTER TABLE aarretsx."History" ADD COLUMN "OldPrice" decimal;
    COMMENT ON COLUMN aarretsx."History"."OldPrice" IS 'Old Price';

    ALTER TABLE aarretsx."History" ADD COLUMN "TransactionRid" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."History"."TransactionRid" IS 'Transaction Rid';

    ALTER TABLE aarretsx."History" ADD COLUMN "Commission1" text;
    COMMENT ON COLUMN aarretsx."History"."Commission1" IS 'Commission1';

    ALTER TABLE aarretsx."History" ADD COLUMN "WorkingMemberNumber" integer;
    COMMENT ON COLUMN aarretsx."History"."WorkingMemberNumber" IS 'Working Member Number';

    ALTER TABLE aarretsx."History" ADD COLUMN "DateTimeChanged" text;
    COMMENT ON COLUMN aarretsx."History"."DateTimeChanged" IS 'DateTimeChanged';

    ALTER TABLE aarretsx."History" ADD COLUMN "MLNumber" integer;
    COMMENT ON COLUMN aarretsx."History"."MLNumber" IS 'Multiple Listing Number';

    ALTER TABLE aarretsx."History" ADD COLUMN "OldStatus" text;
    COMMENT ON COLUMN aarretsx."History"."OldStatus" IS 'Old Status';

  CREATE TABLE aarretsx."MemberAssociation"() ;
    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "MemberType" text;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."MemberType" IS 'Member Type Code';

    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "BillType" text;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."BillType" IS 'Bill Type Code';

    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "MemberNumber" integer;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."MemberNumber" IS 'Member Number';

    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "MemberAssociationKey" text PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."MemberAssociationKey" IS 'Member Association Key';

    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "AssociationID" text;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."AssociationID" IS 'Association ID';

    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "LastModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."LastModifiedDateTime" IS 'Last Modified Date Time';

    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "Status" text;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."Status" IS 'Status';

    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."MLSID" IS 'MLS ID';

    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "RealtorMember" boolean;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."RealtorMember" IS 'Realtor Member';

    ALTER TABLE aarretsx."MemberAssociation" ADD COLUMN "StatusDate" text;
    COMMENT ON COLUMN aarretsx."MemberAssociation"."StatusDate" IS 'Status Date';

  CREATE TABLE aarretsx."Office"() ;
    ALTER TABLE aarretsx."Office" ADD COLUMN "BillingOffice" integer;
    COMMENT ON COLUMN aarretsx."Office"."BillingOffice" IS 'Billing Office';

    ALTER TABLE aarretsx."Office" ADD COLUMN "StreetCarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."Office"."StreetCarrierRouteCode" IS 'Street Carrier Route Code';

    ALTER TABLE aarretsx."Office" ADD COLUMN "OfficeName" text;
    COMMENT ON COLUMN aarretsx."Office"."OfficeName" IS 'Office Name';

    ALTER TABLE aarretsx."Office" ADD COLUMN "NumberOfBranches" integer;
    COMMENT ON COLUMN aarretsx."Office"."NumberOfBranches" IS 'Number Of Branches';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MailZipPlus4" text;
    COMMENT ON COLUMN aarretsx."Office"."MailZipPlus4" IS 'Mail Zip Plus 4';

    ALTER TABLE aarretsx."Office" ADD COLUMN "OfficeAreaCode" text;
    COMMENT ON COLUMN aarretsx."Office"."OfficeAreaCode" IS 'Office Area Code';

    ALTER TABLE aarretsx."Office" ADD COLUMN "OfficeNumber" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."Office"."OfficeNumber" IS 'Office Number';

    ALTER TABLE aarretsx."Office" ADD COLUMN "StreetZipCode" text;
    COMMENT ON COLUMN aarretsx."Office"."StreetZipCode" IS 'Street Zip Code';

    ALTER TABLE aarretsx."Office" ADD COLUMN "NRDSID" text;
    COMMENT ON COLUMN aarretsx."Office"."NRDSID" IS 'NRDS ID';

    ALTER TABLE aarretsx."Office" ADD COLUMN "StreetState" text;
    COMMENT ON COLUMN aarretsx."Office"."StreetState" IS 'Street State';

    ALTER TABLE aarretsx."Office" ADD COLUMN "OfficePhoneComplete" text;
    COMMENT ON COLUMN aarretsx."Office"."OfficePhoneComplete" IS 'Office Phone Complete';

    ALTER TABLE aarretsx."Office" ADD COLUMN "OtherPhoneNumber" text;
    COMMENT ON COLUMN aarretsx."Office"."OtherPhoneNumber" IS 'Other Phone Number';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MailCounty" text;
    COMMENT ON COLUMN aarretsx."Office"."MailCounty" IS 'Mail County';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MailCity" text;
    COMMENT ON COLUMN aarretsx."Office"."MailCity" IS 'Mail City';

    ALTER TABLE aarretsx."Office" ADD COLUMN "ResponsibleMember" integer;
    COMMENT ON COLUMN aarretsx."Office"."ResponsibleMember" IS 'Responsible Member';

    ALTER TABLE aarretsx."Office" ADD COLUMN "EmailAddress" text;
    COMMENT ON COLUMN aarretsx."Office"."EmailAddress" IS 'Email Address';

    ALTER TABLE aarretsx."Office" ADD COLUMN "StreetCity" text;
    COMMENT ON COLUMN aarretsx."Office"."StreetCity" IS 'Street City';

    ALTER TABLE aarretsx."Office" ADD COLUMN "BannerCount" integer;
    COMMENT ON COLUMN aarretsx."Office"."BannerCount" IS 'Office Banner Count';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MailCareOf" text;
    COMMENT ON COLUMN aarretsx."Office"."MailCareOf" IS 'Mail Care Of';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN aarretsx."Office"."MLSID" IS 'MLS ID';

    ALTER TABLE aarretsx."Office" ADD COLUMN "OfficeLongName" text;
    COMMENT ON COLUMN aarretsx."Office"."OfficeLongName" IS 'Office Long Name';

    ALTER TABLE aarretsx."Office" ADD COLUMN "FaxPhone" text;
    COMMENT ON COLUMN aarretsx."Office"."FaxPhone" IS 'Fax Phone';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MailZipCode" text;
    COMMENT ON COLUMN aarretsx."Office"."MailZipCode" IS 'Mail Zip Code';

    ALTER TABLE aarretsx."Office" ADD COLUMN "OfficeContactMember" integer;
    COMMENT ON COLUMN aarretsx."Office"."OfficeContactMember" IS 'Office Contact Member';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MailState" text;
    COMMENT ON COLUMN aarretsx."Office"."MailState" IS 'Mail State';

    ALTER TABLE aarretsx."Office" ADD COLUMN "StreetZipPlus4" text;
    COMMENT ON COLUMN aarretsx."Office"."StreetZipPlus4" IS 'Street Zip Plus 4';

    ALTER TABLE aarretsx."Office" ADD COLUMN "StreetCareOf" text;
    COMMENT ON COLUMN aarretsx."Office"."StreetCareOf" IS 'Street Care Of';

    ALTER TABLE aarretsx."Office" ADD COLUMN "StreetAddress" text;
    COMMENT ON COLUMN aarretsx."Office"."StreetAddress" IS 'Street Address';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MailCarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."Office"."MailCarrierRouteCode" IS 'Mail Carrier Route Code';

    ALTER TABLE aarretsx."Office" ADD COLUMN "OtherAreaCode" text;
    COMMENT ON COLUMN aarretsx."Office"."OtherAreaCode" IS 'Other Area Code';

    ALTER TABLE aarretsx."Office" ADD COLUMN "StreetCounty" text;
    COMMENT ON COLUMN aarretsx."Office"."StreetCounty" IS 'Street County';

    ALTER TABLE aarretsx."Office" ADD COLUMN "CorporateLicense" text;
    COMMENT ON COLUMN aarretsx."Office"."CorporateLicense" IS 'Corporate License';

    ALTER TABLE aarretsx."Office" ADD COLUMN "VOW" text;
    COMMENT ON COLUMN aarretsx."Office"."VOW" IS 'Virtual Office Website';

    ALTER TABLE aarretsx."Office" ADD COLUMN "IsActive" boolean;
    COMMENT ON COLUMN aarretsx."Office"."IsActive" IS 'Is Active in the MLS';

    ALTER TABLE aarretsx."Office" ADD COLUMN "PhonePager" text;
    COMMENT ON COLUMN aarretsx."Office"."PhonePager" IS 'Pager Phone';

    ALTER TABLE aarretsx."Office" ADD COLUMN "FaxAreaCode" text;
    COMMENT ON COLUMN aarretsx."Office"."FaxAreaCode" IS 'Fax Area Code';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MailAddress" text;
    COMMENT ON COLUMN aarretsx."Office"."MailAddress" IS 'Mail Address';

    ALTER TABLE aarretsx."Office" ADD COLUMN "OfficePhone" text;
    COMMENT ON COLUMN aarretsx."Office"."OfficePhone" IS 'Office Phone';

    ALTER TABLE aarretsx."Office" ADD COLUMN "MainOfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."Office"."MainOfficeNumber" IS 'Main Office Number';

    ALTER TABLE aarretsx."Office" ADD COLUMN "WebPageAddress" text;
    COMMENT ON COLUMN aarretsx."Office"."WebPageAddress" IS 'Web Page Address';

    ALTER TABLE aarretsx."Office" ADD COLUMN "IDX" text;
    COMMENT ON COLUMN aarretsx."Office"."IDX" IS 'IDX';

    ALTER TABLE aarretsx."Office" ADD COLUMN "LastModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."Office"."LastModifiedDateTime" IS 'LastModified Date Time';

    ALTER TABLE aarretsx."Office" ADD COLUMN "FaxPhoneComplete" text;
    COMMENT ON COLUMN aarretsx."Office"."FaxPhoneComplete" IS 'Fax Phone Complete';

    ALTER TABLE aarretsx."Office" ADD COLUMN "BranchType" text;
    COMMENT ON COLUMN aarretsx."Office"."BranchType" IS 'Branch Type';

  CREATE TABLE aarretsx."OfficeAssociation"() ;
    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "OfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."OfficeNumber" IS 'Office Number';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "BillStatus" text;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."BillStatus" IS 'Bill Status';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "RealtorOffice" text;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."RealtorOffice" IS 'Realtor Office';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "AssociationID" text;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."AssociationID" IS 'Association ID';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "JoinDate" text;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."JoinDate" IS 'Join Date';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "MLSID" text;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."MLSID" IS 'MLS ID';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "Status" text;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."Status" IS 'Status';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "LastModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."LastModifiedDateTime" IS 'Last Modified Date Time';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "OfficeType" text;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."OfficeType" IS 'Office Type';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "OfficeAssociationKey" text PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."OfficeAssociationKey" IS 'Office Association Key';

    ALTER TABLE aarretsx."OfficeAssociation" ADD COLUMN "StatusDate" text;
    COMMENT ON COLUMN aarretsx."OfficeAssociation"."StatusDate" IS 'Status Date';

  CREATE TABLE aarretsx."OpenHouse"() ;
    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentWebPageAddress" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentWebPageAddress" IS 'Agent Web Page Address';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "ListingOfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."OpenHouse"."ListingOfficeNumber" IS 'Listing Office Number';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentEmailAddress" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentEmailAddress" IS 'Agent Email Address';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeName" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeName" IS 'Office Name';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeStreetZipCode" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeStreetZipCode" IS 'Office Street Zip Code';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeFaxPhone" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeFaxPhone" IS 'Office Fax Phone';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeNRDSID" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeNRDSID" IS 'Office NRDS ID';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "ListingAgentNumber" integer;
    COMMENT ON COLUMN aarretsx."OpenHouse"."ListingAgentNumber" IS 'Listing Agent Number';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "ListingNumberDisplay" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."ListingNumberDisplay" IS 'Listing Number Display';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "Comment" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."Comment" IS 'Comment';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentLastName" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentLastName" IS 'Agent Last Name';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "StartDateTime" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."StartDateTime" IS 'Start DateTime';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeWebPageAddress" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeWebPageAddress" IS 'Office Web Page Address';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "EndDateTime" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."EndDateTime" IS 'End DateTime';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentCity" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentCity" IS 'Agent City';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentMLSID" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentMLSID" IS 'Agent MLS ID';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentHomePhone" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentHomePhone" IS 'Agent Home Phone';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeStreetCity" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeStreetCity" IS 'Office Street City';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeEmailAddress" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeEmailAddress" IS 'Office Email Address';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "TimeComments" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."TimeComments" IS 'Time Comments';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeStreetAddress" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeStreetAddress" IS 'Office Street Address';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentStreetAddress" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentStreetAddress" IS 'Agent Street Address';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentCarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentCarrierRouteCode" IS 'Agent Carrier Route Code';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentNRDSID" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentNRDSID" IS 'Agent NRDS ID';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentFirstName" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentFirstName" IS 'Agent First Name';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OpenHouseRid" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OpenHouseRid" IS 'Open House Rid';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "ListingRid" integer;
    COMMENT ON COLUMN aarretsx."OpenHouse"."ListingRid" IS 'Listing RID';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentZipCode" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentZipCode" IS 'Agent Zip Code';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficePhone" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficePhone" IS 'Office Phone';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeStreetCarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeStreetCarrierRouteCode" IS 'Office Street Carrier Route Code';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeStreetState" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeStreetState" IS 'Office Street State';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentState" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentState" IS 'Agent State';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "AgentPersonalFaxPhone" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."AgentPersonalFaxPhone" IS 'Agent Personal Fax Phone';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "OfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."OpenHouse"."OfficeMLSID" IS 'Office MLS ID';

    ALTER TABLE aarretsx."OpenHouse" ADD COLUMN "MLNumber" integer;
    COMMENT ON COLUMN aarretsx."OpenHouse"."MLNumber" IS 'Multiple Listing Number';

  CREATE TABLE aarretsx."Property"() INHERITS (property);
    ALTER TABLE aarretsx."Property" ADD COLUMN "BreakfastRoomLen" integer;
    COMMENT ON COLUMN aarretsx."Property"."BreakfastRoomLen" IS 'BreakfastRoom Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIASFE" decimal;
    COMMENT ON COLUMN aarretsx."Property"."RESIASFE" IS 'Association Fee';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMLSTR" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMLSTR" IS 'Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLBTH" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLBTH" IS 'Bedroom 3 Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILLIB" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILLIB" IS 'Library Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTKITL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTKITL" IS 'Kitchen';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIFRON" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIFRON" IS 'Frontage';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingCoAgentFullName" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingCoAgentFullName" IS 'Listing Co Agent Full Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Validated" boolean;
    COMMENT ON COLUMN aarretsx."Property"."Validated" IS 'Validated';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIENEC" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIENEC" IS 'Energy Certified';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTTRMM" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTTRMM" IS 'Terms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISEVY" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESISEVY" IS 'State Eq Value Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUIBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUIBD" IS 'Unit 5 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESITOTF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESITOTF" IS 'SF Total Finished';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Unit" text;
    COMMENT ON COLUMN aarretsx."Property"."Unit" IS 'Unit';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISFBG" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESISFBG" IS 'SF Finishd Blw Grade';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMEMIS" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMEMIS" IS 'Misc. Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTCNNN" decimal;
    COMMENT ON COLUMN aarretsx."Property"."RENTCNNN" IS 'Concession Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom4Dim" text;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom4Dim" IS 'Bedroom4 Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTENBF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTENBF" IS 'Entry Full Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMTAXO" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMTAXO" IS 'Tax Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom4Area" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom4Area" IS 'Bedroom4 Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIELEV" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIELEV" IS 'Elevator';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom4Wid" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom4Wid" IS 'Bedroom4 Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingPrice" decimal;
    COMMENT ON COLUMN aarretsx."Property"."SellingPrice" IS 'Selling Price';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIJRHS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIJRHS" IS 'Jr High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ReciprocalMemberName" text;
    COMMENT ON COLUMN aarretsx."Property"."ReciprocalMemberName" IS 'Reciprocal Member Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILBTW" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILBTW" IS 'Bedroom 2 Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMAGRR" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMAGRR" IS 'Agreement Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIPOND" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIPOND" IS 'Pond';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTPRKS" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTPRKS" IS '# Of Parking Spaces';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIEATT" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIEATT" IS 'Eating Space';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTAPLI" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTAPLI" IS 'Application';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bathrooms" decimal;
    COMMENT ON COLUMN aarretsx."Property"."Bathrooms" IS 'Bathrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESICURB" text;
    COMMENT ON COLUMN aarretsx."Property"."RESICURB" IS 'Curbs/Gutters';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPBROK" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPBROK" IS 'Broker Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "FIPSCode" integer;
    COMMENT ON COLUMN aarretsx."Property"."FIPSCode" IS 'FIPS Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOLL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUOLL" IS 'Unit 1 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTDINL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTDINL" IS 'Dining Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESICTTP" text;
    COMMENT ON COLUMN aarretsx."Property"."RESICTTP" IS 'City or Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "VariableRateCommission" boolean;
    COMMENT ON COLUMN aarretsx."Property"."VariableRateCommission" IS 'Variable Rate';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUEBF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUEBF" IS 'Unit 7 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTGREL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTGREL" IS 'Great Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSTKV" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSTKV" IS 'Stake Visible';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingOfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingOfficeMLSID" IS 'Selling Office MLS ID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "StatusDate" text;
    COMMENT ON COLUMN aarretsx."Property"."StatusDate" IS 'Status Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMWTRT" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMWTRT" IS 'Water Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingComments" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingComments" IS 'Selling Comments';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUILS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUILS" IS 'Unit 5 Date Lease Ex';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILGRE" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILGRE" IS 'Great Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "OwnerPhoneArea" text;
    COMMENT ON COLUMN aarretsx."Property"."OwnerPhoneArea" IS 'Owner Phone Area Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMOASF" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMOASF" IS 'Open Area SF';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESINEWC" text;
    COMMENT ON COLUMN aarretsx."Property"."RESINEWC" IS 'New Construction';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILLRL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILLRL" IS 'Laundry Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMRSTR" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMRSTR" IS '# Of Restrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Association" text;
    COMMENT ON COLUMN aarretsx."Property"."Association" IS 'Association';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SearchPrice" decimal;
    COMMENT ON COLUMN aarretsx."Property"."SearchPrice" IS 'Search Price';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUETR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUETR" IS 'Unit 7 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTEBUS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTEBUS" IS 'Elem Bus Line';

    ALTER TABLE aarretsx."Property" ADD COLUMN "DiningRoomWid" integer;
    COMMENT ON COLUMN aarretsx."Property"."DiningRoomWid" IS 'DiningRoom Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LibraryDim" text;
    COMMENT ON COLUMN aarretsx."Property"."LibraryDim" IS 'Library Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTYYP" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPTYYP" IS 'Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMGDSD" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMGDSD" IS 'Cost of Goods Sold';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPEMGT" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPEMGT" IS 'Management Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTAPPL" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTAPPL" IS 'Appliances';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIAAMN" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIAAMN" IS 'Assoc Amenities';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMBUID" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMBUID" IS 'Building Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTXYX" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPTXYX" IS 'Tax Value Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPNEWC" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPNEWC" IS 'New Construction';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMFLRS" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMFLRS" IS 'Floors';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMPOOS" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMPOOS" IS 'Possession';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIWTRT" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIWTRT" IS 'Water Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTAC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUTAC" IS 'Unit 2 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPROAD" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPROAD" IS 'Road Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTHBUS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTHBUS" IS 'High Bus Line';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNLS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUNLS" IS 'Unit 9 Date Lease Ex';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom3Len" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom3Len" IS 'Bedroom3 Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Commission2" text;
    COMMENT ON COLUMN aarretsx."Property"."Commission2" IS 'Sub Agency';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLBROK" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLBROK" IS 'Broker Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGHB" IS 'Unit 8 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTLL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUTLL" IS 'Unit 2 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPHOME" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPHOME" IS 'Homestead';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTRMM" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPTRMM" IS 'Terms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom5Len" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom5Len" IS 'Bedroom5 Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSEWE" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLSEWE" IS 'Sewer';

    ALTER TABLE aarretsx."Property" ADD COLUMN "VirtualTourURL" text;
    COMMENT ON COLUMN aarretsx."Property"."VirtualTourURL" IS 'Virtual Tour URL';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOLS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUOLS" IS 'Unit 1 Date Lease Ex';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTCNCS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTCNCS" IS 'Concession';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTOCUP" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTOCUP" IS 'Occupancy';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCEIL" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMCEIL" IS 'Ceilings';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSFBG" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTSFBG" IS 'SF Finishd Blw Grade';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSFAG" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTSFAG" IS 'SF Finishd Abv Grade';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIUNTT" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIUNTT" IS 'Unit #';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCONC" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMCONC" IS 'Construction';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTENEC" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTENEC" IS 'Energy Certified';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSFAS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSFAS" IS 'SF Above Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTUPBH" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTUPBH" IS 'Upper 1/2 Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingOfficeName" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingOfficeName" IS 'Listing Office Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZAC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUZAC" IS 'Unit 10 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "County" text;
    COMMENT ON COLUMN aarretsx."Property"."County" IS 'County';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Financing" text;
    COMMENT ON COLUMN aarretsx."Property"."Financing" IS 'Financing';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MasterBedroomLen" integer;
    COMMENT ON COLUMN aarretsx."Property"."MasterBedroomLen" IS 'MasterBedroom Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTCTTP" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTCTTP" IS 'City or Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIEXCL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIEXCL" IS 'Exclusions';

    ALTER TABLE aarretsx."Property" ADD COLUMN "OccupantType" text;
    COMMENT ON COLUMN aarretsx."Property"."OccupantType" IS 'Occupant Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "State" text;
    COMMENT ON COLUMN aarretsx."Property"."State" IS 'State';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCNNN" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMCNNN" IS 'Concession Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCEIH" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMCEIH" IS 'Ceiling Height';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTEATT" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTEATT" IS 'Eating Space';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZRF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUZRF" IS 'Unit 10 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLSRQ" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLSRQ" IS 'Lease Required';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSIDE" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSIDE" IS 'Sidewalk';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTPAY" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPTPAY" IS 'Tenant Pays';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ReciprocalOfficeName" text;
    COMMENT ON COLUMN aarretsx."Property"."ReciprocalOfficeName" IS 'Reciprocal Office Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMAIRC" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMAIRC" IS 'Air Conditioning';

    ALTER TABLE aarretsx."Property" ADD COLUMN "OwnerName" text;
    COMMENT ON COLUMN aarretsx."Property"."OwnerName" IS 'Owner Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESICFAC" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESICFAC" IS 'Common Facilities';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MarketingRemarks" text;
    COMMENT ON COLUMN aarretsx."Property"."MarketingRemarks" IS 'Public Remarks';

    ALTER TABLE aarretsx."Property" ADD COLUMN "AgreementType2" text;
    COMMENT ON COLUMN aarretsx."Property"."AgreementType2" IS 'Agreement Type 2';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUNHB" IS 'Unit 9 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSHOR" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPSHOR" IS 'Short Sale';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISEWE" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESISEWE" IS 'Sewer';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILTDM" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILTDM" IS 'Lot Dimensions';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBTHL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTBTHL" IS 'Bedroom 3';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSEWE" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTSEWE" IS 'Sewer';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingAgentFullName" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingAgentFullName" IS 'Listing Agent Full Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSGNN" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSGNN" IS 'Sign';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMENEC" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMENEC" IS 'Energy Certified';

    ALTER TABLE aarretsx."Property" ADD COLUMN "DiningRoomArea" integer;
    COMMENT ON COLUMN aarretsx."Property"."DiningRoomArea" IS 'DiningRoom Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIENBF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIENBF" IS 'Entry Full Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISITE" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISITE" IS 'Site Condo';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTYEAC" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTYEAC" IS 'Year Certified';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESITXYX" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESITXYX" IS 'Tax Value Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFBD" IS 'Unit 4 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIWINN" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIWINN" IS 'Winter Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUITR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUITR" IS 'Unit 5 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "GreatRoomWid" integer;
    COMMENT ON COLUMN aarretsx."Property"."GreatRoomWid" IS 'GreatRoom Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSUMX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSUMX" IS 'Summer Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMMNEX" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMMNEX" IS 'Monthly Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPWTRT" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPWTRT" IS 'Water Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMLSAM" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMLSAM" IS 'Lease Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIHOME" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIHOME" IS 'Homestead';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTEXCL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTEXCL" IS 'Exclusions';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Age" integer;
    COMMENT ON COLUMN aarretsx."Property"."Age" IS 'Age';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIGREL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIGREL" IS 'Great Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingAgentLastName" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingAgentLastName" IS 'Listing Agent Last Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MLNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."MLNumber" IS 'Listing Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingCoAgentMLSID" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingCoAgentMLSID" IS 'Selling Co Agent MLS ID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ContingentDate" text;
    COMMENT ON COLUMN aarretsx."Property"."ContingentDate" IS 'Contingent Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILDIN" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILDIN" IS 'Dining Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSUMX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."RENTSUMX" IS 'Summer Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFLL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFLL" IS 'Unit 4 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "EnteredByMLSID" text;
    COMMENT ON COLUMN aarretsx."Property"."EnteredByMLSID" IS 'Entered By MLS ID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPWATF" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPWATF" IS 'Waterfront';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFTR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFTR" IS 'Unit 4 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ShowingInstructions" text;
    COMMENT ON COLUMN aarretsx."Property"."ShowingInstructions" IS 'Showing Instructions';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPOINC" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPOINC" IS 'Other Income';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLWATF" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLWATF" IS 'Waterfront';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISFAG" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESISFAG" IS 'SF Finishd Abv Grade';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLIVL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLIVL" IS 'Living Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTEFIN" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTEFIN" IS 'Existing Finance';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SearchContractualDate" text;
    COMMENT ON COLUMN aarretsx."Property"."SearchContractualDate" IS 'SearchContractualDate';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PropertySubtype3" text;
    COMMENT ON COLUMN aarretsx."Property"."PropertySubtype3" IS 'Property Subtype 3';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom3Area" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom3Area" IS 'Bedroom3 Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBTBH" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTBTBH" IS 'Basement 1/2 Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLBTW" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLBTW" IS 'Bedroom 2 Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMPART" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMPART" IS 'Partnership';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTWATT" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTWATT" IS 'Water';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMMILF" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMMILF" IS 'MilesTo Closest Frwy';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISCDT" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISCDT" IS 'School District Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESICNCS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESICNCS" IS 'Concession';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUEIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUEIC" IS 'Unit 7 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMOWNS" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMOWNS" IS 'Ownership';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIHBUS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIHBUS" IS 'High Bus Line';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom3Wid" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom3Wid" IS 'Bedroom3 Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "QuarterBathrooms" integer;
    COMMENT ON COLUMN aarretsx."Property"."QuarterBathrooms" IS 'Quarter Bathrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMGSAL" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMGSAL" IS 'Gross Sales Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLJRHS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLJRHS" IS 'Jr High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUIBF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUIBF" IS 'Unit 5 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBTBH" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIBTBH" IS 'Basement 1/2 Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "APN" text;
    COMMENT ON COLUMN aarretsx."Property"."APN" IS 'Tax Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPCRTE" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPCRTE" IS 'Cert Occu Exp Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTGASS" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTGASS" IS 'Gas';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNAC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUNAC" IS 'Unit 9 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISUMM" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESISUMM" IS 'Summer Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLLAKE" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLLAKE" IS 'Lake Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "GreatRoomArea" integer;
    COMMENT ON COLUMN aarretsx."Property"."GreatRoomArea" IS 'GreatRoom Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTPUBT" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTPUBT" IS 'PublicTransportation';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingAgentNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."ListingAgentNumber" IS 'Listing Agent Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ThreeQuarterBathrooms" integer;
    COMMENT ON COLUMN aarretsx."Property"."ThreeQuarterBathrooms" IS 'Three Quarter Bathrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILNRM" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILNRM" IS 'Laundry Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PropertyDisclaimer" text;
    COMMENT ON COLUMN aarretsx."Property"."PropertyDisclaimer" IS 'Property Disclaimer';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBDTL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIBDTL" IS 'Master Bedroom';

    ALTER TABLE aarretsx."Property" ADD COLUMN "KitchenDim" text;
    COMMENT ON COLUMN aarretsx."Property"."KitchenDim" IS 'Kitchen Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIHEAT" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIHEAT" IS 'Heat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCONS" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMCONS" IS 'Construction Status';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTOTF" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPTOTF" IS 'SF Total Finished';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBTWL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIBTWL" IS 'Bedroom 2';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUTIC" IS 'Unit 2 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "AgreementType" text;
    COMMENT ON COLUMN aarretsx."Property"."AgreementType" IS 'Agreement Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMDEPT" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMDEPT" IS 'Deposit';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTGARG" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTGARG" IS 'Garage';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSYND" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSYND" IS 'Syndication Remarks';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTWATF" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTWATF" IS 'Waterfront';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingCoOfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingCoOfficeMLSID" IS 'Listing Co Office MLS ID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "BreakfastRoomArea" integer;
    COMMENT ON COLUMN aarretsx."Property"."BreakfastRoomArea" IS 'BreakfastRoom Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILEAS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILEAS" IS 'Leased Acreage';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESITRMM" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESITRMM" IS 'Terms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Approved" boolean;
    COMMENT ON COLUMN aarretsx."Property"."Approved" IS 'Broker Approved';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTJBUS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTJBUS" IS 'Jr High Bus Line';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMEXTR" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMEXTR" IS 'Exterior';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSFBG" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPSFBG" IS 'SF Finishd Blw Grade';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTUPBF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTUPBF" IS 'Upper Full Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBTBF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIBTBF" IS 'Basement Full Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ContingentExpirationDate" text;
    COMMENT ON COLUMN aarretsx."Property"."ContingentExpirationDate" IS 'Contingent Expiration Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSLL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSLL" IS 'Unit 6 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTANNS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTANNS" IS 'Ann Arbor Schl Dist.';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIAIRC" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIAIRC" IS 'Air Conditioning';

    ALTER TABLE aarretsx."Property" ADD COLUMN "CDOM" integer;
    COMMENT ON COLUMN aarretsx."Property"."CDOM" IS 'Cumulative Days On Market';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LivingRoomLen" integer;
    COMMENT ON COLUMN aarretsx."Property"."LivingRoomLen" IS 'LivingRoom Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISUMX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."RESISUMX" IS 'Summer Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLELSV" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLELSV" IS 'Electricity Service';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTTR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUTTR" IS 'Unit 2 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZTR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUZTR" IS 'Unit 10 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPCNNN" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPCNNN" IS 'Concession Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSEPM" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPSEPM" IS 'Separate Meters';

    ALTER TABLE aarretsx."Property" ADD COLUMN "OwnerPhoneNumber" text;
    COMMENT ON COLUMN aarretsx."Property"."OwnerPhoneNumber" IS 'Owner Phone Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LivingRoomWid" integer;
    COMMENT ON COLUMN aarretsx."Property"."LivingRoomWid" IS 'LivingRoom Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIMOFF" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIMOFF" IS 'Multiple Offers';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Commission3" text;
    COMMENT ON COLUMN aarretsx."Property"."Commission3" IS 'Transaction Coord';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMLOPE" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMLOPE" IS 'LessOperExpenAmount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "FamilyRoomLen" integer;
    COMMENT ON COLUMN aarretsx."Property"."FamilyRoomLen" IS 'FamilyRoom Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLLRL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLLRL" IS 'Laundry Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUIAC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUIAC" IS 'Unit 5 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LotSquareFootage" integer;
    COMMENT ON COLUMN aarretsx."Property"."LotSquareFootage" IS 'Lot Square Footage';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMELEA" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMELEA" IS 'Electric Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTBF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUTBF" IS 'Unit 2 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Status" text;
    COMMENT ON COLUMN aarretsx."Property"."Status" IS 'Status';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LotMeasurement" text;
    COMMENT ON COLUMN aarretsx."Property"."LotMeasurement" IS 'Lot Measurement';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUEAC" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUEAC" IS 'Unit 7 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPOWNS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPOWNS" IS 'Ownership';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIIFEA" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIIFEA" IS 'Inside Features';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBARR" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTBARR" IS 'Barrier Free';

    ALTER TABLE aarretsx."Property" ADD COLUMN "GreatRoomDim" text;
    COMMENT ON COLUMN aarretsx."Property"."GreatRoomDim" IS 'GreatRoom Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingAgentFullName" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingAgentFullName" IS 'Selling Agent Full Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPEMAN" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPEMAN" IS 'Maintenance Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHSS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUHSS" IS 'Unit 3 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSUMX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPSUMX" IS 'Summer Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN aarretsx."Property"."PropertyType" IS 'Property Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLLIB" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLLIB" IS 'Library Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTIFEA" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTIFEA" IS 'Inside Features';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMINYR" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMINYR" IS 'Income Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMENVA" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMENVA" IS 'Environment Audit';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom2Len" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom2Len" IS 'Bedroom2 Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTTAXV" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTTAXV" IS 'Tax Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTFAML" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTFAML" IS 'Family Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLWINX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."LOTLWINX" IS 'Winter Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSTR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSTR" IS 'Unit 6 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTZONI" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTZONI" IS 'Zoning';

    ALTER TABLE aarretsx."Property" ADD COLUMN "YearBuiltException" integer;
    COMMENT ON COLUMN aarretsx."Property"."YearBuiltException" IS 'Year Built Exception';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMETAX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMETAX" IS 'Taxes Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSCDP" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSCDP" IS 'Security Deposit $';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSCDT" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPSCDT" IS 'School District Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUZBD" IS 'Unit 10 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTPETS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTPETS" IS 'Pets Allowed';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUSIC" IS 'Unit 6 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTWINX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."RENTWINX" IS 'Winter Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIPOLL" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIPOLL" IS 'Pool';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIZONI" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIZONI" IS 'Zoning';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LeaseType" text;
    COMMENT ON COLUMN aarretsx."Property"."LeaseType" IS 'Lease Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPCNCS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPCNCS" IS 'Concession';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMELET" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMELET" IS 'Electricity Tenant';

    ALTER TABLE aarretsx."Property" ADD COLUMN "NonMemberSalesOfficeName" text;
    COMMENT ON COLUMN aarretsx."Property"."NonMemberSalesOfficeName" IS 'Non Member Sales Office Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHAC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUHAC" IS 'Unit 3 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIAGRR" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIAGRR" IS 'Agreement Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPAGRR" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPAGRR" IS 'Agreement Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PricePerAcre" decimal;
    COMMENT ON COLUMN aarretsx."Property"."PricePerAcre" IS 'Price Per Acre';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISTTL" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESISTTL" IS 'Style';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingCoAgentFullName" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingCoAgentFullName" IS 'Selling Co Agent Full Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSOTH" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMSOTH" IS 'Source-Other';

    ALTER TABLE aarretsx."Property" ADD COLUMN "FamilyRoomDim" text;
    COMMENT ON COLUMN aarretsx."Property"."FamilyRoomDim" IS 'FamilyRoom Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIGARG" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIGARG" IS 'Garage';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom4Len" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom4Len" IS 'Bedroom4 Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSLS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSLS" IS 'Unit 6 Date Lease Ex';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSCDT" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSCDT" IS 'School District Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLHIGH" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLHIGH" IS 'High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLLDFC" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLLDFC" IS 'Land Faces';

    ALTER TABLE aarretsx."Property" ADD COLUMN "EntryDate" text;
    COMMENT ON COLUMN aarretsx."Property"."EntryDate" IS 'Entry Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBEDE" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTBEDE" IS 'Entry Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSECT" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSECT" IS 'Section 8';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSBF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSBF" IS 'Unit 6 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSYND" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMSYND" IS 'Syndication Remarks';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPINSO" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPINSO" IS 'Insurance Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISFBS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISFBS" IS 'SF Below Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMWINN" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMWINN" IS 'Winter Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SubLeaseExpiration" text;
    COMMENT ON COLUMN aarretsx."Property"."SubLeaseExpiration" IS 'Sub Lease Expiration Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTTXCR" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTTXCR" IS 'Taxes Current';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLBRE" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLBRE" IS 'Breakfast Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSMOK" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSMOK" IS 'Smoking';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISHOR" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISHOR" IS 'Short Sale';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTSO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUTSO" IS 'Unit 2 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLGRE" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLGRE" IS 'Great Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPCAPR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPCAPR" IS 'Cap Rate';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPEFIN" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPEFIN" IS 'Existing Finance';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ZeroSellingPrice" text;
    COMMENT ON COLUMN aarretsx."Property"."ZeroSellingPrice" IS 'Zero Selling Price';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFRF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFRF" IS 'Unit 4 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLTNSP" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLTNSP" IS 'Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LastModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."Property"."LastModifiedDateTime" IS 'Last Modified Date Time';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Latitude" decimal;
    COMMENT ON COLUMN aarretsx."Property"."Latitude" IS 'Latitude';

    ALTER TABLE aarretsx."Property" ADD COLUMN "FullBathrooms" integer;
    COMMENT ON COLUMN aarretsx."Property"."FullBathrooms" IS 'Full Bathrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMWATT" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMWATT" IS 'Water';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIOUTB" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIOUTB" IS 'Outbuildings';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLSRL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLSRL" IS 'Study Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUIRF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUIRF" IS 'Unit 5 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSRYS" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMSRYS" IS '# Of Stories';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTTXYX" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTTXYX" IS 'Tax Value Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIANNS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIANNS" IS 'Ann Arbor Schl Dist.';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMVACF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMVACF" IS 'Vacancy Factor';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIWATT" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIWATT" IS 'Water';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTASSA" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTASSA" IS 'Associations';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ReciprocalListing" text;
    COMMENT ON COLUMN aarretsx."Property"."ReciprocalListing" IS 'Reciprocal Listing';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTWTRS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTWTRS" IS 'Water Softener';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESITOBB" text;
    COMMENT ON COLUMN aarretsx."Property"."RESITOBB" IS 'To Be Built';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIFEEP" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIFEEP" IS 'Fee Period';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBREL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIBREL" IS 'Breakfast Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingOfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."ListingOfficeNumber" IS 'ListingOffice Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTOWNS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTOWNS" IS 'Ownership';

    ALTER TABLE aarretsx."Property" ADD COLUMN "GarageSpaces" integer;
    COMMENT ON COLUMN aarretsx."Property"."GarageSpaces" IS 'Garage Spaces';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNSS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUNSS" IS 'Unit 9 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLTRMM" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLTRMM" IS 'Terms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "AgentOnlyRemarks" text;
    COMMENT ON COLUMN aarretsx."Property"."AgentOnlyRemarks" IS 'Agent Only Remarks';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSUMM" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMSUMM" IS 'Summer Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "KitchenLen" integer;
    COMMENT ON COLUMN aarretsx."Property"."KitchenLen" IS 'Kitchen Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLWATT" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLWATT" IS 'Water';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MapYCoordinate" text;
    COMMENT ON COLUMN aarretsx."Property"."MapYCoordinate" IS 'Map Y Coordinate';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSSO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSSO" IS 'Unit 6 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGAC" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGAC" IS 'Unit 8 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUOHB" IS 'Unit 1 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSIDE" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPSIDE" IS 'Sidewalk';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPOPPI" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPOPPI" IS 'Operating Exp Inc';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMBDSF" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMBDSF" IS 'Building SF';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSEVV" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTSEVV" IS 'State Eq Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTICL" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPTICL" IS 'Ttl Income Collected';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSTOR" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSTOR" IS 'Storm Sewer';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMMAIA" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMMAIA" IS 'Maintenance Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUHIC" IS 'Unit 3 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOTR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUOTR" IS 'Unit 1 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBREL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTBREL" IS 'Breakfast Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPYEAC" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPYEAC" IS 'Year Certified';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMWATF" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMWATF" IS 'Waterfront';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPCURB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPCURB" IS 'Curbs/Gutters';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMROAD" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMROAD" IS 'Road Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLWTRT" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLWTRT" IS 'Water Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESICROP" text;
    COMMENT ON COLUMN aarretsx."Property"."RESICROP" IS 'Crops';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingOfficeName" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingOfficeName" IS 'Selling Office Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTFIRP" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTFIRP" IS 'Fireplace';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMLAKE" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMLAKE" IS 'Lake Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLJBUS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLJBUS" IS 'Jr Hgh Bus Line';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPLTDM" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPLTDM" IS 'Lot Dimensions';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUORF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUORF" IS 'Unit 1 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLLIV" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLLIV" IS 'Living Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPKTCH" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPKTCH" IS '# Of Kitchens';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPBASE" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPBASE" IS 'Basement';

    ALTER TABLE aarretsx."Property" ADD COLUMN "StreetPostDirection" text;
    COMMENT ON COLUMN aarretsx."Property"."StreetPostDirection" IS 'Street Post Direction';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLEASE" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLEASE" IS 'Easement';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedrooms" decimal;
    COMMENT ON COLUMN aarretsx."Property"."Bedrooms" IS 'Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGRF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGRF" IS 'Unit 8 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPIPRY" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPIPRY" IS 'Income Per Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLPAVE" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLPAVE" IS 'Paved';

    ALTER TABLE aarretsx."Property" ADD COLUMN "InactiveDate" text;
    COMMENT ON COLUMN aarretsx."Property"."InactiveDate" IS 'Inactive Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Acres" decimal;
    COMMENT ON COLUMN aarretsx."Property"."Acres" IS 'Acres';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPASSA" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPASSA" IS 'Associations';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCORP" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMCORP" IS 'Corporation';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom5Wid" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom5Wid" IS 'Bedroom5 Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLWLLL" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLWLLL" IS 'Well 1st';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBTWL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTBTWL" IS 'Bedroom 2';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ReciprocalMemberPhone" text;
    COMMENT ON COLUMN aarretsx."Property"."ReciprocalMemberPhone" IS 'Reciprocal Member Phone';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Longitude" decimal;
    COMMENT ON COLUMN aarretsx."Property"."Longitude" IS 'Longitude';

    ALTER TABLE aarretsx."Property" ADD COLUMN "CommComments" text;
    COMMENT ON COLUMN aarretsx."Property"."CommComments" IS 'Commission Comments';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISEVV" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESISEVV" IS 'State Eq Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESICONC" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESICONC" IS 'Construction';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSIDE" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSIDE" IS 'Sidewalk';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHRF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUHRF" IS 'Unit 3 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLCMZZ" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLCMZZ" IS 'Comm Zoning';

    ALTER TABLE aarretsx."Property" ADD COLUMN "FinancingComments" text;
    COMMENT ON COLUMN aarretsx."Property"."FinancingComments" IS 'Financing Comments';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSEVY" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTSEVY" IS 'State Eq Value Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILBTH" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILBTH" IS 'Bedroom 3 Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMEQVL" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMEQVL" IS 'Equipment Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTOFRN" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTOFRN" IS 'Owner Furnishes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMGINA" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMGINA" IS 'Gross Income Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ZipPlus4" text;
    COMMENT ON COLUMN aarretsx."Property"."ZipPlus4" IS 'Zip Plus 4';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PublishToInternet" boolean;
    COMMENT ON COLUMN aarretsx."Property"."PublishToInternet" IS 'IDX';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingOfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."SellingOfficeNumber" IS 'Selling Office Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIROAD" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIROAD" IS 'Road Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMFLTN" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMFLTN" IS 'Fuel Tenant';

    ALTER TABLE aarretsx."Property" ADD COLUMN "VirtualMediaCount" integer;
    COMMENT ON COLUMN aarretsx."Property"."VirtualMediaCount" IS 'Virtual Media Count';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSYND" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPSYND" IS 'Syndication Remarks';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom3Dim" text;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom3Dim" IS 'Bedroom3 Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSTKS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSTKS" IS 'Stake Survey';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLOILL" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLOILL" IS 'Oil/Min. Rts Incl';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHLS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUHLS" IS 'Unit 3 Date Lease Ex';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBTBF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTBTBF" IS 'Basement Full Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUGIC" IS 'Unit 8 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LivingRoomArea" integer;
    COMMENT ON COLUMN aarretsx."Property"."LivingRoomArea" IS 'LivingRoom Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPCONC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPCONC" IS 'Construction';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLTXYX" integer;
    COMMENT ON COLUMN aarretsx."Property"."LOTLTXYX" IS 'Tax Value Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ShowAddressToPublic" boolean;
    COMMENT ON COLUMN aarretsx."Property"."ShowAddressToPublic" IS 'Show Address To Public';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOAC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUOAC" IS 'Unit 1 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBEDL" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTBEDL" IS 'Lower Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMHEAT" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMHEAT" IS 'Heat Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PropertySubtype1" text;
    COMMENT ON COLUMN aarretsx."Property"."PropertySubtype1" IS 'Property Subtype 1';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUIHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUIHB" IS 'Unit 5 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTPETR" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTPETR" IS 'Pet Remarks';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingCoAgentMLSID" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingCoAgentMLSID" IS 'Listing Co Agent MLS ID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMINSA" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMINSA" IS 'Insurance Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILBFI" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILBFI" IS 'Bedroom 5 Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIELMS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIELMS" IS 'Elementary School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOSO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUOSO" IS 'Unit 1 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISEPT" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISEPT" IS 'Septic';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LotSizeSource" text;
    COMMENT ON COLUMN aarretsx."Property"."LotSizeSource" IS 'Lot Size Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIWELL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIWELL" IS 'Well';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLMOFF" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLMOFF" IS 'Multiple Offers';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTMIDD" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTMIDD" IS 'Jr High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTELEM" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTELEM" IS 'Elementary School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUISS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUISS" IS 'Unit 5 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIPOOS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIPOOS" IS 'Possession';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLHBUS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLHBUS" IS 'High Bus Line';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MasterBedroomWid" integer;
    COMMENT ON COLUMN aarretsx."Property"."MasterBedroomWid" IS 'MasterBedroom Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLBDUS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLBDUS" IS 'Building Use';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ExpirationDate" text;
    COMMENT ON COLUMN aarretsx."Property"."ExpirationDate" IS 'Expiration Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ShowAddressToClient" boolean;
    COMMENT ON COLUMN aarretsx."Property"."ShowAddressToClient" IS 'Show Address To Client';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIASFY" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIASFY" IS 'Association Fee/Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom5Dim" text;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom5Dim" IS 'Bedroom5 Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTWTRT" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTWTRT" IS 'Water Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGBD" IS 'Unit 8 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLBDT" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLBDT" IS 'Master Bedroom Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFBF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFBF" IS 'Unit 4 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILLIV" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILLIV" IS 'Living Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTHIGH" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTHIGH" IS 'High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSOLE" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMSOLE" IS 'Sole Proprietorship';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFSO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFSO" IS 'Unit 4 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLTDM" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLTDM" IS 'Lot Dimensions';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLELMS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLELMS" IS 'Elementary School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "VirtualMediaLastModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."Property"."VirtualMediaLastModifiedDateTime" IS 'Virtual Media Last Modified Date Time';

    ALTER TABLE aarretsx."Property" ADD COLUMN "KitchenArea" integer;
    COMMENT ON COLUMN aarretsx."Property"."KitchenArea" IS 'Kitchen Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESITOPO" text;
    COMMENT ON COLUMN aarretsx."Property"."RESITOPO" IS 'Topography';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingCoOfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."SellingCoOfficeNumber" IS 'Selling Co Office Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPOUTF" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPOUTF" IS 'Outside Features';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Area" text;
    COMMENT ON COLUMN aarretsx."Property"."Area" IS 'Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMNETI" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMNETI" IS 'Net Income Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "DiningRoomLen" integer;
    COMMENT ON COLUMN aarretsx."Property"."DiningRoomLen" IS 'DiningRoom Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSTTL" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTSTTL" IS 'Style';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIPAYR" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIPAYR" IS 'P.A. 116 Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSTAX" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMSTAX" IS 'Source-Tax Return';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPENEC" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPENEC" IS 'Energy Certified';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTROAD" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTROAD" IS 'Road Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIWATF" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIWATF" IS 'Waterfront';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTTOTF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTTOTF" IS 'SF Total Finished';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBROK" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIBROK" IS 'Broker Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLLTDM" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLLTDM" IS 'Lot Dimensions';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNBF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUNBF" IS 'Unit 9 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LibraryWid" integer;
    COMMENT ON COLUMN aarretsx."Property"."LibraryWid" IS 'Library Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZLS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUZLS" IS 'Unit 10 Date LeaseEx';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLEFIN" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLEFIN" IS 'Existing Finance';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBFOL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIBFOL" IS 'Bedroom 4';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBTHL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIBTHL" IS 'Bedroom 3';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTAURL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTAURL" IS 'Application URL';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTSS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUTSS" IS 'Unit 2 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUELL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUELL" IS 'Unit 7 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom5Area" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom5Area" IS 'Bedroom5 Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPZONI" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPZONI" IS 'Zoning';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILSRL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILSRL" IS 'Study Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingCoOfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."ListingCoOfficeNumber" IS 'Listing Co Office Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTRF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUTRF" IS 'Unit 2 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMLNDV" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMLNDV" IS 'Land Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIGLFF" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIGLFF" IS 'Golf Course Comm';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PhoneToShowArea" text;
    COMMENT ON COLUMN aarretsx."Property"."PhoneToShowArea" IS 'Phone To Show Area Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMMAIT" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMMAIT" IS 'Maintenance Tenant';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMTTSF" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMTTSF" IS 'Total SF';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILKIT" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILKIT" IS 'Kitchen Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingCoOfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingCoOfficeMLSID" IS 'Selling Co Office MLS ID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZSS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUZSS" IS 'Unit 10 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSEVY" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMSEVY" IS 'State Eq Value Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTJRHS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTJRHS" IS 'Jr High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMRTAS" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMRTAS" IS 'Retail SF';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPACTU" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPACTU" IS 'Projected or Actual';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIMIDD" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIMIDD" IS 'Jr High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMJANA" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMJANA" IS 'Janitorial Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILWBF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESILWBF" IS 'Lower Full Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUZIC" IS 'Unit 10 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMTRMM" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMTRMM" IS 'Financing Terms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PropertySubtype2" text;
    COMMENT ON COLUMN aarretsx."Property"."PropertySubtype2" IS 'Property Subtype 2';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIFAML" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIFAML" IS 'Family Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUZHB" IS 'Unit 10 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SquareFootage" integer;
    COMMENT ON COLUMN aarretsx."Property"."SquareFootage" IS 'Square Footage';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIEFIN" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIEFIN" IS 'Existing Finance';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLDIN" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLDIN" IS 'Dining Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMGOOD" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMGOOD" IS 'Goodwill Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTHEAT" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTHEAT" IS 'Heat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCRST" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMCRST" IS 'Closest Freeway';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSHOR" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSHOR" IS 'Short Sale';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTPOLL" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTPOLL" IS 'Pool';

    ALTER TABLE aarretsx."Property" ADD COLUMN "NonMemberSalesAgentName" text;
    COMMENT ON COLUMN aarretsx."Property"."NonMemberSalesAgentName" IS 'Non Member Sales Agent Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLBFI" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLBFI" IS 'Bedroom 5 Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "City" text;
    COMMENT ON COLUMN aarretsx."Property"."City" IS 'City';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGTR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGTR" IS 'Unit 8 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingAgentMLSID" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingAgentMLSID" IS 'Selling Agent MLS ID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIHIGH" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIHIGH" IS 'High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingRid" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."Property"."ListingRid" IS 'Listing RID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIHIGS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIHIGS" IS 'High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMFIRR" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMFIRR" IS 'Fire Suppression';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PhoneToShowNumber" text;
    COMMENT ON COLUMN aarretsx."Property"."PhoneToShowNumber" IS 'Phone To Show Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTCONC" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTCONC" IS 'Construction';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIFLOR" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIFLOR" IS 'Flooring';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMOWNC" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMOWNC" IS 'Common Owner Charges';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESITAXV" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESITAXV" IS 'Tax Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMFIRS" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMFIRS" IS 'Fire Suppression';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTHOME" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTHOME" IS 'Homestead';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISDRM" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISDRM" IS 'Study Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNLL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUNLL" IS 'Unit 9 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingAgentMLSID" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingAgentMLSID" IS 'Listing Agent MLS ID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIELEM" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIELEM" IS 'Elementary School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPWINX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPWINX" IS 'Winter Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUESS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUESS" IS 'Unit 7 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSFAS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPSFAS" IS 'SF Above Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLASSA" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLASSA" IS 'Associations';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLROAD" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLROAD" IS 'Road Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTLS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUTLS" IS 'Unit 2 Date Lease Ex';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLLSSD" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLLSSD" IS 'Leased';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIYEAC" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIYEAC" IS 'Year Certified';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMFUEO" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMFUEO" IS 'Fuel Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIFARM" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIFARM" IS 'Farm Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "StreetNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."StreetNumber" IS 'Street Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSTTL" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPSTTL" IS 'Style';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIPAPA" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIPAPA" IS 'P.A. 116';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSSS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSSS" IS 'Unit 6 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMBROK" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMBROK" IS 'Broker Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUTBD" IS 'Unit 2 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingCoAgentNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."ListingCoAgentNumber" IS 'Listing Co Agent Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Directions" text;
    COMMENT ON COLUMN aarretsx."Property"."Directions" IS 'Directions';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIKITL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIKITL" IS 'Kitchen';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPEUTL" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPEUTL" IS 'Utilities Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPNINC" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPNINC" IS 'Net Oper Income';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLOWNS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLOWNS" IS 'Ownership';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLOPVS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLOPVS" IS 'Ownr to Prov Survey';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMZONI" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMZONI" IS 'Zoning';

    ALTER TABLE aarretsx."Property" ADD COLUMN "StreetNumberModifier" text;
    COMMENT ON COLUMN aarretsx."Property"."StreetNumberModifier" IS 'Street Number Modifier';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMMNSF" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMMNSF" IS 'Minimum SF';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUESO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUESO" IS 'Unit 7 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLMIDD" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLMIDD" IS 'Jr High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGLS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGLS" IS 'Unit 8 Date Lease Ex';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMEMGT" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMEMGT" IS 'Management Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESITNSP" text;
    COMMENT ON COLUMN aarretsx."Property"."RESITNSP" IS 'Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESICNNN" decimal;
    COMMENT ON COLUMN aarretsx."Property"."RESICNNN" IS 'Concession Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLCTTP" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLCTTP" IS 'City or Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTWINN" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTWINN" IS 'Winter Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLTAXV" integer;
    COMMENT ON COLUMN aarretsx."Property"."LOTLTAXV" IS 'Tax Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLEBUS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLEBUS" IS 'Elem Bus Line';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTRNTT" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTRNTT" IS 'Rental Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMINAP" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMINAP" IS 'ApprxInventoryAmount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingDate" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingDate" IS 'Selling Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMASSA" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMASSA" IS 'Associations';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTCURB" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTCURB" IS 'Curbs/Gutters';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUHBD" IS 'Unit 3 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIRECR" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIRECR" IS 'Rec Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPLAKE" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPLAKE" IS 'Lake Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISTOR" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISTOR" IS 'Storm Sewer';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSAC" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSAC" IS 'Unit 6 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUOBD" IS 'Unit 1 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUOIC" IS 'Unit 1 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNSO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUNSO" IS 'Unit 9 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTRECR" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTRECR" IS 'Rec Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLFAM" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLFAM" IS 'Family Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLWINN" integer;
    COMMENT ON COLUMN aarretsx."Property"."LOTLWINN" IS 'Winter Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFHB" IS 'Unit 4 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTGLFF" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTGLFF" IS 'Golf Course Comm';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHSO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUHSO" IS 'Unit 3 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPEMIS" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPEMIS" IS 'Misc Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MapPage" text;
    COMMENT ON COLUMN aarretsx."Property"."MapPage" IS 'Map Page';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSBD" IS 'Unit 6 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSFAG" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPSFAG" IS 'SF Finishd Abv Grade';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTDINI" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTDINI" IS 'Dining Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingDate" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingDate" IS 'Listing Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIUPBH" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIUPBH" IS 'Upper 1/2 Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFLS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFLS" IS 'Unit 4 Date Lease Ex';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingCoAgentNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."SellingCoAgentNumber" IS 'Selling Co Agent Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIENBH" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIENBH" IS 'Entry 1/2 Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMEINS" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMEINS" IS 'Insurance Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILIVL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILIVL" IS 'Living Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIWINX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."RESIWINX" IS 'Winter Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSYND" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSYND" IS 'Syndication Remarks';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZBF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUZBF" IS 'Unit 10 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPDEPT" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPDEPT" IS 'Deposits';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIEASE" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIEASE" IS 'Easement';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTDRAP" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTDRAP" IS 'Window Treatment(s)';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMFLTY" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMFLTY" IS 'Fuel Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTMINT" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTMINT" IS 'Minimum Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PendingDate" text;
    COMMENT ON COLUMN aarretsx."Property"."PendingDate" IS 'Pending Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLGASS" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLGASS" IS 'Gas';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPGRAG" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPGRAG" IS '# Total Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSHB" IS 'Unit 6 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSEVY" integer;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSEVY" IS 'State Eq Value Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMELEV" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMELEV" IS 'Elevator';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGSS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGSS" IS 'Unit 8 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISFAS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISFAS" IS 'SF Above Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SubLease" text;
    COMMENT ON COLUMN aarretsx."Property"."SubLease" IS 'Sub Lease';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSOIL" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLSOIL" IS 'Soil';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMLOCA" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMLOCA" IS 'Location';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUTHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUTHB" IS 'Unit 2 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIDRAP" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIDRAP" IS 'Window Treatment(s)';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHLL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUHLL" IS 'Unit 3 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PictureModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."Property"."PictureModifiedDateTime" IS 'Picture Modified Date Time';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZSO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUZSO" IS 'Unit 10 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingOfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingOfficeMLSID" IS 'Listing Office MLS ID';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUZLL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUZLL" IS 'Unit 10 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESITILL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESITILL" IS 'Tilled';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSUMM" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTSUMM" IS 'Summer Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMLTYP" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMLTYP" IS 'Lease Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUHHB" IS 'Unit 3 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIOWNS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIOWNS" IS 'Ownership';

    ALTER TABLE aarretsx."Property" ADD COLUMN "DOM" integer;
    COMMENT ON COLUMN aarretsx."Property"."DOM" IS 'Days On Market';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMTAXT" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMTAXT" IS 'Tax Tenant';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSEVV" integer;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSEVV" IS 'State Eq Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "FamilyRoomArea" integer;
    COMMENT ON COLUMN aarretsx."Property"."FamilyRoomArea" IS 'FamilyRoom Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSDRM" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSDRM" IS 'Study Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBEDE" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIBEDE" IS 'Entry Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBEDL" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIBEDL" IS 'Lower Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "BreakfastRoomDim" text;
    COMMENT ON COLUMN aarretsx."Property"."BreakfastRoomDim" IS 'BreakfastRoom Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSOWN" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMSOWN" IS 'Source-Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMUTIL" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMUTIL" IS 'Utilities';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUELS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUELS" IS 'Unit 7 Date Lease Ex';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMMOFF" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMMOFF" IS 'Multiple Offers';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISOIL" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESISOIL" IS 'Soil';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN aarretsx."Property"."MLS" IS 'Multiple Listing Service';

    ALTER TABLE aarretsx."Property" ADD COLUMN "KitchenWid" integer;
    COMMENT ON COLUMN aarretsx."Property"."KitchenWid" IS 'Kitchen Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSUMM" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPSUMM" IS 'Summer Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMOFSF" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMOFSF" IS 'Office SF';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIOUTF" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIOUTF" IS 'Outside Features';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSEVY" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPSEVY" IS 'State Eq Value Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingNumberDisplay" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingNumberDisplay" IS 'Listing Number Display';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSFBS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSFBS" IS 'SF Below Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMYEAC" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMYEAC" IS 'Year Certified';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTMOFF" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTMOFF" IS 'Multiple Offers';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTOUTF" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTOUTF" IS 'Outside Features';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIEBUS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIEBUS" IS 'Elem Bus Line';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBFOL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTBFOL" IS 'Bedroom 4';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLKIT" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLKIT" IS 'Kitchen Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISYND" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISYND" IS 'Syndication Remarks';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLCURB" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLCURB" IS 'Curbs/Gutters';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHTR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUHTR" IS 'Unit 3 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILIBL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILIBL" IS 'Library';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSFBS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPSFBS" IS 'SF Below Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "StreetSuffix" text;
    COMMENT ON COLUMN aarretsx."Property"."StreetSuffix" IS 'Street Suffix';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LegalDescription" text;
    COMMENT ON COLUMN aarretsx."Property"."LegalDescription" IS 'Legal Description';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom2Wid" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom2Wid" IS 'Bedroom2 Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSLEV" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSLEV" IS 'Soil Evaluation';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingCoOfficeName" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingCoOfficeName" IS 'Listing Co Office Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBASE" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTBASE" IS 'Basement';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESISIDE" text;
    COMMENT ON COLUMN aarretsx."Property"."RESISIDE" IS 'Sidewalk';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUHBF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUHBF" IS 'Unit 3 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGLL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGLL" IS 'Unit 8 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBEDB" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIBEDB" IS 'Basement Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSUMM" integer;
    COMMENT ON COLUMN aarretsx."Property"."LOTLSUMM" IS 'Summer Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTAIRC" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTAIRC" IS 'Air Conditioning';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTCRPT" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTCRPT" IS 'Credit Report';

    ALTER TABLE aarretsx."Property" ADD COLUMN "StatusComments" text;
    COMMENT ON COLUMN aarretsx."Property"."StatusComments" IS 'Status Comments';

    ALTER TABLE aarretsx."Property" ADD COLUMN "OriginalPrice" decimal;
    COMMENT ON COLUMN aarretsx."Property"."OriginalPrice" IS 'Original Price';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTHIGS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTHIGS" IS 'High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBASE" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIBASE" IS 'Basement';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILAKE" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILAKE" IS 'Lake Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIENTL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIENTL" IS 'Entry Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLNRM" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLNRM" IS 'Laundry Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSUMX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMSUMX" IS 'Summer Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPETAX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPETAX" IS 'Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBFIL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIBFIL" IS 'Bedroom 5';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIDETA" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIDETA" IS 'Detached Condo';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ReciprocalMemberAreaCode" text;
    COMMENT ON COLUMN aarretsx."Property"."ReciprocalMemberAreaCode" IS 'Reciprocal Member Area Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "GreatRoomLen" integer;
    COMMENT ON COLUMN aarretsx."Property"."GreatRoomLen" IS 'GreatRoom Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTELMS" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTELMS" IS 'Elementary School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMAPSF" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMAPSF" IS '$ Per SF';

    ALTER TABLE aarretsx."Property" ADD COLUMN "BreakfastRoomWid" integer;
    COMMENT ON COLUMN aarretsx."Property"."BreakfastRoomWid" IS 'BreakfastRoom Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTFLOR" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTFLOR" IS 'Flooring';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ZipCode" text;
    COMMENT ON COLUMN aarretsx."Property"."ZipCode" IS 'Zip Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "CrossStreetAddress" text;
    COMMENT ON COLUMN aarretsx."Property"."CrossStreetAddress" IS 'Cross Street Address';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMWATO" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMWATO" IS 'Water Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMMNTR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMMNTR" IS 'Rent Monthly';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LibraryLen" integer;
    COMMENT ON COLUMN aarretsx."Property"."LibraryLen" IS 'Library Len';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLWBF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTLWBF" IS 'Lower Full Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFSS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFSS" IS 'Unit 4 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "HalfBathrooms" integer;
    COMMENT ON COLUMN aarretsx."Property"."HalfBathrooms" IS 'Half Bathrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNRF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUNRF" IS 'Unit 9 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESICERT" text;
    COMMENT ON COLUMN aarretsx."Property"."RESICERT" IS 'Certification Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUNBD" IS 'Unit 9 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMBASE" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMBASE" IS 'Basement';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMDRGR" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMDRGR" IS '# Of Doors @ Grade';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIDINL" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIDINL" IS 'Dining Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLZONI" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLZONI" IS 'Zoning';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLBFO" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLBFO" IS 'Bedroom 4 Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMPRUS" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMPRUS" IS 'Present Use';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIPAVE" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIPAVE" IS 'Paved';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILBDT" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILBDT" IS 'Master Bedroom Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMTNSP" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMTNSP" IS 'Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTTNSP" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTTNSP" IS 'Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTNEWC" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTNEWC" IS 'New Construction';

    ALTER TABLE aarretsx."Property" ADD COLUMN "DiningRoomDim" text;
    COMMENT ON COLUMN aarretsx."Property"."DiningRoomDim" IS 'DiningRoom Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIAFEE" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIAFEE" IS 'Assoc Fee Per Month';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLIBL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLIBL" IS 'Library';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILWBH" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESILWBH" IS 'Lower 1/2 Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMEMAN" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMEMAN" IS 'Maintenance Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPAEXP" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPAEXP" IS 'Annual Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMBUSN" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMBUSN" IS 'Business Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingAgentFirstName" text;
    COMMENT ON COLUMN aarretsx."Property"."ListingAgentFirstName" IS 'Listing Agent First Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMOPEX" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMOPEX" IS 'Ttl Operating Expns';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIWTRS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIWTRS" IS 'Water Softener';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMINSO" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMINSO" IS 'Insurance Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUEHB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUEHB" IS 'Unit 7 Half Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MasterBedroomArea" integer;
    COMMENT ON COLUMN aarretsx."Property"."MasterBedroomArea" IS 'MasterBedroom Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTASFY" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTASFY" IS 'Association Fee/Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMELEO" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMELEO" IS 'Electricity Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPENIS" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPENIS" IS 'Insurance Expenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PriceChangeDate" text;
    COMMENT ON COLUMN aarretsx."Property"."PriceChangeDate" IS 'Price Change Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMPRKS" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMPRKS" IS '# Of Parking Spaces';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILBRE" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILBRE" IS 'Breakfast Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIUPBF" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIUPBF" IS 'Upper Full Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBEDB" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTBEDB" IS 'Basement Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTAXO" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPTAXO" IS 'Tax Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCTTP" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMCTTP" IS 'City or Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSOUR" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMSOUR" IS 'Source of Financials';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBROK" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTBROK" IS 'Broker Code';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTTRFN" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTTRFN" IS 'Tenant Furnishes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Stories" decimal;
    COMMENT ON COLUMN aarretsx."Property"."Stories" IS 'Stories';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMWATA" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMWATA" IS 'Water Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMHETS" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMHETS" IS 'Heat Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "StreetName" text;
    COMMENT ON COLUMN aarretsx."Property"."StreetName" IS 'Street Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMWINX" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMWINX" IS 'Winter Taxes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMLTDM" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMLTDM" IS 'Lot Dimensions';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PricePerSquareFoot" decimal;
    COMMENT ON COLUMN aarretsx."Property"."PricePerSquareFoot" IS 'Price Per Square Foot';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPCERT" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPCERT" IS 'Certification Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFAC" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUFAC" IS 'Unit 4 Access Feat';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUSRF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUSRF" IS 'Unit 6 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCERT" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMCERT" IS 'Certification Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIAPPL" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIAPPL" IS 'Appliances';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLCNNN" decimal;
    COMMENT ON COLUMN aarretsx."Property"."LOTLCNNN" IS 'Concession Amount';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGSO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGSO" IS 'Unit 8 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUEBD" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUEBD" IS 'Unit 7 Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "AvailableDate" text;
    COMMENT ON COLUMN aarretsx."Property"."AvailableDate" IS 'Available Date';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOSS" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUOSS" IS 'Unit 1 SqFt Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIBEDU" integer;
    COMMENT ON COLUMN aarretsx."Property"."RESIBEDU" IS 'Upper Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Commission1" text;
    COMMENT ON COLUMN aarretsx."Property"."Commission1" IS 'Buyer Agency';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLAGRR" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLAGRR" IS 'Agreement Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILFAM" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILFAM" IS 'Family Room Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "OnMarket" boolean;
    COMMENT ON COLUMN aarretsx."Property"."OnMarket" IS 'On Market';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MLSOrigin" text;
    COMMENT ON COLUMN aarretsx."Property"."MLSOrigin" IS 'MLS Origin';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTNSP" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPTNSP" IS 'Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMCNCS" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMCNCS" IS 'Concession';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMAEXP" decimal;
    COMMENT ON COLUMN aarretsx."Property"."COMMAEXP" IS 'TotalAnnualExpenses';

    ALTER TABLE aarretsx."Property" ADD COLUMN "ListingPrice" decimal;
    COMMENT ON COLUMN aarretsx."Property"."ListingPrice" IS 'Listing Price';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPEXPN" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPEXPN" IS 'Expense Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIFIRP" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIFIRP" IS 'Fireplace';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PictureCount" integer;
    COMMENT ON COLUMN aarretsx."Property"."PictureCount" IS 'Picture Count';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPLAUN" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPLAUN" IS 'Laundry';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSITE" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSITE" IS 'Site Condo';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLCNCS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLCNCS" IS 'Concession';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMTAXV" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMTAXV" IS 'Tax Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LibraryArea" integer;
    COMMENT ON COLUMN aarretsx."Property"."LibraryArea" IS 'Library Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNTR" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUNTR" IS 'Unit 9 Total Rooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUERF" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUERF" IS 'Unit 7 Rents For';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LivingRoomDim" text;
    COMMENT ON COLUMN aarretsx."Property"."LivingRoomDim" IS 'LivingRoom Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom2Dim" text;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom2Dim" IS 'Bedroom2 Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPPRKS" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPPRKS" IS '# Of Parking Spaces';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Bedroom2Area" integer;
    COMMENT ON COLUMN aarretsx."Property"."Bedroom2Area" IS 'Bedroom2 Area';

    ALTER TABLE aarretsx."Property" ADD COLUMN "PublicListingURL" text;
    COMMENT ON COLUMN aarretsx."Property"."PublicListingURL" IS 'URL';

    ALTER TABLE aarretsx."Property" ADD COLUMN "YearBuilt" integer;
    COMMENT ON COLUMN aarretsx."Property"."YearBuilt" IS 'Year Built';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIGASS" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIGASS" IS 'Gas';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTSHOR" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTSHOR" IS 'Short Sale';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSEVV" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMSEVV" IS 'State Eq Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLSCDT" text[];
    COMMENT ON COLUMN aarretsx."Property"."LOTLSCDT" IS 'School District Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUGFB" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUGFB" IS 'Unit 8 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUISO" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPUISO" IS 'Unit 5 Approx SqFt';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMWALL" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMWALL" IS 'Walls';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLAKE" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTLAKE" IS 'Lake Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIDINI" text[];
    COMMENT ON COLUMN aarretsx."Property"."RESIDINI" IS 'Dining Room';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUOBF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUOBF" IS 'Unit 1 Baths Full';

    ALTER TABLE aarretsx."Property" ADD COLUMN "Region" integer;
    COMMENT ON COLUMN aarretsx."Property"."Region" IS 'Region';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMLOAD" integer;
    COMMENT ON COLUMN aarretsx."Property"."COMMLOAD" IS '# Of Loading Docks';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLGWPP" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLGWPP" IS 'Go W/Property';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPWINN" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPWINN" IS 'Winter Year';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSEWE" text[];
    COMMENT ON COLUMN aarretsx."Property"."COMMSEWE" IS 'Sewer';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUFIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUFIC" IS 'Unit 4 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTCERT" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTCERT" IS 'Certification Type';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTUTU" decimal;
    COMMENT ON COLUMN aarretsx."Property"."INCPTUTU" IS 'Total Units';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingAgentNumber" integer;
    COMMENT ON COLUMN aarretsx."Property"."SellingAgentNumber" IS 'Selling Agent Number';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMWTTT" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMWTTT" IS 'Water Tenant';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBDTL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTBDTL" IS 'Master Bedroom';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESILBFO" text;
    COMMENT ON COLUMN aarretsx."Property"."RESILBFO" IS 'Bedroom 4 Level';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIJBUS" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIJBUS" IS 'Jr Hgh Bus Line';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLAUN" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTLAUN" IS 'Laundry';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SquareFootageSource" text;
    COMMENT ON COLUMN aarretsx."Property"."SquareFootageSource" IS 'Square Footage Source';

    ALTER TABLE aarretsx."Property" ADD COLUMN "StreetDirection" text;
    COMMENT ON COLUMN aarretsx."Property"."StreetDirection" IS 'Street Direction';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLHIGS" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLHIGS" IS 'High School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "BoardLoaded" text;
    COMMENT ON COLUMN aarretsx."Property"."BoardLoaded" IS 'Board Loaded';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUILL" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPUILL" IS 'Unit 5 Lease Term';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUIIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUIIC" IS 'Unit 5 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "SellingCoOfficeName" text;
    COMMENT ON COLUMN aarretsx."Property"."SellingCoOfficeName" IS 'Selling Co Office Name';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMJANO" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMJANO" IS 'Janitorial Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTENBH" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTENBH" IS 'Entry 1/2 Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIASSA" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIASSA" IS 'Associations';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPUNIC" text[];
    COMMENT ON COLUMN aarretsx."Property"."INCPUNIC" IS 'Unit 9 Includes';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPTAXV" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPTAXV" IS 'Tax Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MapXCoordinate" text;
    COMMENT ON COLUMN aarretsx."Property"."MapXCoordinate" IS 'Map X Coordinate';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBEDU" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTBEDU" IS 'Upper Bedrooms';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPPAVE" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPPAVE" IS 'Paved';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMMAIO" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMMAIO" IS 'Maintenance Owner';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMSTOR" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMSTOR" IS 'Storm Sewer';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMINST" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMINST" IS 'Insurance Tenant';

    ALTER TABLE aarretsx."Property" ADD COLUMN "MasterBedroomDim" text;
    COMMENT ON COLUMN aarretsx."Property"."MasterBedroomDim" IS 'MasterBedroom Dim';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPCTTP" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPCTTP" IS 'City or Township';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTPAVE" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTPAVE" IS 'Paved';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTCFAC" text[];
    COMMENT ON COLUMN aarretsx."Property"."RENTCFAC" IS 'Common Facilities';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTBFIL" text;
    COMMENT ON COLUMN aarretsx."Property"."RENTBFIL" IS 'Bedroom 5';

    ALTER TABLE aarretsx."Property" ADD COLUMN "LOTLELEM" text;
    COMMENT ON COLUMN aarretsx."Property"."LOTLELEM" IS 'Elementary School';

    ALTER TABLE aarretsx."Property" ADD COLUMN "FamilyRoomWid" integer;
    COMMENT ON COLUMN aarretsx."Property"."FamilyRoomWid" IS 'FamilyRoom Wid';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RESIMINE" text;
    COMMENT ON COLUMN aarretsx."Property"."RESIMINE" IS 'Mineral Rights';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPSEVV" integer;
    COMMENT ON COLUMN aarretsx."Property"."INCPSEVV" IS 'State Eq Value';

    ALTER TABLE aarretsx."Property" ADD COLUMN "COMMJANT" text;
    COMMENT ON COLUMN aarretsx."Property"."COMMJANT" IS 'Janitorial Tenant';

    ALTER TABLE aarretsx."Property" ADD COLUMN "RENTLWBH" integer;
    COMMENT ON COLUMN aarretsx."Property"."RENTLWBH" IS 'Lower 1/2 Baths';

    ALTER TABLE aarretsx."Property" ADD COLUMN "INCPMOFF" text;
    COMMENT ON COLUMN aarretsx."Property"."INCPMOFF" IS 'Multiple Offers';

  CREATE TABLE aarretsx."PropertyDeleted"() ;
    ALTER TABLE aarretsx."PropertyDeleted" ADD COLUMN "ListingRid" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."PropertyDeleted"."ListingRid" IS 'Listing RID';

    ALTER TABLE aarretsx."PropertyDeleted" ADD COLUMN "DateTimeChanged" text;
    COMMENT ON COLUMN aarretsx."PropertyDeleted"."DateTimeChanged" IS 'DateTimeChanged';

    ALTER TABLE aarretsx."PropertyDeleted" ADD COLUMN "MLNumber" integer;
    COMMENT ON COLUMN aarretsx."PropertyDeleted"."MLNumber" IS 'Listing Number';

    ALTER TABLE aarretsx."PropertyDeleted" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN aarretsx."PropertyDeleted"."MLS" IS 'MLS';

  CREATE TABLE aarretsx."PropertyWithheld"() ;
    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "StatusDate" text;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."StatusDate" IS 'Status Date';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "PublishToInternet" boolean;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."PublishToInternet" IS 'Publish To Internet';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "MLNumber" integer;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."MLNumber" IS 'Multiple Listing Number';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "Status" text;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."Status" IS 'Status';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "LastModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."LastModifiedDateTime" IS 'Last Modified Date Time';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "Approved" boolean;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."Approved" IS 'Broker Approved';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."MLS" IS 'Multiple Listing Service';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "ListingRid" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."ListingRid" IS 'Listing RID';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "PublishToIDX" boolean;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."PublishToIDX" IS 'Publish To IDX';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "ListingNumberDisplay" text;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."ListingNumberDisplay" IS 'Listing Number Display';

    ALTER TABLE aarretsx."PropertyWithheld" ADD COLUMN "OfficeIDX" text;
    COMMENT ON COLUMN aarretsx."PropertyWithheld"."OfficeIDX" IS 'Office IDX';

  CREATE TABLE aarretsx."Prospect"() ;
    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OtherPhoneAreaCode1" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OtherPhoneAreaCode1" IS 'Other Phone Area Code 1';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "SecondaryPhoneNumber" text;
    COMMENT ON COLUMN aarretsx."Prospect"."SecondaryPhoneNumber" IS 'Secondary Phone Number';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "ProspectType" text;
    COMMENT ON COLUMN aarretsx."Prospect"."ProspectType" IS 'Prospect Type';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentFirstName" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentFirstName" IS 'Agent First Name';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentNRDSID" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentNRDSID" IS 'Agent NRDS ID';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentCarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentCarrierRouteCode" IS 'Agent Carrier Route Code';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentStreetAddress" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentStreetAddress" IS 'Agent Street Address';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "StreetAddress" text;
    COMMENT ON COLUMN aarretsx."Prospect"."StreetAddress" IS 'Street Address';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeStreetAddress" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeStreetAddress" IS 'Office Street Address';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "BirthDate" text;
    COMMENT ON COLUMN aarretsx."Prospect"."BirthDate" IS 'Birth Date';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OtherPhoneNumber2" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OtherPhoneNumber2" IS 'Other Phone Number 2';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OtherPhoneAreaCode2" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OtherPhoneAreaCode2" IS 'Other Phone Area Code 2';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "Notes" text;
    COMMENT ON COLUMN aarretsx."Prospect"."Notes" IS 'Notes';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "CompanyName" text;
    COMMENT ON COLUMN aarretsx."Prospect"."CompanyName" IS 'Company Name';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OtherPhoneExtension1" integer;
    COMMENT ON COLUMN aarretsx."Prospect"."OtherPhoneExtension1" IS 'Other Phone Extension 1';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeEmailAddress" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeEmailAddress" IS 'Office Email Address';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OtherPhoneExtension2" integer;
    COMMENT ON COLUMN aarretsx."Prospect"."OtherPhoneExtension2" IS 'Other Phone Extension 2';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeMLSID" IS 'Office MLS ID';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "City" text;
    COMMENT ON COLUMN aarretsx."Prospect"."City" IS 'City';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "ShortName" text;
    COMMENT ON COLUMN aarretsx."Prospect"."ShortName" IS 'Short Name';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "PrimaryPhoneNumber" text;
    COMMENT ON COLUMN aarretsx."Prospect"."PrimaryPhoneNumber" IS 'Primary Phone Number';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "Webpage" text;
    COMMENT ON COLUMN aarretsx."Prospect"."Webpage" IS 'Webpage';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentPersonalFaxPhone" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentPersonalFaxPhone" IS 'Agent Personal Fax Phone';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "PrimaryPhoneAreaCode" text;
    COMMENT ON COLUMN aarretsx."Prospect"."PrimaryPhoneAreaCode" IS 'Primary Phone Area Code';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OtherPhoneType2" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OtherPhoneType2" IS 'Other Phone Type 2';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "State" text;
    COMMENT ON COLUMN aarretsx."Prospect"."State" IS 'State';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "SecondaryPhoneType" text;
    COMMENT ON COLUMN aarretsx."Prospect"."SecondaryPhoneType" IS 'Secondary Phone Type';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeStreetState" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeStreetState" IS 'Office Street State';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeStreetCarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeStreetCarrierRouteCode" IS 'Office Street Carrier Route Code';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentState" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentState" IS 'Agent State';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficePhone" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficePhone" IS 'Office Phone';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "CC" text;
    COMMENT ON COLUMN aarretsx."Prospect"."CC" IS 'Carbon Copy';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "SecondaryPhoneAreaCode" text;
    COMMENT ON COLUMN aarretsx."Prospect"."SecondaryPhoneAreaCode" IS 'Secondary Phone Area Code';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentZipCode" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentZipCode" IS 'Agent Zip Code';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "PrimaryPhoneExtension" integer;
    COMMENT ON COLUMN aarretsx."Prospect"."PrimaryPhoneExtension" IS 'Primary Phone Extension';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeNRDSID" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeNRDSID" IS 'Office NRDS ID';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeStreetZipCode" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeStreetZipCode" IS 'Office Street Zip Code';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeFaxPhone" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeFaxPhone" IS 'Office Fax Phone';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "ExpirationDate" text;
    COMMENT ON COLUMN aarretsx."Prospect"."ExpirationDate" IS 'Expiration Date';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentEmailAddress" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentEmailAddress" IS 'Agent Email Address';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeName" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeName" IS 'Office Name';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "Name" text;
    COMMENT ON COLUMN aarretsx."Prospect"."Name" IS 'Name';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OtherPhoneType1" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OtherPhoneType1" IS 'Other Phone Type 1';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OtherPhoneNumber1" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OtherPhoneNumber1" IS 'Other Phone Number 1';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentOfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentOfficeMLSID" IS 'Agent Office MLS ID';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentWebPageAddress" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentWebPageAddress" IS 'Agent Web Page Address';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "MemberNumber" integer;
    COMMENT ON COLUMN aarretsx."Prospect"."MemberNumber" IS 'Member Number';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentHomePhone" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentHomePhone" IS 'Agent Home Phone';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeStreetCity" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeStreetCity" IS 'Office Street City';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AlternateEmail" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AlternateEmail" IS 'Alternate Email';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "ClosingDate" text;
    COMMENT ON COLUMN aarretsx."Prospect"."ClosingDate" IS 'Closing Date';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentMLSID" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentMLSID" IS 'Agent MLS ID';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentCity" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentCity" IS 'Agent City';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "ProspectRid" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."Prospect"."ProspectRid" IS 'Prospect Rid';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "Status" text;
    COMMENT ON COLUMN aarretsx."Prospect"."Status" IS 'Status';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "OfficeWebPageAddress" text;
    COMMENT ON COLUMN aarretsx."Prospect"."OfficeWebPageAddress" IS 'Office Web Page Address';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "AgentLastName" text;
    COMMENT ON COLUMN aarretsx."Prospect"."AgentLastName" IS 'Agent Last Name';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN aarretsx."Prospect"."MLS" IS 'MLS';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "ZipCode" text;
    COMMENT ON COLUMN aarretsx."Prospect"."ZipCode" IS 'Zip Code';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "SecondaryPhoneExtension" integer;
    COMMENT ON COLUMN aarretsx."Prospect"."SecondaryPhoneExtension" IS 'Secondary Phone Extension';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "EmailAddress" text;
    COMMENT ON COLUMN aarretsx."Prospect"."EmailAddress" IS 'Email Address';

    ALTER TABLE aarretsx."Prospect" ADD COLUMN "PrimaryPhoneType" text;
    COMMENT ON COLUMN aarretsx."Prospect"."PrimaryPhoneType" IS 'Primary Phone Type';

  CREATE TABLE aarretsx."Tour"() ;
    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeNRDSID" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeNRDSID" IS 'Office NRDS ID';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeStreetZipCode" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeStreetZipCode" IS 'Office Street Zip Code';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeFaxPhone" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeFaxPhone" IS 'Office Fax Phone';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentWebPageAddress" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentWebPageAddress" IS 'Agent Web Page Address';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeName" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeName" IS 'Office Name';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentEmailAddress" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentEmailAddress" IS 'Agent Email Address';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentCity" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentCity" IS 'Agent City';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "EndDateTime" text;
    COMMENT ON COLUMN aarretsx."Tour"."EndDateTime" IS 'End DateTime';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeWebPageAddress" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeWebPageAddress" IS 'Office Web Page Address';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "StartDateTime" text;
    COMMENT ON COLUMN aarretsx."Tour"."StartDateTime" IS 'Start DateTime';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeStreetCity" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeStreetCity" IS 'Office Street City';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentHomePhone" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentHomePhone" IS 'Agent Home Phone';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentMLSID" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentMLSID" IS 'Agent MLS ID';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "ListingNumberDisplay" text;
    COMMENT ON COLUMN aarretsx."Tour"."ListingNumberDisplay" IS 'Listing Number Display';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentLastName" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentLastName" IS 'Agent Last Name';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "Comment" text;
    COMMENT ON COLUMN aarretsx."Tour"."Comment" IS 'Comment';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentStreetAddress" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentStreetAddress" IS 'Agent Street Address';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeStreetAddress" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeStreetAddress" IS 'Office Street Address';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentNRDSID" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentNRDSID" IS 'Agent NRDS ID';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentFirstName" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentFirstName" IS 'Agent First Name';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentCarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentCarrierRouteCode" IS 'Agent Carrier Route Code';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "TimeComments" text;
    COMMENT ON COLUMN aarretsx."Tour"."TimeComments" IS 'Time Comments';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeEmailAddress" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeEmailAddress" IS 'Office Email Address';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "TourRid" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."Tour"."TourRid" IS 'Tour Rid';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentPersonalFaxPhone" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentPersonalFaxPhone" IS 'Agent Personal Fax Phone';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "MLNumber" integer;
    COMMENT ON COLUMN aarretsx."Tour"."MLNumber" IS 'Multiple Listing Number';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeMLSID" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeMLSID" IS 'Office MLS ID';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficePhone" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficePhone" IS 'Office Phone';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentZipCode" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentZipCode" IS 'Agent Zip Code';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "ListingRid" integer;
    COMMENT ON COLUMN aarretsx."Tour"."ListingRid" IS 'Listing RID';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "AgentState" text;
    COMMENT ON COLUMN aarretsx."Tour"."AgentState" IS 'Agent State';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeStreetCarrierRouteCode" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeStreetCarrierRouteCode" IS 'Office Street Carrier Route Code';

    ALTER TABLE aarretsx."Tour" ADD COLUMN "OfficeStreetState" text;
    COMMENT ON COLUMN aarretsx."Tour"."OfficeStreetState" IS 'Office Street State';

  CREATE TABLE aarretsx."VirtualMedia"() ;
    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "MediaType" text;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."MediaType" IS 'Media Type';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "LastModifiedDateTime" text;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."LastModifiedDateTime" IS 'Last Modified Date Time';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "VirtualMediaRid" integer PRIMARY KEY;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."VirtualMediaRid" IS 'Virtual Media RID';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "Branded" boolean;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."Branded" IS 'Branded';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "URL" text;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."URL" IS 'URL';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "PropertyType" text;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."PropertyType" IS 'Property Type';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "MLNumber" integer;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."MLNumber" IS 'ML Number';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "ListingOfficeNumber" integer;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."ListingOfficeNumber" IS 'Listing Office Number';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "ListingRid" integer;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."ListingRid" IS 'Listing Row ID';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "ListingAgentNumber" integer;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."ListingAgentNumber" IS 'Listing Agent Number';

    ALTER TABLE aarretsx."VirtualMedia" ADD COLUMN "MLS" text;
    COMMENT ON COLUMN aarretsx."VirtualMedia"."MLS" IS 'MLS';


COMMIT;
