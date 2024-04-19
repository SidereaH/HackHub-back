-- Table: public.teams

-- DROP TABLE IF EXISTS public.teams;

CREATE TABLE IF NOT EXISTS public.teams
(
    id_t integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 1000000 CACHE 1 ),
    name_t text COLLATE pg_catalog."default" NOT NULL,
    banner_t text COLLATE pg_catalog."default",
    login_t text COLLATE pg_catalog."default" NOT NULL,
    password_t text COLLATE pg_catalog."default" NOT NULL,
	participant int,
	FOREIGN KEY (participant) REFERENCES participants(id_p),
    CONSTRAINT "Teams_pkey" PRIMARY KEY (id_t)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.teams
    OWNER to postgres;

COMMENT ON TABLE public.teams
    IS 'Данные об участниках';

COMMENT ON COLUMN public.teams.name_t
    IS 'Название команды';

COMMENT ON COLUMN public.teams.banner_t
    IS 'Лого команды, путь к нему на сервере';

COMMENT ON COLUMN public.teams.login_t
    IS 'Логин учетной записи';

COMMENT ON COLUMN public.teams.password_t
    IS 'Пароль учетной записи';