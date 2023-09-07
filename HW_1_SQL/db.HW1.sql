--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.3

-- Started on 2023-09-06 15:01:52

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
-- TOC entry 219 (class 1259 OID 16829)
-- Name: employee_salary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_salary (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    salary_id integer NOT NULL
);


ALTER TABLE public.employee_salary OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16828)
-- Name: employee_salary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_salary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_salary_id_seq OWNER TO postgres;

--
-- TOC entry 3284 (class 0 OID 0)
-- Dependencies: 218
-- Name: employee_salary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_salary_id_seq OWNED BY public.employee_salary.id;


--
-- TOC entry 215 (class 1259 OID 16815)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    employee_name character varying(50) NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16814)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO postgres;

--
-- TOC entry 3285 (class 0 OID 0)
-- Dependencies: 214
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- TOC entry 221 (class 1259 OID 16852)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(30) NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16877)
-- Name: roles_employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles_employee (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.roles_employee OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16876)
-- Name: roles_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_employee_id_seq OWNER TO postgres;

--
-- TOC entry 3286 (class 0 OID 0)
-- Dependencies: 222
-- Name: roles_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_employee_id_seq OWNED BY public.roles_employee.id;


--
-- TOC entry 220 (class 1259 OID 16851)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- TOC entry 3287 (class 0 OID 0)
-- Dependencies: 220
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 217 (class 1259 OID 16822)
-- Name: salary; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salary (
    id integer NOT NULL,
    monthly_salary integer NOT NULL
);


ALTER TABLE public.salary OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16821)
-- Name: salary_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salary_id_seq OWNER TO postgres;

--
-- TOC entry 3288 (class 0 OID 0)
-- Dependencies: 216
-- Name: salary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salary_id_seq OWNED BY public.salary.id;


--
-- TOC entry 3106 (class 2604 OID 16832)
-- Name: employee_salary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_salary ALTER COLUMN id SET DEFAULT nextval('public.employee_salary_id_seq'::regclass);


--
-- TOC entry 3104 (class 2604 OID 16818)
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- TOC entry 3107 (class 2604 OID 16855)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 3108 (class 2604 OID 16880)
-- Name: roles_employee id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_employee ALTER COLUMN id SET DEFAULT nextval('public.roles_employee_id_seq'::regclass);


--
-- TOC entry 3105 (class 2604 OID 16825)
-- Name: salary id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salary ALTER COLUMN id SET DEFAULT nextval('public.salary_id_seq'::regclass);


--
-- TOC entry 3274 (class 0 OID 16829)
-- Dependencies: 219
-- Data for Name: employee_salary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee_salary (id, employee_id, salary_id) FROM stdin;
370	3	7
371	1	4
372	5	9
373	122	13
374	145	4
375	11	2
376	161	10
377	15	13
378	133	4
379	210	1
380	150	7
381	140	1
382	100	9
383	110	8
384	138	12
385	90	3
386	10	16
387	2	16
388	17	14
389	4	13
390	18	15
391	6	13
392	7	12
393	8	11
394	9	10
395	19	13
396	20	3
397	16	1
398	21	2
399	14	3
400	13	4
401	12	5
402	22	6
403	23	7
404	24	7
405	25	8
406	26	9
407	27	8
408	28	7
409	29	5
\.


--
-- TOC entry 3270 (class 0 OID 16815)
-- Dependencies: 215
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, employee_name) FROM stdin;
1	Aндрей
2	Вадим
3	Егор
4	Aнтон
5	Виктор
6	Игорь
7	Анна
8	Лена
9	Наталья
10	Марат
11	Роман
12	Виктория
13	Снежана
14	Варвара
15	Дмитрий
16	Олег
17	Любовь
18	Людмила
19	Ксения
20	Глеб
21	Захар
22	Инна
23	Дарья
24	Оксана
25	Валерия
26	Руслан
27	Валерий
28	Христофор
29	Мария
30	Алина
31	Ангелина
32	Королина
33	Милана
34	Татьяна
35	Яков
36	Игнат
37	Кирилл
38	Семён
39	Виталий
40	Ольга
41	Илларион
42	Виолетта
43	Аркадий
44	Юрий
45	Милана
46	Изобелла
47	Вероника
48	Доменика
49	Лика
50	Тимофей
51	Иван
52	Марк
53	Савелий
54	Александра
55	Алёна
56	Алиса
57	Алла
58	Анастасия
59	Ангелина
60	Кристина
61	Арина
62	Фёдор
63	Василиса
64	Вера
65	Надежда
66	Ева
67	Галина
68	Евдокия
69	Жанна
70	Зинаида
\.


--
-- TOC entry 3276 (class 0 OID 16852)
-- Dependencies: 221
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles (id, role_name) FROM stdin;
1	Junior Python developer
2	Middle Python developer
3	Senior Python developer
4	Junior Java developer
5	Middle Java developer
6	Senior Java developer
7	Junior JavaScript developer
8	Middle JavaScript developer
9	Senior JavaScript developer
10	Junior Manual QA engineer
11	Middle Manual QA engineer
12	Senior Manual QA engineer
13	Project Manager
14	Designer
15	HR
16	CEO
17	Sales manager
18	Junior Automation QA engineer
19	Middle Automation QA engineer
20	Senior Automation QA engineer
\.


--
-- TOC entry 3278 (class 0 OID 16877)
-- Dependencies: 223
-- Data for Name: roles_employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roles_employee (id, employee_id, role_id) FROM stdin;
1071	20	4
1072	3	9
1073	21	5
1074	30	1
1075	19	2
1076	18	3
1077	32	6
1078	31	7
1079	33	8
1080	22	9
1081	23	10
1082	16	10
1083	15	11
1084	14	12
1085	13	11
1086	12	12
1087	10	13
1088	2	16
1089	17	14
1090	4	13
1091	34	15
1092	6	13
1093	7	12
1094	8	11
1095	9	10
1096	29	13
1097	36	3
1098	37	1
1099	1	2
1100	38	3
1101	39	4
1102	35	5
1103	40	6
1104	11	7
1105	24	7
1106	25	8
1107	26	9
1108	27	8
1109	28	7
1110	5	5
\.


--
-- TOC entry 3272 (class 0 OID 16822)
-- Dependencies: 217
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salary (id, monthly_salary) FROM stdin;
1	1000
2	1100
3	1200
4	1300
5	1400
6	1500
7	1600
8	1700
9	1800
10	1900
11	2000
12	2100
13	2200
14	2300
15	2400
16	2500
\.


--
-- TOC entry 3289 (class 0 OID 0)
-- Dependencies: 218
-- Name: employee_salary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_salary_id_seq', 409, true);


--
-- TOC entry 3290 (class 0 OID 0)
-- Dependencies: 214
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_id_seq', 70, true);


--
-- TOC entry 3291 (class 0 OID 0)
-- Dependencies: 222
-- Name: roles_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_employee_id_seq', 1111, true);


--
-- TOC entry 3292 (class 0 OID 0)
-- Dependencies: 220
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 20, true);


--
-- TOC entry 3293 (class 0 OID 0)
-- Dependencies: 216
-- Name: salary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.salary_id_seq', 16, true);


--
-- TOC entry 3114 (class 2606 OID 16836)
-- Name: employee_salary employee_salary_employee_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_salary
    ADD CONSTRAINT employee_salary_employee_id_key UNIQUE (employee_id);


--
-- TOC entry 3116 (class 2606 OID 16834)
-- Name: employee_salary employee_salary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_salary
    ADD CONSTRAINT employee_salary_pkey PRIMARY KEY (id);


--
-- TOC entry 3110 (class 2606 OID 16820)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 3122 (class 2606 OID 16884)
-- Name: roles_employee roles_employee_employee_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_employee_id_key UNIQUE (employee_id);


--
-- TOC entry 3124 (class 2606 OID 16882)
-- Name: roles_employee roles_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3118 (class 2606 OID 16857)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3120 (class 2606 OID 16861)
-- Name: roles roles_role_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_role_name_key UNIQUE (role_name);


--
-- TOC entry 3112 (class 2606 OID 16827)
-- Name: salary salary_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_pkey PRIMARY KEY (id);


--
-- TOC entry 3125 (class 2606 OID 16885)
-- Name: roles_employee roles_employee_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(id);


--
-- TOC entry 3126 (class 2606 OID 16890)
-- Name: roles_employee roles_employee_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);


-- Completed on 2023-09-06 15:01:52

--
-- PostgreSQL database dump complete
--

