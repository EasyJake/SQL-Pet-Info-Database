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

TABLESPACE pg_default;

ALTER TABLE public.places
    OWNER to postgres;

-- Table: public.comments

-- DROP TABLE public.comments;

-- CREATE TABLE public.comments
-- (
--     comment_id integer NOT NULL DEFAULT nextval('comment_comment_id_seq'::regclass),
--     place_id smallint NOT NULL,
--     content character varying COLLATE pg_catalog."default",
--     stars smallint NOT NULL,
--     rant boolean,
--     author character varying COLLATE pg_catalog."default",
--     CONSTRAINT comment_pkey PRIMARY KEY (comment_id),
--     CONSTRAINT comment_place_id_fkey FOREIGN KEY (place_id)
--         REFERENCES public.places (place_id) MATCH SIMPLE
--         ON UPDATE NO ACTION
--         ON DELETE NO ACTION
-- )

-- TABLESPACE pg_default;

-- ALTER TABLE public.comments
--     OWNER to postgres;

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
