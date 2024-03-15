
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    age_in_billions numeric(4,2),
    diameter_in_lightyears integer,
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
    name character varying(50) NOT NULL,
    type text,
    is_spherical boolean,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type text,
    age_in_billions integer,
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
-- Name: planets_nearby; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planets_nearby (
    planets_nearby_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean
);


ALTER TABLE public.planets_nearby OWNER TO freecodecamp;

--
-- Name: planets_nearby_planets_nearby_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planets_nearby_planets_nearby_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planets_nearby_planets_nearby_id_seq OWNER TO freecodecamp;

--
-- Name: planets_nearby_planets_nearby_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planets_nearby_planets_nearby_id_seq OWNED BY public.planets_nearby.planets_nearby_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_billions numeric(4,2),
    diameter_in_km integer,
    type text,
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
-- Name: planets_nearby planets_nearby_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_nearby ALTER COLUMN planets_nearby_id SET DEFAULT nextval('public.planets_nearby_planets_nearby_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13.61, 100000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 10.01, 152000, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 12.50, 60000, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 0.40, 76900, NULL);
INSERT INTO public.galaxy VALUES (5, 'Tadpole  Galaxy', 0.10, 280000, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 81', 13.31, 96000, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'SP1Moon1', 'Full', true, 1);
INSERT INTO public.moon VALUES (2, 'SP1Moon2', 'Waxing Gibbous', false, 1);
INSERT INTO public.moon VALUES (3, 'SP2Moon1', 'First Quarter', false, 2);
INSERT INTO public.moon VALUES (4, 'SP2Moon2', 'Waxing Crescent', false, 2);
INSERT INTO public.moon VALUES (5, 'AP1Moon1', 'New Moon', true, 3);
INSERT INTO public.moon VALUES (6, 'AP1Moon2', 'Waning Crescent', false, 3);
INSERT INTO public.moon VALUES (7, 'AP2Moon1', 'Third Quarter', false, 4);
INSERT INTO public.moon VALUES (8, 'AP2Moon2', 'Waning Gibbous', false, 4);
INSERT INTO public.moon VALUES (9, 'TP1Moon1', 'Full', true, 5);
INSERT INTO public.moon VALUES (10, 'TP1Moon2', 'Waxing Gibbous', false, 5);
INSERT INTO public.moon VALUES (11, 'TP2Moon1', 'First Quarter', false, 6);
INSERT INTO public.moon VALUES (12, 'TP2Moon2', 'Waxing Crescent', false, 6);
INSERT INTO public.moon VALUES (13, 'WP1Moon1', 'New Moon', true, 7);
INSERT INTO public.moon VALUES (14, 'WP1Moon2', 'Waning Crescent', false, 7);
INSERT INTO public.moon VALUES (15, 'WP2Moon1', 'Third Quarter', false, 8);
INSERT INTO public.moon VALUES (16, 'WP2Moon2', 'Waning Gibbous', false, 8);
INSERT INTO public.moon VALUES (17, 'TAD1Moon1', 'Full', true, 9);
INSERT INTO public.moon VALUES (18, 'TAD2Moon1', 'Waxing Gibbous', false, 10);
INSERT INTO public.moon VALUES (19, 'MSP1Moon1', 'First Quarter', false, 11);
INSERT INTO public.moon VALUES (20, 'MSP2Moon1', 'Waxing Crescent', false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'SunPlanet1', 'Water', 4, 1);
INSERT INTO public.planet VALUES (2, 'SunPlanet2', 'Fire', 2, 1);
INSERT INTO public.planet VALUES (3, 'ASPlanet1', 'Stone', 7, 2);
INSERT INTO public.planet VALUES (4, 'ASPlanet2', 'Steel', 6, 2);
INSERT INTO public.planet VALUES (5, 'TSPlanet1', 'Light', 8, 3);
INSERT INTO public.planet VALUES (6, 'TSPlanet2', 'Dark', 1, 3);
INSERT INTO public.planet VALUES (7, 'WSPlanet1', 'Grass', 5, 4);
INSERT INTO public.planet VALUES (8, 'WSPlanet2', 'Rock', 8, 4);
INSERT INTO public.planet VALUES (11, 'MSPlanet1', 'Lava', 3, 6);
INSERT INTO public.planet VALUES (12, 'MSPlanet2', 'Ice', 2, 6);
INSERT INTO public.planet VALUES (9, 'TASPlanet1', 'Ghost', 4, 5);
INSERT INTO public.planet VALUES (10, 'TASPlanet2', 'Insect', 7, 5);


--
-- Data for Name: planets_nearby; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planets_nearby VALUES (1, 'Earth', true);
INSERT INTO public.planets_nearby VALUES (2, 'MARS', NULL);
INSERT INTO public.planets_nearby VALUES (3, 'Venus', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 4.60, 1392700, 'Yellow Dwarf Star', 1);
INSERT INTO public.star VALUES (2, 'Andromeda Star', 3.60, 1544600, 'Red Dwarf Star', 2);
INSERT INTO public.star VALUES (3, 'Triangulum Star', 3.00, 1354789, 'Yellow Dwarf Star', 3);
INSERT INTO public.star VALUES (4, 'Whirlpool Star', 2.70, 1890764, 'Red Dwarf Star', 4);
INSERT INTO public.star VALUES (5, 'Tadpole Star', 2.40, 1356800, 'Yellow Dwarf Star', 5);
INSERT INTO public.star VALUES (6, 'Messier 81 Star', 2.60, 1300000, 'Red Dwarf Star', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planets_nearby_planets_nearby_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planets_nearby_planets_nearby_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planets_nearby planets_nearby_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_nearby
    ADD CONSTRAINT planets_nearby_name_key UNIQUE (name);


--
-- Name: planets_nearby planets_nearby_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_nearby
    ADD CONSTRAINT planets_nearby_pkey PRIMARY KEY (planets_nearby_id);


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
-- Name: planet unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name UNIQUE (name);


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

