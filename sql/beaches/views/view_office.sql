DROP VIEW IF EXISTS beaches.view_office CASCADE;
CREATE VIEW beaches.view_office AS 
 SELECT 'beaches'::text AS mls,
    "Office".__removed_at,
    "Office".__removed_at IS NULL AS __active,
    "Office".__inserted_at AS age,
    "Office".__inserted_at,
    "Office".__modified_at,
    "Office".__photo_urls,
    "Office"."OFFICE_0" as listing_id,
    "Office"."OFFICE_16" as board_code,
    "Office"."OFFICE_3" as phone,
    "Office"."OFFICE_2" as name,
    "Office"."OFFICE_10" as address_line_1,
    "Office"."OFFICE_12" as city,
    "Office"."OFFICE_13" as state,
    "Office"."OFFICE_14" as zip,
    "Office"."OFFICE_8" as email,
    "Office"."OFFICE_17" as company_id,
    "Office"."STATUS" as status

    FROM beaches."Office" JOIN beaches.mutation ON
    beaches."Office"."OFFICE_0"::text = beaches.mutation.remote_id::text AND
    beaches.mutation.last_transaction_completed_at is not null;
