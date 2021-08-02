-- Database: rest_rant

-- DROP DATABASE rest_rant;

CREATE DATABASE rest_rant
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

-- Table: public.places

-- DROP TABLE public.places;

CREATE TABLE public.places
(
    place_id serial NOT NULL,
    name character varying NOT NULL,
    state character varying,
    cuisines character varying,
    pic character varying,
    founded smallint[],
    CONSTRAINT place_pkey PRIMARY KEY (place_id)
)

-- ALTER TABLE public.places
--     OWNER to postgres;

-- Table: public.comments

-- DROP TABLE public.comments;

CREATE TABLE comments (
	comment_id serial NOT NULL,
	place_id smallint NOT NULL,
	content character varying, 
    stars smallint NOT NULL,
	rant boolean,
	author character varying,
	CONSTRAINT comments_pkey PRIMARY KEY (comment_id),
	CONSTRAINT comments_places_id_fkey FOREIGN KEY (place_id) REFERENCES places (place_id)
);

-- ALTER TABLE public.comments
--     OWNER to postgres;