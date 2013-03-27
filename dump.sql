--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: projects; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE projects (
    id integer NOT NULL,
    title character varying(255),
    body text,
    author_name text,
    website_name text,
    image_file_name character varying(255),
    image_content_type character varying(255),
    image_file_size integer,
    image_updated_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.projects OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE projects_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO postgres;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE projects_id_seq OWNED BY projects.id;


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('projects_id_seq', 4, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE projects ALTER COLUMN id SET DEFAULT nextval('projects_id_seq'::regclass);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY projects (id, title, body, author_name, website_name, image_file_name, image_content_type, image_file_size, image_updated_at, created_at, updated_at) FROM stdin;
1	Denver Sports Nation	Denver Sports Nation is a weekend local radio show on Mile High Sports, AM1510, FM 93.7\r\n\r\nDenver Sports Nation needed a website to build their unique brand in the Denver sport talk radio market.  \r\n\r\nThe website is powered by Wordpress using a Razor theme that features a scrolling header. . \r\n\r\n\t\t\t\t\t\t\t\r\n	Daniel	denversportsnation.com	Jessicaredfieldmemorial.png	image/png	351265	2013-03-26 02:43:55.851	2013-03-19 21:03:16.9663	2013-03-26 02:43:55.892
2	Ruby on Rails Pup	This client approached our team to build a personal blog to document a personal journey of development from a career spent in Information Technology to learning Ruby on Rails.  \r\n\r\nThis website is built with Wordpress and uses the \r\nBueno theme built by WOOTHEMES. 	Marcel	rubyonrailspup.com	rubytrain.jpg	image/jpeg	16374	2013-03-26 03:55:32.484	2013-03-26 03:55:33.333	2013-03-26 03:55:33.333
3	Blood Cancer Freedom Fighters	Our client approached our team to build a website that is part of a grassroots movement to create a world without blood cancers. \r\n\r\nWe chose to use Wordpress for this website for it's simplicity and powerful SEO, which was important to our client. \r\n\r\nCheck out the website and join the blood cancer freedom fighter revolution.	Andrea	BloodCancerFreedomFighters.com	believe-header-940x198.jpg	image/jpeg	37392	2013-03-26 04:03:29.399	2013-03-26 04:03:29.401	2013-03-26 16:31:08.3264
4	The Year of the Poodle	Our client Rocky has declared 2013 as the Year of the Poodle!\r\n\r\nJoin Rocky on his journey as he trains in earnest for the agility test at the end of the Furry Scurry. 	Andrea	TheYearOfThePoodle.wordpress.com	IMG_0998.JPG	image/jpeg	2523987	2013-03-26 16:41:37.4308	2013-03-26 16:41:37.4788	2013-03-26 16:44:04.8818
\.


--
-- Name: projects_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

