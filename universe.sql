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
    name character varying(40) NOT NULL,
    age_in_millions_of_years numeric(10,0),
    distance_from_earth integer,
    description text
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
    name character varying(40) NOT NULL,
    has_life boolean DEFAULT false NOT NULL,
    planet_id integer NOT NULL,
    description text
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
    name character varying(40) NOT NULL,
    has_life boolean DEFAULT false NOT NULL,
    age_in_millions_of_years numeric(10,0),
    distance_from_earth integer,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: plamet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.plamet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plamet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: plamet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.plamet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years numeric(10,0),
    distance_from_earth integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_color; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_color (
    star_color_id integer NOT NULL,
    name character varying(20),
    code character varying(7) NOT NULL
);


ALTER TABLE public.star_color OWNER TO freecodecamp;

--
-- Name: star_color_star_color_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_color_star_color_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_color_star_color_id_seq OWNER TO freecodecamp;

--
-- Name: star_color_star_color_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_color_star_color_id_seq OWNED BY public.star_color.star_color_id;


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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.plamet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_color star_color_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_color ALTER COLUMN star_color_id SET DEFAULT nextval('public.star_color_star_color_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milk Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Tadpole', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', false, 13, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 12, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 12, NULL);
INSERT INTO public.moon VALUES (4, 'Io', false, 14, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', false, 14, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', false, 14, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 14, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', false, 15, NULL);
INSERT INTO public.moon VALUES (9, 'Rhea', false, 15, NULL);
INSERT INTO public.moon VALUES (10, 'Lapetus', false, 15, NULL);
INSERT INTO public.moon VALUES (11, 'Dione', false, 15, NULL);
INSERT INTO public.moon VALUES (12, 'Triton', false, 17, NULL);
INSERT INTO public.moon VALUES (13, 'Miranda', false, 16, NULL);
INSERT INTO public.moon VALUES (14, 'Ariel', false, 16, NULL);
INSERT INTO public.moon VALUES (15, 'Umbriel', false, 16, NULL);
INSERT INTO public.moon VALUES (16, 'Oberon', false, 16, NULL);
INSERT INTO public.moon VALUES (17, 'Carbon', false, 18, NULL);
INSERT INTO public.moon VALUES (18, 'Nix', false, 18, NULL);
INSERT INTO public.moon VALUES (19, 'Hydra', false, 18, NULL);
INSERT INTO public.moon VALUES (20, 'Kerberos', false, 18, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (10, 'Mercury', false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Venera', false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Mars', false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (13, 'Earth', true, NULL, NULL, 2);
INSERT INTO public.planet VALUES (14, 'Jupiter', false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (15, 'Saturn', false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (16, 'Uran', false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (17, 'Neptun', false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (18, 'Pluton', false, NULL, NULL, 2);
INSERT INTO public.planet VALUES (19, 'Luminara', false, NULL, NULL, 3);
INSERT INTO public.planet VALUES (20, 'Astrion', false, NULL, NULL, 3);
INSERT INTO public.planet VALUES (21, 'Nocturnia', false, NULL, NULL, 3);
INSERT INTO public.planet VALUES (22, 'Glacierarum', false, NULL, NULL, 4);
INSERT INTO public.planet VALUES (23, 'Frosthaven', false, NULL, NULL, 3);
INSERT INTO public.planet VALUES (24, 'Crystalis', false, NULL, NULL, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Sun', NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'S Doradus', NULL, NULL, 2);
INSERT INTO public.star VALUES (4, 'Snowball Nebula', NULL, NULL, 3);
INSERT INTO public.star VALUES (5, 'Messier 82', NULL, NULL, 4);
INSERT INTO public.star VALUES (6, 'Unusual M82', NULL, NULL, 4);
INSERT INTO public.star VALUES (7, 'NGC 5457', NULL, NULL, 5);
INSERT INTO public.star VALUES (8, 'M104', NULL, NULL, 6);
INSERT INTO public.star VALUES (9, 'Messier 51', NULL, NULL, 7);
INSERT INTO public.star VALUES (10, 'Astra Aurora', NULL, NULL, 8);


--
-- Data for Name: star_color; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_color VALUES (1, 'Red', '#FF0000');
INSERT INTO public.star_color VALUES (2, 'Yellow', '#FFFF00');
INSERT INTO public.star_color VALUES (3, 'Blue', '#0000FF');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: plamet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.plamet_planet_id_seq', 24, true);


--
-- Name: star_color_star_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_color_star_color_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


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
-- Name: planet plamet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plamet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: star_color star_color_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_color
    ADD CONSTRAINT star_color_code_key UNIQUE (code);


--
-- Name: star_color star_color_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_color
    ADD CONSTRAINT star_color_pkey PRIMARY KEY (star_color_id);


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
-- Name: star galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

