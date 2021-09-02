
-- Table: public.pets

-- DROP TABLE public.pets;

CREATE TABLE public.pets
(
    pet_id integer,
    pet_type character varying(25),
    pet_name character varying(25),
    pet_age integer
)

TABLESPACE pg_default;

-- ALTER TABLE public.pets
--     OWNER to postgres;