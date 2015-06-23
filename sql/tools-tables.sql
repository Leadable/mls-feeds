CREATE SEQUENCE monitor_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 2
  CACHE 1;

CREATE TABLE monitor_feeds
(
  id integer NOT NULL DEFAULT nextval('monitor_id_seq'::regclass),
  mls text NOT NULL,
  created_at timestamp without time zone NOT NULL DEFAULT now(),
  status text NOT NULL DEFAULT 'IDLE'::text,
  container_id text,
  started_at timestamp without time zone,
  failed_at timestamp without time zone,
  completed_at timestamp without time zone,
  maintenance_lock boolean NOT NULL DEFAULT false,
  stats jsonb,
  log_monitor_url text,
  log_librets_url text,
  minimum_wait interval NOT NULL DEFAULT '00:20:00'::interval,
  CONSTRAINT pkey_monitor PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

CREATE SEQUENCE monitor_journal_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 34
  CACHE 1;

CREATE TABLE monitor_feeds_journal
(
  id integer NOT NULL DEFAULT nextval('monitor_journal_id_seq'::regclass),
  mls text NOT NULL,
  monitor_id integer NOT NULL,
  container_id text,
  started_at timestamp without time zone,
  failed_at timestamp without time zone,
  completed_at timestamp without time zone,
  stats jsonb,
  log_monitor_url text,
  log_librets_url text,
  CONSTRAINT pkey_monitor_journal PRIMARY KEY (id),
  CONSTRAINT fkey_monitor_monitor_id FOREIGN KEY (monitor_id)
      REFERENCES monitor_feeds (id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
WITH (
  OIDS=FALSE
);

CREATE SEQUENCE monitor_publish_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 26
  CACHE 1;

CREATE TABLE monitor_publish
(
  id serial NOT NULL,
  mls text NOT NULL,
  resource text,
  area text,
  created_at timestamp without time zone NOT NULL DEFAULT now(),
  status text NOT NULL DEFAULT 'IDLE'::text,
  failed_at timestamp without time zone,
  completed_at timestamp without time zone,
  full_rebuild boolean,
  schema_md5 text,
  old_data_md5 text,
  new_data_md5 text,
  maintenance_lock boolean NOT NULL DEFAULT false,
  minimum_wait interval NOT NULL DEFAULT '00:20:00'::interval,
  CONSTRAINT pkey_monitor_publish PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

CREATE SEQUENCE monitor_publish_journal_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 23
  CACHE 1;

CREATE TABLE monitor_publish_journal
(
  id serial NOT NULL,
  mls text NOT NULL,
  resource text,
  area text,
  created_at timestamp without time zone NOT NULL DEFAULT now(),
  status text NOT NULL DEFAULT 'IDLE'::text,
  failed_at timestamp without time zone,
  completed_at timestamp without time zone,
  full_rebuild boolean,
  schema_md5 text,
  old_data_md5 text,
  new_data_md5 text,
  maintenance_lock boolean NOT NULL DEFAULT false,
  minimum_wait interval NOT NULL DEFAULT '00:20:00'::interval,
  CONSTRAINT pkey_monitor_publish_journal PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

CREATE SEQUENCE publish_id_seq
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 20
  CACHE 1;

CREATE TABLE publish
(
  id serial NOT NULL,
  mls text NOT NULL,
  ts timestamp without time zone NOT NULL DEFAULT now(),
  resource text NOT NULL,
  area text,
  "full" boolean NOT NULL DEFAULT false,
  schema_file_url text,
  data_file_url text,
  schema_md5 text,
  data_md5 text,
  previous_data_md5 text,
  CONSTRAINT pkey_publish PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);