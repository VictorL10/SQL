--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 15.3

-- Started on 2023-09-17 12:09:11

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

--
-- TOC entry 6 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 2984 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 207 (class 1259 OID 354273)
-- Name: employee_salary; Type: TABLE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE TABLE public.employee_salary (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    salary_id integer NOT NULL
);


ALTER TABLE public.employee_salary OWNER TO qa_36_gr_user_77;

--
-- TOC entry 206 (class 1259 OID 354271)
-- Name: employee_salary_id_seq; Type: SEQUENCE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE SEQUENCE public.employee_salary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_salary_id_seq OWNER TO qa_36_gr_user_77;

--
-- TOC entry 2986 (class 0 OID 0)
-- Dependencies: 206
-- Name: employee_salary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qa_36_gr_user_77
--

ALTER SEQUENCE public.employee_salary_id_seq OWNED BY public.employee_salary.id;


--
-- TOC entry 203 (class 1259 OID 354257)
-- Name: employees; Type: TABLE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    employee_name character varying(50) NOT NULL
);


ALTER TABLE public.employees OWNER TO qa_36_gr_user_77;

--
-- TOC entry 202 (class 1259 OID 354255)
-- Name: employees_id_seq; Type: SEQUENCE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE SEQUENCE public.employees_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_id_seq OWNER TO qa_36_gr_user_77;

--
-- TOC entry 2987 (class 0 OID 0)
-- Dependencies: 202
-- Name: employees_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qa_36_gr_user_77
--

ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;


--
-- TOC entry 209 (class 1259 OID 354283)
-- Name: roles; Type: TABLE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(30) NOT NULL
);


ALTER TABLE public.roles OWNER TO qa_36_gr_user_77;

--
-- TOC entry 211 (class 1259 OID 354300)
-- Name: roles_employee; Type: TABLE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE TABLE public.roles_employee (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.roles_employee OWNER TO qa_36_gr_user_77;

--
-- TOC entry 210 (class 1259 OID 354298)
-- Name: roles_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE SEQUENCE public.roles_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_employee_id_seq OWNER TO qa_36_gr_user_77;

--
-- TOC entry 2988 (class 0 OID 0)
-- Dependencies: 210
-- Name: roles_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qa_36_gr_user_77
--

ALTER SEQUENCE public.roles_employee_id_seq OWNED BY public.roles_employee.id;


--
-- TOC entry 208 (class 1259 OID 354281)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO qa_36_gr_user_77;

--
-- TOC entry 2989 (class 0 OID 0)
-- Dependencies: 208
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qa_36_gr_user_77
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 205 (class 1259 OID 354265)
-- Name: salary; Type: TABLE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE TABLE public.salary (
    id integer NOT NULL,
    monthly_salary integer NOT NULL
);


ALTER TABLE public.salary OWNER TO qa_36_gr_user_77;

--
-- TOC entry 204 (class 1259 OID 354263)
-- Name: salary_id_seq; Type: SEQUENCE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE SEQUENCE public.salary_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.salary_id_seq OWNER TO qa_36_gr_user_77;

--
-- TOC entry 2990 (class 0 OID 0)
-- Dependencies: 204
-- Name: salary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qa_36_gr_user_77
--

ALTER SEQUENCE public.salary_id_seq OWNED BY public.salary.id;


--
-- TOC entry 2822 (class 2604 OID 354276)
-- Name: employee_salary id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.employee_salary ALTER COLUMN id SET DEFAULT nextval('public.employee_salary_id_seq'::regclass);


--
-- TOC entry 2820 (class 2604 OID 354260)
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- TOC entry 2823 (class 2604 OID 354286)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 2824 (class 2604 OID 354303)
-- Name: roles_employee id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles_employee ALTER COLUMN id SET DEFAULT nextval('public.roles_employee_id_seq'::regclass);


--
-- TOC entry 2821 (class 2604 OID 354268)
-- Name: salary id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.salary ALTER COLUMN id SET DEFAULT nextval('public.salary_id_seq'::regclass);


--
-- TOC entry 2974 (class 0 OID 354273)
-- Dependencies: 207
-- Data for Name: employee_salary; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
--

COPY public.employee_salary (id, employee_id, salary_id) FROM stdin;
1	3	7
2	1	4
3	5	9
4	122	13
5	145	4
6	11	2
7	161	10
8	15	13
9	133	4
10	210	1
11	150	7
12	140	1
13	100	9
14	110	8
15	138	12
16	90	3
17	10	16
18	2	16
19	17	14
20	4	13
21	18	15
22	6	13
23	7	12
24	8	11
25	9	10
26	19	13
27	20	3
28	16	1
29	21	2
30	14	3
31	13	4
32	12	5
33	22	6
34	23	7
35	24	7
36	25	8
37	26	9
38	27	8
39	28	7
40	29	5
\.


--
-- TOC entry 2970 (class 0 OID 354257)
-- Dependencies: 203
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
--

COPY public.employees (id, employee_name) FROM stdin;
1	Aндрей
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
2	Вадим
\.


--
-- TOC entry 2976 (class 0 OID 354283)
-- Dependencies: 209
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
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
-- TOC entry 2978 (class 0 OID 354300)
-- Dependencies: 211
-- Data for Name: roles_employee; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
--

COPY public.roles_employee (id, employee_id, role_id) FROM stdin;
1	20	4
2	3	9
3	21	5
4	30	1
5	19	2
6	18	3
7	32	6
8	31	7
9	33	8
10	22	9
11	23	10
12	16	10
13	15	11
14	14	12
15	13	11
16	12	12
17	10	13
18	2	16
19	17	14
20	4	13
21	34	15
22	6	13
23	7	12
24	8	11
25	9	10
26	29	13
27	36	3
28	37	1
29	1	2
30	38	3
31	39	4
32	35	5
33	40	6
34	11	7
35	24	7
36	25	8
37	26	9
38	27	8
39	28	7
40	5	5
\.


--
-- TOC entry 2972 (class 0 OID 354265)
-- Dependencies: 205
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
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
17	1000
18	1100
19	1200
20	1300
21	1400
22	1500
23	1600
24	1700
25	1800
26	1900
27	2000
28	2100
29	2200
30	2300
31	2400
32	2500
\.


--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 206
-- Name: employee_salary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.employee_salary_id_seq', 40, true);


--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 202
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.employees_id_seq', 70, true);


--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 210
-- Name: roles_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.roles_employee_id_seq', 40, true);


--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 208
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.roles_id_seq', 20, true);


--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 204
-- Name: salary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.salary_id_seq', 32, true);


--
-- TOC entry 2830 (class 2606 OID 354280)
-- Name: employee_salary employee_salary_employee_id_key; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.employee_salary
    ADD CONSTRAINT employee_salary_employee_id_key UNIQUE (employee_id);


--
-- TOC entry 2832 (class 2606 OID 354278)
-- Name: employee_salary employee_salary_pkey; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.employee_salary
    ADD CONSTRAINT employee_salary_pkey PRIMARY KEY (id);


--
-- TOC entry 2826 (class 2606 OID 354262)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- TOC entry 2838 (class 2606 OID 354307)
-- Name: roles_employee roles_employee_employee_id_key; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_employee_id_key UNIQUE (employee_id);


--
-- TOC entry 2840 (class 2606 OID 354305)
-- Name: roles_employee roles_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_pkey PRIMARY KEY (id);


--
-- TOC entry 2834 (class 2606 OID 354288)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 2836 (class 2606 OID 354292)
-- Name: roles roles_role_name_key; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_role_name_key UNIQUE (role_name);


--
-- TOC entry 2828 (class 2606 OID 354270)
-- Name: salary salary_pkey; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.salary
    ADD CONSTRAINT salary_pkey PRIMARY KEY (id);


--
-- TOC entry 2841 (class 2606 OID 354308)
-- Name: roles_employee roles_employee_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employees(id);


--
-- TOC entry 2842 (class 2606 OID 354313)
-- Name: roles_employee roles_employee_role_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_role_id_fkey FOREIGN KEY (role_id) REFERENCES public.roles(id);


--
-- TOC entry 2985 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2023-09-17 12:09:16

--
-- PostgreSQL database dump complete
--

