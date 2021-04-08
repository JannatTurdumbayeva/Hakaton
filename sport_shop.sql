--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.2 (Ubuntu 13.2-1.pgdg20.04+1)

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
-- Name: account_user; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.account_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(100) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(250) NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.account_user OWNER TO winner;

--
-- Name: account_user_groups; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.account_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.account_user_groups OWNER TO winner;

--
-- Name: account_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.account_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_groups_id_seq OWNER TO winner;

--
-- Name: account_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.account_user_groups_id_seq OWNED BY public.account_user_groups.id;


--
-- Name: account_user_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.account_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_id_seq OWNER TO winner;

--
-- Name: account_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.account_user_id_seq OWNED BY public.account_user.id;


--
-- Name: account_user_user_permissions; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.account_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.account_user_user_permissions OWNER TO winner;

--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.account_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_user_user_permissions_id_seq OWNER TO winner;

--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.account_user_user_permissions_id_seq OWNED BY public.account_user_user_permissions.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO winner;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO winner;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO winner;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO winner;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO winner;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO winner;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: winner
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


ALTER TABLE public.django_admin_log OWNER TO winner;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO winner;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO winner;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO winner;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO winner;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO winner;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO winner;

--
-- Name: example; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.example (
    id integer NOT NULL,
    name character varying(10)
);


ALTER TABLE public.example OWNER TO postgres;

--
-- Name: example_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.example_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.example_id_seq OWNER TO postgres;

--
-- Name: example_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.example_id_seq OWNED BY public.example.id;


--
-- Name: product_category; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.product_category (
    title character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    parent_id character varying(50),
    image character varying(100) NOT NULL
);


ALTER TABLE public.product_category OWNER TO winner;

--
-- Name: product_comment; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.product_comment (
    id integer NOT NULL,
    body text NOT NULL,
    created timestamp with time zone NOT NULL,
    product_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.product_comment OWNER TO winner;

--
-- Name: product_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.product_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_comment_id_seq OWNER TO winner;

--
-- Name: product_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.product_comment_id_seq OWNED BY public.product_comment.id;


--
-- Name: product_product; Type: TABLE; Schema: public; Owner: winner
--

CREATE TABLE public.product_product (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text NOT NULL,
    price numeric(10,2) NOT NULL,
    image character varying(100) NOT NULL,
    status character varying(20) NOT NULL,
    category_id character varying(50) NOT NULL
);


ALTER TABLE public.product_product OWNER TO winner;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: winner
--

CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO winner;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: winner
--

ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product_product.id;


--
-- Name: account_user id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user ALTER COLUMN id SET DEFAULT nextval('public.account_user_id_seq'::regclass);


--
-- Name: account_user_groups id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_groups ALTER COLUMN id SET DEFAULT nextval('public.account_user_groups_id_seq'::regclass);


--
-- Name: account_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.account_user_user_permissions_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: example id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.example ALTER COLUMN id SET DEFAULT nextval('public.example_id_seq'::regclass);


--
-- Name: product_comment id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_comment ALTER COLUMN id SET DEFAULT nextval('public.product_comment_id_seq'::regclass);


--
-- Name: product_product id; Type: DEFAULT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_product ALTER COLUMN id SET DEFAULT nextval('public.product_product_id_seq'::regclass);


--
-- Data for Name: account_user; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.account_user (id, password, last_login, is_superuser, username, is_staff, is_active, date_joined, email, first_name, last_name, image) FROM stdin;
1	pbkdf2_sha256$216000$MxiE4KArDXIk$PhYAy9WBDv0ayXJIltfglRzQJlE4ykvjbf8K2LoSQJ0=	2021-04-08 10:49:34.380674+06	t	admin	t	t	2021-04-06 13:05:14.931022+06	admin@admin.com			
\.


--
-- Data for Name: account_user_groups; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.account_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: account_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.account_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: winner
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add category	6	add_category
22	Can change category	6	change_category
23	Can delete category	6	delete_category
24	Can view category	6	view_category
25	Can add product	7	add_product
26	Can change product	7	change_product
27	Can delete product	7	delete_product
28	Can view product	7	view_product
29	Can add user	8	add_user
30	Can change user	8	change_user
31	Can delete user	8	delete_user
32	Can view user	8	view_user
33	Can add review product	9	add_reviewproduct
34	Can change review product	9	change_reviewproduct
35	Can delete review product	9	delete_reviewproduct
36	Can view review product	9	view_reviewproduct
37	Can add comment	10	add_comment
38	Can change comment	10	change_comment
39	Can delete comment	10	delete_comment
40	Can view comment	10	view_comment
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-04-06 17:16:18.375681+06	4	ataiorozbekov@mail.ru	3		8	1
2	2021-04-06 17:16:55.097158+06	2	ajar@gmail.com	3		8	1
3	2021-04-06 22:21:38.20692+06	run	Running	1	[{"added": {}}]	6	1
4	2021-04-06 22:22:23.757907+06	tennis	Tennis	1	[{"added": {}}]	6	1
5	2021-04-06 22:22:44.138545+06	football	Football	1	[{"added": {}}]	6	1
6	2021-04-06 22:23:32.665495+06	football-uniform	Football --> Football uniform	1	[{"added": {}}]	6	1
7	2021-04-06 22:24:03.111536+06	run-shoes	Running --> Running shoes	1	[{"added": {}}]	6	1
8	2021-04-08 10:30:52.784891+06	funiform	Football --> football shoes	1	[{"added": {}}]	6	1
9	2021-04-08 10:31:44.632989+06	fball	Football --> football ball	1	[{"added": {}}]	6	1
10	2021-04-08 10:32:31.139526+06	bballs	tennis ball	1	[{"added": {}}]	6	1
11	2021-04-08 10:34:13.869751+06	bballs	tennis ball	3		6	1
12	2021-04-08 10:35:03.778882+06	tball	Tennis --> tennis ball	1	[{"added": {}}]	6	1
13	2021-04-08 10:35:23.390893+06	tracket	Tennis --> Tennis Racket	1	[{"added": {}}]	6	1
14	2021-04-08 10:36:04.174334+06	tuniform	Tennis --> tennis unifrom	1	[{"added": {}}]	6	1
15	2021-04-08 10:49:50.636127+06	8	ajar1@gmail.com	3		8	1
16	2021-04-08 10:49:50.639287+06	7	nastya@gmail.com	3		8	1
17	2021-04-08 10:49:50.641993+06	6	aanastasiyatuz@gmail.com	3		8	1
18	2021-04-08 10:49:50.644151+06	5	ajar@gmail.com	3		8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	product	category
7	product	product
8	account	user
9	product	reviewproduct
10	product	comment
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-04-06 13:04:39.768132+06
2	contenttypes	0002_remove_content_type_name	2021-04-06 13:04:39.800461+06
3	auth	0001_initial	2021-04-06 13:04:39.836274+06
4	auth	0002_alter_permission_name_max_length	2021-04-06 13:04:39.871753+06
5	auth	0003_alter_user_email_max_length	2021-04-06 13:04:39.880104+06
6	auth	0004_alter_user_username_opts	2021-04-06 13:04:39.890769+06
7	auth	0005_alter_user_last_login_null	2021-04-06 13:04:39.901624+06
8	auth	0006_require_contenttypes_0002	2021-04-06 13:04:39.905124+06
9	auth	0007_alter_validators_add_error_messages	2021-04-06 13:04:39.916355+06
10	auth	0008_alter_user_username_max_length	2021-04-06 13:04:39.927594+06
11	auth	0009_alter_user_last_name_max_length	2021-04-06 13:04:39.93734+06
12	auth	0010_alter_group_name_max_length	2021-04-06 13:04:39.948432+06
13	auth	0011_update_proxy_permissions	2021-04-06 13:04:39.959271+06
14	auth	0012_alter_user_first_name_max_length	2021-04-06 13:04:39.971464+06
15	account	0001_initial	2021-04-06 13:04:40.004884+06
16	admin	0001_initial	2021-04-06 13:04:40.053787+06
17	admin	0002_logentry_remove_auto_add	2021-04-06 13:04:40.077276+06
18	admin	0003_logentry_add_action_flag_choices	2021-04-06 13:04:40.091124+06
19	product	0001_initial	2021-04-06 13:04:40.115228+06
20	product	0002_auto_20210329_0917	2021-04-06 13:04:40.148787+06
21	product	0003_auto_20210404_1724	2021-04-06 13:04:40.154226+06
22	product	0004_feedback	2021-04-06 13:04:40.168515+06
23	product	0005_auto_20210406_0456	2021-04-06 13:04:40.186268+06
24	product	0006_auto_20210406_0506	2021-04-06 13:04:40.196002+06
25	sessions	0001_initial	2021-04-06 13:04:40.207295+06
26	account	0002_auto_20210406_0710	2021-04-06 13:10:48.864263+06
27	product	0007_reviewproduct	2021-04-06 16:28:33.747778+06
28	product	0008_auto_20210407_0943	2021-04-07 15:43:45.497188+06
29	product	0009_auto_20210407_0949	2021-04-07 15:50:01.453394+06
30	product	0010_auto_20210407_0950	2021-04-07 15:50:56.323726+06
31	product	0011_comment_sex	2021-04-08 09:43:58.340154+06
32	product	0012_remove_comment_sex	2021-04-08 09:51:18.263701+06
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
7adat7jrcci15q7u39gukel6a9bm3xy9	.eJxVjEEOwiAQRe_C2hAG2pG6dN8zkIFhpGpKUtqV8e7apAvd_vfef6lA21rC1vISJlYXBer0u0VKjzzvgO8036pOdV6XKepd0Qdteqycn9fD_Tso1Mq3RivZkuHeSjTeJgbKnDs5e3ERhEGgA5_I9ygRh-gIwQ5G0A7iEEG9PwPtOC4:1lUMbm:wqmwB_xTqyPrjLnCUGmlK76wndtU8JR54QFFH1gEpns	2021-04-22 10:49:34.384744+06
\.


--
-- Data for Name: example; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.example (id, name) FROM stdin;
1	sam
\.


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.product_category (title, slug, parent_id, image) FROM stdin;
Running	run	\N	categories/14physed-running-photo-superJumbo_ieIWZnx.jpg
Tennis	tennis	\N	categories/Tennis_Racket_and_Balls_htXRkA0.jpg
Football	football	\N	categories/egs-footballmanager2021-sportsinteractive-s1-2560x1440-070457508_k6lR7e7.jpg
Football uniform	football-uniform	football	categories/Custom-Sublimated-Soccer-Uniform.jpg
Running shoes	run-shoes	run	categories/14physed-running-photo-superJumbo_lzrCs5s.jpg
football shoes	funiform	football	categories/New-Design-Orange-Color-Sublimation-Soccer-Uniform.jpg
football ball	fball	football	categories/3022879-inline-s-6-2013-fifa-world-cup-brasil-ball_A8eIsDd.jpg
tennis ball	tball	tennis	categories/product_14_r0ETtCA.png
Tennis Racket	tracket	tennis	categories/td_20.21355_1_593673.jpg
tennis unifrom	tuniform	tennis	categories/td_10.46477_1_522729_1BcwORB.jpg
\.


--
-- Data for Name: product_comment; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.product_comment (id, body, created, product_id, user_id) FROM stdin;
1	ajfhgcshdgfvhklsrjdfilsdljnfv	2021-04-07 18:53:48.081776+06	3	1
2	sfdgfesukjshdnfvhdsgfukhdkrsfjvdjgbhjfd hgrj	2021-04-07 18:54:26.87486+06	3	1
\.


--
-- Data for Name: product_product; Type: TABLE DATA; Schema: public; Owner: winner
--

COPY public.product_product (id, name, description, price, image, status, category_id) FROM stdin;
1	adidas Ultraboost 21 Women	The adidas Ultraboost 21 for women has a neutral pronation and is designed for comfort and responsiveness. Forefoot stiffness is increased by the Linear Energy Push system and the responsive Boost cushioning returns energy to your stride.\r\n\r\nThese shoes are made with Primeblue, a high-quality recycled material that contains Parley Ocean Plastic and a total of at least 90% recycled content. You are assured of maximum grip in all conditions thanks to the sole of Continental ™ Rubber. In addition, the adidas Ultraboost 21 provides extra support through the heel counter.\r\n\r\nFeatures and benefits\r\n- Neutral running shoe\r\n- Stretchweb outsole with Continental ™ Rubber\r\n- Supportive heel counter\r\n- Primeblue\r\n- Primeknit + upper\r\n- Boost midsole\r\n- Heel Drop: 10 mm\r\n- Weight: 340 grams\r\n\r\nColor: Gray / White\r\nSKU: FY0400	179.95	products/adidas-fy0400_618116.jpg	in stock	run-shoes
2	adidas Ultraboost 21 Women	The adidas Ultraboost 21 for women has a neutral pronation and is designed for comfort and responsiveness. Forefoot stiffness is increased by the Linear Energy Push system and the responsive Boost cushioning returns energy to your stride.\r\n\r\nThese shoes are made with Primeblue, a high-quality recycled material that contains Parley Ocean Plastic and a total of at least 90% recycled content. You are assured of maximum grip in all conditions thanks to the sole of Continental ™ Rubber. In addition, the adidas Ultraboost 21 provides extra support through the heel counter.\r\n\r\nFeatures and benefits\r\n- Neutral running shoe\r\n- Stretchweb outsole with Continental ™ Rubber\r\n- Supportive heel counter\r\n- Primeblue\r\n- Primeknit + upper\r\n- Boost midsole\r\n- Heel Drop: 10 mm\r\n- Weight: 340 grams\r\n\r\nColor: Black / Green\r\nSKU: FY0402	179.95	products/adidas-fy0402_618224.jpg	out of stock	run-shoes
3	adidas Supernova Women	The adidas Supernova for women is suitable for runners with a neutral pronation. This all-round running shoe for your daily laps has improved ventilation in key sweat zones. This is thanks to the mesh upper. The Hybrid Bounce cushioning in the forefoot provides a light feeling.\r\n\r\nYou get your energy back step by step thanks to the extra cushioning in the heel and the Boost midsole evenly distributes the impact of every landing over your feet. You benefit from a lot of traction due to the rubber outsole with Stretchweb technology.\r\n\r\nFeatures and benefits\r\n- Neutral pronation\r\n- Hybrid Bounce cushioning in the forefoot\r\n- Improved ventilation in important sweat zones\r\n- Extra cushioning in the heel\r\n- Boost midsole evenly distributes the impact of each landing across your feet\r\n- Stretchweb outsole\r\n- Whole drop: 10 mm\r\n- Weight: 315 grams\r\n\r\nColor: White / Pink\r\nSKU: FX6700	79.95	products/adidas-fx6808_618057.jpg	in stock	run-shoes
4	Dunlop ATP 4 Stuks	Dunlop ATP 4 Stuks | GE\r\n\r\nColor: Yellow\r\nSKU: 601314	8.95	products/70.11164_1_1_533884.jpg	out of stock	tball
5	Wilson Starter Stage 2 Oranje 3 Stuks	Wilson Starter Stage 2 Oranje 3 Stuks\r\n\r\nColor:\r\nSKU: WRT137300	6.95	products/110.10055-u_1_1_1_557413_fLrhqMC.jpg	in stock	tball
\.


--
-- Name: account_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.account_user_groups_id_seq', 1, false);


--
-- Name: account_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.account_user_id_seq', 8, true);


--
-- Name: account_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.account_user_user_permissions_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 18, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 32, true);


--
-- Name: example_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.example_id_seq', 1, true);


--
-- Name: product_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.product_comment_id_seq', 4, true);


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: winner
--

SELECT pg_catalog.setval('public.product_product_id_seq', 5, true);


--
-- Name: account_user account_user_email_key; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_email_key UNIQUE (email);


--
-- Name: account_user_groups account_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_pkey PRIMARY KEY (id);


--
-- Name: account_user_groups account_user_groups_user_id_group_id_4d09af3e_uniq; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_group_id_4d09af3e_uniq UNIQUE (user_id, group_id);


--
-- Name: account_user account_user_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_pkey PRIMARY KEY (id);


--
-- Name: account_user_user_permissions account_user_user_permis_user_id_permission_id_48bdd28b_uniq; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permis_user_id_permission_id_48bdd28b_uniq UNIQUE (user_id, permission_id);


--
-- Name: account_user_user_permissions account_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: account_user account_user_username_key; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user
    ADD CONSTRAINT account_user_username_key UNIQUE (username);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: product_category product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (slug);


--
-- Name: product_category product_category_title_key; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_title_key UNIQUE (title);


--
-- Name: product_comment product_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_comment
    ADD CONSTRAINT product_comment_pkey PRIMARY KEY (id);


--
-- Name: product_product product_product_pkey; Type: CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);


--
-- Name: account_user_email_0bd7c421_like; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX account_user_email_0bd7c421_like ON public.account_user USING btree (email varchar_pattern_ops);


--
-- Name: account_user_groups_group_id_6c71f749; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX account_user_groups_group_id_6c71f749 ON public.account_user_groups USING btree (group_id);


--
-- Name: account_user_groups_user_id_14345e7b; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX account_user_groups_user_id_14345e7b ON public.account_user_groups USING btree (user_id);


--
-- Name: account_user_user_permissions_permission_id_66c44191; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX account_user_user_permissions_permission_id_66c44191 ON public.account_user_user_permissions USING btree (permission_id);


--
-- Name: account_user_user_permissions_user_id_cc42d270; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX account_user_user_permissions_user_id_cc42d270 ON public.account_user_user_permissions USING btree (user_id);


--
-- Name: account_user_username_d393f583_like; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX account_user_username_d393f583_like ON public.account_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: product_category_parent_id_f6860923; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX product_category_parent_id_f6860923 ON public.product_category USING btree (parent_id);


--
-- Name: product_category_parent_id_f6860923_like; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX product_category_parent_id_f6860923_like ON public.product_category USING btree (parent_id varchar_pattern_ops);


--
-- Name: product_category_slug_e1f8ccc4_like; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX product_category_slug_e1f8ccc4_like ON public.product_category USING btree (slug varchar_pattern_ops);


--
-- Name: product_category_title_5d041153_like; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX product_category_title_5d041153_like ON public.product_category USING btree (title varchar_pattern_ops);


--
-- Name: product_comment_product_id_b32e96a2; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX product_comment_product_id_b32e96a2 ON public.product_comment USING btree (product_id);


--
-- Name: product_comment_user_id_ac70fe86; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX product_comment_user_id_ac70fe86 ON public.product_comment USING btree (user_id);


--
-- Name: product_product_category_id_0c725779; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX product_product_category_id_0c725779 ON public.product_product USING btree (category_id);


--
-- Name: product_product_category_id_0c725779_like; Type: INDEX; Schema: public; Owner: winner
--

CREATE INDEX product_product_category_id_0c725779_like ON public.product_product USING btree (category_id varchar_pattern_ops);


--
-- Name: account_user_groups account_user_groups_group_id_6c71f749_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_group_id_6c71f749_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_groups account_user_groups_user_id_14345e7b_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_groups
    ADD CONSTRAINT account_user_groups_user_id_14345e7b_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_user_permissions account_user_user_pe_permission_id_66c44191_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_permission_id_66c44191_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_user_user_permissions account_user_user_pe_user_id_cc42d270_fk_account_u; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.account_user_user_permissions
    ADD CONSTRAINT account_user_user_pe_user_id_cc42d270_fk_account_u FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_category product_category_parent_id_f6860923_fk_product_category_slug; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT product_category_parent_id_f6860923_fk_product_category_slug FOREIGN KEY (parent_id) REFERENCES public.product_category(slug) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_comment product_comment_product_id_b32e96a2_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_comment
    ADD CONSTRAINT product_comment_product_id_b32e96a2_fk_product_product_id FOREIGN KEY (product_id) REFERENCES public.product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_comment product_comment_user_id_ac70fe86_fk_account_user_id; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_comment
    ADD CONSTRAINT product_comment_user_id_ac70fe86_fk_account_user_id FOREIGN KEY (user_id) REFERENCES public.account_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product product_product_category_id_0c725779_fk_product_category_slug; Type: FK CONSTRAINT; Schema: public; Owner: winner
--

ALTER TABLE ONLY public.product_product
    ADD CONSTRAINT product_product_category_id_0c725779_fk_product_category_slug FOREIGN KEY (category_id) REFERENCES public.product_category(slug) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

