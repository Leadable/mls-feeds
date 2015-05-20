DROP VIEW ragfl.view_property;

CREATE OR REPLACE VIEW ragfl.view_property AS

SELECT p.* FROM ragfl."Property" p JOIN ragfl.mutation m ON p.sysid::text = m.remote_id::text AND m.last_transaction_completed_at is not null;
