CREATE TABLE beaches.places
(
	id serial,
	mls text NOT NULL,
	category text,
	label text,
	way geometry,
	area_id integer,
  CONSTRAINT places_id_pkey PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
