--
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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(100) NOT NULL,
    diameter numeric,
    discovered_by character varying(100),
    galaxy_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    distance text,
    lucky text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    earth text,
    qq boolean,
    ww boolean,
    wz numeric,
    wq integer,
    wa integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    "time" text,
    distance text,
    luck text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    lucky text,
    distance text,
    "time" text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 939.4, 'Giuseppe Piazzi', 1);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525.4, 'Heinrich Wilhelm Olbers', 2);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 512.6, 'Henri Poincaré', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel Galaxy', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Triangulum', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Tucana III', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Virgo Cluster', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Centaurus A', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'NGC 253', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'NGC 1300', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'NGC 224', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'NGC 3370', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'NGC 4486', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'NGC 1068', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'NGC 6946', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'NGC 2070', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'NGC 4594', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'NGC 7023', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth', true, false, 3.7, 1, 2, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Mars', false, true, 1.5, 2, 3, 2);
INSERT INTO public.moon VALUES (3, 'Europa', 'Jupiter', true, true, 0.3, 3, 4, 3);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Jupiter', true, true, 0.4, 4, 5, 3);
INSERT INTO public.moon VALUES (5, 'Callisto', 'Jupiter', false, true, 0.7, 5, 6, 3);
INSERT INTO public.moon VALUES (6, 'Io', 'Jupiter', true, false, 0.1, 6, 7, 3);
INSERT INTO public.moon VALUES (7, 'Titan', 'Saturn', true, true, 1.2, 7, 8, 4);
INSERT INTO public.moon VALUES (8, 'Rhea', 'Saturn', false, true, 0.5, 8, 9, 4);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Saturn', true, false, 0.2, 9, 10, 4);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Saturn', true, true, 0.1, 10, 11, 4);
INSERT INTO public.moon VALUES (11, 'Iapetus', 'Saturn', false, true, 0.8, 11, 12, 4);
INSERT INTO public.moon VALUES (12, 'Triton', 'Neptune', true, false, 0.9, 12, 13, 5);
INSERT INTO public.moon VALUES (13, 'Proteus', 'Neptune', false, true, 0.4, 13, 14, 5);
INSERT INTO public.moon VALUES (14, 'Charon', 'Pluto', true, false, 0.6, 14, 15, 6);
INSERT INTO public.moon VALUES (15, 'Nix', 'Pluto', false, true, 0.2, 15, 16, 6);
INSERT INTO public.moon VALUES (16, 'Hydra', 'Pluto', true, false, 0.3, 16, 17, 6);
INSERT INTO public.moon VALUES (17, 'Ariel', 'Uranus', false, true, 0.5, 17, 18, 7);
INSERT INTO public.moon VALUES (18, 'Miranda', 'Uranus', true, false, 0.4, 18, 19, 7);
INSERT INTO public.moon VALUES (19, 'Umbriel', 'Uranus', false, true, 0.3, 19, 20, 7);
INSERT INTO public.moon VALUES (20, 'Titania', 'Uranus', true, false, 0.8, 20, 21, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Mars', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'Jupiter', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, 'Mercury', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, 8);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, 9);
INSERT INTO public.planet VALUES (10, 'Ceres', NULL, NULL, NULL, 10);
INSERT INTO public.planet VALUES (11, 'Haumea', NULL, NULL, NULL, 11);
INSERT INTO public.planet VALUES (12, 'Makemake', NULL, NULL, NULL, 12);
INSERT INTO public.planet VALUES (13, 'Eris', NULL, NULL, NULL, 13);
INSERT INTO public.planet VALUES (14, 'Sedna', NULL, NULL, NULL, 14);
INSERT INTO public.planet VALUES (15, 'Quaoar', NULL, NULL, NULL, 15);
INSERT INTO public.planet VALUES (16, 'Orcus', NULL, NULL, NULL, 16);
INSERT INTO public.planet VALUES (17, 'Varuna', NULL, NULL, NULL, 17);
INSERT INTO public.planet VALUES (18, 'Ixion', NULL, NULL, NULL, 18);
INSERT INTO public.planet VALUES (19, '2007 OR10', NULL, NULL, NULL, 19);
INSERT INTO public.planet VALUES (20, '2002 MS4', NULL, NULL, NULL, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', NULL, NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'Sirius', NULL, NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'Betelgeuse', NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'Rigel', NULL, NULL, NULL, 6);
INSERT INTO public.star VALUES (7, 'Antares', NULL, NULL, NULL, 7);
INSERT INTO public.star VALUES (8, 'Aldebaran', NULL, NULL, NULL, 8);
INSERT INTO public.star VALUES (9, 'Alpha Eridani', NULL, NULL, NULL, 9);
INSERT INTO public.star VALUES (10, 'Spica', NULL, NULL, NULL, 10);
INSERT INTO public.star VALUES (11, 'Arcturus', NULL, NULL, NULL, 11);
INSERT INTO public.star VALUES (12, 'Regulus', NULL, NULL, NULL, 12);
INSERT INTO public.star VALUES (13, 'Vega', NULL, NULL, NULL, 13);
INSERT INTO public.star VALUES (14, 'Fomalhaut', NULL, NULL, NULL, 14);
INSERT INTO public.star VALUES (15, 'Sirius B', NULL, NULL, NULL, 15);
INSERT INTO public.star VALUES (16, 'Canopus', NULL, NULL, NULL, 16);
INSERT INTO public.star VALUES (17, 'Betelgeuse A', NULL, NULL, NULL, 17);
INSERT INTO public.star VALUES (18, 'Achernar', NULL, NULL, NULL, 18);
INSERT INTO public.star VALUES (19, 'Mimosa', NULL, NULL, NULL, 19);
INSERT INTO public.star VALUES (20, 'Procyon', NULL, NULL, NULL, 20);


--
-- Name: asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 5, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid unique_asteroid_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteroid_name UNIQUE (name);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: asteroid asteroid_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: asteroid fk_asteroid_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT fk_asteroid_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id) ON DELETE CASCADE;


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id) ON DELETE CASCADE;


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

