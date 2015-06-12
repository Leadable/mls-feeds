-- Database: mls

DROP DATABASE IF EXISTS mls;

CREATE DATABASE mls;

\c mls

-- Extension: postgis

-- DROP EXTENSION postgis;

CREATE EXTENSION postgis;

-- Table: property

-- DROP TABLE property;

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

CREATE TABLE geocoder_cache
(
  service text NOT NULL,
  query text NOT NULL,
  ts timestamp without time zone NOT NULL DEFAULT now(),
  expires text NOT NULL DEFAULT '30 days'::text,
  response jsonb,
  CONSTRAINT pkey_geocoder_cache PRIMARY KEY (service, query)
) WITH (OIDS=FALSE);
