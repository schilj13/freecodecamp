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
    number_of_planets_in_galaxy integer,
    will_humans_find_it boolean,
    are_there_snacks boolean
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
    planet_id integer,
    do_i_shine_bright boolean,
    do_i_have_crators boolean
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    miles_away_from_sun integer,
    description text,
    inhabitable_by_humans boolean,
    contains_oxygen boolean,
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
-- Name: space_trivia; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_trivia (
    space_trivia_id integer NOT NULL,
    category character varying(20) NOT NULL,
    fact character varying(40),
    name character varying(20)
);


ALTER TABLE public.space_trivia OWNER TO freecodecamp;

--
-- Name: space_trivia_space_trivia_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_trivia_space_trivia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_trivia_space_trivia_id_seq OWNER TO freecodecamp;

--
-- Name: space_trivia_space_trivia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_trivia_space_trivia_id_seq OWNED BY public.space_trivia.space_trivia_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    years_old numeric,
    galaxy_id integer,
    years_until_supernova integer
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
-- Name: space_trivia space_trivia_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_trivia ALTER COLUMN space_trivia_id SET DEFAULT nextval('public.space_trivia_space_trivia_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 10, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Filky Way', 11, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Shilky Way', 12, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Silky Way', 13, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Hilky Way', 14, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Shwilky way', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'loon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'soon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'foon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'badoon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'kachoon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'wazune', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'badaboom', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'monsoon', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'flaboon', 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'shabadabakawoon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'a', 3, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'b', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'c', 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'd', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'e', 7, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'f', 8, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'g', 9, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'thoughtIwasdonewaloon', 10, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'wellimnotchafoon', 11, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'jkIamsplatoon', 12, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 7000, 'its probably cold here', true, true, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 8000, 'shes goddess', true, true, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 9000, 'its where we live, duh', true, true, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 10, 'theres a lot of red', true, false, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 20, 'i dont know much about this one', false, false, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 16, 'I have a ring around me', false, false, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 45, 'um, yeah, Ill refrain', false, false, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 67, 'Sounds like a tv network for cartoons', false, false, NULL);
INSERT INTO public.planet VALUES (9, 'Pluto', 12, 'Brr', false, false, NULL);
INSERT INTO public.planet VALUES (10, 'Eris', 121221, 'Eris you glad I didnt say banana', false, false, NULL);
INSERT INTO public.planet VALUES (11, 'Makemake', 5555555, 'This is seriously one of the planets????', false, false, NULL);
INSERT INTO public.planet VALUES (12, 'Ceres', 1, 'Are you joking or Ceres?', false, false, NULL);


--
-- Data for Name: space_trivia; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_trivia VALUES (1, 'space', NULL, NULL);
INSERT INTO public.space_trivia VALUES (2, 'space', NULL, NULL);
INSERT INTO public.space_trivia VALUES (3, 'space', NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'fig_newton', 32, 1, NULL);
INSERT INTO public.star VALUES (1, 'pig_fluton', 20, 1, NULL);
INSERT INTO public.star VALUES (3, 'dig_uluton', 21, 1, NULL);
INSERT INTO public.star VALUES (4, 'lig_dluton', 22, 1, NULL);
INSERT INTO public.star VALUES (5, 'craig_newton', 25, 1, NULL);
INSERT INTO public.star VALUES (6, 'newton_craig', NULL, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: space_trivia_space_trivia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_trivia_space_trivia_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 2, true);


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
-- Name: space_trivia space_trivia_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_trivia
    ADD CONSTRAINT space_trivia_pkey PRIMARY KEY (space_trivia_id);


--
-- Name: space_trivia space_trivia_space_trivia_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_trivia
    ADD CONSTRAINT space_trivia_space_trivia_id_key UNIQUE (space_trivia_id);


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

