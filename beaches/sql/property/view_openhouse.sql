DROP VIEW IF EXISTS beaches.view_openhouse CASCADE;
CREATE VIEW beaches.view_openhouse AS 
 SELECT 'beaches'::text AS mls,
    "OpenHouse".__removed_at,
    "OpenHouse".__removed_at IS NULL AS __active,
    "OpenHouse".__inserted_at AS age,
    "OpenHouse".__inserted_at,
    "OpenHouse".__modified_at,
    "OpenHouse"."PHONE0" as agent_phone,
    "OpenHouse"."LIST22" as list_price,
    "OpenHouse"."EVENT8" as hosted_by,
    "OpenHouse"."EVENT0" as event_id,
    "OpenHouse"."EVENT9" as event_phone,
    "OpenHouse"."EVENT10" as event_area,
    "OpenHouse"."EVENT100" as event_start,
    "OpenHouse"."EVENT200" as event_end,
    "OpenHouse"."LIST1" as list_id,
    "OpenHouse"."LIST29" as list_area,
    "OpenHouse"."LIST105" as list_number,
    "OpenHouse"."OFC0" as office_id,
    "OpenHouse"."OFC3" as office_name,
    "OpenHouse"."PHONE1" as office_phone,
    "OpenHouse"."ADD0" as street,
    "OpenHouse"."ADD5" as city,
    "OpenHouse"."ADD10" as state,
    "OpenHouse"."MBR5" || ' '::text || "OpenHouse"."MBR7" as agent_name,
    "OpenHouse"."MBR0" as agent_id,
    "OpenHouse"."OPEN_HOUSE_COMMENT" as comments


    FROM beaches."OpenHouse" JOIN beaches.mutation ON beaches."OpenHouse"."EVENT0"::text = beaches.mutation.remote_id::text AND beaches.mutation.last_transaction_completed_at is not null
