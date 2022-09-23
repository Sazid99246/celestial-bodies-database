--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_type text,
    is_spherical boolean,
    has_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL,
    distance_from_planet integer,
    radius numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: moon_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_planet_id_seq OWNER TO freecodecamp;

--
-- Name: moon_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_planet_id_seq OWNED BY public.moon.planet_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    star_id integer NOT NULL,
    ages_in_million_of_years integer,
    planet_type text,
    has_life boolean,
    is_shperical boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: planet_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_star_id_seq OWNER TO freecodecamp;

--
-- Name: planet_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_star_id_seq OWNED BY public.planet.star_id;


--
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(60) NOT NULL,
    ages_in_hillion_of_years numeric
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer NOT NULL,
    is_spherical boolean,
    has_life boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: star_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_galaxy_id_seq OWNED BY public.star.galaxy_id;


--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: moon planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN planet_id SET DEFAULT nextval('public.moon_planet_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN star_id SET DEFAULT nextval('public.planet_star_id_seq'::regclass);


--
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN galaxy_id SET DEFAULT nextval('public.star_galaxy_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromedia', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Antennei', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Backward', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black eye', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Butterfly', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Curtwheel', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'abc', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'def', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'ghit', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'jkl', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'mno', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'pqr', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'b', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'c', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'd', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'e', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'f', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'g', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'h', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, 'i', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (22, 'j', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (23, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (24, 'b', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (25, 'c', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (26, 'd', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (27, 'e', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (28, 'f', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (29, 'g', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (30, 'h', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (31, 'i', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (32, 'j', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (33, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (34, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (35, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (36, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (37, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (38, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (39, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (40, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (41, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (42, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (43, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (44, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (45, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (46, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (47, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (48, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (49, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (50, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (51, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (52, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (53, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (54, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (55, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (56, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (57, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (58, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (59, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (60, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (61, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (62, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (63, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (64, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (65, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (66, 'a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (67, 'a', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, 384400, 1737.4);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 384400, 1737.4);
INSERT INTO public.moon VALUES (3, 'Deimos', 3, 384400, 1737.4);
INSERT INTO public.moon VALUES (4, 'Ganymade', 4, 384400, 1737.4);
INSERT INTO public.moon VALUES (5, 'Calisto', 5, 384400, 1737.4);
INSERT INTO public.moon VALUES (6, 'Io', 6, 384400, 1737.4);
INSERT INTO public.moon VALUES (10, 'Europa', 10, 384400, 1737.4);
INSERT INTO public.moon VALUES (11, 'Amalthea', 11, 384400, 1737.4);
INSERT INTO public.moon VALUES (12, 'Himalia', 12, 384400, 1737.4);
INSERT INTO public.moon VALUES (13, 'Thebe', 13, 384400, 1737.4);
INSERT INTO public.moon VALUES (14, 'Elara', 14, 384400, 1737.4);
INSERT INTO public.moon VALUES (15, 'Pasiphae', 15, 384400, 1737.4);
INSERT INTO public.moon VALUES (33, 'a', 33, NULL, NULL);
INSERT INTO public.moon VALUES (34, 'a', 34, NULL, NULL);
INSERT INTO public.moon VALUES (35, 'a', 35, NULL, NULL);
INSERT INTO public.moon VALUES (36, 'a', 36, NULL, NULL);
INSERT INTO public.moon VALUES (37, 'a', 37, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'a', 38, NULL, NULL);
INSERT INTO public.moon VALUES (39, 'a', 39, NULL, NULL);
INSERT INTO public.moon VALUES (40, 'a', 40, NULL, NULL);
INSERT INTO public.moon VALUES (41, 'a', 41, NULL, NULL);
INSERT INTO public.moon VALUES (42, 'a', 42, NULL, NULL);
INSERT INTO public.moon VALUES (43, 'a', 43, NULL, NULL);
INSERT INTO public.moon VALUES (44, 'a', 44, NULL, NULL);
INSERT INTO public.moon VALUES (45, 'a', 45, NULL, NULL);
INSERT INTO public.moon VALUES (46, 'a', 46, NULL, NULL);
INSERT INTO public.moon VALUES (47, 'a', 47, NULL, NULL);
INSERT INTO public.moon VALUES (48, 'a', 48, NULL, NULL);
INSERT INTO public.moon VALUES (49, 'a', 49, NULL, NULL);
INSERT INTO public.moon VALUES (50, 'a', 50, NULL, NULL);
INSERT INTO public.moon VALUES (51, 'a', 51, NULL, NULL);
INSERT INTO public.moon VALUES (52, 'a', 52, NULL, NULL);
INSERT INTO public.moon VALUES (53, 'a', 53, NULL, NULL);
INSERT INTO public.moon VALUES (54, 'a', 54, NULL, NULL);
INSERT INTO public.moon VALUES (55, 'a', 55, NULL, NULL);
INSERT INTO public.moon VALUES (56, 'a', 56, NULL, NULL);
INSERT INTO public.moon VALUES (57, 'a', 57, NULL, NULL);
INSERT INTO public.moon VALUES (58, 'a', 58, NULL, NULL);
INSERT INTO public.moon VALUES (59, 'a', 59, NULL, NULL);
INSERT INTO public.moon VALUES (60, 'a', 60, NULL, NULL);
INSERT INTO public.moon VALUES (61, 'a', 61, NULL, NULL);
INSERT INTO public.moon VALUES (62, 'a', 62, NULL, NULL);
INSERT INTO public.moon VALUES (63, 'a', 63, NULL, NULL);
INSERT INTO public.moon VALUES (64, 'a', 64, NULL, NULL);
INSERT INTO public.moon VALUES (65, 'a', 65, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 4, 'terrestrial', true, true);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 4, 'terrestrial', true, true);
INSERT INTO public.planet VALUES (3, 'Earth', 3, 4, 'terrestrial', true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 4, 'terrestrial', false, true);
INSERT INTO public.planet VALUES (5, 'Jupitar', 5, 4, 'gas giant', false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 4, 'gas giant', false, true);
INSERT INTO public.planet VALUES (10, 'Urenas', 10, 4, 'urenas type', false, false);
INSERT INTO public.planet VALUES (11, 'Neptune', 11, 4, 'urenas type', false, true);
INSERT INTO public.planet VALUES (12, 'a', 12, 4, 'urenas type', false, true);
INSERT INTO public.planet VALUES (13, 'b', 13, 4, 'urenas type', false, true);
INSERT INTO public.planet VALUES (14, 'c', 14, 4, 'urenas type', false, true);
INSERT INTO public.planet VALUES (15, 'd', 15, 4, 'urenas type', false, true);
INSERT INTO public.planet VALUES (32, 'a', 32, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (33, 'a', 33, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (34, 'a', 34, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (35, 'a', 35, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (36, 'a', 36, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (37, 'a', 37, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (38, 'a', 38, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (39, 'a', 39, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (40, 'a', 40, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (41, 'a', 41, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (42, 'a', 42, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (43, 'a', 43, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (44, 'a', 44, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (45, 'a', 45, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (46, 'a', 46, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (47, 'a', 47, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (48, 'a', 48, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (49, 'a', 49, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (50, 'a', 50, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (51, 'a', 51, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (52, 'a', 52, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (53, 'a', 53, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (54, 'a', 54, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (55, 'a', 55, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (56, 'a', 56, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (57, 'a', 57, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (58, 'a', 58, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (59, 'a', 59, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (60, 'a', 60, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (61, 'a', 61, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (62, 'a', 62, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (63, 'a', 63, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (64, 'a', 64, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (65, 'a', 65, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (66, 'a', 66, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (67, 'a', 67, NULL, NULL, NULL, NULL);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'a', NULL);
INSERT INTO public.satellite VALUES (2, 'b', NULL);
INSERT INTO public.satellite VALUES (3, 'c', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Pollax', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Castor', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Pollaris', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Orion', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Sirius', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Antares', 6, NULL, NULL);
INSERT INTO public.star VALUES (10, 'a', 25, NULL, NULL);
INSERT INTO public.star VALUES (11, 'b', 26, NULL, NULL);
INSERT INTO public.star VALUES (12, 'c', 27, NULL, NULL);
INSERT INTO public.star VALUES (13, 'd', 28, NULL, NULL);
INSERT INTO public.star VALUES (14, 'e', 29, NULL, NULL);
INSERT INTO public.star VALUES (15, 'f', 30, NULL, NULL);
INSERT INTO public.star VALUES (31, 'a', 31, NULL, NULL);
INSERT INTO public.star VALUES (32, 'a', 32, NULL, NULL);
INSERT INTO public.star VALUES (33, 'a', 33, NULL, NULL);
INSERT INTO public.star VALUES (34, 'a', 34, NULL, NULL);
INSERT INTO public.star VALUES (35, 'a', 35, NULL, NULL);
INSERT INTO public.star VALUES (36, 'a', 36, NULL, NULL);
INSERT INTO public.star VALUES (37, 'a', 37, NULL, NULL);
INSERT INTO public.star VALUES (38, 'a', 38, NULL, NULL);
INSERT INTO public.star VALUES (39, 'a', 39, NULL, NULL);
INSERT INTO public.star VALUES (40, 'a', 40, NULL, NULL);
INSERT INTO public.star VALUES (41, 'a', 41, NULL, NULL);
INSERT INTO public.star VALUES (42, 'a', 42, NULL, NULL);
INSERT INTO public.star VALUES (43, 'a', 43, NULL, NULL);
INSERT INTO public.star VALUES (44, 'a', 44, NULL, NULL);
INSERT INTO public.star VALUES (45, 'a', 45, NULL, NULL);
INSERT INTO public.star VALUES (46, 'a', 46, NULL, NULL);
INSERT INTO public.star VALUES (47, 'a', 47, NULL, NULL);
INSERT INTO public.star VALUES (48, 'a', 48, NULL, NULL);
INSERT INTO public.star VALUES (49, 'a', 49, NULL, NULL);
INSERT INTO public.star VALUES (50, 'a', 50, NULL, NULL);
INSERT INTO public.star VALUES (51, 'a', 51, NULL, NULL);
INSERT INTO public.star VALUES (52, 'a', 52, NULL, NULL);
INSERT INTO public.star VALUES (53, 'a', 53, NULL, NULL);
INSERT INTO public.star VALUES (54, 'a', 54, NULL, NULL);
INSERT INTO public.star VALUES (55, 'a', 55, NULL, NULL);
INSERT INTO public.star VALUES (56, 'a', 56, NULL, NULL);
INSERT INTO public.star VALUES (57, 'a', 57, NULL, NULL);
INSERT INTO public.star VALUES (58, 'a', 58, NULL, NULL);
INSERT INTO public.star VALUES (59, 'a', 59, NULL, NULL);
INSERT INTO public.star VALUES (60, 'a', 60, NULL, NULL);
INSERT INTO public.star VALUES (61, 'a', 61, NULL, NULL);
INSERT INTO public.star VALUES (62, 'a', 62, NULL, NULL);
INSERT INTO public.star VALUES (63, 'a', 63, NULL, NULL);
INSERT INTO public.star VALUES (64, 'a', 64, NULL, NULL);
INSERT INTO public.star VALUES (65, 'a', 65, NULL, NULL);
INSERT INTO public.star VALUES (66, 'a', 66, NULL, NULL);
INSERT INTO public.star VALUES (67, 'a', 67, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 67, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 65, true);


--
-- Name: moon_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_planet_id_seq', 65, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 70, true);


--
-- Name: planet_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_star_id_seq', 70, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_galaxy_id_seq', 69, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 69, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


--
-- Name: satellite satellite_satellite_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_satellite_id_key UNIQUE (satellite_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

