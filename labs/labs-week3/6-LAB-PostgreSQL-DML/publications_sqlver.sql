--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

-- Started on 2020-03-03 22:22:08 -03

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

--
-- TOC entry 202 (class 1259 OID 24737)
-- Name: authors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.authors (
    au_id character varying(11) DEFAULT NULL::character varying,
    au_lname character varying(14) DEFAULT NULL::character varying,
    au_fname character varying(11) DEFAULT NULL::character varying,
    phone character varying(12) DEFAULT NULL::character varying,
    address character varying(20) DEFAULT NULL::character varying,
    city character varying(14) DEFAULT NULL::character varying,
    state character varying(2) DEFAULT NULL::character varying,
    zip integer,
    contract smallint
);


ALTER TABLE public.authors OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 24747)
-- Name: discounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.discounts (
    discounttype character varying(17) DEFAULT NULL::character varying,
    stor_id character varying(4) DEFAULT NULL::character varying,
    lowqty character varying(3) DEFAULT NULL::character varying,
    highqty character varying(4) DEFAULT NULL::character varying,
    discount numeric(4,2) DEFAULT NULL::numeric
);


ALTER TABLE public.discounts OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 24755)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    emp_id character varying(9) DEFAULT NULL::character varying,
    fname character varying(9) DEFAULT NULL::character varying,
    minit character varying(1) DEFAULT NULL::character varying,
    lname character varying(9) DEFAULT NULL::character varying,
    job_id smallint,
    job_lvl smallint,
    pub_id smallint,
    hire_date character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 24763)
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    job_id smallint,
    job_desc character varying(28) DEFAULT NULL::character varying,
    min_lvl smallint,
    max_lvl smallint
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 24767)
-- Name: publishers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publishers (
    pub_id smallint,
    pub_name character varying(21) DEFAULT NULL::character varying,
    city character varying(10) DEFAULT NULL::character varying,
    state character varying(2) DEFAULT NULL::character varying,
    country character varying(7) DEFAULT NULL::character varying
);


ALTER TABLE public.publishers OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 24774)
-- Name: roysched; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roysched (
    title_id character varying(6) DEFAULT NULL::character varying,
    lorange integer,
    hirange integer,
    royalty smallint
);


ALTER TABLE public.roysched OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 24778)
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    stor_id smallint,
    ord_num character varying(8) DEFAULT NULL::character varying,
    ord_date character varying(19) DEFAULT NULL::character varying,
    qty smallint,
    payterms character varying(10) DEFAULT NULL::character varying,
    title_id character varying(6) DEFAULT NULL::character varying
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 24785)
-- Name: stores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stores (
    stor_id smallint,
    stor_name character varying(36) DEFAULT NULL::character varying,
    stor_address character varying(19) DEFAULT NULL::character varying,
    city character varying(9) DEFAULT NULL::character varying,
    state character varying(2) DEFAULT NULL::character varying,
    zip integer
);


ALTER TABLE public.stores OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 24792)
-- Name: titleauthor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titleauthor (
    au_id character varying(11) DEFAULT NULL::character varying,
    title_id character varying(6) DEFAULT NULL::character varying,
    au_ord smallint,
    royaltyper smallint
);


ALTER TABLE public.titleauthor OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 24797)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying(6) DEFAULT NULL::character varying,
    title character varying(63) DEFAULT NULL::character varying,
    type character varying(12) DEFAULT NULL::character varying,
    pub_id smallint,
    price character varying(7) DEFAULT NULL::character varying,
    advance character varying(10) DEFAULT NULL::character varying,
    royalty character varying(2) DEFAULT NULL::character varying,
    ytd_sales character varying(5) DEFAULT NULL::character varying,
    notes character varying(179) DEFAULT NULL::character varying,
    pubdate character varying(19) DEFAULT NULL::character varying
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 3208 (class 0 OID 24737)
-- Dependencies: 202
-- Data for Name: authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('172-32-1176', 'White', 'Johnson', '408 496-7223', '10932 Bigge Rd.', 'Menlo Park', 'CA', 94025, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('213-46-8915', 'Green', 'Marjorie', '415 986-7020', '309 63rd St. #411', 'Oakland', 'CA', 94618, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('238-95-7766', 'Carson', 'Cheryl', '415 548-7723', '589 Darwin Ln.', 'Berkeley', 'CA', 94705, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('267-41-2394', 'O''Leary', 'Michael', '408 286-2428', '22 Cleveland Av. #14', 'San Jose', 'CA', 95128, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('274-80-9391', 'Straight', 'Dean', '415 834-2919', '5420 College Av.', 'Oakland', 'CA', 94609, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('341-22-1782', 'Smith', 'Meander', '913 843-0462', '10 Mississippi Dr.', 'Lawrence', 'KS', 66044, 0);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('409-56-7008', 'Bennet', 'Abraham', '415 658-9932', '6223 Bateman St.', 'Berkeley', 'CA', 94705, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('427-17-2319', 'Dull', 'Ann', '415 836-7128', '3410 Blonde St.', 'Palo Alto', 'CA', 94301, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('472-27-2349', 'Gringlesby', 'Burt', '707 938-6445', 'PO Box 792', 'Covelo', 'CA', 95428, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('486-29-1786', 'Locksley', 'Charlene', '415 585-4620', '18 Broadway Av.', 'San Francisco', 'CA', 94130, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('527-72-3246', 'Greene', 'Morningstar', '615 297-2723', '22 Graybar House Rd.', 'Nashville', 'TN', 37215, 0);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('648-92-1872', 'Blotchet-Halls', 'Reginald', '503 745-6402', '55 Hillsdale Bl.', 'Corvallis', 'OR', 97330, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('672-71-3249', 'Yokomoto', 'Akiko', '415 935-4228', '3 Silver Ct.', 'Walnut Creek', 'CA', 94595, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('712-45-1867', 'del Castillo', 'Innes', '615 996-8275', '2286 Cram Pl. #86', 'Ann Arbor', 'MI', 48105, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('722-51-5454', 'DeFrance', 'Michel', '219 547-9982', '3 Balding Pl.', 'Gary', 'IN', 46403, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('724-08-9931', 'Stringer', 'Dirk', '415 843-2991', '5420 Telegraph Av.', 'Oakland', 'CA', 94609, 0);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('724-80-9391', 'MacFeather', 'Stearns', '415 354-7128', '44 Upland Hts.', 'Oakland', 'CA', 94612, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('756-30-7391', 'Karsen', 'Livia', '415 534-9219', '5720 McAuley St.', 'Oakland', 'CA', 94609, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('807-91-6654', 'Panteley', 'Sylvia', '301 946-8853', '1956 Arlington Pl.', 'Rockville', 'MD', 20853, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('846-92-7186', 'Hunter', 'Sheryl', '415 836-7128', '3410 Blonde St.', 'Palo Alto', 'CA', 94301, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('893-72-1158', 'McBadden', 'Heather', '707 448-4982', '301 Putnam', 'Vacaville', 'CA', 95688, 0);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('899-46-2035', 'Ringer', 'Anne', '801 826-0752', '67 Seventh Av.', 'Salt Lake City', 'UT', 84152, 1);
INSERT INTO public.authors (au_id, au_lname, au_fname, phone, address, city, state, zip, contract) VALUES ('998-72-3567', 'Ringer', 'Albert', '801 826-0752', '67 Seventh Av.', 'Salt Lake City', 'UT', 84152, 1);


--
-- TOC entry 3209 (class 0 OID 24747)
-- Dependencies: 203
-- Data for Name: discounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.discounts (discounttype, stor_id, lowqty, highqty, discount) VALUES ('Initial Customer', NULL, NULL, NULL, 10.50);
INSERT INTO public.discounts (discounttype, stor_id, lowqty, highqty, discount) VALUES ('Volume Discount', NULL, '100', '1000', 6.70);
INSERT INTO public.discounts (discounttype, stor_id, lowqty, highqty, discount) VALUES ('Customer Discount', '8042', NULL, NULL, 5.00);


--
-- TOC entry 3210 (class 0 OID 24755)
-- Dependencies: 204
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('A-C71970F', 'Aria', '', 'Cruz', 10, 87, 1389, '1991-10-26 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('A-R89858F', 'Annette', '', 'Roulet', 6, 152, 9999, '1990-02-21 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('AMD15433F', 'Ann', 'M', 'Devon', 3, 200, 9952, '1991-07-16 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('ARD36773F', 'Anabela', 'R', 'Domingues', 8, 100, 877, '1993-01-27 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('CFH28514M', 'Carlos', 'F', 'Hernadez', 5, 211, 9999, '1989-04-21 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('CGS88322F', 'Carine', 'G', 'Schmitt', 13, 64, 1389, '1992-07-07 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('DBT39435M', 'Daniel', 'B', 'Tonini', 11, 75, 877, '1990-01-01 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('DWR65030M', 'Diego', 'W', 'Roel', 6, 192, 1389, '1991-12-16 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('ENL44273F', 'Elizabeth', 'N', 'Lincoln', 14, 35, 877, '1990-07-24 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('F-C16315M', 'Francisco', '', 'Chang', 4, 227, 9952, '1990-11-03 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('GHT50241M', 'Gary', 'H', 'Thomas', 9, 170, 736, '1988-08-09 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('H-B39728F', 'Helen', '', 'Bennett', 12, 35, 877, '1989-09-21 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('HAN90777M', 'Helvetius', 'A', 'Nagy', 7, 120, 9999, '1993-03-19 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('HAS54740M', 'Howard', 'A', 'Snyder', 12, 100, 736, '1988-11-19 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('JYL26161F', 'Janine', 'Y', 'Labrune', 5, 172, 9901, '1991-05-26 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('KFJ64308F', 'Karin', 'F', 'Josephs', 14, 100, 736, '1992-10-17 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('KJJ92907F', 'Karla', 'J', 'Jablonski', 9, 170, 9999, '1994-03-11 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('L-B31947F', 'Lesley', '', 'Brown', 7, 120, 877, '1991-02-13 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('LAL21447M', 'Laurence', 'A', 'Lebihan', 5, 175, 736, '1990-06-03 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('M-L67958F', 'Maria', '', 'Larsson', 7, 135, 1389, '1992-03-27 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('M-P91209M', 'Manuel', '', 'Pereira', 8, 101, 9999, '1989-01-09 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('M-R38834F', 'Martine', '', 'Rance', 9, 75, 877, '1992-02-05 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('MAP77183M', 'Miguel', 'A', 'Paolino', 11, 112, 1389, '1992-12-07 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('MAS70474F', 'Margaret', 'A', 'Smith', 9, 78, 1389, '1988-09-29 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('MFS52347M', 'Martin', 'F', 'Sommer', 10, 165, 736, '1990-04-13 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('MGK44605M', 'Matti', 'G', 'Karttunen', 6, 220, 736, '1994-05-01 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('MJP25939M', 'Maria', 'J', 'Pontes', 5, 246, 1756, '1989-03-01 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('MMS49649F', 'Mary', 'M', 'Saveley', 8, 175, 736, '1993-06-29 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('PCM98509F', 'Patricia', 'C', 'McKenna', 11, 150, 9999, '1989-08-01 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('PDI47470M', 'Palle', 'D', 'Ibsen', 7, 195, 736, '1993-05-09 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('PHF38899M', 'Peter', 'H', 'Franken', 10, 75, 877, '1992-05-17 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('PMA42628M', 'Paolo', 'M', 'Accorti', 13, 35, 877, '1992-08-27 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('POK93028M', 'Pirkko', 'O', 'Koskitalo', 10, 80, 9999, '1993-11-29 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('PSA89086M', 'Pedro', 'S', 'Afonso', 14, 89, 1389, '1990-12-24 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('PSP68661F', 'Paula', 'S', 'Parente', 8, 125, 1389, '1994-01-19 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('PTC11962M', 'Philip', 'T', 'Cramer', 2, 215, 9952, '1989-11-11 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('PXH22250M', 'Paul', 'X', 'Henriot', 5, 159, 877, '1993-08-19 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('R-M53550M', 'Roland', '', 'Mendel', 11, 150, 736, '1991-09-05 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('RBM23061F', 'Rita', 'B', 'Muller', 5, 198, 1622, '1993-10-09 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('SKO22412M', 'Sven', 'K', 'Ottlieb', 5, 150, 1389, '1991-04-05 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('TPO55093M', 'Timothy', 'P', 'O''Rourke', 13, 100, 736, '1988-06-19 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('VPA30890F', 'Victoria', 'P', 'Ashworth', 6, 140, 877, '1990-09-13 00:00:00');
INSERT INTO public.employee (emp_id, fname, minit, lname, job_id, job_lvl, pub_id, hire_date) VALUES ('Y-L77953M', 'Yoshi', '', 'Latimer', 12, 32, 1389, '1989-06-11 00:00:00');


--
-- TOC entry 3211 (class 0 OID 24763)
-- Dependencies: 205
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (1, 'New Hire - Job not specified', 10, 10);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (2, 'Chief Executive Officer', 200, 250);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (3, 'Business Operations Manager', 175, 225);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (4, 'Chief Financial Officier', 175, 250);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (5, 'Publisher', 150, 250);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (6, 'Managing Editor', 140, 225);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (7, 'Marketing Manager', 120, 200);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (8, 'Public Relations Manager', 100, 175);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (9, 'Acquisitions Manager', 75, 175);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (10, 'Productions Manager', 75, 165);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (11, 'Operations Manager', 75, 150);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (12, 'Editor', 25, 100);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (13, 'Sales Representative', 25, 100);
INSERT INTO public.jobs (job_id, job_desc, min_lvl, max_lvl) VALUES (14, 'Designer', 25, 100);


--
-- TOC entry 3212 (class 0 OID 24767)
-- Dependencies: 206
-- Data for Name: publishers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.publishers (pub_id, pub_name, city, state, country) VALUES (736, 'New Moon Books', 'Boston', 'MA', 'USA');
INSERT INTO public.publishers (pub_id, pub_name, city, state, country) VALUES (877, 'Binnet & Hardley', 'Washington', 'DC', 'USA');
INSERT INTO public.publishers (pub_id, pub_name, city, state, country) VALUES (1389, 'Algodata Infosystems', 'Berkeley', 'CA', 'USA');
INSERT INTO public.publishers (pub_id, pub_name, city, state, country) VALUES (1622, 'Five Lakes Publishing', 'Chicago', 'IL', 'USA');
INSERT INTO public.publishers (pub_id, pub_name, city, state, country) VALUES (1756, 'Ramona Publishers', 'Dallas', 'TX', 'USA');
INSERT INTO public.publishers (pub_id, pub_name, city, state, country) VALUES (9901, 'GGG&G', 'Mnchen', NULL, 'Germany');
INSERT INTO public.publishers (pub_id, pub_name, city, state, country) VALUES (9952, 'Scootney Books', 'New York', 'NY', 'USA');
INSERT INTO public.publishers (pub_id, pub_name, city, state, country) VALUES (9999, 'Lucerne Publishing', 'Paris', NULL, 'France');


--
-- TOC entry 3213 (class 0 OID 24774)
-- Dependencies: 207
-- Data for Name: roysched; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1032', 0, 5000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1032', 5001, 50000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PC1035', 0, 2000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PC1035', 2001, 3000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PC1035', 3001, 4000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PC1035', 4001, 10000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PC1035', 10001, 50000, 18);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU2075', 0, 1000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU2075', 1001, 3000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU2075', 3001, 5000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU2075', 5001, 7000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU2075', 7001, 10000, 18);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU2075', 10001, 12000, 20);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU2075', 12001, 14000, 22);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU2075', 14001, 50000, 24);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS2091', 0, 1000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS2091', 1001, 5000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS2091', 5001, 10000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS2091', 10001, 50000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS2106', 0, 2000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS2106', 2001, 5000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS2106', 5001, 10000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS2106', 10001, 50000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC3021', 0, 1000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC3021', 1001, 2000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC3021', 2001, 4000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC3021', 4001, 6000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC3021', 6001, 8000, 18);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC3021', 8001, 10000, 20);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC3021', 10001, 12000, 22);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC3021', 12001, 50000, 24);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC3218', 0, 2000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC3218', 2001, 4000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC3218', 4001, 6000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC3218', 6001, 8000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC3218', 8001, 10000, 18);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC3218', 10001, 12000, 20);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC3218', 12001, 14000, 22);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC3218', 14001, 50000, 24);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PC8888', 0, 5000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PC8888', 5001, 10000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PC8888', 10001, 15000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PC8888', 15001, 50000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS7777', 0, 5000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS7777', 5001, 50000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS3333', 0, 5000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS3333', 5001, 10000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS3333', 10001, 15000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS3333', 15001, 50000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1111', 0, 4000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1111', 4001, 8000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1111', 8001, 10000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1111', 12001, 16000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1111', 16001, 20000, 18);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1111', 20001, 24000, 20);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1111', 24001, 28000, 22);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU1111', 28001, 50000, 24);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC2222', 0, 2000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC2222', 2001, 4000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC2222', 4001, 8000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC2222', 8001, 12000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC2222', 12001, 20000, 18);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('MC2222', 20001, 50000, 20);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC7777', 0, 5000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC7777', 5001, 15000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC7777', 15001, 50000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC4203', 0, 2000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC4203', 2001, 8000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC4203', 8001, 16000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC4203', 16001, 24000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC4203', 24001, 32000, 18);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC4203', 32001, 40000, 20);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('TC4203', 40001, 50000, 22);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU7832', 0, 5000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU7832', 5001, 10000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU7832', 10001, 15000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU7832', 15001, 20000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU7832', 20001, 25000, 18);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU7832', 25001, 30000, 20);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU7832', 30001, 35000, 22);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('BU7832', 35001, 50000, 24);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS1372', 0, 10000, 10);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS1372', 10001, 20000, 12);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS1372', 20001, 30000, 14);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS1372', 30001, 40000, 16);
INSERT INTO public.roysched (title_id, lorange, hirange, royalty) VALUES ('PS1372', 40001, 50000, 18);


--
-- TOC entry 3214 (class 0 OID 24778)
-- Dependencies: 208
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (6380, '6871', '1994-09-14 00:00:00', 5, 'Net 60', 'BU1032');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (6380, '722a', '1994-09-13 00:00:00', 3, 'Net 60', 'PS2091');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7066, 'A2976', '1993-05-24 00:00:00', 50, 'Net 30', 'PC8888');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7066, 'QA7442.3', '1994-09-13 00:00:00', 75, 'ON invoice', 'PS2091');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7067, 'D4482', '1994-09-14 00:00:00', 10, 'Net 60', 'PS2091');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7067, 'P2121', '1992-06-15 00:00:00', 40, 'Net 30', 'TC3218');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7067, 'P2121', '1992-06-15 00:00:00', 20, 'Net 30', 'TC4203');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7067, 'P2121', '1992-06-15 00:00:00', 20, 'Net 30', 'TC7777');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7131, 'N914008', '1994-09-14 00:00:00', 20, 'Net 30', 'PS2091');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7131, 'N914014', '1994-09-14 00:00:00', 25, 'Net 30', 'MC3021');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7131, 'P3087a', '1993-05-29 00:00:00', 20, 'Net 60', 'PS1372');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7131, 'P3087a', '1993-05-29 00:00:00', 25, 'Net 60', 'PS2106');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7131, 'P3087a', '1993-05-29 00:00:00', 15, 'Net 60', 'PS3333');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7131, 'P3087a', '1993-05-29 00:00:00', 25, 'Net 60', 'PS7777');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7896, 'QQ2299', '1993-10-28 00:00:00', 15, 'Net 60', 'BU7832');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7896, 'TQ456', '1993-12-12 00:00:00', 10, 'Net 60', 'MC2222');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (7896, 'X999', '1993-02-21 00:00:00', 35, 'ON invoice', 'BU2075');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (8042, '423LL922', '1994-09-14 00:00:00', 15, 'ON invoice', 'MC3021');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (8042, '423LL930', '1994-09-14 00:00:00', 10, 'ON invoice', 'BU1032');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (8042, 'P723', '1993-03-11 00:00:00', 25, 'Net 30', 'BU1111');
INSERT INTO public.sales (stor_id, ord_num, ord_date, qty, payterms, title_id) VALUES (8042, 'QA879.1', '1993-05-22 00:00:00', 30, 'Net 30', 'PC1035');


--
-- TOC entry 3215 (class 0 OID 24785)
-- Dependencies: 209
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stores (stor_id, stor_name, stor_address, city, state, zip) VALUES (6380, 'Eric the Read Books', '788 Catamaugus Ave.', 'Seattle', 'WA', 98056);
INSERT INTO public.stores (stor_id, stor_name, stor_address, city, state, zip) VALUES (7066, 'Barnum''s', '567 Pasadena Ave.', 'Tustin', 'CA', 92789);
INSERT INTO public.stores (stor_id, stor_name, stor_address, city, state, zip) VALUES (7067, 'News & Brews', '577 First St.', 'Los Gatos', 'CA', 96745);
INSERT INTO public.stores (stor_id, stor_name, stor_address, city, state, zip) VALUES (7131, 'Doc-U-Mat: Quality Laundry and Books', '24-A Avogadro Way', 'Remulade', 'WA', 98014);
INSERT INTO public.stores (stor_id, stor_name, stor_address, city, state, zip) VALUES (7896, 'Fricative Bookshop', '89 Madison St.', 'Fremont', 'CA', 90019);
INSERT INTO public.stores (stor_id, stor_name, stor_address, city, state, zip) VALUES (8042, 'Bookbeat', '679 Carson St.', 'Portland', 'OR', 89076);


--
-- TOC entry 3216 (class 0 OID 24792)
-- Dependencies: 210
-- Data for Name: titleauthor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('172-32-1176', 'PS3333', 1, 100);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('213-46-8915', 'BU1032', 2, 40);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('213-46-8915', 'BU2075', 1, 100);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('238-95-7766', 'PC1035', 1, 100);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('267-41-2394', 'BU1111', 2, 40);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('267-41-2394', 'TC7777', 2, 30);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('274-80-9391', 'BU7832', 1, 100);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('409-56-7008', 'BU1032', 1, 60);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('427-17-2319', 'PC8888', 1, 50);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('472-27-2349', 'TC7777', 3, 30);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('486-29-1786', 'PC9999', 1, 100);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('486-29-1786', 'PS7777', 1, 100);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('648-92-1872', 'TC4203', 1, 100);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('672-71-3249', 'TC7777', 1, 40);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('712-45-1867', 'MC2222', 1, 100);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('722-51-5454', 'MC3021', 1, 75);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('724-80-9391', 'BU1111', 1, 60);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('724-80-9391', 'PS1372', 2, 25);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('756-30-7391', 'PS1372', 1, 75);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('807-91-6654', 'TC3218', 1, 100);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('846-92-7186', 'PC8888', 2, 50);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('899-46-2035', 'MC3021', 2, 25);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('899-46-2035', 'PS2091', 2, 50);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('998-72-3567', 'PS2091', 1, 50);
INSERT INTO public.titleauthor (au_id, title_id, au_ord, royaltyper) VALUES ('998-72-3567', 'PS2106', 1, 100);


--
-- TOC entry 3217 (class 0 OID 24797)
-- Dependencies: 211
-- Data for Name: titles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('BU1032', 'The Busy Executive''s Database Guide', 'business', 1389, '19.9900', '5000.0000', '10', '4095', 'An overview of available database systems with emphasis on common business applications. Illustrated.', '1991-06-12 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('BU1111', 'Cooking with Computers: Surreptitious Balance Sheets', 'business', 1389, '11.9500', '5000.0000', '10', '3876', 'Helpful hints on how to use your electronic resources to the best advantage.', '1991-06-09 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('BU2075', 'You Can Combat Computer Stress!', 'business', 736, '2.9900', '10125.0000', '24', '18722', 'The latest medical and psychological techniques for living with the electronic office. Easy-to-understand explanations.', '1991-06-30 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('BU7832', 'Straight Talk About Computers', 'business', 1389, '19.9900', '5000.0000', '10', '4095', 'Annotated analysis of what computers can do for you: a no-hype guide for the critical user.', '1991-06-22 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('MC2222', 'Silicon Valley Gastronomic Treats', 'mod_cook', 877, '19.9900', '0.0000', '12', '2032', 'Favorite recipes for quick, easy, and elegant meals.', '1991-06-09 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('MC3021', 'The Gourmet Microwave', 'mod_cook', 877, '2.9900', '15000.0000', '24', '22246', 'Traditional French gourmet recipes adapted for modern microwave cooking.', '1991-06-18 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('MC3026', 'The Psychology of Computer Cooking', 'UNDECIDED', 877, NULL, NULL, NULL, NULL, NULL, '2014-11-07 10:39:37');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('PC1035', 'But Is It User Friendly?', 'popular_comp', 1389, '22.9500', '7000.0000', '16', '8780', 'A survey of software for the naive user, focusing on the ''friendliness'' of each.', '1991-06-30 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('PC8888', 'Secrets of Silicon Valley', 'popular_comp', 1389, '20.0000', '8000.0000', '10', '4095', 'Muckraking reporting on the world''s largest computer hardware and software manufacturers.', '1994-06-12 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('PC9999', 'Net Etiquette', 'popular_comp', 1389, NULL, NULL, NULL, NULL, 'A must-read for computer conferencing.', '2014-11-07 10:39:37');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('PS1372', 'Computer Phobic AND Non-Phobic Individuals: Behavior Variations', 'psychology', 877, '21.5900', '7000.0000', '10', '375', 'A must for the specialist, this book examines the difference between those who hate and fear computers and those who don''t.', '1991-10-21 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('PS2091', 'Is Anger the Enemy?', 'psychology', 736, '10.9500', '2275.0000', '12', '2045', 'Carefully researched study of the effects of strong emotions on the body. Metabolic charts included.', '1991-06-15 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('PS2106', 'Life Without Fear', 'psychology', 736, '7.0000', '6000.0000', '10', '111', 'New exercise, meditation, and nutritional techniques that can reduce the shock of daily interactions. Popular audience. Sample menus included, exercise video available separately.', '1991-10-05 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('PS3333', 'Prolonged Data Deprivation: Four Case Studies', 'psychology', 736, '19.9900', '2000.0000', '10', '4072', 'What happens when the data runs dry?  Searching evaluations of information-shortage effects.', '1991-06-12 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('PS7777', 'Emotional Security: A New Algorithm', 'psychology', 736, '7.9900', '4000.0000', '10', '3336', 'Protecting yourself and your loved ones from undue emotional stress in the modern world. Use of computer and nutritional aids emphasized.', '1991-06-12 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('TC3218', 'Onions, Leeks, and Garlic: Cooking Secrets of the Mediterranean', 'trad_cook', 877, '20.9500', '7000.0000', '10', '375', 'Profusely illustrated in color, this makes a wonderful gift book for a cuisine-oriented friend.', '1991-10-21 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('TC4203', 'Fifty Years in Buckingham Palace Kitchens', 'trad_cook', 877, '11.9500', '4000.0000', '14', '15096', 'More anecdotes from the Queen''s favorite cook describing life among English royalty. Recipes, techniques, tender vignettes.', '1991-06-12 00:00:00');
INSERT INTO public.titles (title_id, title, type, pub_id, price, advance, royalty, ytd_sales, notes, pubdate) VALUES ('TC7777', 'Sushi, Anyone?', 'trad_cook', 877, '14.9900', '8000.0000', '10', '4095', 'Detailed instructions on how to make authentic Japanese sushi in your spare time.', '1991-06-12 00:00:00');


-- Completed on 2020-03-03 22:22:08 -03

--
-- PostgreSQL database dump complete
--

