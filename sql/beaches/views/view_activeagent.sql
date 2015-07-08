DROP VIEW IF EXISTS beaches.view_activeagent CASCADE;
CREATE VIEW beaches.view_activeagent AS 
 SELECT 'beaches'::text AS mls,
    "ActiveAgent".__removed_at,
    "ActiveAgent".__removed_at IS NULL AS __active,
    "ActiveAgent".__inserted_at AS age,
    "ActiveAgent".__inserted_at,
    "ActiveAgent".__modified_at,
    "ActiveAgent".__photo_urls,
    "ActiveAgent"."MEMBER_5" as office_phone,
    "ActiveAgent"."MEMBER_10" as email,
    "ActiveAgent"."MEMBER_19" as name,
    "ActiveAgent"."MEMBER_21" as phone,
    "ActiveAgent"."MEMBER_20" as board_code,
    "ActiveAgent"."MEMBER_1" as office_id,
    "ActiveAgent"."MEMBER_0" as id,
    "ActiveAgent"."STATUS" as status

    FROM beaches."ActiveAgent" JOIN beaches.mutation ON
    beaches."ActiveAgent"."MEMBER_0"::text = beaches.mutation.remote_id::text AND
    beaches.mutation.last_transaction_completed_at is not null;

CREATE MATERIALIZED VIEW beaches.view_activeagent_materialized as SELECT * from beaches.view_activeagent;
