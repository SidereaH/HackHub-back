PGDMP  :                    |            hackHub    16.2    16.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399    hackHub    DATABASE     }   CREATE DATABASE "hackHub" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "hackHub";
                postgres    false            �            1259    16469    ContactsPortfolio    TABLE     �   CREATE TABLE public."ContactsPortfolio" (
    id integer NOT NULL,
    telegram text NOT NULL,
    git_hub_link text,
    cv text,
    participant integer
);
 '   DROP TABLE public."ContactsPortfolio";
       public         heap    postgres    false            �           0    0 #   COLUMN "ContactsPortfolio".telegram    COMMENT     a   COMMENT ON COLUMN public."ContactsPortfolio".telegram IS 'ссылка на телеграмм';
          public          postgres    false    222            �           0    0 '   COLUMN "ContactsPortfolio".git_hub_link    COMMENT     Y   COMMENT ON COLUMN public."ContactsPortfolio".git_hub_link IS 'Ссылка на GitHub';
          public          postgres    false    222            �           0    0    COLUMN "ContactsPortfolio".cv    COMMENT     C   COMMENT ON COLUMN public."ContactsPortfolio".cv IS 'Резюме';
          public          postgres    false    222            �            1259    16400    Participants    TABLE     B  CREATE TABLE public."Participants" (
    id_p integer NOT NULL,
    surname_p text NOT NULL,
    name_p text NOT NULL,
    secondname_p text,
    age_p integer NOT NULL,
    date_of_birth_p date NOT NULL,
    team integer NOT NULL,
    supervisor integer,
    contacts integer NOT NULL,
    stack_tech integer NOT NULL
);
 "   DROP TABLE public."Participants";
       public         heap    postgres    false            �           0    0    TABLE "Participants"    COMMENT     h   COMMENT ON TABLE public."Participants" IS 'Таблица с данными об участниках';
          public          postgres    false    215            �           0    0    COLUMN "Participants".id_p    COMMENT     I   COMMENT ON COLUMN public."Participants".id_p IS 'id участника';
          public          postgres    false    215            �           0    0    COLUMN "Participants".surname_p    COMMENT     G   COMMENT ON COLUMN public."Participants".surname_p IS 'Фамилия';
          public          postgres    false    215            �           0    0    COLUMN "Participants".name_p    COMMENT     <   COMMENT ON COLUMN public."Participants".name_p IS 'Имя';
          public          postgres    false    215            �           0    0 "   COLUMN "Participants".secondname_p    COMMENT     L   COMMENT ON COLUMN public."Participants".secondname_p IS 'Отчество';
          public          postgres    false    215            �           0    0 %   COLUMN "Participants".date_of_birth_p    COMMENT     X   COMMENT ON COLUMN public."Participants".date_of_birth_p IS 'День рождения';
          public          postgres    false    215            �            1259    16412    Participants_id_seq    SEQUENCE     �   ALTER TABLE public."Participants" ALTER COLUMN id_p ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Participants_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    215            �            1259    16502 	   StackTech    TABLE     x   CREATE TABLE public."StackTech" (
    stack text NOT NULL,
    id integer NOT NULL,
    participant integer NOT NULL
);
    DROP TABLE public."StackTech";
       public         heap    postgres    false            �           0    0    TABLE "StackTech"    COMMENT        COMMENT ON TABLE public."StackTech" IS 'Таблица, хранящая данные о стеке хакатонщиков';
          public          postgres    false    223            �           0    0    COLUMN "StackTech".stack    COMMENT     |   COMMENT ON COLUMN public."StackTech".stack IS 'Хранится строка со стеками пользователя';
          public          postgres    false    223            �           0    0    COLUMN "StackTech".id    COMMENT     1   COMMENT ON COLUMN public."StackTech".id IS 'id';
          public          postgres    false    223            �            1259    16456    Supervisors    TABLE     �   CREATE TABLE public."Supervisors" (
    id_sup integer NOT NULL,
    name_sup text NOT NULL,
    surname_sup text NOT NULL,
    secondname_sup text,
    age_sup integer,
    date_of_birth_sup date,
    team_sup integer NOT NULL
);
 !   DROP TABLE public."Supervisors";
       public         heap    postgres    false            �           0    0    TABLE "Supervisors"    COMMENT     O   COMMENT ON TABLE public."Supervisors" IS 'Данны об кураторах';
          public          postgres    false    220            �           0    0    COLUMN "Supervisors".name_sup    COMMENT     ]   COMMENT ON COLUMN public."Supervisors".name_sup IS 'Имя куратора команды';
          public          postgres    false    220            �           0    0     COLUMN "Supervisors".surname_sup    COMMENT     Y   COMMENT ON COLUMN public."Supervisors".surname_sup IS 'Фамилия куратора';
          public          postgres    false    220            �           0    0 #   COLUMN "Supervisors".secondname_sup    COMMENT     m   COMMENT ON COLUMN public."Supervisors".secondname_sup IS 'Отчество куратора команды';
          public          postgres    false    220            �           0    0    COLUMN "Supervisors".age_sup    COMMENT     D   COMMENT ON COLUMN public."Supervisors".age_sup IS 'Возраст';
          public          postgres    false    220            �           0    0 &   COLUMN "Supervisors".date_of_birth_sup    COMMENT     j   COMMENT ON COLUMN public."Supervisors".date_of_birth_sup IS 'День рождение куратора';
          public          postgres    false    220            �            1259    16455    Supervisors_id_sup_seq    SEQUENCE     �   ALTER TABLE public."Supervisors" ALTER COLUMN id_sup ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Supervisors_id_sup_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    220            �            1259    16403    Teams    TABLE     �   CREATE TABLE public."Teams" (
    id_t integer NOT NULL,
    name_t text NOT NULL,
    banner_t text,
    login_t text NOT NULL,
    password_t text NOT NULL,
    participant integer
);
    DROP TABLE public."Teams";
       public         heap    postgres    false            �           0    0    TABLE "Teams"    COMMENT     M   COMMENT ON TABLE public."Teams" IS 'Данные об участниках';
          public          postgres    false    216            �           0    0    COLUMN "Teams".name_t    COMMENT     N   COMMENT ON COLUMN public."Teams".name_t IS 'Название команды';
          public          postgres    false    216            �           0    0    COLUMN "Teams".banner_t    COMMENT     r   COMMENT ON COLUMN public."Teams".banner_t IS 'Лого команды, путь к нему на сервере';
          public          postgres    false    216            �           0    0    COLUMN "Teams".login_t    COMMENT     V   COMMENT ON COLUMN public."Teams".login_t IS 'Логин учетной записи';
          public          postgres    false    216            �           0    0    COLUMN "Teams".password_t    COMMENT     [   COMMENT ON COLUMN public."Teams".password_t IS 'Пароль учетной записи';
          public          postgres    false    216            �            1259    16427    Teams_id_seq    SEQUENCE     �   ALTER TABLE public."Teams" ALTER COLUMN id_t ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Teams_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    216            �            1259    16554 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16553    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    232            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    231            �            1259    16563    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16562    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    234            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    233            �            1259    16547    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16546    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    230            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    229            �            1259    16570 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16579    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16578    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    238            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    237            �            1259    16569    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    236            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    235            �            1259    16586    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16585 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    240            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    239            �            1259    16468    contacts_and_portfolio_id_seq    SEQUENCE     �   ALTER TABLE public."ContactsPortfolio" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.contacts_and_portfolio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    222            �            1259    16645    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16644    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    242            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    241            �            1259    16538    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16537    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    228            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    227            �            1259    16529    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16528    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    226            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    225            �            1259    16674    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16508    stack_tech_id_seq    SEQUENCE     �   ALTER TABLE public."StackTech" ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.stack_tech_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 1000000
    CACHE 1
);
            public          postgres    false    223            �           2604    16557    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    232    232            �           2604    16566    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233    234            �           2604    16550    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230            �           2604    16573    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235    236            �           2604    16582    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    16589    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239    240            �           2604    16648    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    242    242            �           2604    16541    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    16532    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226                      0    16469    ContactsPortfolio 
   TABLE DATA           Z   COPY public."ContactsPortfolio" (id, telegram, git_hub_link, cv, participant) FROM stdin;
    public          postgres    false    222   5�       x          0    16400    Participants 
   TABLE DATA           �   COPY public."Participants" (id_p, surname_p, name_p, secondname_p, age_p, date_of_birth_p, team, supervisor, contacts, stack_tech) FROM stdin;
    public          postgres    false    215   R�       �          0    16502 	   StackTech 
   TABLE DATA           =   COPY public."StackTech" (stack, id, participant) FROM stdin;
    public          postgres    false    223   o�       }          0    16456    Supervisors 
   TABLE DATA           |   COPY public."Supervisors" (id_sup, name_sup, surname_sup, secondname_sup, age_sup, date_of_birth_sup, team_sup) FROM stdin;
    public          postgres    false    220   ��       y          0    16403    Teams 
   TABLE DATA           [   COPY public."Teams" (id_t, name_t, banner_t, login_t, password_t, participant) FROM stdin;
    public          postgres    false    216   ��       �          0    16554 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    232   ��       �          0    16563    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    234   ��       �          0    16547    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    230    �       �          0    16570 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    236   �       �          0    16579    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    238   :�       �          0    16586    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    240   W�       �          0    16645    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    242   t�       �          0    16538    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    228   ��       �          0    16529    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    226   ��       �          0    16674    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    243   ��       �           0    0    Participants_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Participants_id_seq"', 1, false);
          public          postgres    false    217            �           0    0    Supervisors_id_sup_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Supervisors_id_sup_seq"', 1, false);
          public          postgres    false    219            �           0    0    Teams_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Teams_id_seq"', 1, false);
          public          postgres    false    218            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    231            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    233            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 24, true);
          public          postgres    false    229            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    237            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    235            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    239            �           0    0    contacts_and_portfolio_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.contacts_and_portfolio_id_seq', 1, false);
          public          postgres    false    221            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    241            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 6, true);
          public          postgres    false    227            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 18, true);
          public          postgres    false    225            �           0    0    stack_tech_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.stack_tech_id_seq', 1, false);
          public          postgres    false    224            �           2606    16440    Participants Participants_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Participants"
    ADD CONSTRAINT "Participants_pkey" PRIMARY KEY (id_p);
 L   ALTER TABLE ONLY public."Participants" DROP CONSTRAINT "Participants_pkey";
       public            postgres    false    215            �           2606    16462    Supervisors Supervisors_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."Supervisors"
    ADD CONSTRAINT "Supervisors_pkey" PRIMARY KEY (id_sup);
 J   ALTER TABLE ONLY public."Supervisors" DROP CONSTRAINT "Supervisors_pkey";
       public            postgres    false    220            �           2606    16672    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    232            �           2606    16602 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    234    234            �           2606    16568 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    234            �           2606    16559    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    232            �           2606    16593 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    230    230            �           2606    16552 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    230            �           2606    16584 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    238            �           2606    16617 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    238    238            �           2606    16575    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    236            �           2606    16591 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    240            �           2606    16631 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    240    240            �           2606    16667     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    236            �           2606    16475 -   ContactsPortfolio contacts_and_portfolio_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."ContactsPortfolio"
    ADD CONSTRAINT contacts_and_portfolio_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public."ContactsPortfolio" DROP CONSTRAINT contacts_and_portfolio_pkey;
       public            postgres    false    222            �           2606    16653 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    242            �           2606    16545 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    228    228            �           2606    16543 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    228            �           2606    16536 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    226            �           2606    16680 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    243            �           2606    16517    StackTech stack_tech_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public."StackTech"
    ADD CONSTRAINT stack_tech_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY public."StackTech" DROP CONSTRAINT stack_tech_pkey;
       public            postgres    false    223            �           2606    16444    Teams teams_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Teams"
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id_t);
 <   ALTER TABLE ONLY public."Teams" DROP CONSTRAINT teams_pkey;
       public            postgres    false    216            �           1259    16673    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    232            �           1259    16613 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    234            �           1259    16614 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    234            �           1259    16599 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    230            �           1259    16629 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    238            �           1259    16628 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    238            �           1259    16643 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    240            �           1259    16642 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    240            �           1259    16668     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    236            �           1259    16664 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    242            �           1259    16665 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    242            �           1259    16682 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    243            �           1259    16681 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    243            �           2606    16463 %   Supervisors Supervisors_team_sup_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Supervisors"
    ADD CONSTRAINT "Supervisors_team_sup_fkey" FOREIGN KEY (team_sup) REFERENCES public."Teams"(id_t);
 S   ALTER TABLE ONLY public."Supervisors" DROP CONSTRAINT "Supervisors_team_sup_fkey";
       public          postgres    false    216    220    4770            �           2606    16608 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    4787    230    234            �           2606    16603 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    234    232    4792            �           2606    16594 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    230    4782    228            �           2606    16623 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    238    232    4792            �           2606    16618 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    238    236    4800            �           2606    16637 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    230    240    4787            �           2606    16632 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    4800    236    240            �           2606    16497 &   Participants contacts_and_portfolio_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participants"
    ADD CONSTRAINT contacts_and_portfolio_fk FOREIGN KEY (contacts) REFERENCES public."ContactsPortfolio"(id) NOT VALID;
 R   ALTER TABLE ONLY public."Participants" DROP CONSTRAINT contacts_and_portfolio_fk;
       public          postgres    false    215    222    4774            �           0    0 6   CONSTRAINT contacts_and_portfolio_fk ON "Participants"    COMMENT     �   COMMENT ON CONSTRAINT contacts_and_portfolio_fk ON public."Participants" IS 'Внешний ключ к контактам и портфолио';
          public          postgres    false    4824            �           2606    16476 9   ContactsPortfolio contacts_and_portfolio_participant_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."ContactsPortfolio"
    ADD CONSTRAINT contacts_and_portfolio_participant_fkey FOREIGN KEY (participant) REFERENCES public."Participants"(id_p);
 e   ALTER TABLE ONLY public."ContactsPortfolio" DROP CONSTRAINT contacts_and_portfolio_participant_fkey;
       public          postgres    false    4768    215    222            �           2606    16654 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    228    242    4782            �           2606    16659 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    236    242    4800            �           2606    16482    Teams participant_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Teams"
    ADD CONSTRAINT participant_fk FOREIGN KEY (participant) REFERENCES public."Participants"(id_p) NOT VALID;
 @   ALTER TABLE ONLY public."Teams" DROP CONSTRAINT participant_fk;
       public          postgres    false    4768    215    216            �           2606    16518    StackTech participant_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."StackTech"
    ADD CONSTRAINT participant_fk FOREIGN KEY (participant) REFERENCES public."Participants"(id_p) NOT VALID;
 D   ALTER TABLE ONLY public."StackTech" DROP CONSTRAINT participant_fk;
       public          postgres    false    223    215    4768            �           0    0 (   CONSTRAINT participant_fk ON "StackTech"    COMMENT     �   COMMENT ON CONSTRAINT participant_fk ON public."StackTech" IS 'Внешний ключ на таблицу участников';
          public          postgres    false    4831            �           2606    16523    Participants stack_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participants"
    ADD CONSTRAINT stack_fk FOREIGN KEY (stack_tech) REFERENCES public."StackTech"(id) NOT VALID;
 A   ALTER TABLE ONLY public."Participants" DROP CONSTRAINT stack_fk;
       public          postgres    false    215    223    4776            �           0    0 %   CONSTRAINT stack_fk ON "Participants"    COMMENT     }   COMMENT ON CONSTRAINT stack_fk ON public."Participants" IS 'внешний ключ для стэка технологий';
          public          postgres    false    4825            �           2606    16492    Participants supervisor_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participants"
    ADD CONSTRAINT supervisor_fk FOREIGN KEY (supervisor) REFERENCES public."Supervisors"(id_sup) NOT VALID;
 F   ALTER TABLE ONLY public."Participants" DROP CONSTRAINT supervisor_fk;
       public          postgres    false    220    4772    215            �           0    0 *   CONSTRAINT supervisor_fk ON "Participants"    COMMENT     �   COMMENT ON CONSTRAINT supervisor_fk ON public."Participants" IS 'Внешний ключ к таблице кураторов';
          public          postgres    false    4826            �           2606    16487    Participants team_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public."Participants"
    ADD CONSTRAINT team_fk FOREIGN KEY (team) REFERENCES public."Teams"(id_t) NOT VALID;
 @   ALTER TABLE ONLY public."Participants" DROP CONSTRAINT team_fk;
       public          postgres    false    4770    216    215            �           0    0 $   CONSTRAINT team_fk ON "Participants"    COMMENT     q   COMMENT ON CONSTRAINT team_fk ON public."Participants" IS 'Внешний ключ таблицы команд';
          public          postgres    false    4827                  x������ � �      x      x������ � �      �      x������ � �      }      x������ � �      y      x������ � �      �      x������ � �      �      x������ � �      �     x�]�K��0��ur
N0j£�z�Q�B�b�:�h�����I�%��o��i�g�f��c�Y����G�<��ЂRq�0G��f�a����[�m��Le���4u}0�x`+� �	{�}�R��NT����v�����֝d�~O]D�l�	�����<,�����ӺB�[ZA)���T���qu�<�͏>��_��� ��m�.2�)H���:x�ޟ8�1WY��'���`:Y��;�LL�vf���x댰j'�k�2�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   W   x�M�K
�0�y����M�P�C�.z{E��LOn�!љ='���\��
K�!'�o�k��JU̴�d�f���)?�~��pM^%�      �   �  x������ ���)��qZ�Y6������.P�o��P4�F/\��1�ͤ�����mR�BaУZ�� B���	������?-�L�oT�H%�p~��5kI����A�Dh+(Mz�0����85؋���y<n3�%�3�;#�@vA�NF�Н�mV�Y͓.�V�/ ��(��jֲ�⏀4A9��������A^����_m�hF�3j��P���-�e�6�"
�>Rұ�c��BO�3��`�#}H�u�l6/���J���D��vE�����7���ͥ\��G�����s��������s������w�^��$�}�Z�ي�(�zg��C_1M�`���H��������~��ۅQ��ǮN�}ؖ@�5��ʯ��WL�����v���Y�      �      x������ � �     