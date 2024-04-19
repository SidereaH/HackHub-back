-- Table: public.Supervisors

-- DROP TABLE IF EXISTS public."Supervisors";

CREATE TABLE IF NOT EXISTS public."Supervisors"
(
    id_sup integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 1000000 CACHE 1 ),
    name_sup text COLLATE pg_catalog."default" NOT NULL,
    surname_sup text COLLATE pg_catalog."default" NOT NULL,
    secondname_sup text COLLATE pg_catalog."default",
    age_sup integer,
    date_of_birth_sup date,
	team_sup integer NOT NULL,
	FOREIGN KEY (team_sup) REFERENCES Teams(id_t)
    CONSTRAINT "Supervisors_pkey" PRIMARY KEY (id_sup)
	
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Supervisors"
    OWNER to postgres;

COMMENT ON TABLE public."Supervisors"
    IS 'Данны об кураторах';

COMMENT ON COLUMN public."Supervisors".name_sup
    IS 'Имя куратора команды';

COMMENT ON COLUMN public."Supervisors".surname_sup
    IS 'Фамилия куратора';

COMMENT ON COLUMN public."Supervisors".secondname_sup
    IS 'Отчество куратора команды';

COMMENT ON COLUMN public."Supervisors".age_sup
    IS 'Возраст';

COMMENT ON COLUMN public."Supervisors".date_of_birth_sup
    IS 'День рождение куратора';