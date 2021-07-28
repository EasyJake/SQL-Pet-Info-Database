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

-- Table: public.place

-- DROP TABLE public.place;

CREATE TABLE public.place
(
    place_id serial NOT NULL DEFAULT,
    place_name character varying COLLATE pg_catalog."default" NOT NULL,
    state character varying COLLATE pg_catalog."default",
    cuisines character varying COLLATE pg_catalog."default" NOT NULL,
    pic character varying COLLATE pg_catalog."default",
    founded smallint[],
    CONSTRAINT place_pkey PRIMARY KEY (place_id)
)

TABLESPACE pg_default;

ALTER TABLE public.place
    OWNER to postgres;

-- Table: public.comment

-- DROP TABLE public.comment;

CREATE TABLE public.comment
(
    comment_id serial NOT NULL,
    place_id smallint NOT NULL,
    content character varying COLLATE pg_catalog."default",
    start smallint NOT NULL,
    rant boolean,
    author character varying COLLATE pg_catalog."default",
    CONSTRAINT comment_pkey PRIMARY KEY (comment_id),
    CONSTRAINT comment_place_id_fkey FOREIGN KEY (place_id)
        REFERENCES public.place (place_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE public.comment
    OWNER to postgres;


-- CREATE TABLE comment (
-- 	comment_id serial NOT NULL,
-- 	place_id smallint NOT NULL,
-- 	content character varying, 
-- 	start smallint NOT NULL, 
-- 	rant boolean,
-- 	author character varying,
-- 	CONSTRAINT comment_pkey PRIMARY KEY (comment_id),
-- 	CONSTRAINT comment_place_id_fkey FOREIGN KEY (place_id) REFERENCES place (place_id)
-- );


