--
-- PostgreSQL database dump
--

-- Dumped from database version 12.7 (Ubuntu 12.7-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 15.3

-- Started on 2023-09-19 11:43:00

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
-- TOC entry 209 (class 1259 OID 354679)
-- Name: employee_salary; Type: TABLE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE TABLE public.employee_salary (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    salary_id integer NOT NULL
);


ALTER TABLE public.employee_salary OWNER TO qa_36_gr_user_77;

--
-- TOC entry 208 (class 1259 OID 354677)
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
-- Dependencies: 208
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
-- TOC entry 205 (class 1259 OID 354283)
-- Name: roles; Type: TABLE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    role_name character varying(30) NOT NULL
);


ALTER TABLE public.roles OWNER TO qa_36_gr_user_77;

--
-- TOC entry 207 (class 1259 OID 354300)
-- Name: roles_employee; Type: TABLE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE TABLE public.roles_employee (
    id integer NOT NULL,
    employee_id integer NOT NULL,
    role_id integer NOT NULL
);


ALTER TABLE public.roles_employee OWNER TO qa_36_gr_user_77;

--
-- TOC entry 206 (class 1259 OID 354298)
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
-- Dependencies: 206
-- Name: roles_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qa_36_gr_user_77
--

ALTER SEQUENCE public.roles_employee_id_seq OWNED BY public.roles_employee.id;


--
-- TOC entry 204 (class 1259 OID 354281)
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
-- Dependencies: 204
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qa_36_gr_user_77
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- TOC entry 211 (class 1259 OID 354689)
-- Name: salary; Type: TABLE; Schema: public; Owner: qa_36_gr_user_77
--

CREATE TABLE public.salary (
    id integer NOT NULL,
    monthly_salary integer NOT NULL
);


ALTER TABLE public.salary OWNER TO qa_36_gr_user_77;

--
-- TOC entry 210 (class 1259 OID 354687)
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
-- Dependencies: 210
-- Name: salary_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: qa_36_gr_user_77
--

ALTER SEQUENCE public.salary_id_seq OWNED BY public.salary.id;


--
-- TOC entry 2823 (class 2604 OID 354682)
-- Name: employee_salary id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.employee_salary ALTER COLUMN id SET DEFAULT nextval('public.employee_salary_id_seq'::regclass);


--
-- TOC entry 2820 (class 2604 OID 354260)
-- Name: employees id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);


--
-- TOC entry 2821 (class 2604 OID 354286)
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- TOC entry 2822 (class 2604 OID 354303)
-- Name: roles_employee id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles_employee ALTER COLUMN id SET DEFAULT nextval('public.roles_employee_id_seq'::regclass);


--
-- TOC entry 2824 (class 2604 OID 354692)
-- Name: salary id; Type: DEFAULT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.salary ALTER COLUMN id SET DEFAULT nextval('public.salary_id_seq'::regclass);


--
-- TOC entry 2976 (class 0 OID 354679)
-- Dependencies: 209
-- Data for Name: employee_salary; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
--

INSERT INTO public.employee_salary VALUES (1, 3, 7);
INSERT INTO public.employee_salary VALUES (2, 1, 4);
INSERT INTO public.employee_salary VALUES (3, 5, 9);
INSERT INTO public.employee_salary VALUES (4, 122, 13);
INSERT INTO public.employee_salary VALUES (5, 145, 4);
INSERT INTO public.employee_salary VALUES (6, 11, 2);
INSERT INTO public.employee_salary VALUES (7, 161, 10);
INSERT INTO public.employee_salary VALUES (8, 15, 13);
INSERT INTO public.employee_salary VALUES (9, 133, 4);
INSERT INTO public.employee_salary VALUES (10, 210, 1);
INSERT INTO public.employee_salary VALUES (11, 150, 7);
INSERT INTO public.employee_salary VALUES (12, 140, 1);
INSERT INTO public.employee_salary VALUES (13, 100, 9);
INSERT INTO public.employee_salary VALUES (14, 110, 8);
INSERT INTO public.employee_salary VALUES (15, 138, 12);
INSERT INTO public.employee_salary VALUES (16, 90, 3);
INSERT INTO public.employee_salary VALUES (17, 10, 16);
INSERT INTO public.employee_salary VALUES (18, 2, 16);
INSERT INTO public.employee_salary VALUES (19, 17, 14);
INSERT INTO public.employee_salary VALUES (20, 4, 13);
INSERT INTO public.employee_salary VALUES (21, 18, 15);
INSERT INTO public.employee_salary VALUES (22, 6, 13);
INSERT INTO public.employee_salary VALUES (23, 7, 12);
INSERT INTO public.employee_salary VALUES (24, 8, 11);
INSERT INTO public.employee_salary VALUES (25, 9, 10);
INSERT INTO public.employee_salary VALUES (26, 19, 13);
INSERT INTO public.employee_salary VALUES (27, 20, 3);
INSERT INTO public.employee_salary VALUES (28, 16, 1);
INSERT INTO public.employee_salary VALUES (29, 21, 2);
INSERT INTO public.employee_salary VALUES (30, 14, 3);
INSERT INTO public.employee_salary VALUES (31, 13, 4);
INSERT INTO public.employee_salary VALUES (32, 12, 5);
INSERT INTO public.employee_salary VALUES (33, 22, 6);
INSERT INTO public.employee_salary VALUES (34, 23, 7);
INSERT INTO public.employee_salary VALUES (35, 24, 7);
INSERT INTO public.employee_salary VALUES (36, 25, 8);
INSERT INTO public.employee_salary VALUES (37, 26, 9);
INSERT INTO public.employee_salary VALUES (38, 27, 8);
INSERT INTO public.employee_salary VALUES (39, 28, 7);
INSERT INTO public.employee_salary VALUES (40, 30, 5);
INSERT INTO public.employee_salary VALUES (41, 32, 16);
INSERT INTO public.employee_salary VALUES (42, 40, 17);


--
-- TOC entry 2970 (class 0 OID 354257)
-- Dependencies: 203
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
--

INSERT INTO public.employees VALUES (1, 'Aндрей');
INSERT INTO public.employees VALUES (3, 'Егор');
INSERT INTO public.employees VALUES (4, 'Aнтон');
INSERT INTO public.employees VALUES (5, 'Виктор');
INSERT INTO public.employees VALUES (6, 'Игорь');
INSERT INTO public.employees VALUES (7, 'Анна');
INSERT INTO public.employees VALUES (8, 'Лена');
INSERT INTO public.employees VALUES (9, 'Наталья');
INSERT INTO public.employees VALUES (10, 'Марат');
INSERT INTO public.employees VALUES (11, 'Роман');
INSERT INTO public.employees VALUES (12, 'Виктория');
INSERT INTO public.employees VALUES (13, 'Снежана');
INSERT INTO public.employees VALUES (14, 'Варвара');
INSERT INTO public.employees VALUES (15, 'Дмитрий');
INSERT INTO public.employees VALUES (16, 'Олег');
INSERT INTO public.employees VALUES (17, 'Любовь');
INSERT INTO public.employees VALUES (18, 'Людмила');
INSERT INTO public.employees VALUES (19, 'Ксения');
INSERT INTO public.employees VALUES (20, 'Глеб');
INSERT INTO public.employees VALUES (21, 'Захар');
INSERT INTO public.employees VALUES (22, 'Инна');
INSERT INTO public.employees VALUES (23, 'Дарья');
INSERT INTO public.employees VALUES (24, 'Оксана');
INSERT INTO public.employees VALUES (25, 'Валерия');
INSERT INTO public.employees VALUES (26, 'Руслан');
INSERT INTO public.employees VALUES (27, 'Валерий');
INSERT INTO public.employees VALUES (28, 'Христофор');
INSERT INTO public.employees VALUES (29, 'Мария');
INSERT INTO public.employees VALUES (30, 'Алина');
INSERT INTO public.employees VALUES (31, 'Ангелина');
INSERT INTO public.employees VALUES (32, 'Королина');
INSERT INTO public.employees VALUES (33, 'Милана');
INSERT INTO public.employees VALUES (34, 'Татьяна');
INSERT INTO public.employees VALUES (35, 'Яков');
INSERT INTO public.employees VALUES (36, 'Игнат');
INSERT INTO public.employees VALUES (37, 'Кирилл');
INSERT INTO public.employees VALUES (38, 'Семён');
INSERT INTO public.employees VALUES (39, 'Виталий');
INSERT INTO public.employees VALUES (40, 'Ольга');
INSERT INTO public.employees VALUES (41, 'Илларион');
INSERT INTO public.employees VALUES (42, 'Виолетта');
INSERT INTO public.employees VALUES (43, 'Аркадий');
INSERT INTO public.employees VALUES (44, 'Юрий');
INSERT INTO public.employees VALUES (45, 'Милана');
INSERT INTO public.employees VALUES (46, 'Изобелла');
INSERT INTO public.employees VALUES (47, 'Вероника');
INSERT INTO public.employees VALUES (48, 'Доменика');
INSERT INTO public.employees VALUES (49, 'Лика');
INSERT INTO public.employees VALUES (50, 'Тимофей');
INSERT INTO public.employees VALUES (51, 'Иван');
INSERT INTO public.employees VALUES (52, 'Марк');
INSERT INTO public.employees VALUES (53, 'Савелий');
INSERT INTO public.employees VALUES (54, 'Александра');
INSERT INTO public.employees VALUES (55, 'Алёна');
INSERT INTO public.employees VALUES (56, 'Алиса');
INSERT INTO public.employees VALUES (57, 'Алла');
INSERT INTO public.employees VALUES (58, 'Анастасия');
INSERT INTO public.employees VALUES (59, 'Ангелина');
INSERT INTO public.employees VALUES (60, 'Кристина');
INSERT INTO public.employees VALUES (61, 'Арина');
INSERT INTO public.employees VALUES (62, 'Фёдор');
INSERT INTO public.employees VALUES (63, 'Василиса');
INSERT INTO public.employees VALUES (64, 'Вера');
INSERT INTO public.employees VALUES (65, 'Надежда');
INSERT INTO public.employees VALUES (66, 'Ева');
INSERT INTO public.employees VALUES (67, 'Галина');
INSERT INTO public.employees VALUES (68, 'Евдокия');
INSERT INTO public.employees VALUES (69, 'Жанна');
INSERT INTO public.employees VALUES (70, 'Зинаида');
INSERT INTO public.employees VALUES (2, 'Вадим');


--
-- TOC entry 2972 (class 0 OID 354283)
-- Dependencies: 205
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
--

INSERT INTO public.roles VALUES (1, 'Junior Python developer');
INSERT INTO public.roles VALUES (2, 'Middle Python developer');
INSERT INTO public.roles VALUES (3, 'Senior Python developer');
INSERT INTO public.roles VALUES (4, 'Junior Java developer');
INSERT INTO public.roles VALUES (5, 'Middle Java developer');
INSERT INTO public.roles VALUES (6, 'Senior Java developer');
INSERT INTO public.roles VALUES (7, 'Junior JavaScript developer');
INSERT INTO public.roles VALUES (8, 'Middle JavaScript developer');
INSERT INTO public.roles VALUES (9, 'Senior JavaScript developer');
INSERT INTO public.roles VALUES (10, 'Junior Manual QA engineer');
INSERT INTO public.roles VALUES (11, 'Middle Manual QA engineer');
INSERT INTO public.roles VALUES (12, 'Senior Manual QA engineer');
INSERT INTO public.roles VALUES (13, 'Project Manager');
INSERT INTO public.roles VALUES (14, 'Designer');
INSERT INTO public.roles VALUES (15, 'HR');
INSERT INTO public.roles VALUES (16, 'CEO');
INSERT INTO public.roles VALUES (17, 'Sales manager');
INSERT INTO public.roles VALUES (18, 'Junior Automation QA engineer');
INSERT INTO public.roles VALUES (19, 'Middle Automation QA engineer');
INSERT INTO public.roles VALUES (20, 'Senior Automation QA engineer');


--
-- TOC entry 2974 (class 0 OID 354300)
-- Dependencies: 207
-- Data for Name: roles_employee; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
--

INSERT INTO public.roles_employee VALUES (1, 20, 4);
INSERT INTO public.roles_employee VALUES (2, 3, 9);
INSERT INTO public.roles_employee VALUES (3, 21, 5);
INSERT INTO public.roles_employee VALUES (4, 30, 1);
INSERT INTO public.roles_employee VALUES (5, 19, 2);
INSERT INTO public.roles_employee VALUES (6, 18, 3);
INSERT INTO public.roles_employee VALUES (7, 32, 6);
INSERT INTO public.roles_employee VALUES (8, 31, 7);
INSERT INTO public.roles_employee VALUES (9, 33, 8);
INSERT INTO public.roles_employee VALUES (10, 22, 9);
INSERT INTO public.roles_employee VALUES (11, 23, 10);
INSERT INTO public.roles_employee VALUES (12, 16, 10);
INSERT INTO public.roles_employee VALUES (13, 15, 11);
INSERT INTO public.roles_employee VALUES (14, 14, 12);
INSERT INTO public.roles_employee VALUES (15, 13, 11);
INSERT INTO public.roles_employee VALUES (16, 12, 12);
INSERT INTO public.roles_employee VALUES (17, 10, 13);
INSERT INTO public.roles_employee VALUES (18, 2, 16);
INSERT INTO public.roles_employee VALUES (19, 17, 14);
INSERT INTO public.roles_employee VALUES (20, 4, 13);
INSERT INTO public.roles_employee VALUES (21, 34, 15);
INSERT INTO public.roles_employee VALUES (22, 6, 13);
INSERT INTO public.roles_employee VALUES (23, 7, 12);
INSERT INTO public.roles_employee VALUES (24, 8, 11);
INSERT INTO public.roles_employee VALUES (25, 9, 10);
INSERT INTO public.roles_employee VALUES (26, 29, 13);
INSERT INTO public.roles_employee VALUES (27, 36, 3);
INSERT INTO public.roles_employee VALUES (28, 37, 1);
INSERT INTO public.roles_employee VALUES (29, 1, 2);
INSERT INTO public.roles_employee VALUES (30, 38, 3);
INSERT INTO public.roles_employee VALUES (31, 39, 4);
INSERT INTO public.roles_employee VALUES (32, 35, 5);
INSERT INTO public.roles_employee VALUES (33, 40, 6);
INSERT INTO public.roles_employee VALUES (34, 11, 7);
INSERT INTO public.roles_employee VALUES (35, 24, 7);
INSERT INTO public.roles_employee VALUES (36, 25, 8);
INSERT INTO public.roles_employee VALUES (37, 26, 9);
INSERT INTO public.roles_employee VALUES (38, 27, 8);
INSERT INTO public.roles_employee VALUES (39, 28, 7);
INSERT INTO public.roles_employee VALUES (40, 5, 5);
INSERT INTO public.roles_employee VALUES (41, 51, 18);
INSERT INTO public.roles_employee VALUES (42, 52, 19);
INSERT INTO public.roles_employee VALUES (43, 53, 20);


--
-- TOC entry 2978 (class 0 OID 354689)
-- Dependencies: 211
-- Data for Name: salary; Type: TABLE DATA; Schema: public; Owner: qa_36_gr_user_77
--

INSERT INTO public.salary VALUES (1, 1000);
INSERT INTO public.salary VALUES (2, 1100);
INSERT INTO public.salary VALUES (3, 1200);
INSERT INTO public.salary VALUES (4, 1300);
INSERT INTO public.salary VALUES (5, 1400);
INSERT INTO public.salary VALUES (6, 1500);
INSERT INTO public.salary VALUES (7, 1600);
INSERT INTO public.salary VALUES (8, 1700);
INSERT INTO public.salary VALUES (9, 1800);
INSERT INTO public.salary VALUES (10, 1900);
INSERT INTO public.salary VALUES (11, 2000);
INSERT INTO public.salary VALUES (12, 2100);
INSERT INTO public.salary VALUES (13, 2200);
INSERT INTO public.salary VALUES (14, 2300);
INSERT INTO public.salary VALUES (15, 2400);
INSERT INTO public.salary VALUES (16, 2500);
INSERT INTO public.salary VALUES (17, 1000);
INSERT INTO public.salary VALUES (18, 1100);
INSERT INTO public.salary VALUES (19, 1200);
INSERT INTO public.salary VALUES (20, 1300);
INSERT INTO public.salary VALUES (21, 1400);
INSERT INTO public.salary VALUES (22, 1500);
INSERT INTO public.salary VALUES (23, 1600);
INSERT INTO public.salary VALUES (24, 1700);
INSERT INTO public.salary VALUES (25, 1800);
INSERT INTO public.salary VALUES (26, 1900);
INSERT INTO public.salary VALUES (27, 2000);
INSERT INTO public.salary VALUES (28, 2100);
INSERT INTO public.salary VALUES (29, 2200);
INSERT INTO public.salary VALUES (30, 2300);
INSERT INTO public.salary VALUES (31, 2400);
INSERT INTO public.salary VALUES (32, 2500);
INSERT INTO public.salary VALUES (33, 1000);
INSERT INTO public.salary VALUES (34, 1100);
INSERT INTO public.salary VALUES (35, 1200);
INSERT INTO public.salary VALUES (36, 1300);
INSERT INTO public.salary VALUES (37, 1400);
INSERT INTO public.salary VALUES (38, 1500);
INSERT INTO public.salary VALUES (39, 1600);
INSERT INTO public.salary VALUES (40, 1700);
INSERT INTO public.salary VALUES (41, 1800);
INSERT INTO public.salary VALUES (42, 1900);
INSERT INTO public.salary VALUES (43, 2000);
INSERT INTO public.salary VALUES (44, 2100);
INSERT INTO public.salary VALUES (45, 2200);
INSERT INTO public.salary VALUES (46, 2300);
INSERT INTO public.salary VALUES (47, 2400);
INSERT INTO public.salary VALUES (48, 2500);


--
-- TOC entry 2991 (class 0 OID 0)
-- Dependencies: 208
-- Name: employee_salary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.employee_salary_id_seq', 42, true);


--
-- TOC entry 2992 (class 0 OID 0)
-- Dependencies: 202
-- Name: employees_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.employees_id_seq', 70, true);


--
-- TOC entry 2993 (class 0 OID 0)
-- Dependencies: 206
-- Name: roles_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.roles_employee_id_seq', 44, true);


--
-- TOC entry 2994 (class 0 OID 0)
-- Dependencies: 204
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.roles_id_seq', 20, true);


--
-- TOC entry 2995 (class 0 OID 0)
-- Dependencies: 210
-- Name: salary_id_seq; Type: SEQUENCE SET; Schema: public; Owner: qa_36_gr_user_77
--

SELECT pg_catalog.setval('public.salary_id_seq', 48, true);


--
-- TOC entry 2836 (class 2606 OID 354686)
-- Name: employee_salary employee_salary_employee_id_key; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.employee_salary
    ADD CONSTRAINT employee_salary_employee_id_key UNIQUE (employee_id);


--
-- TOC entry 2838 (class 2606 OID 354684)
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
-- TOC entry 2832 (class 2606 OID 354307)
-- Name: roles_employee roles_employee_employee_id_key; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_employee_id_key UNIQUE (employee_id);


--
-- TOC entry 2834 (class 2606 OID 354305)
-- Name: roles_employee roles_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles_employee
    ADD CONSTRAINT roles_employee_pkey PRIMARY KEY (id);


--
-- TOC entry 2828 (class 2606 OID 354288)
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 2830 (class 2606 OID 354292)
-- Name: roles roles_role_name_key; Type: CONSTRAINT; Schema: public; Owner: qa_36_gr_user_77
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_role_name_key UNIQUE (role_name);


--
-- TOC entry 2840 (class 2606 OID 354694)
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


-- Completed on 2023-09-19 11:43:05

--
-- PostgreSQL database dump complete
--

