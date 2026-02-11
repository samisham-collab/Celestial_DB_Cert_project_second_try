--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: extra_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra_table (
    extra_table_id integer NOT NULL,
    name character varying(30),
    id_1 integer NOT NULL,
    id_2 integer NOT NULL
);


ALTER TABLE public.extra_table OWNER TO freecodecamp;

--
-- Name: extra_table_extra_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_table_extra_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_table_extra_table_id_seq OWNER TO freecodecamp;

--
-- Name: extra_table_extra_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_table_extra_table_id_seq OWNED BY public.extra_table.extra_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description character varying(100),
    distance_in_lightyears numeric,
    number_of_celestial_bodies integer,
    galaxy_name character varying(30) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    is_habitable boolean,
    planet_name character varying(30) NOT NULL,
    weight_in_earth_mass integer,
    name character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description character varying(100),
    is_habitable boolean,
    star_name character varying(30) NOT NULL,
    planet_name character varying(30),
    name character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description character varying(100),
    type_of_star character varying(30),
    star_name character varying(30),
    galaxy_name character varying(30) NOT NULL,
    name character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: extra_table extra_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table ALTER COLUMN extra_table_id SET DEFAULT nextval('public.extra_table_extra_table_id_seq'::regclass);


--
-- Data for Name: extra_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra_table VALUES (1, 'sam', 132, 341);
INSERT INTO public.extra_table VALUES (2, 'james', 124, 3412);
INSERT INTO public.extra_table VALUES (3, 'Danielle', 145, 922);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Our Home Galaxy', 0.1, 1000, 'Miky Way', NULL);
INSERT INTO public.galaxy VALUES (2, 'Nearest major spiral neighbor to Milky Way', 2500000, 9500, 'Andromeda Galaxy', NULL);
INSERT INTO public.galaxy VALUES (3, 'Face-on spiral in Local Group, third largest', 2800000, 4200, 'Triangulum Galaxy', NULL);
INSERT INTO public.galaxy VALUES (4, 'Classic interacting grand-design spiral', 23000000, 7800, 'Whirlpool Galaxy', NULL);
INSERT INTO public.galaxy VALUES (5, 'Large face-on spiral with bright star-forming arms', 21600000, 6200, 'Pinwheel Galaxy', NULL);
INSERT INTO public.galaxy VALUES (6, 'Edge-on spiral with prominent dust ring and bulge', 31000000, 8900, 'Sombrero Galaxy', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'A deep titan gas moon', false, 'Luminara', 1, 'Theodore');
INSERT INTO public.moon VALUES (2, 'Frozen silicate world with shimmering subsurface oceans', false, 'Luminara', 0, 'Calypsa');
INSERT INTO public.moon VALUES (3, 'Cratered rocky companion shrouded in thin methane haze', false, 'Zelthara Prime', 0, 'Erebos');
INSERT INTO public.moon VALUES (4, 'Bioluminescent ice moon glowing under crystal canopy', true, 'Sylvandar', 0, 'Nyxara');
INSERT INTO public.moon VALUES (5, 'Jagged irregular moon with chaotic tumbling rotation', false, 'Elyndor', 0, 'Hyperion Prime');
INSERT INTO public.moon VALUES (6, 'Geothermal hotspot moon venting steam plumes into vacuum', false, 'Thaloryn', 0, 'Selene Minor');
INSERT INTO public.moon VALUES (7, 'Barren dust-covered rock with ancient impact scars', false, 'Korvindor', 0, 'Drakon');
INSERT INTO public.moon VALUES (8, 'Ringed mini-moon orbiting within planetary rings', false, 'Nexara Veil', 0, 'Astra Veil');
INSERT INTO public.moon VALUES (9, 'Storm-lashed volcanic moon with constant lightning arcs', false, 'Vortexia', 0, 'Tartarus');
INSERT INTO public.moon VALUES (10, 'Floating fragment moon held by magnetic fields', false, 'Aetherion', 0, 'Liora');
INSERT INTO public.moon VALUES (11, 'Black glassy surface reflecting molten rivers below', false, 'Obsidra', 0, 'Obsidian Shard');
INSERT INTO public.moon VALUES (12, 'Aurora-lit icy body with potential cryovolcanoes', true, 'Luminara', 0, 'Auriel');
INSERT INTO public.moon VALUES (13, 'Vine-entwined rocky moon orbiting low and fast', false, 'Sylvandar', 0, 'Vespera');
INSERT INTO public.moon VALUES (14, 'Ancient scarred moon with slow tidal locking', false, 'Drakmoor', 0, 'Chronos');
INSERT INTO public.moon VALUES (15, 'Dawn-lit ocean moon with glowing plankton blooms', true, 'Elyndor', 0, 'Eos Dawn');
INSERT INTO public.moon VALUES (16, 'Dense metallic core moon floating in gas clouds', false, 'Aetherion', 0, 'Moros');
INSERT INTO public.moon VALUES (17, 'Retrograde orbit moon echoing distant radio signals', false, 'Zelthara Prime', 0, 'Phoebe Echo');
INSERT INTO public.moon VALUES (18, 'Dark shadowed crater world hiding subsurface pockets', false, 'Thaloryn', 0, 'Rhea Shadow');
INSERT INTO public.moon VALUES (19, 'Molten lava lake moon with eternal eruptions', false, 'Obsidra', 0, 'Theia Remnant');
INSERT INTO public.moon VALUES (20, 'Echoing watery world with faint atmospheric whispers', true, 'Luminara', 0, 'Gaia Echo');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'this planet fosters trees as big as mountains', true, 'A-8472X', 'Aucideria', NULL);
INSERT INTO public.planet VALUES (2, 'Lush world with endless glowing forests and floating crystal lakes', true, 'A-8472X', 'Zelthara Prime', NULL);
INSERT INTO public.planet VALUES (3, 'Desert planet dotted with ancient underground oceans and hardy alien flora', false, 'T-3190K', 'Korvindor', NULL);
INSERT INTO public.planet VALUES (4, 'Storm-ravaged gas giant moon with violent auroras and hidden subsurface life', false, 'W-5621P', 'Vortexia', NULL);
INSERT INTO public.planet VALUES (5, 'Verdant paradise covered in bioluminescent oceans and towering vine cities', true, 'P-2789M', 'Elyndor', NULL);
INSERT INTO public.planet VALUES (6, 'Misty ringed world where eternal twilight nurtures exotic mineral gardens', true, 'S-9413G', 'Nexara Veil', NULL);
INSERT INTO public.planet VALUES (7, 'Ice-covered realm with glowing geothermal vents piercing the frozen crust', true, 'A-8472X', 'Thaloryn', NULL);
INSERT INTO public.planet VALUES (8, 'Barren rocky world scarred by ancient volcanic cataclysms and dust storms', false, 'T-3190K', 'Drakmoor', NULL);
INSERT INTO public.planet VALUES (9, 'Floating archipelago planet suspended in dense atmosphere with endless lightning', false, 'W-5621P', 'Aetherion', NULL);
INSERT INTO public.planet VALUES (10, 'Emerald jungle moon where massive crystal trees sing in the wind', true, 'P-2789M', 'Sylvandar', NULL);
INSERT INTO public.planet VALUES (11, 'Dark volcanic world with rivers of molten obsidian and hidden cave ecosystems', false, 'S-9413G', 'Obsidra', NULL);
INSERT INTO public.planet VALUES (12, 'Ocean planet of perpetual auroral storms and deep bioluminescent abyssal cities', true, 'A-8472X', 'Luminara', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A near celestial neighbor!!', 'g-type', 'g-12412', 'Andromeda Galaxy', NULL);
INSERT INTO public.star VALUES (2, 'Bright beacon in our nearest big neighbor!!', 'B-type', 'A-8472X', 'Andromeda Galaxy', NULL);
INSERT INTO public.star VALUES (3, 'Steady glow from the Local Groups quiet spiral!!', 'K-type', 'T-3190K', 'Triangulum Galaxy', NULL);
INSERT INTO public.star VALUES (4, 'Swirling hot young star in the cosmic dance!!', 'O-type', 'W-5621P', 'Whirlpool Galaxy', NULL);
INSERT INTO public.star VALUES (5, 'Sparkling in the grand pinwheel arms!!', 'F-type', 'P-2789M', 'Pinwheel Galaxy', NULL);
INSERT INTO public.star VALUES (6, 'Elegant sun-like star under the cosmic hat!!', 'G-type', 'S-9413G', 'Sombrero Galaxy', NULL);


--
-- Name: extra_table_extra_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_table_extra_table_id_seq', 3, true);


--
-- Name: extra_table extra_table_id_1_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT extra_table_id_1_key UNIQUE (id_1);


--
-- Name: extra_table extra_table_id_2_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT extra_table_id_2_key UNIQUE (id_2);


--
-- Name: extra_table extra_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra_table
    ADD CONSTRAINT extra_table_pkey PRIMARY KEY (extra_table_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (galaxy_name);


--
-- Name: galaxy galaxy_galaxy_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key1 UNIQUE (galaxy_name);


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
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (planet_name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (star_name);


--
-- Name: star galaxy_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_name FOREIGN KEY (galaxy_name) REFERENCES public.galaxy(galaxy_name);


--
-- Name: moon planet_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_name FOREIGN KEY (planet_name) REFERENCES public.planet(planet_name);


--
-- Name: planet star_name; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_name FOREIGN KEY (star_name) REFERENCES public.star(star_name);


--
-- PostgreSQL database dump complete
--

