-- Table: public.contacts_and_portfolio

-- DROP TABLE IF EXISTS public.contacts_and_portfolio;

CREATE TABLE IF NOT EXISTS public.contacts_and_portfolio
(
    id integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 1000000 CACHE 1 ),
    telegram text COLLATE pg_catalog."default" NOT NULL,
    git_hub_link text COLLATE pg_catalog."default",
    cv text COLLATE pg_catalog."default",
	participant int,
	FOREIGN KEY (participant) REFERENCES participants(id_p),
    CONSTRAINT contacts_and_portfolio_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.contacts_and_portfolio
    OWNER to postgres;

COMMENT ON COLUMN public.contacts_and_portfolio.telegram
    IS 'ссылка на телеграмм';

COMMENT ON COLUMN public.contacts_and_portfolio.git_hub_link
    IS 'Ссылка на GitHub';

COMMENT ON COLUMN public.contacts_and_portfolio.cv
    IS 'Резюме';