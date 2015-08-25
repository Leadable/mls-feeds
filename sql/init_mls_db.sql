CREATE EXTENSION postgis;

CREATE TABLE property
(
  __geo_url text,
  "__geo_Error" boolean,
  "__geo_ErrorMessage" text,
  __geo_quality integer,
  "__geo_Found" integer,
  __geo_latitude text,
  __geo_longitude text,
  __geo_offsetlat text,
  __geo_offsetlon text,
  __geo_radius integer,
  __geo_name text,
  __geo_line1 text,
  __geo_line2 text,
  __geo_line3 text,
  __geo_line4 text,
  __geo_cross text,
  __geo_house text,
  __geo_stfull text,
  __geo_stbody text,
  __geo_stpredir text,
  __geo_stsufdir text,
  __geo_stprefix text,
  __geo_stsuffix text,
  __geo_xstreet text,
  __geo_unittype text,
  __geo_postal text,
  __geo_city text,
  __geo_county text,
  __geo_state text,
  __geo_country text,
  __geo_countrycode text,
  __geo_statecode text,
  __geo_countycode text,
  __geo_uzip text,
  __geo_hash text,
  __geo_woeid bigint,
  __geo_woetype integer,
  __geo_geom geometry,
  __geo_modified_at timestamp without time zone,
  __geo_neighborhood text[],
  __systemid text,
  __images_processed_at timestamp without time zone,
  __removed_at timestamp without time zone,
  __image_dimensions integer[],
  __inserted_at timestamp without time zone,
  __percent_reduced numeric,
  __price_updated_at timestamp without time zone,
  __price_history_times timestamp without time zone[],
  __price_history_vals numeric[],
  __alert_watched_at timestamp without time zone,
  __class_name text,
  __modified_at timestamp without time zone,
  __status_updated_at timestamp without time zone,
  __status_history_times timestamp without time zone[],
  __status_history_vals text[],
  __photo_urls text[],
  __geo_confidence text,
  __geo_admin_dist2 text,
  __geo_admin_dist text,
  __geo_formatted_address text,
  __geo_locality text,
  __geo_entity_type text,
  __geo_raw text,
  __image_count integer,
  __geo_outlier boolean
)
WITH (
  OIDS=FALSE
);

CREATE ROLE readonly;
CREATE ROLE "mls-feeds-live-read-only" WITH LOGIN ENCRYPTED PASSWORD 'YPKx5hxrSBj4TTdYLDaCNqkDr2KUCU6h5gTS8kDM' IN ROLE readonly;

create extension tablefunc;

create extension dblink;

create extension postgres_fdw;

CREATE SERVER main FOREIGN DATA WRAPPER postgres_fdw OPTIONS (host '67.222.150.82', port '6000', dbname 'dbkaigoaig2h9j');

CREATE USER MAPPING FOR "mls-feeds-live-read-only" SERVER main OPTIONS (user 'main-read-only', password 'YPKx5hxrSBj4TTdYLDaCNqkDr2KUCU6h5gTS8kDM');

GRANT USAGE ON FOREIGN SERVER main TO readonly;

CREATE FUNCTION _final_median(anyarray) RETURNS float8 AS $$
  WITH q AS
  (
     SELECT val
     FROM unnest($1) val
     WHERE VAL IS NOT NULL
     ORDER BY 1
  ),
  cnt AS
  (
    SELECT COUNT(*) AS c FROM q
  )
  SELECT AVG(val)::float8
  FROM
  (
    SELECT val FROM q
    LIMIT  2 - MOD((SELECT c FROM cnt), 2)
    OFFSET GREATEST(CEIL((SELECT c FROM cnt) / 2.0) - 1,0)
  ) q2;
$$ LANGUAGE SQL IMMUTABLE;

CREATE AGGREGATE median(anyelement) (
  SFUNC=array_append,
  STYPE=anyarray,
  FINALFUNC=_final_median,
  INITCOND='{}'
);
