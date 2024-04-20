--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2024-04-20 15:16:18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 222 (class 1259 OID 16554)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16553)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 224 (class 1259 OID 16563)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16562)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 5030 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 220 (class 1259 OID 16547)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16546)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 5033 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 226 (class 1259 OID 16570)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16579)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16578)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 5037 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 225 (class 1259 OID 16569)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 5039 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 230 (class 1259 OID 16586)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16585)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 232 (class 1259 OID 16645)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 16644)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 218 (class 1259 OID 16538)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16537)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 216 (class 1259 OID 16529)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16528)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 5051 (class 0 OID 0)
-- Dependencies: 215
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 233 (class 1259 OID 16674)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16932)
-- Name: hackapp_contactsportfolio; Type: TABLE; Schema: public; Owner: django_admin
--

CREATE TABLE public.hackapp_contactsportfolio (
    id integer NOT NULL,
    telegram character varying(30) NOT NULL,
    git_hub_link character varying(50) NOT NULL,
    cv text NOT NULL
);


ALTER TABLE public.hackapp_contactsportfolio OWNER TO django_admin;

--
-- TOC entry 234 (class 1259 OID 16931)
-- Name: hackapp_contactsportfolio_id_seq; Type: SEQUENCE; Schema: public; Owner: django_admin
--

CREATE SEQUENCE public.hackapp_contactsportfolio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hackapp_contactsportfolio_id_seq OWNER TO django_admin;

--
-- TOC entry 5054 (class 0 OID 0)
-- Dependencies: 234
-- Name: hackapp_contactsportfolio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_admin
--

ALTER SEQUENCE public.hackapp_contactsportfolio_id_seq OWNED BY public.hackapp_contactsportfolio.id;


--
-- TOC entry 243 (class 1259 OID 16964)
-- Name: hackapp_participants; Type: TABLE; Schema: public; Owner: django_admin
--

CREATE TABLE public.hackapp_participants (
    id_p integer NOT NULL,
    surname_p character varying(30) NOT NULL,
    name_p character varying(30) NOT NULL,
    secondname_p character varying(30),
    age_p integer NOT NULL,
    date_of_birth_p date NOT NULL,
    contacts_id integer NOT NULL,
    stack_tech_id integer NOT NULL,
    supervisor_id integer,
    team_id integer NOT NULL
);


ALTER TABLE public.hackapp_participants OWNER TO django_admin;

--
-- TOC entry 242 (class 1259 OID 16963)
-- Name: hackapp_participants_id_p_seq; Type: SEQUENCE; Schema: public; Owner: django_admin
--

CREATE SEQUENCE public.hackapp_participants_id_p_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hackapp_participants_id_p_seq OWNER TO django_admin;

--
-- TOC entry 5055 (class 0 OID 0)
-- Dependencies: 242
-- Name: hackapp_participants_id_p_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_admin
--

ALTER SEQUENCE public.hackapp_participants_id_p_seq OWNED BY public.hackapp_participants.id_p;


--
-- TOC entry 237 (class 1259 OID 16941)
-- Name: hackapp_stacktech; Type: TABLE; Schema: public; Owner: django_admin
--

CREATE TABLE public.hackapp_stacktech (
    id_st integer NOT NULL,
    stack text NOT NULL
);


ALTER TABLE public.hackapp_stacktech OWNER TO django_admin;

--
-- TOC entry 236 (class 1259 OID 16940)
-- Name: hackapp_stacktech_id_st_seq; Type: SEQUENCE; Schema: public; Owner: django_admin
--

CREATE SEQUENCE public.hackapp_stacktech_id_st_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hackapp_stacktech_id_st_seq OWNER TO django_admin;

--
-- TOC entry 5056 (class 0 OID 0)
-- Dependencies: 236
-- Name: hackapp_stacktech_id_st_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_admin
--

ALTER SEQUENCE public.hackapp_stacktech_id_st_seq OWNED BY public.hackapp_stacktech.id_st;


--
-- TOC entry 241 (class 1259 OID 16957)
-- Name: hackapp_supervisors; Type: TABLE; Schema: public; Owner: django_admin
--

CREATE TABLE public.hackapp_supervisors (
    id_sup integer NOT NULL,
    name_sup character varying(30) NOT NULL,
    surname_sup character varying(30) NOT NULL,
    secondname_sup character varying(30) NOT NULL,
    age_sup integer NOT NULL,
    date_of_birth_sup date NOT NULL,
    teams_sup_id integer NOT NULL
);


ALTER TABLE public.hackapp_supervisors OWNER TO django_admin;

--
-- TOC entry 240 (class 1259 OID 16956)
-- Name: hackapp_supervisors_id_sup_seq; Type: SEQUENCE; Schema: public; Owner: django_admin
--

CREATE SEQUENCE public.hackapp_supervisors_id_sup_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hackapp_supervisors_id_sup_seq OWNER TO django_admin;

--
-- TOC entry 5057 (class 0 OID 0)
-- Dependencies: 240
-- Name: hackapp_supervisors_id_sup_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_admin
--

ALTER SEQUENCE public.hackapp_supervisors_id_sup_seq OWNED BY public.hackapp_supervisors.id_sup;


--
-- TOC entry 239 (class 1259 OID 16950)
-- Name: hackapp_teams; Type: TABLE; Schema: public; Owner: django_admin
--

CREATE TABLE public.hackapp_teams (
    id_t integer NOT NULL,
    name_t character varying(15) NOT NULL,
    banner_t character varying(100) NOT NULL,
    login_t character varying(40) NOT NULL,
    password_t character varying(100) NOT NULL
);


ALTER TABLE public.hackapp_teams OWNER TO django_admin;

--
-- TOC entry 238 (class 1259 OID 16949)
-- Name: hackapp_teams_id_t_seq; Type: SEQUENCE; Schema: public; Owner: django_admin
--

CREATE SEQUENCE public.hackapp_teams_id_t_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.hackapp_teams_id_t_seq OWNER TO django_admin;

--
-- TOC entry 5058 (class 0 OID 0)
-- Dependencies: 238
-- Name: hackapp_teams_id_t_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_admin
--

ALTER SEQUENCE public.hackapp_teams_id_t_seq OWNED BY public.hackapp_teams.id_t;


--
-- TOC entry 4760 (class 2604 OID 16557)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 4761 (class 2604 OID 16566)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 4759 (class 2604 OID 16550)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 4762 (class 2604 OID 16573)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 4763 (class 2604 OID 16582)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 4764 (class 2604 OID 16589)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 4765 (class 2604 OID 16648)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 4758 (class 2604 OID 16541)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 4757 (class 2604 OID 16532)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 4766 (class 2604 OID 16935)
-- Name: hackapp_contactsportfolio id; Type: DEFAULT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_contactsportfolio ALTER COLUMN id SET DEFAULT nextval('public.hackapp_contactsportfolio_id_seq'::regclass);


--
-- TOC entry 4770 (class 2604 OID 16967)
-- Name: hackapp_participants id_p; Type: DEFAULT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_participants ALTER COLUMN id_p SET DEFAULT nextval('public.hackapp_participants_id_p_seq'::regclass);


--
-- TOC entry 4767 (class 2604 OID 16944)
-- Name: hackapp_stacktech id_st; Type: DEFAULT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_stacktech ALTER COLUMN id_st SET DEFAULT nextval('public.hackapp_stacktech_id_st_seq'::regclass);


--
-- TOC entry 4769 (class 2604 OID 16960)
-- Name: hackapp_supervisors id_sup; Type: DEFAULT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_supervisors ALTER COLUMN id_sup SET DEFAULT nextval('public.hackapp_supervisors_id_sup_seq'::regclass);


--
-- TOC entry 4768 (class 2604 OID 16953)
-- Name: hackapp_teams id_t; Type: DEFAULT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_teams ALTER COLUMN id_t SET DEFAULT nextval('public.hackapp_teams_id_t_seq'::regclass);


--
-- TOC entry 4998 (class 0 OID 16554)
-- Dependencies: 222
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5000 (class 0 OID 16563)
-- Dependencies: 224
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 4996 (class 0 OID 16547)
-- Dependencies: 220
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_permission VALUES (1, 'Can add log entry', 1, 'add_logentry') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (2, 'Can change log entry', 1, 'change_logentry') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (3, 'Can delete log entry', 1, 'delete_logentry') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (4, 'Can view log entry', 1, 'view_logentry') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (5, 'Can add permission', 2, 'add_permission') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (6, 'Can change permission', 2, 'change_permission') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (7, 'Can delete permission', 2, 'delete_permission') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (8, 'Can view permission', 2, 'view_permission') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (9, 'Can add group', 3, 'add_group') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (10, 'Can change group', 3, 'change_group') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (11, 'Can delete group', 3, 'delete_group') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (12, 'Can view group', 3, 'view_group') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (13, 'Can add user', 4, 'add_user') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (14, 'Can change user', 4, 'change_user') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (15, 'Can delete user', 4, 'delete_user') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (16, 'Can view user', 4, 'view_user') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (17, 'Can add content type', 5, 'add_contenttype') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (18, 'Can change content type', 5, 'change_contenttype') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (19, 'Can delete content type', 5, 'delete_contenttype') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (20, 'Can view content type', 5, 'view_contenttype') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (21, 'Can add session', 6, 'add_session') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (22, 'Can change session', 6, 'change_session') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (23, 'Can delete session', 6, 'delete_session') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (24, 'Can view session', 6, 'view_session') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (25, 'Can add supervisors', 7, 'add_supervisors') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (26, 'Can change supervisors', 7, 'change_supervisors') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (27, 'Can delete supervisors', 7, 'delete_supervisors') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (28, 'Can view supervisors', 7, 'view_supervisors') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (29, 'Can add contacts portfolio', 8, 'add_contactsportfolio') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (30, 'Can change contacts portfolio', 8, 'change_contactsportfolio') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (31, 'Can delete contacts portfolio', 8, 'delete_contactsportfolio') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (32, 'Can view contacts portfolio', 8, 'view_contactsportfolio') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (33, 'Can add participants', 9, 'add_participants') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (34, 'Can change participants', 9, 'change_participants') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (35, 'Can delete participants', 9, 'delete_participants') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (36, 'Can view participants', 9, 'view_participants') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (37, 'Can add stack tech', 10, 'add_stacktech') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (38, 'Can change stack tech', 10, 'change_stacktech') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (39, 'Can delete stack tech', 10, 'delete_stacktech') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (40, 'Can view stack tech', 10, 'view_stacktech') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (41, 'Can add teams', 11, 'add_teams') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (42, 'Can change teams', 11, 'change_teams') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (43, 'Can delete teams', 11, 'delete_teams') ON CONFLICT DO NOTHING;
INSERT INTO public.auth_permission VALUES (44, 'Can view teams', 11, 'view_teams') ON CONFLICT DO NOTHING;


--
-- TOC entry 5002 (class 0 OID 16570)
-- Dependencies: 226
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auth_user VALUES (1, 'pbkdf2_sha256$260000$EIpYUFNtnSJboflDJUvmtY$0+DJmYF+pS3l+d0OF37gHPHcl4EdE2YjuwfrFT82GZI=', '2024-04-20 11:59:20.31648+03', true, 'admin', '', '', 'hutornoyaa@gmail.com', true, true, '2024-04-20 11:58:31.638409+03') ON CONFLICT DO NOTHING;


--
-- TOC entry 5004 (class 0 OID 16579)
-- Dependencies: 228
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5006 (class 0 OID 16586)
-- Dependencies: 230
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 5008 (class 0 OID 16645)
-- Dependencies: 232
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_admin_log VALUES (1, '2024-04-20 12:26:09.874103+03', '1', 'Teams object (1)', 1, '[{"added": {}}]', 11, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.django_admin_log VALUES (2, '2024-04-20 12:35:13.212483+03', '1', 'Teams object (1)', 3, '', 11, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.django_admin_log VALUES (3, '2024-04-20 13:47:51.403537+03', '1', 'ContactsPortfolio object (1)', 1, '[{"added": {}}]', 8, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.django_admin_log VALUES (4, '2024-04-20 14:02:06.968194+03', '1', 'ContactsPortfolio object (1)', 2, '[{"changed": {"fields": ["Telegram", "Git hub link", "Cv"]}}]', 8, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.django_admin_log VALUES (5, '2024-04-20 14:02:44.744321+03', '1', 'StackTech object (1)', 1, '[{"added": {}}]', 10, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.django_admin_log VALUES (6, '2024-04-20 14:03:18.666395+03', '1', 'Teams object (1)', 1, '[{"added": {}}]', 11, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.django_admin_log VALUES (7, '2024-04-20 14:07:12.595717+03', '1', 'Supervisors object (1)', 1, '[{"added": {}}]', 7, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.django_admin_log VALUES (8, '2024-04-20 14:07:50.980105+03', '2', 'Teams object (2)', 1, '[{"added": {}}]', 11, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.django_admin_log VALUES (9, '2024-04-20 14:08:15.428007+03', '2', 'Supervisors object (2)', 1, '[{"added": {}}]', 7, 1) ON CONFLICT DO NOTHING;
INSERT INTO public.django_admin_log VALUES (10, '2024-04-20 14:08:46.585363+03', '1', 'Participants object (1)', 1, '[{"added": {}}]', 9, 1) ON CONFLICT DO NOTHING;


--
-- TOC entry 4994 (class 0 OID 16538)
-- Dependencies: 218
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_content_type VALUES (1, 'admin', 'logentry') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (2, 'auth', 'permission') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (3, 'auth', 'group') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (4, 'auth', 'user') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (5, 'contenttypes', 'contenttype') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (6, 'sessions', 'session') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (7, 'hackapp', 'supervisors') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (8, 'hackapp', 'contactsportfolio') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (9, 'hackapp', 'participants') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (10, 'hackapp', 'stacktech') ON CONFLICT DO NOTHING;
INSERT INTO public.django_content_type VALUES (11, 'hackapp', 'teams') ON CONFLICT DO NOTHING;


--
-- TOC entry 4992 (class 0 OID 16529)
-- Dependencies: 216
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_migrations VALUES (1, 'contenttypes', '0001_initial', '2024-04-20 11:09:07.784598+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (2, 'auth', '0001_initial', '2024-04-20 11:09:07.835602+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (3, 'admin', '0001_initial', '2024-04-20 11:09:07.847944+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-04-20 11:09:07.850945+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-04-20 11:09:07.853945+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-04-20 11:09:07.860945+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-04-20 11:09:07.864945+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-04-20 11:09:07.875946+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-04-20 11:09:07.878946+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-04-20 11:09:07.881946+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-04-20 11:09:07.882944+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-04-20 11:09:07.885945+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-04-20 11:09:07.891944+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-04-20 11:09:07.894945+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-04-20 11:09:07.898945+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-04-20 11:09:07.902947+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-04-20 11:09:07.905945+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (18, 'sessions', '0001_initial', '2024-04-20 11:09:07.912946+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (19, 'hackapp', '0001_initial', '2024-04-20 11:54:41.99671+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (20, 'hackapp', '0002_auto_20240420_1322', '2024-04-20 13:46:55.308551+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (21, 'hackapp', '0003_auto_20240420_1327', '2024-04-20 13:46:55.346679+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (22, 'hackapp', '0004_contactsportfolio_participants_stacktech_supervisors_teams', '2024-04-20 13:46:55.380915+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (23, 'hackapp', '0005_alter_participants_secondname_p', '2024-04-20 14:05:02.734872+03') ON CONFLICT DO NOTHING;
INSERT INTO public.django_migrations VALUES (24, 'hackapp', '0006_alter_participants_supervisor', '2024-04-20 15:09:46.315158+03') ON CONFLICT DO NOTHING;


--
-- TOC entry 5009 (class 0 OID 16674)
-- Dependencies: 233
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.django_session VALUES ('etvqa7qxqrm2pogr6kyg02pwq2g4s9l3', '.eJxVjDsOwjAQRO_iGln-4B8lPWew1us1DiBbipMKcXcSKQWUM-_NvFmEdalxHTTHKbMLk-z02yXAJ7Ud5Ae0e-fY2zJPie8KP-jgt57pdT3cv4MKo27r4G1J6LwSVJIWBGgIvECSyaGSW7LpjBkDyJDRGy2s9qWYoLR2xnr2-QIIXTg_:1ry6Z6:2Z6NvF4l_b1Cbc6YI7jJXPuuOi45mwkhr_HHJnwAxfI', '2024-05-04 11:59:20.317481+03') ON CONFLICT DO NOTHING;


--
-- TOC entry 5011 (class 0 OID 16932)
-- Dependencies: 235
-- Data for Name: hackapp_contactsportfolio; Type: TABLE DATA; Schema: public; Owner: django_admin
--

INSERT INTO public.hackapp_contactsportfolio VALUES (1, 'https://t.me/Siderean', 'https://github.com/SidereaH/HackHub-back', 'no cv') ON CONFLICT DO NOTHING;


--
-- TOC entry 5019 (class 0 OID 16964)
-- Dependencies: 243
-- Data for Name: hackapp_participants; Type: TABLE DATA; Schema: public; Owner: django_admin
--

INSERT INTO public.hackapp_participants VALUES (1, 'Хуторной', 'Андрей', 'Андреевич', 16, '2006-12-16', 1, 1, 1, 1) ON CONFLICT DO NOTHING;


--
-- TOC entry 5013 (class 0 OID 16941)
-- Dependencies: 237
-- Data for Name: hackapp_stacktech; Type: TABLE DATA; Schema: public; Owner: django_admin
--

INSERT INTO public.hackapp_stacktech VALUES (1, 'Python (Django), PostgreSQL, C# (Unity)') ON CONFLICT DO NOTHING;


--
-- TOC entry 5017 (class 0 OID 16957)
-- Dependencies: 241
-- Data for Name: hackapp_supervisors; Type: TABLE DATA; Schema: public; Owner: django_admin
--

INSERT INTO public.hackapp_supervisors VALUES (1, 'Валерия', 'Алешина', 'Викторовна', 23, '2001-01-01', 1) ON CONFLICT DO NOTHING;
INSERT INTO public.hackapp_supervisors VALUES (2, 'None', 'None', 'None', 0, '2000-01-01', 2) ON CONFLICT DO NOTHING;


--
-- TOC entry 5015 (class 0 OID 16950)
-- Dependencies: 239
-- Data for Name: hackapp_teams; Type: TABLE DATA; Schema: public; Owner: django_admin
--

INSERT INTO public.hackapp_teams VALUES (1, 'Хабсы', 'картинка', 'habsy@gmail.com', 'habsyPass') ON CONFLICT DO NOTHING;
INSERT INTO public.hackapp_teams VALUES (2, 'None', 'None', 'None', 'None') ON CONFLICT DO NOTHING;


--
-- TOC entry 5059 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 5060 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 5061 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- TOC entry 5062 (class 0 OID 0)
-- Dependencies: 227
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 5063 (class 0 OID 0)
-- Dependencies: 225
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 5064 (class 0 OID 0)
-- Dependencies: 229
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 5065 (class 0 OID 0)
-- Dependencies: 231
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 10, true);


--
-- TOC entry 5066 (class 0 OID 0)
-- Dependencies: 217
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- TOC entry 5067 (class 0 OID 0)
-- Dependencies: 215
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);


--
-- TOC entry 5068 (class 0 OID 0)
-- Dependencies: 234
-- Name: hackapp_contactsportfolio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_admin
--

SELECT pg_catalog.setval('public.hackapp_contactsportfolio_id_seq', 1, true);


--
-- TOC entry 5069 (class 0 OID 0)
-- Dependencies: 242
-- Name: hackapp_participants_id_p_seq; Type: SEQUENCE SET; Schema: public; Owner: django_admin
--

SELECT pg_catalog.setval('public.hackapp_participants_id_p_seq', 1, true);


--
-- TOC entry 5070 (class 0 OID 0)
-- Dependencies: 236
-- Name: hackapp_stacktech_id_st_seq; Type: SEQUENCE SET; Schema: public; Owner: django_admin
--

SELECT pg_catalog.setval('public.hackapp_stacktech_id_st_seq', 1, true);


--
-- TOC entry 5071 (class 0 OID 0)
-- Dependencies: 240
-- Name: hackapp_supervisors_id_sup_seq; Type: SEQUENCE SET; Schema: public; Owner: django_admin
--

SELECT pg_catalog.setval('public.hackapp_supervisors_id_sup_seq', 2, true);


--
-- TOC entry 5072 (class 0 OID 0)
-- Dependencies: 238
-- Name: hackapp_teams_id_t_seq; Type: SEQUENCE SET; Schema: public; Owner: django_admin
--

SELECT pg_catalog.setval('public.hackapp_teams_id_t_seq', 2, true);


--
-- TOC entry 4785 (class 2606 OID 16672)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 4790 (class 2606 OID 16602)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 4793 (class 2606 OID 16568)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4787 (class 2606 OID 16559)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 4780 (class 2606 OID 16593)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 4782 (class 2606 OID 16552)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 4801 (class 2606 OID 16584)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 4804 (class 2606 OID 16617)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 4795 (class 2606 OID 16575)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 4807 (class 2606 OID 16591)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 4810 (class 2606 OID 16631)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 4798 (class 2606 OID 16667)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 4813 (class 2606 OID 16653)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 4775 (class 2606 OID 16545)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 4777 (class 2606 OID 16543)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 4773 (class 2606 OID 16536)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 4817 (class 2606 OID 16680)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 4820 (class 2606 OID 16939)
-- Name: hackapp_contactsportfolio hackapp_contactsportfolio_pkey; Type: CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_contactsportfolio
    ADD CONSTRAINT hackapp_contactsportfolio_pkey PRIMARY KEY (id);


--
-- TOC entry 4830 (class 2606 OID 16969)
-- Name: hackapp_participants hackapp_participants_pkey; Type: CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_pkey PRIMARY KEY (id_p);


--
-- TOC entry 4822 (class 2606 OID 16948)
-- Name: hackapp_stacktech hackapp_stacktech_pkey; Type: CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_stacktech
    ADD CONSTRAINT hackapp_stacktech_pkey PRIMARY KEY (id_st);


--
-- TOC entry 4826 (class 2606 OID 16962)
-- Name: hackapp_supervisors hackapp_supervisors_pkey; Type: CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_supervisors
    ADD CONSTRAINT hackapp_supervisors_pkey PRIMARY KEY (id_sup);


--
-- TOC entry 4824 (class 2606 OID 16955)
-- Name: hackapp_teams hackapp_teams_pkey; Type: CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_teams
    ADD CONSTRAINT hackapp_teams_pkey PRIMARY KEY (id_t);


--
-- TOC entry 4783 (class 1259 OID 16673)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 4788 (class 1259 OID 16613)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 4791 (class 1259 OID 16614)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 4778 (class 1259 OID 16599)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 4799 (class 1259 OID 16629)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 4802 (class 1259 OID 16628)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 4805 (class 1259 OID 16643)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 4808 (class 1259 OID 16642)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 4796 (class 1259 OID 16668)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 4811 (class 1259 OID 16664)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 4814 (class 1259 OID 16665)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 4815 (class 1259 OID 16682)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 4818 (class 1259 OID 16681)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 4828 (class 1259 OID 16996)
-- Name: hackapp_participants_contacts_id_3abd0495; Type: INDEX; Schema: public; Owner: django_admin
--

CREATE INDEX hackapp_participants_contacts_id_3abd0495 ON public.hackapp_participants USING btree (contacts_id);


--
-- TOC entry 4831 (class 1259 OID 16997)
-- Name: hackapp_participants_stack_tech_id_9f199b52; Type: INDEX; Schema: public; Owner: django_admin
--

CREATE INDEX hackapp_participants_stack_tech_id_9f199b52 ON public.hackapp_participants USING btree (stack_tech_id);


--
-- TOC entry 4832 (class 1259 OID 16998)
-- Name: hackapp_participants_supervisor_id_59fc1e71; Type: INDEX; Schema: public; Owner: django_admin
--

CREATE INDEX hackapp_participants_supervisor_id_59fc1e71 ON public.hackapp_participants USING btree (supervisor_id);


--
-- TOC entry 4833 (class 1259 OID 16999)
-- Name: hackapp_participants_team_id_4a24471d; Type: INDEX; Schema: public; Owner: django_admin
--

CREATE INDEX hackapp_participants_team_id_4a24471d ON public.hackapp_participants USING btree (team_id);


--
-- TOC entry 4827 (class 1259 OID 16975)
-- Name: hackapp_supervisors_teams_sup_id_b0a28c44; Type: INDEX; Schema: public; Owner: django_admin
--

CREATE INDEX hackapp_supervisors_teams_sup_id_b0a28c44 ON public.hackapp_supervisors USING btree (teams_sup_id);


--
-- TOC entry 4835 (class 2606 OID 16608)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4836 (class 2606 OID 16603)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4834 (class 2606 OID 16594)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4837 (class 2606 OID 16623)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4838 (class 2606 OID 16618)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4839 (class 2606 OID 16637)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4840 (class 2606 OID 16632)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4841 (class 2606 OID 16654)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4842 (class 2606 OID 16659)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4844 (class 2606 OID 16976)
-- Name: hackapp_participants hackapp_participants_contacts_id_3abd0495_fk_hackapp_c; Type: FK CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_contacts_id_3abd0495_fk_hackapp_c FOREIGN KEY (contacts_id) REFERENCES public.hackapp_contactsportfolio(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4845 (class 2606 OID 16981)
-- Name: hackapp_participants hackapp_participants_stack_tech_id_9f199b52_fk_hackapp_s; Type: FK CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_stack_tech_id_9f199b52_fk_hackapp_s FOREIGN KEY (stack_tech_id) REFERENCES public.hackapp_stacktech(id_st) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4846 (class 2606 OID 17001)
-- Name: hackapp_participants hackapp_participants_supervisor_id_59fc1e71_fk_hackapp_s; Type: FK CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_supervisor_id_59fc1e71_fk_hackapp_s FOREIGN KEY (supervisor_id) REFERENCES public.hackapp_supervisors(id_sup) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4847 (class 2606 OID 16991)
-- Name: hackapp_participants hackapp_participants_team_id_4a24471d_fk_hackapp_teams_id_t; Type: FK CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_participants
    ADD CONSTRAINT hackapp_participants_team_id_4a24471d_fk_hackapp_teams_id_t FOREIGN KEY (team_id) REFERENCES public.hackapp_teams(id_t) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 4843 (class 2606 OID 16970)
-- Name: hackapp_supervisors hackapp_supervisors_teams_sup_id_b0a28c44_fk_hackapp_teams_id_t; Type: FK CONSTRAINT; Schema: public; Owner: django_admin
--

ALTER TABLE ONLY public.hackapp_supervisors
    ADD CONSTRAINT hackapp_supervisors_teams_sup_id_b0a28c44_fk_hackapp_teams_id_t FOREIGN KEY (teams_sup_id) REFERENCES public.hackapp_teams(id_t) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT ALL ON SCHEMA public TO django_admin;


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE auth_group; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.auth_group TO django_admin;


--
-- TOC entry 5028 (class 0 OID 0)
-- Dependencies: 221
-- Name: SEQUENCE auth_group_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.auth_group_id_seq TO django_admin;


--
-- TOC entry 5029 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE auth_group_permissions; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.auth_group_permissions TO django_admin;


--
-- TOC entry 5031 (class 0 OID 0)
-- Dependencies: 223
-- Name: SEQUENCE auth_group_permissions_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.auth_group_permissions_id_seq TO django_admin;


--
-- TOC entry 5032 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE auth_permission; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.auth_permission TO django_admin;


--
-- TOC entry 5034 (class 0 OID 0)
-- Dependencies: 219
-- Name: SEQUENCE auth_permission_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.auth_permission_id_seq TO django_admin;


--
-- TOC entry 5035 (class 0 OID 0)
-- Dependencies: 226
-- Name: TABLE auth_user; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.auth_user TO django_admin;


--
-- TOC entry 5036 (class 0 OID 0)
-- Dependencies: 228
-- Name: TABLE auth_user_groups; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.auth_user_groups TO django_admin;


--
-- TOC entry 5038 (class 0 OID 0)
-- Dependencies: 227
-- Name: SEQUENCE auth_user_groups_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.auth_user_groups_id_seq TO django_admin;


--
-- TOC entry 5040 (class 0 OID 0)
-- Dependencies: 225
-- Name: SEQUENCE auth_user_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.auth_user_id_seq TO django_admin;


--
-- TOC entry 5041 (class 0 OID 0)
-- Dependencies: 230
-- Name: TABLE auth_user_user_permissions; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.auth_user_user_permissions TO django_admin;


--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 229
-- Name: SEQUENCE auth_user_user_permissions_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.auth_user_user_permissions_id_seq TO django_admin;


--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 232
-- Name: TABLE django_admin_log; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.django_admin_log TO django_admin;


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 231
-- Name: SEQUENCE django_admin_log_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.django_admin_log_id_seq TO django_admin;


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE django_content_type; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.django_content_type TO django_admin;


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 217
-- Name: SEQUENCE django_content_type_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.django_content_type_id_seq TO django_admin;


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 216
-- Name: TABLE django_migrations; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.django_migrations TO django_admin;


--
-- TOC entry 5052 (class 0 OID 0)
-- Dependencies: 215
-- Name: SEQUENCE django_migrations_id_seq; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON SEQUENCE public.django_migrations_id_seq TO django_admin;


--
-- TOC entry 5053 (class 0 OID 0)
-- Dependencies: 233
-- Name: TABLE django_session; Type: ACL; Schema: public; Owner: postgres
--

GRANT ALL ON TABLE public.django_session TO django_admin;


-- Completed on 2024-04-20 15:16:18

--
-- PostgreSQL database dump complete
--

