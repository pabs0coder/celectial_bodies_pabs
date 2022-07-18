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
    name character varying(30) NOT NULL,
    galaxy_size integer,
    description text,
    density numeric,
    life boolean
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
    name character varying(30) NOT NULL,
    moon_size integer,
    description text,
    density numeric,
    life boolean,
    planet_id integer
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
-- Name: multiverse; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.multiverse (
    multiverse_id integer DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass) NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_size integer,
    description text,
    density numeric,
    life boolean
);


ALTER TABLE public.multiverse OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_size integer,
    description text,
    density numeric,
    life boolean,
    star_id integer
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_size integer,
    description text,
    density numeric,
    life boolean,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'barrio', 1, 'description', 1, true);
INSERT INTO public.galaxy VALUES (2, 'alpha', 1, 'description', 1, true);
INSERT INTO public.galaxy VALUES (3, 'alpha1', 1, 'description', 1, true);
INSERT INTO public.galaxy VALUES (4, 'alpha12', 1, 'description', 1, true);
INSERT INTO public.galaxy VALUES (5, 'alph12', 1, 'description', 1, true);
INSERT INTO public.galaxy VALUES (6, 'alph2', 1, 'description', 1, true);
INSERT INTO public.galaxy VALUES (7, 'alph23', 1, 'description', 1, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'clase', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (3, 'clase1', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (4, 'clase2', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (5, 'clase3', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (6, 'clase4', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (7, 'clase5', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (8, 'clase6', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (9, 'clase7', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (10, 'clase8', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (11, 'clase9', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (12, 'clase91', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (13, 'clase92', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (14, 'clase93', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (15, 'clase94', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (16, 'clase95', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (17, 'clase96', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (18, 'clase97', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (19, 'clase98', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (20, 'clase99', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (21, 'clase991', 1, 'description', 1, true, 2);
INSERT INTO public.moon VALUES (22, 'clase992', 1, 'description', 1, true, 2);


--
-- Data for Name: multiverse; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.multiverse VALUES (8, 'alph12', 1, 'description', 1, true);
INSERT INTO public.multiverse VALUES (9, 'alph1', 1, 'description', 1, true);
INSERT INTO public.multiverse VALUES (10, 'alph', 1, 'description', 1, true);
INSERT INTO public.multiverse VALUES (11, 'alpha', 1, 'description', 1, true);
INSERT INTO public.multiverse VALUES (12, 'alpha3', 1, 'description', 1, true);
INSERT INTO public.multiverse VALUES (13, 'alpha33', 1, 'description', 1, true);
INSERT INTO public.multiverse VALUES (14, 'alpha313', 1, 'description', 1, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'ninos', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (3, 'ninos1', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (4, 'ninos2', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (5, 'ninos3', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (6, 'ninos31', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (7, 'ninos131', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (8, 'ninos1311', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (9, 'ninos11311', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (10, 'ninos113111', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (11, 'ninos1113111', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (12, 'ninos11113111', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (13, 'ninos111113111', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (14, 'ninos1111113111', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (15, 'ninos11111131111', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (16, 'ninos22131111', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (17, 'ninos22131121', 1, 'description', 1, true, 2);
INSERT INTO public.planet VALUES (18, 'ninos2131121', 1, 'description', 1, true, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('casa', 1, 'micasa', 1, true, 2, 1);
INSERT INTO public.star VALUES ('alph23', 1, 'description', 1, true, 3, 2);
INSERT INTO public.star VALUES ('alph22', 1, 'description', 1, true, 4, 2);
INSERT INTO public.star VALUES ('alph32', 1, 'description', 1, true, 5, 2);
INSERT INTO public.star VALUES ('alph62', 1, 'description', 1, true, 6, 2);
INSERT INTO public.star VALUES ('aph62', 1, 'description', 1, true, 7, 2);
INSERT INTO public.star VALUES ('aph2', 1, 'description', 1, true, 8, 2);
INSERT INTO public.star VALUES ('ap2', 1, 'description', 1, true, 9, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 18, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: multiverse multiverse_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_galaxy_id_key UNIQUE (multiverse_id);


--
-- Name: multiverse multiverse_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_name_key UNIQUE (name);


--
-- Name: multiverse multiverse_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.multiverse
    ADD CONSTRAINT multiverse_pkey PRIMARY KEY (multiverse_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

