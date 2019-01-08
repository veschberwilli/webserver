--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
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
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
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
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: hugo_adressen; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hugo_adressen (
    id integer NOT NULL,
    name1 character varying(2000),
    name2 character varying(2000),
    nachname character varying(2000),
    strasse character varying(2000),
    plz character varying(2000),
    ort character varying(2000)
);


ALTER TABLE public.hugo_adressen OWNER TO postgres;

--
-- Name: hugo_adressen_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hugo_adressen_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hugo_adressen_id_seq OWNER TO postgres;

--
-- Name: hugo_adressen_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hugo_adressen_id_seq OWNED BY public.hugo_adressen.id;


--
-- Name: hugo_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hugo_category (
    id integer NOT NULL,
    cat_name character varying(200)
);


ALTER TABLE public.hugo_category OWNER TO postgres;

--
-- Name: hugo_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hugo_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hugo_category_id_seq OWNER TO postgres;

--
-- Name: hugo_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hugo_category_id_seq OWNED BY public.hugo_category.id;


--
-- Name: hugo_geburtstage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hugo_geburtstage (
    id integer NOT NULL,
    vorname character varying(2000),
    nachname character varying(2000),
    datum date
);


ALTER TABLE public.hugo_geburtstage OWNER TO postgres;

--
-- Name: hugo_geburtstage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hugo_geburtstage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hugo_geburtstage_id_seq OWNER TO postgres;

--
-- Name: hugo_geburtstage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hugo_geburtstage_id_seq OWNED BY public.hugo_geburtstage.id;


--
-- Name: hugo_rezept; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hugo_rezept (
    id integer NOT NULL,
    category_id integer,
    img_path character varying(200),
    name character varying(200)
);


ALTER TABLE public.hugo_rezept OWNER TO postgres;

--
-- Name: hugo_rezept_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hugo_rezept_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hugo_rezept_id_seq OWNER TO postgres;

--
-- Name: hugo_rezept_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hugo_rezept_id_seq OWNED BY public.hugo_rezept.id;


--
-- Name: hugo_zubereitung; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hugo_zubereitung (
    id integer NOT NULL,
    zubereitung character varying(2000),
    rezept_id integer
);


ALTER TABLE public.hugo_zubereitung OWNER TO postgres;

--
-- Name: hugo_zubereitung_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hugo_zubereitung_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hugo_zubereitung_id_seq OWNER TO postgres;

--
-- Name: hugo_zubereitung_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hugo_zubereitung_id_seq OWNED BY public.hugo_zubereitung.id;


--
-- Name: hugo_zutaten; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hugo_zutaten (
    id integer NOT NULL,
    zutat character varying(2000),
    rezept_id integer
);


ALTER TABLE public.hugo_zutaten OWNER TO postgres;

--
-- Name: hugo_zutaten_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.hugo_zutaten_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hugo_zutaten_id_seq OWNER TO postgres;

--
-- Name: hugo_zutaten_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.hugo_zutaten_id_seq OWNED BY public.hugo_zutaten.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: hugo_adressen id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_adressen ALTER COLUMN id SET DEFAULT nextval('public.hugo_adressen_id_seq'::regclass);


--
-- Name: hugo_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_category ALTER COLUMN id SET DEFAULT nextval('public.hugo_category_id_seq'::regclass);


--
-- Name: hugo_geburtstage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_geburtstage ALTER COLUMN id SET DEFAULT nextval('public.hugo_geburtstage_id_seq'::regclass);


--
-- Name: hugo_rezept id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_rezept ALTER COLUMN id SET DEFAULT nextval('public.hugo_rezept_id_seq'::regclass);


--
-- Name: hugo_zubereitung id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_zubereitung ALTER COLUMN id SET DEFAULT nextval('public.hugo_zubereitung_id_seq'::regclass);


--
-- Name: hugo_zutaten id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_zutaten ALTER COLUMN id SET DEFAULT nextval('public.hugo_zutaten_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add rezept	7	add_rezept
26	Can change rezept	7	change_rezept
27	Can delete rezept	7	delete_rezept
28	Can view rezept	7	view_rezept
29	Can add category	8	add_category
30	Can change category	8	change_category
31	Can delete category	8	delete_category
32	Can view category	8	view_category
33	Can add zutaten	9	add_zutaten
34	Can change zutaten	9	change_zutaten
35	Can delete zutaten	9	delete_zutaten
36	Can view zutaten	9	view_zutaten
37	Can add zubereitung	10	add_zubereitung
38	Can change zubereitung	10	change_zubereitung
39	Can delete zubereitung	10	delete_zubereitung
40	Can view zubereitung	10	view_zubereitung
41	Can add adressen	11	add_adressen
42	Can change adressen	11	change_adressen
43	Can delete adressen	11	delete_adressen
44	Can view adressen	11	view_adressen
45	Can add geburtstage	12	add_geburtstage
46	Can change geburtstage	12	change_geburtstage
47	Can delete geburtstage	12	delete_geburtstage
48	Can view geburtstage	12	view_geburtstage
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$OswQE0n7ukYs$JrIm+eoiujHG6auhqC7ESBg2NQToVPdNK+X2Nk2DVb8=	2019-01-08 19:36:11.787217+01	t	egon				t	t	2018-10-30 10:27:05.362253+01
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2018-10-30 10:33:30.025082+01	1	Rezept object (1)	1	[{"added": {}}]	7	1
2	2018-10-30 10:35:40.194102+01	2	Rezept object (2)	1	[{"added": {}}]	7	1
3	2018-10-30 15:02:52.024205+01	1	Category object (1)	1	[{"added": {}}]	8	1
4	2018-10-30 15:03:01.923697+01	2	Category object (2)	1	[{"added": {}}]	8	1
5	2018-10-30 15:03:48.804811+01	3	Category object (3)	1	[{"added": {}}]	8	1
6	2018-10-30 15:49:42.679725+01	3	Rezept object (3)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (1)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (2)"}}]	7	1
7	2018-10-30 16:25:33.364662+01	3	Rezept object (3)	2	[]	7	1
8	2018-10-30 16:25:43.439186+01	3	Rezept object (3)	2	[]	7	1
9	2018-10-30 16:26:19.453653+01	3	Rezept object (3)	2	[{"deleted": {"name": "zutaten", "object": "Zutaten object (None)"}}]	7	1
10	2018-10-30 16:42:53.077111+01	3	Rezept object (3)	2	[{"added": {"name": "zutaten", "object": "Zutaten object (3)"}}]	7	1
11	2018-10-30 20:01:30.305856+01	3	Rezept object (3)	2	[{"changed": {"fields": ["name"]}}]	7	1
12	2018-10-30 20:01:56.877776+01	4	Rezept object (4)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (4)"}}]	7	1
13	2018-10-30 21:18:37.789274+01	4	Rezept object (4)	2	[]	7	1
14	2018-10-30 21:18:42.681919+01	4	Rezept object (4)	2	[]	7	1
15	2018-10-31 14:09:36.823856+01	4	Warmes Essen	1	[{"added": {}}]	8	1
16	2018-10-31 14:11:37.889979+01	5	Rezept object (5)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (5)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (6)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (7)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (8)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (9)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (10)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (11)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (12)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (13)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (1)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (2)"}}]	7	1
17	2018-10-31 14:12:41.289142+01	5	Rezept object (5)	2	[{"added": {"name": "zubereitung", "object": "Zubereitung object (3)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (4)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (5)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (6)"}}]	7	1
18	2018-10-31 16:02:33.865685+01	3	Rezept object (3)	2	[{"added": {"name": "zutaten", "object": "Zutaten object (14)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (15)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (16)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (17)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (18)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (19)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (20)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (21)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (22)"}}, {"changed": {"name": "zutaten", "object": "Zutaten object (1)", "fields": ["zutat"]}}, {"changed": {"name": "zutaten", "object": "Zutaten object (3)", "fields": ["zutat"]}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (7)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (8)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (9)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (10)"}}]	7	1
19	2018-10-31 16:05:43.062828+01	4	Rezept object (4)	2	[{"changed": {"fields": ["name"]}}, {"added": {"name": "zutaten", "object": "Zutaten object (23)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (24)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (25)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (26)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (27)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (28)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (29)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (30)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (31)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (32)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (33)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (34)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (35)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (36)"}}, {"changed": {"name": "zutaten", "object": "Zutaten object (4)", "fields": ["zutat"]}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (11)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (12)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (13)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (14)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (15)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (16)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (17)"}}]	7	1
20	2019-01-07 21:53:33.559746+01	6	Rezept object (6)	1	[{"added": {}}]	7	1
21	2019-01-07 22:02:48.677078+01	6	Rezept object (6)	2	[{"added": {"name": "zutaten", "object": "Zutaten object (37)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (38)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (39)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (40)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (41)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (42)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (43)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (44)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (45)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (46)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (18)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (19)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (20)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (21)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (22)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (23)"}}]	7	1
22	2019-01-07 22:07:04.048495+01	7	Rezept object (7)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (47)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (48)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (49)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (50)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (51)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (52)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (53)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (54)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (55)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (56)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (57)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (24)"}}]	7	1
23	2019-01-07 22:08:43.51543+01	7	Rezept object (7)	2	[{"added": {"name": "zubereitung", "object": "Zubereitung object (25)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (26)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (27)"}}]	7	1
24	2019-01-07 22:10:37.04326+01	8	Rezept object (8)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (58)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (59)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (60)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (61)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (62)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (63)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (64)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (65)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (66)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (67)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (68)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (28)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (29)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (30)"}}]	7	1
25	2019-01-07 22:13:41.931423+01	9	Rezept object (9)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (69)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (70)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (71)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (72)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (73)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (74)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (75)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (76)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (77)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (78)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (79)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (80)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (81)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (82)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (31)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (32)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (33)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (34)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (35)"}}]	7	1
26	2019-01-08 19:36:28.014023+01	3	Rezept object (3)	2	[{"changed": {"fields": ["img_path"]}}]	7	1
27	2019-01-08 20:02:12.374857+01	5	Salat	1	[{"added": {}}]	8	1
28	2019-01-08 20:03:13.411522+01	10	Rezept object (10)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (83)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (84)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (85)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (86)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (87)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (36)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (37)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (38)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (39)"}}]	7	1
29	2019-01-08 20:04:02.535586+01	6	Suppe	1	[{"added": {}}]	8	1
30	2019-01-08 20:05:04.010125+01	11	Rezept object (11)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (88)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (89)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (90)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (91)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (92)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (40)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (41)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (42)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (43)"}}]	7	1
31	2019-01-08 20:06:43.843678+01	12	Rezept object (12)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (93)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (94)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (95)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (96)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (97)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (44)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (45)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (46)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (47)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (48)"}}]	7	1
32	2019-01-08 20:08:35.86527+01	13	Rezept object (13)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (98)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (99)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (100)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (101)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (102)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (103)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (104)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (105)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (106)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (49)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (50)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (51)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (52)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (53)"}}]	7	1
33	2019-01-08 20:09:14.294936+01	7	Sonstiges	1	[{"added": {}}]	8	1
34	2019-01-08 20:09:52.378374+01	14	Rezept object (14)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (107)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (108)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (109)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (110)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (111)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (54)"}}]	7	1
35	2019-01-08 20:11:02.841161+01	15	Rezept object (15)	1	[{"added": {}}, {"added": {"name": "zutaten", "object": "Zutaten object (112)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (113)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (114)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (115)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (116)"}}, {"added": {"name": "zutaten", "object": "Zutaten object (117)"}}, {"added": {"name": "zubereitung", "object": "Zubereitung object (55)"}}]	7	1
36	2019-01-08 20:59:57.44628+01	1	Geburtstage object (1)	1	[{"added": {}}]	12	1
37	2019-01-08 21:02:04.906211+01	2	Joris Mink	1	[{"added": {}}]	12	1
38	2019-01-08 21:02:27.111865+01	3	Michael Mink	1	[{"added": {}}]	12	1
39	2019-01-08 21:12:29.918763+01	4	Silvia Böllinger	1	[{"added": {}}]	12	1
40	2019-01-08 21:12:55.493759+01	5	Anita Grimmig	1	[{"added": {}}]	12	1
41	2019-01-08 21:13:21.424466+01	6	Ludwig Hanner	1	[{"added": {}}]	12	1
42	2019-01-08 21:13:53.236197+01	7	Anton Hanner	1	[{"added": {}}]	12	1
43	2019-01-08 21:14:12.445333+01	8	Simone Hanner	1	[{"added": {}}]	12	1
44	2019-01-08 21:14:35.736102+01	9	Jonathan Mink	1	[{"added": {}}]	12	1
45	2019-01-08 21:14:55.098049+01	10	Manfred Grimmig	1	[{"added": {}}]	12	1
46	2019-01-08 21:15:18.499141+01	11	Antonia Mink	1	[{"added": {}}]	12	1
47	2019-01-08 21:16:46.683229+01	12	Marco Grimmig	1	[{"added": {}}]	12	1
48	2019-01-08 21:17:06.503235+01	13	Alexander Böllinger	1	[{"added": {}}]	12	1
49	2019-01-08 21:17:36.6125+01	14	Joachim Böllinger	1	[{"added": {}}]	12	1
50	2019-01-08 21:17:59.164631+01	15	Christina Mink	1	[{"added": {}}]	12	1
51	2019-01-08 21:18:20.962233+01	16	Thomas Mink	1	[{"added": {}}]	12	1
52	2019-01-08 21:18:49.892054+01	17	Barbara Mink	1	[{"added": {}}]	12	1
53	2019-01-08 21:19:14.03974+01	18	Maximilian Mink	1	[{"added": {}}]	12	1
54	2019-01-08 21:19:42.789775+01	19	Katharina Mink	1	[{"added": {}}]	12	1
55	2019-01-08 21:22:49.46468+01	20	Brigitte Schwarz	1	[{"added": {}}]	12	1
56	2019-01-08 21:23:18.981458+01	21	Wolfgang Schwarz	1	[{"added": {}}]	12	1
57	2019-01-08 21:23:46.111474+01	22	Andreas Mink	1	[{"added": {}}]	12	1
58	2019-01-08 21:24:10.231106+01	23	Manuel Grimmig	1	[{"added": {}}]	12	1
59	2019-01-08 21:24:29.405665+01	24	Helmut Krüger	1	[{"added": {}}]	12	1
60	2019-01-08 21:24:48.39554+01	25	Lotte Krüger	1	[{"added": {}}]	12	1
61	2019-01-08 21:25:14.459142+01	26	Matthias Grimmig	1	[{"added": {}}]	12	1
62	2019-01-08 21:25:49.46978+01	27	Erika Mink	1	[{"added": {}}]	12	1
63	2019-01-08 21:26:10.902582+01	28	Josef Mink	1	[{"added": {}}]	12	1
64	2019-01-08 21:26:58.02122+01	29	Bärbel Penninger	1	[{"added": {}}]	12	1
65	2019-01-08 21:27:22.967879+01	30	Rudolf Bohnert	1	[{"added": {}}]	12	1
66	2019-01-08 21:27:55.205875+01	31	Wina Bohnert	1	[{"added": {}}]	12	1
67	2019-01-08 21:28:27.530403+01	32	Nizza Krümmel	1	[{"added": {}}]	12	1
68	2019-01-08 21:29:09.415291+01	33	Lidwina Mink	1	[{"added": {}}]	12	1
69	2019-01-08 21:29:35.283047+01	34	Klaus Zinser	1	[{"added": {}}]	12	1
70	2019-01-08 21:30:07.673333+01	35	Sigrid Zinser	1	[{"added": {}}]	12	1
71	2019-01-08 21:30:29.791128+01	36	Patrick Bettinger	1	[{"added": {}}]	12	1
72	2019-01-08 21:35:07.373465+01	1	Adressen object (1)	1	[{"added": {}}]	11	1
73	2019-01-08 21:36:53.227222+01	2	Erika Josef Mink	1	[{"added": {}}]	11	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	hugo	rezept
8	hugo	category
9	hugo	zutaten
10	hugo	zubereitung
11	hugo	adressen
12	hugo	geburtstage
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2018-10-28 11:18:44.018792+01
2	auth	0001_initial	2018-10-28 11:18:44.224655+01
3	admin	0001_initial	2018-10-28 11:18:44.290222+01
4	admin	0002_logentry_remove_auto_add	2018-10-28 11:18:44.32012+01
5	admin	0003_logentry_add_action_flag_choices	2018-10-28 11:18:44.370722+01
6	contenttypes	0002_remove_content_type_name	2018-10-28 11:18:44.420839+01
7	auth	0002_alter_permission_name_max_length	2018-10-28 11:18:44.438279+01
8	auth	0003_alter_user_email_max_length	2018-10-28 11:18:44.465193+01
9	auth	0004_alter_user_username_opts	2018-10-28 11:18:44.489861+01
10	auth	0005_alter_user_last_login_null	2018-10-28 11:18:44.517352+01
11	auth	0006_require_contenttypes_0002	2018-10-28 11:18:44.52232+01
12	auth	0007_alter_validators_add_error_messages	2018-10-28 11:18:44.54953+01
13	auth	0008_alter_user_username_max_length	2018-10-28 11:18:44.587087+01
14	auth	0009_alter_user_last_name_max_length	2018-10-28 11:18:44.615664+01
15	sessions	0001_initial	2018-10-28 11:18:44.646377+01
16	hugo	0001_initial	2018-10-30 10:26:34.164607+01
17	hugo	0002_auto_20181030_1017	2018-10-30 11:17:13.208957+01
18	hugo	0003_auto_20181030_1354	2018-10-30 15:02:22.43975+01
19	hugo	0004_auto_20181030_1359	2018-10-30 15:02:22.457889+01
20	hugo	0005_auto_20181030_1406	2018-10-30 15:06:17.008182+01
21	hugo	0006_auto_20181030_1448	2018-10-30 15:48:12.331789+01
22	hugo	0007_auto_20181030_1551	2018-10-30 16:51:48.945504+01
23	hugo	0008_rezept_name	2018-10-30 20:00:23.894036+01
24	hugo	0009_auto_20181030_1905	2018-10-30 20:06:03.692098+01
25	hugo	0010_auto_20181030_2017	2018-10-30 21:17:25.128479+01
26	hugo	0011_adressen_geburtstage	2019-01-08 20:57:53.248283+01
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
adhqvln2h6tns7oq6hciw573khegri83	MzEwODdjOTE2ODk1NjYzMjhiOGRjYjJmOTI2MmI0YTYyMzlkMDc3Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOTk1NTZhODYyNTQzOWRiZmEwMTg4OWQ2ZWRiZWVkZmYwYzNiOGZmIn0=	2018-11-13 10:27:33.927499+01
qoyy33l5p4582drnr3ow7yi1lmxgp0by	MzEwODdjOTE2ODk1NjYzMjhiOGRjYjJmOTI2MmI0YTYyMzlkMDc3Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOTk1NTZhODYyNTQzOWRiZmEwMTg4OWQ2ZWRiZWVkZmYwYzNiOGZmIn0=	2018-11-13 11:19:23.400723+01
nm04uii81h1esuo49kr8s2tj1pxh1l6k	MzEwODdjOTE2ODk1NjYzMjhiOGRjYjJmOTI2MmI0YTYyMzlkMDc3Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOTk1NTZhODYyNTQzOWRiZmEwMTg4OWQ2ZWRiZWVkZmYwYzNiOGZmIn0=	2019-01-21 21:38:42.249641+01
m98kpds95nnfh6yy9sxrtzsy1yf46klm	MzEwODdjOTE2ODk1NjYzMjhiOGRjYjJmOTI2MmI0YTYyMzlkMDc3Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOTk1NTZhODYyNTQzOWRiZmEwMTg4OWQ2ZWRiZWVkZmYwYzNiOGZmIn0=	2019-01-22 19:36:11.794702+01
\.


--
-- Data for Name: hugo_adressen; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hugo_adressen (id, name1, name2, nachname, strasse, plz, ort) FROM stdin;
1	Janine	Michael	Mink	An der Römerlinde 7	72119	Ammerbuch
2	Erika	Josef	Mink	Schwarzwaldstraße 9	78628	Rottweil
\.


--
-- Data for Name: hugo_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hugo_category (id, cat_name) FROM stdin;
1	Kuchen
2	Torte
3	Nachtisch
4	Warmes Essen
5	Salat
6	Suppe
7	Sonstiges
\.


--
-- Data for Name: hugo_geburtstage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hugo_geburtstage (id, vorname, nachname, datum) FROM stdin;
1	Janine	Mink	1981-05-15
2	Joris	Mink	2016-10-13
3	Michael	Mink	1984-09-22
4	Silvia	Böllinger	2019-07-03
5	Anita	Grimmig	1955-05-08
6	Ludwig	Hanner	2013-04-17
7	Anton	Hanner	2016-04-04
8	Simone	Hanner	1981-01-01
9	Jonathan	Mink	2008-01-21
10	Manfred	Grimmig	2018-12-16
11	Antonia	Mink	2004-12-08
12	Marco	Grimmig	1976-12-07
13	Alexander	Böllinger	2018-12-06
14	Joachim	Böllinger	1971-10-12
15	Christina	Mink	1975-10-15
16	Thomas	Mink	1976-06-02
17	Barbara	Mink	1975-09-30
18	Maximilian	Mink	2010-09-10
19	Katharina	Mink	1929-05-16
20	Brigitte	Schwarz	2018-09-29
21	Wolfgang	Schwarz	1952-05-18
22	Andreas	Mink	1973-06-14
23	Manuel	Grimmig	2019-07-02
24	Helmut	Krüger	2018-07-18
25	Lotte	Krüger	2018-07-12
26	Matthias	Grimmig	1985-08-10
27	Erika	Mink	1951-04-04
28	Josef	Mink	1948-03-11
29	Bärbel	Penninger	1949-05-05
30	Rudolf	Bohnert	1949-05-02
31	Wina	Bohnert	1953-04-29
32	Nizza	Krümmel	1935-07-12
33	Lidwina	Mink	1930-09-23
34	Klaus	Zinser	2019-05-03
35	Sigrid	Zinser	1949-05-15
36	Patrick	Bettinger	1984-08-08
\.


--
-- Data for Name: hugo_rezept; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hugo_rezept (id, category_id, img_path, name) FROM stdin;
5	4	\N	Kürbis mit Erbsen-Risotto
4	1	ggg	Haselnussschnecken
6	1	Obstkuchen_mit_Haferflockenboden	Obstkuchen mit Haferflockenboden
7	1	\N	Käsekuchen
8	1	\N	Kirschkuchen
9	1	\N	Hefezopf mit Marzipan-Nuss-Füllung
3	1	Apfelkuchen	Apfelkuchen
10	5	Kartoffelsalat	Kartoffelsalat
11	6	Brokkolisuppe	Brokkolisuppe
12	6	Hühnersuppe	Hühnersuppe
13	6	Champignon_Creme_Suppe	Champignon Creme Suppe
14	7	Obazda	Obazda
15	7	Vegane_Sosse	Vegane Soße
\.


--
-- Data for Name: hugo_zubereitung; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hugo_zubereitung (id, zubereitung, rezept_id) FROM stdin;
1	Hokaido Kürbis waschen und in kleine Stücke schneiden.	5
2	Diese in eine Auflaufform und Olivenöl, Salz, Pfeffer und Thymian dazu und gut umrühren.	5
3	Alles für 20 Min in Ofen, 200 Grad Ober-/Unterhitze.	5
4	Zwiebel klein schneiden und in Rapsöl andünsten.	5
5	Risottoreis dazu und kurz mit andünsten. Nun nach und nach Gemüsebrühe dazu, bis die gesamte Brühe aufgebraucht ist.	5
6	Am Schluss die Erbsen dazu und mit Salz und Pfeffer würzen.	5
7	Teig: Mehl auf Arbeitsplatte oder in Schüssel. Zucker, Ei und Butter dazu. Alles zu einem Teighaufen verkneten. Ruhen lassen.	3
8	Streusel zubereiten: alle Zutaten in Schüssel und mit dem Knethaken verrühren (kann etwas dauern).	3
9	Äpfel waschen, schälen und in Spalten schneiden. Teig in eine gefettete Kuchenform, Apfelspalten drauf, etwas Zimt darüber und dann die Streusel drauf.	3
10	Kuchen bei 170 Grad Umluft ca. 45 Minuten backen.	3
11	Teig: Mehl in große Schüssel. Milch lauwarm machen und Hefe in eine Mulde im Mehl geben. Milch auf Hefe geben und vorsichtig mit Schneebesen rühren, etwas Mehl reinrühren bis Milch aufgebraucht ist (nicht das ganze Mehl!).	4
12	Schüssel mit einem Tuch abdecken und an einem warmen Ort 15-20 Minuten gehen lassen.	4
13	Nun restliches Mehl und alle anderen Zutaten dazu und kneten bis der Teig Blasen wirft.	4
14	Den Teig nochmals gehen lassen (ca. 1 Stunde). Danach Teig ein letztes Mal kneten und auf Arbeitsfläche ausrollen.	4
15	Alle Zutaten der Füllung vermischen und auf den ausgerollten Teig verteilen. Einen Rand von etwa 1cm frei lassen. Diesen mit Wasser einreiben und den Teig aufrollen.	4
16	Dieser wird nun in Scheiben geschnitten.	4
17	Die Schnecken bei 170 Grad Umluft ca. 15-20 Minuten backen.	4
18	Äpfel waschen, schälen und klein reiben.	6
19	Alle anderen Zutaten dazu und vermischen.	6
20	Alles in eine gefettete Kuchenform und bei 170 Grad 40min backen.	6
21	Boden abkühlen lassen.	6
22	Wenn man möchte, kann man auf den Boden eine dünne Schicht Milchreis geben.	6
23	Nun mit Obst belegen und Tortenguss drauf.	6
24	Teig: Mehl auf Arbeitsplatte oder in Schüssel. Zucker, Ei und Butter dazu und dann zu einem Teighaufen verkneten. Auf Teller und ruhen lassen.	7
25	Belag: Butter schaumig rühren. Eier trennen. Eidotter, Zucker, Zitronenschale, Stärkemehl und Quark unterrühren. Eiweiß steif schlagen (vorher Schüssel kurz in Gefrierfach). Sahne steif schlagen. Eiweiß und Sahne mit Schneebesen unter die Quarkmasse heben.	7
26	Kuchenform einfetten, Teig und den Belag rein. Alles bei 175 Grad Umluft 60 Minuten backen.	7
27	Optional kann auf den Teig Obst und dann kommt der Belag drauf.	7
28	Butter, Zucker und Eigelb schaumig rühren. Geraspelte Schokolade, Zimt, Rum und Mandeln darunterrühren. Backpulver und Mehl vermischen und auch in die Masse rühren.	8
29	Kirschen (gut abgetropft) und Eisschnee (Eiweiß in vorher kalt gestellter Schüssel schaumig rühren) darunterheben. Kuchenform einfetten und mit geriebenen Mandeln ausstreuen. Masse rein.	8
30	Backofen: Umluft 170 Grad Backzeit: 45-60 Minuten	8
31	Hefeteig: Mehl in Schüssel und Hefestückchen in Mulde von Mehl geben. Lauwarme Milch zu Hefe schütten und mit Schneebesen rühren (etwas Mehl dazu), bis Milch aufgebraucht ist und Hefe sich aufgelöst hat (nicht das komplette Mehl verwenden). Schüssel abdecken und 15-20 Minuten gehen lassen. Nun restliche Zutaten dazu und kneten. Teig wieder gehen lassen (ca 45 Minuten),danach nochmal kneten.	9
32	Füllung: Marzipan, Sahne und Zucker mixen (Pürierstab). Danach alle Zutaten 'normal' unterrühren.	9
33	Hat man den Hefeteig ein letztes Mal geknetet, teilt man diesen in drei etwa gleich große Stücke. Diese werden auf einer bemehlten Unterlage ausgerollt (ca. 15*25cm) und mit der Füllung bestrichen. Dann das bestrichene Stück von der breiten Seite her aufrollen. Die drei gefüllten Teigstränge zu einem Zopf flechten, die Enden jeweils nach unten umschlagen. Den Zopf auf ein Blech (Backpapier) legen und mit der Eigelb-Sahne-Mischung (1 Eigelb + 1El Sahne) bepinseln und etwa 15 Minuten an einem warmen Ort gehen lassen.	9
34	Backofen: 180 Grad (evtl. etwas runter schalten) Backzeit: 25-30 Minuten Umluft	9
35	Danach evtl. mit Zuckerguss bestreichen.	9
36	Kartoffeln kochen (solange bis mit Messerspitze ohne Widerstand eingedrungen werden kann, je nach Sorte so ca. 15 min.)	10
37	Kurz abschrecken und schälen	10
38	in Scheiben schneiden	10
39	in Schüssel mit Zwiebel und Gemüsebrühe und mit Senf, Muskatnuss, Salz und Pfeffer abschmecken.	10
40	Kartoffeln und Brokkoli klein schneiden.	11
41	Die Sachen 20 min in der Brühe köcheln bis sie weich sind.	11
42	Pürieren.	11
43	mit Salz und Pfeffer abschmecken (optional Sahne unterrühren).	11
44	Fleisch, Zwiebeln und evtl. Knoblauch klein schneiden.	12
45	Karotten und Kartoffeln würfeln.	12
46	Zwiebeln anbraten. Danach Knoblauch und Gemüse dazu.	12
47	Während dessen Wasser im Wasserkocher zum Kochen bringen. Das kochende Wasser auf das Gemüse und die Zwiebeln schütten. Brühe dazugeben und zum Kochen bringen.	12
48	Fleisch hinzu und alles 20 min kochen lassen. Fertig!	12
49	Champignons putzen und in Scheiben schneiden.	13
50	Öl erhitzen und die Champignons darin 5-8 Minuten anbraten.	13
51	Butter in einem Topf zerlassen und das Mehl einrühren.	13
52	Mehl/Butter mit der Brühe ablöschen. Danach die Champignons hinzufügen.	13
53	Sahne hinzu und alles würzen.	13
54	Alles klein und vermengen.	14
55	Sojasahne und Stärke verrühren und zu Zwiebeln, die man in der Pfanne glasig gedünstet hat, geben. Mit Salz, Pfeffer und evtl Mandelmus abschmecken.	15
\.


--
-- Data for Name: hugo_zutaten; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hugo_zutaten (id, zutat, rezept_id) FROM stdin;
5	500 g Kürbis	5
6	200 g Risottoreis	5
7	0,8 Liter Gemüsebrühe	5
8	Erbsen	5
9	1 kleine Zwiebel	5
10	Salz	5
11	Pfeffer	5
12	Thymian	5
13	Oliven-/Rabsöl	5
1	Mehl (Teig) 250 g	3
3	Zucker (Teig) 75 g	3
14	Ei (Teig) 1 Stück	3
15	Butter (Teig) 125 g	3
16	Äpfel (Belag)	3
17	Zimt (Belag)	3
18	Zucker (Streusel) 60 g	3
19	Butter (Streusel) 60 g	3
20	Mehl (Streusel) 60 g	3
21	Mandeln/Haselnüsse (Streusel) 60 g	3
22	Zimt	3
4	Mehl (Hefeteig) 500 g	4
23	Hefe (Hefeteig) 20 g	4
24	Milch (Hefeteig) 250 ml	4
25	Margarine (Hefeteig) 80-100 g	4
26	Zucker (Hefeteig) 60-80 g	4
27	Eier (Hefeteig) 1-2 Stück	4
28	Salz (Hefeteig) 1 Prise	4
29	Zitronenschale (Hefeteig)	4
30	ger. Haselnüsse (Füllung) 200 g	4
31	Zucker (Füllung) 70 g	4
32	Vanillezucker (Füllung) 1	4
33	Sahne (Füllung) 5 EL	4
34	Puderzucker (Zuckerguss)	4
35	Wasser (Zuckerguss)	4
36	Zitronensaft (Zuckerguss)	4
37	Haferflocken 180 g	6
38	Wasser 140 ml	6
39	Zucker 120 g	6
40	Äpfel 2 Stück	6
41	Backpulver 0.5	6
42	Zimt 0.5 TL	6
43	etwas gemahlene Nüsse	6
44	Obst nach Wahl	6
45	Tortenguss	6
46	Milchreis (optional)	6
47	Mehl (Teig) 250 g	7
48	Zucker (Teig) 75 g	7
49	Ei (Teig) 1 Stück	7
50	Butter (Teig) 125 g	7
51	Butter (Belag) 65 g	7
52	Eier (Belag) 2 Stück	7
53	Zucker (Belag) 125 g	7
54	Zitrone (Belag) 0.5 Stück	7
55	Stärkemehl Mondamin (Belag) 45 g	7
56	Quark (Belag) 750 g	7
57	Sahne (Belag) 1/4	7
58	Butter 150 g	8
59	Zucker 150 g	8
60	Eigelb 4 Stück	8
61	geriebene Schokolade (oder geraspelte) Vollmich 125 g	8
62	Zimt 1 TL	8
63	Rum (Pott) 3 EL	8
64	geriebene Mandeln 125 g	8
65	Mehl 125 g	8
66	Backpulver 1 TL	8
67	entsteinte Kirschen 750 g	8
68	Eiweiß 4 Stück	8
69	Mehl (Hefeteig) 500 g	9
70	Hefe (Hefeteig) 1	9
71	Milch (Hefeteig) 250 ml	9
72	Zucker (Hefeteig) 80 g	9
73	Ei (Hefeteig) 1 Stück	9
74	Margarine (Hefeteig) 80 g	9
75	Salz (Hefeteig) 1 Prise	9
76	Zitronenschale (Hefeteig)	9
77	Marzipan Rohmasse (Füllung) 50 g	9
78	Sahne (Füllung) 125 ml	9
79	Ei (Füllung) 1 Stück	9
80	Zucker (Füllung) 70 g	9
81	Zimt 1 TL	9
82	Rum 2 EL	9
83	Kartoffeln	10
84	Salz	10
85	Pfeffer	10
86	Öl	10
87	Zwiebel	10
88	Kartoffeln (groß) 2 Stück	11
89	Brokkoli 500 g	11
90	Gemüsebrühe 1 l	11
91	Salz	11
92	Pfeffer	11
93	Hähnchenfilet  200 g	12
94	Kartoffeln  4 Stück	12
95	Karotten  n.B.	12
96	Zwiebeln  1 Stück	12
97	Brühe  1 l	12
98	Champignon  250 g	13
99	Öl  2 EL	13
100	Butter  30 g	13
101	Mehl  35 g	13
102	Brühe  750 ml	13
103	Sahne  100 ml	13
104	Zucker  1 Prise	13
105	Salz und Pfeffer	13
106	Petersilie  1 TL	13
107	Camembert 300 g	14
108	Frischkäse 150 g	14
109	Butter 50 g	14
110	kleine Zwiebel 1 Stück	14
111	Papikrapulver 2-3 EL	14
112	Sojassahne 250 ml	15
113	Stärke  1 EL	15
114	Mandelmus (evtl)	15
115	Salz	15
116	Pfeffer	15
117	Zwiebel	15
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 73, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- Name: hugo_adressen_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hugo_adressen_id_seq', 2, true);


--
-- Name: hugo_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hugo_category_id_seq', 7, true);


--
-- Name: hugo_geburtstage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hugo_geburtstage_id_seq', 36, true);


--
-- Name: hugo_rezept_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hugo_rezept_id_seq', 15, true);


--
-- Name: hugo_zubereitung_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hugo_zubereitung_id_seq', 55, true);


--
-- Name: hugo_zutaten_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hugo_zutaten_id_seq', 117, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: hugo_adressen hugo_adressen_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_adressen
    ADD CONSTRAINT hugo_adressen_pkey PRIMARY KEY (id);


--
-- Name: hugo_category hugo_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_category
    ADD CONSTRAINT hugo_category_pkey PRIMARY KEY (id);


--
-- Name: hugo_geburtstage hugo_geburtstage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_geburtstage
    ADD CONSTRAINT hugo_geburtstage_pkey PRIMARY KEY (id);


--
-- Name: hugo_rezept hugo_rezept_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_rezept
    ADD CONSTRAINT hugo_rezept_pkey PRIMARY KEY (id);


--
-- Name: hugo_zubereitung hugo_zubereitung_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_zubereitung
    ADD CONSTRAINT hugo_zubereitung_pkey PRIMARY KEY (id);


--
-- Name: hugo_zutaten hugo_zutaten_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_zutaten
    ADD CONSTRAINT hugo_zutaten_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: hugo_rezept_category_id_4f3cd600; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hugo_rezept_category_id_4f3cd600 ON public.hugo_rezept USING btree (category_id);


--
-- Name: hugo_zubereitung_rezept_id_id_9e19a3d3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hugo_zubereitung_rezept_id_id_9e19a3d3 ON public.hugo_zubereitung USING btree (rezept_id);


--
-- Name: hugo_zutaten_rezept_id_13c9598b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX hugo_zutaten_rezept_id_13c9598b ON public.hugo_zutaten USING btree (rezept_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hugo_rezept hugo_rezept_category_id_4f3cd600_fk_hugo_category_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_rezept
    ADD CONSTRAINT hugo_rezept_category_id_4f3cd600_fk_hugo_category_id FOREIGN KEY (category_id) REFERENCES public.hugo_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hugo_zubereitung hugo_zubereitung_rezept_id_7bb83027_fk_hugo_rezept_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_zubereitung
    ADD CONSTRAINT hugo_zubereitung_rezept_id_7bb83027_fk_hugo_rezept_id FOREIGN KEY (rezept_id) REFERENCES public.hugo_rezept(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: hugo_zutaten hugo_zutaten_rezept_id_13c9598b_fk_hugo_rezept_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hugo_zutaten
    ADD CONSTRAINT hugo_zutaten_rezept_id_13c9598b_fk_hugo_rezept_id FOREIGN KEY (rezept_id) REFERENCES public.hugo_rezept(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

