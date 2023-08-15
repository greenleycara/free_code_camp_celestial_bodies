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
    name character varying(80) NOT NULL,
    age integer,
    has_hosted_space_olympics boolean,
    age_order integer NOT NULL
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
    name character varying(80) NOT NULL,
    planet_id integer NOT NULL,
    is_made_of_cheese boolean NOT NULL,
    craters integer NOT NULL,
    age_order integer
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
-- Name: moregalaxystuff; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moregalaxystuff (
    galaxy_id integer NOT NULL,
    moregalaxystuff_id integer NOT NULL,
    name character varying(80),
    size integer,
    weight integer
);


ALTER TABLE public.moregalaxystuff OWNER TO freecodecamp;

--
-- Name: moregalaxystuff_more_stuff_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moregalaxystuff_more_stuff_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moregalaxystuff_more_stuff_seq OWNER TO freecodecamp;

--
-- Name: moregalaxystuff_more_stuff_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moregalaxystuff_more_stuff_seq OWNED BY public.moregalaxystuff.moregalaxystuff_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(80),
    star_id integer NOT NULL,
    color text NOT NULL,
    rings integer
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
    name character varying(40),
    color text NOT NULL,
    star_id integer NOT NULL,
    birthday numeric(8,0),
    gives_superman_powers boolean NOT NULL,
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
-- Name: moregalaxystuff moregalaxystuff_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moregalaxystuff ALTER COLUMN moregalaxystuff_id SET DEFAULT nextval('public.moregalaxystuff_more_stuff_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'far away', 61219, true, 4);
INSERT INTO public.galaxy VALUES (2, 'far far away', 72216, false, 3);
INSERT INTO public.galaxy VALUES (3, 'far far far away', 81218, true, 2);
INSERT INTO public.galaxy VALUES (4, 'far far far far away', 92719, true, 1);
INSERT INTO public.galaxy VALUES (5, 'far far far far far away', 69, true, 5);
INSERT INTO public.galaxy VALUES (6, 'far far far far far far away', 27, false, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, true, 1, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 2, true, 2, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 3, true, 3, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 4, true, 4, 4);
INSERT INTO public.moon VALUES (5, 'moon5', 5, true, 5, 5);
INSERT INTO public.moon VALUES (6, 'moon6', 6, true, 6, 6);
INSERT INTO public.moon VALUES (7, 'moon7', 7, true, 7, 7);
INSERT INTO public.moon VALUES (8, 'moon8', 8, true, 8, 8);
INSERT INTO public.moon VALUES (9, 'moon9', 9, true, 9, 9);
INSERT INTO public.moon VALUES (10, 'moon10', 10, true, 10, 10);
INSERT INTO public.moon VALUES (11, 'moon11', 11, true, 11, 11);
INSERT INTO public.moon VALUES (12, 'moon12', 12, true, 12, 12);
INSERT INTO public.moon VALUES (13, 'moon13', 1, true, 13, 13);
INSERT INTO public.moon VALUES (14, 'moon14', 2, true, 14, 14);
INSERT INTO public.moon VALUES (15, 'moon15', 3, true, 15, 15);
INSERT INTO public.moon VALUES (16, 'moon16', 4, true, 16, 16);
INSERT INTO public.moon VALUES (17, 'moon17', 5, true, 17, 17);
INSERT INTO public.moon VALUES (18, 'moon18', 6, true, 18, 18);
INSERT INTO public.moon VALUES (19, 'moon19', 7, true, 19, 19);
INSERT INTO public.moon VALUES (20, 'moon20', 8, true, 20, 20);


--
-- Data for Name: moregalaxystuff; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moregalaxystuff VALUES (1, 1, 'far away', 1, 1);
INSERT INTO public.moregalaxystuff VALUES (2, 2, 'far far away', 2, 2);
INSERT INTO public.moregalaxystuff VALUES (3, 3, 'far far far away', 3, 3);
INSERT INTO public.moregalaxystuff VALUES (4, 4, 'far far far far away', 4, 4);
INSERT INTO public.moregalaxystuff VALUES (5, 5, 'far far far far far away', 5, 5);
INSERT INTO public.moregalaxystuff VALUES (6, 6, 'far far far far far far away', 6, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'krypton', 1, 'green', 1);
INSERT INTO public.planet VALUES (2, 'uranus', 2, 'purple', 2);
INSERT INTO public.planet VALUES (3, 'venus', 3, 'pink', 3);
INSERT INTO public.planet VALUES (4, 'mercury', 4, 'orange', 4);
INSERT INTO public.planet VALUES (5, 'neptune', 5, 'blue', 5);
INSERT INTO public.planet VALUES (6, 'mars', 6, 'red', 6);
INSERT INTO public.planet VALUES (7, 'pluto', 1, 'purple', 7);
INSERT INTO public.planet VALUES (8, 'saturn', 2, 'purple', 8);
INSERT INTO public.planet VALUES (10, 'mercury in retrograde', 4, 'orange', 10);
INSERT INTO public.planet VALUES (11, 'planet', 5, 'yellow', 11);
INSERT INTO public.planet VALUES (12, 'aliens', 6, 'grey', 12);
INSERT INTO public.planet VALUES (9, 'earth', 3, 'green', 9);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('dallas', 'green', 1, 19900127, false, 1);
INSERT INTO public.star VALUES ('minnesota', 'yellow', 2, 19600127, true, 2);
INSERT INTO public.star VALUES ('star3', 'red', 3, 20060127, false, 3);
INSERT INTO public.star VALUES ('star4', 'blue', 4, 20110127, false, 4);
INSERT INTO public.star VALUES ('star5', 'pink', 5, 20190127, false, 5);
INSERT INTO public.star VALUES ('star6', 'orange', 6, 20180127, false, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: moregalaxystuff_more_stuff_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moregalaxystuff_more_stuff_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_age_order_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_age_order_key UNIQUE (age_order);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_age_order_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_age_order_key UNIQUE (age_order);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moregalaxystuff moregalaxystuff_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moregalaxystuff
    ADD CONSTRAINT moregalaxystuff_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: moregalaxystuff moregalaxystuff_more_stuff_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moregalaxystuff
    ADD CONSTRAINT moregalaxystuff_more_stuff_key UNIQUE (moregalaxystuff_id);


--
-- Name: moregalaxystuff moregalaxystuff_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moregalaxystuff
    ADD CONSTRAINT moregalaxystuff_pkey PRIMARY KEY (moregalaxystuff_id);


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
-- Name: moregalaxystuff moregalaxystuff_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moregalaxystuff
    ADD CONSTRAINT moregalaxystuff_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

