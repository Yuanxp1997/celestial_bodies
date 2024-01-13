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
    galaxy_name character varying(20) NOT NULL,
    column1 integer,
    column2 integer,
    column3 integer,
    name character varying(20)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_g_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_g_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_g_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_g_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_name character varying(20) NOT NULL,
    column1 integer,
    column2 integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    planet_name character varying(20) NOT NULL,
    number_of_moons integer,
    diameter_in_1000km numeric(10,1),
    description text,
    has_moon boolean,
    star_name character varying(20) NOT NULL,
    name character varying(20)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_p_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_p_id_seq OWNER TO freecodecamp;

--
-- Name: planet_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_p_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    star_name character varying(20) NOT NULL,
    number_of_planets integer,
    has_planet boolean,
    galaxy_name character varying(20) NOT NULL,
    name character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_s_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_s_id_seq OWNER TO freecodecamp;

--
-- Name: star_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_s_id_seq OWNED BY public.star.star_id;


--
-- Name: table5; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.table5 (
    table5_id integer NOT NULL,
    column2 integer NOT NULL,
    column3 integer,
    name character varying(20)
);


ALTER TABLE public.table5 OWNER TO freecodecamp;

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_g_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_p_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_s_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL, 'milky way');
INSERT INTO public.galaxy VALUES (2, 'g1', NULL, NULL, NULL, 'g1');
INSERT INTO public.galaxy VALUES (3, 'g2', NULL, NULL, NULL, 'g2');
INSERT INTO public.galaxy VALUES (4, 'g3', NULL, NULL, NULL, 'g3');
INSERT INTO public.galaxy VALUES (5, 'g4', NULL, NULL, NULL, 'g4');
INSERT INTO public.galaxy VALUES (6, 'g5', NULL, NULL, NULL, 'g5');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'moon', 'earth', NULL, NULL);
INSERT INTO public.moon VALUES (3, 'm1', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (4, 'phobos', 'mars', NULL, NULL);
INSERT INTO public.moon VALUES (5, 'deimos', 'mars', NULL, NULL);
INSERT INTO public.moon VALUES (6, 'm2', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'm3', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'm4', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (9, 'm5', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (10, 'm6', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (11, 'm7', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (12, 'm8', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (13, 'm9', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (14, 'm10', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (15, 'm11', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (16, 'm12', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (17, 'm13', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (18, 'm14', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (19, 'm15', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (20, 'm16', 'p1', NULL, NULL);
INSERT INTO public.moon VALUES (21, 'm17', 'p1', NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (4, 'mars', 2, 6.8, NULL, true, 'sun', 'mars');
INSERT INTO public.planet VALUES (5, 'jupiter', 95, 139.8, NULL, true, 'sun', 'jupiter');
INSERT INTO public.planet VALUES (6, 'saturn', 146, 120.5, NULL, true, 'sun', 'saturn');
INSERT INTO public.planet VALUES (7, 'uranus', 27, 50.7, NULL, true, 'sun', 'uranus');
INSERT INTO public.planet VALUES (8, 'neptune', 14, 49.2, NULL, true, 'sun', 'neptune');
INSERT INTO public.planet VALUES (3, 'earth', 1, 12.7, NULL, true, 'sun', 'earth');
INSERT INTO public.planet VALUES (2, 'venus', 0, 12.1, NULL, false, 'sun', 'venus');
INSERT INTO public.planet VALUES (1, 'mercury', 0, 4.9, NULL, false, 'sun', 'mercury');
INSERT INTO public.planet VALUES (9, 'p1', NULL, NULL, NULL, NULL, 's1', 'p1');
INSERT INTO public.planet VALUES (10, 'p2', NULL, NULL, NULL, NULL, 's1', 'p2');
INSERT INTO public.planet VALUES (11, 'p3', NULL, NULL, NULL, NULL, 's1', 'p3');
INSERT INTO public.planet VALUES (12, 'p4', NULL, NULL, NULL, NULL, 's1', 'p4');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', NULL, NULL, 'milky way', 'sun');
INSERT INTO public.star VALUES (2, 's1', 0, false, 'g1', 's1');
INSERT INTO public.star VALUES (3, 's2', 0, false, 'g1', 's2');
INSERT INTO public.star VALUES (4, 's3', 0, false, 'g1', 's3');
INSERT INTO public.star VALUES (5, 's4', 0, false, 'g1', 's4');
INSERT INTO public.star VALUES (6, 's5', 0, false, 'g1', 's5');


--
-- Data for Name: table5; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.table5 VALUES (1, 1, NULL, NULL);
INSERT INTO public.table5 VALUES (2, 2, NULL, NULL);
INSERT INTO public.table5 VALUES (3, 3, NULL, NULL);


--
-- Name: galaxy_g_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_g_id_seq', 6, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 21, true);


--
-- Name: planet_p_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_p_id_seq', 12, true);


--
-- Name: star_s_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_s_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: table5 pk_table5; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT pk_table5 PRIMARY KEY (table5_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: table5 unique_column1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.table5
    ADD CONSTRAINT unique_column1 UNIQUE (table5_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (name);


--
-- Name: star unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name UNIQUE (star_name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (planet_name);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet planet_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fkey FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- PostgreSQL database dump complete
--

