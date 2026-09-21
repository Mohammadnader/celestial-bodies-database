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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 142);
INSERT INTO public.games VALUES (2, 4, 859);
INSERT INTO public.games VALUES (3, 5, 374);
INSERT INTO public.games VALUES (4, 5, 557);
INSERT INTO public.games VALUES (5, 4, 264);
INSERT INTO public.games VALUES (6, 4, 423);
INSERT INTO public.games VALUES (7, 4, 926);
INSERT INTO public.games VALUES (8, 6, 61);
INSERT INTO public.games VALUES (9, 6, 183);
INSERT INTO public.games VALUES (10, 7, 329);
INSERT INTO public.games VALUES (11, 7, 740);
INSERT INTO public.games VALUES (12, 6, 520);
INSERT INTO public.games VALUES (13, 6, 63);
INSERT INTO public.games VALUES (14, 6, 367);
INSERT INTO public.games VALUES (15, 8, 96);
INSERT INTO public.games VALUES (16, 8, 359);
INSERT INTO public.games VALUES (17, 9, 492);
INSERT INTO public.games VALUES (18, 9, 743);
INSERT INTO public.games VALUES (19, 8, 874);
INSERT INTO public.games VALUES (20, 8, 166);
INSERT INTO public.games VALUES (21, 8, 884);
INSERT INTO public.games VALUES (22, 10, 336);
INSERT INTO public.games VALUES (23, 10, 136);
INSERT INTO public.games VALUES (24, 11, 720);
INSERT INTO public.games VALUES (25, 11, 796);
INSERT INTO public.games VALUES (26, 10, 181);
INSERT INTO public.games VALUES (27, 10, 976);
INSERT INTO public.games VALUES (28, 10, 260);
INSERT INTO public.games VALUES (29, 12, 155);
INSERT INTO public.games VALUES (30, 12, 602);
INSERT INTO public.games VALUES (31, 13, 64);
INSERT INTO public.games VALUES (32, 13, 760);
INSERT INTO public.games VALUES (33, 12, 409);
INSERT INTO public.games VALUES (34, 12, 492);
INSERT INTO public.games VALUES (35, 12, 330);
INSERT INTO public.games VALUES (36, 14, 379);
INSERT INTO public.games VALUES (37, 14, 686);
INSERT INTO public.games VALUES (38, 15, 88);
INSERT INTO public.games VALUES (39, 15, 645);
INSERT INTO public.games VALUES (40, 14, 121);
INSERT INTO public.games VALUES (41, 14, 505);
INSERT INTO public.games VALUES (42, 14, 391);
INSERT INTO public.games VALUES (43, 16, 355);
INSERT INTO public.games VALUES (44, 16, 256);
INSERT INTO public.games VALUES (45, 17, 956);
INSERT INTO public.games VALUES (46, 17, 238);
INSERT INTO public.games VALUES (47, 16, 453);
INSERT INTO public.games VALUES (48, 16, 864);
INSERT INTO public.games VALUES (49, 16, 668);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Mohammad');
INSERT INTO public.users VALUES (2, 'm');
INSERT INTO public.users VALUES (3, 'mmm');
INSERT INTO public.users VALUES (4, 'user_1789995363063');
INSERT INTO public.users VALUES (5, 'user_1789995363062');
INSERT INTO public.users VALUES (6, 'user_1789995372179');
INSERT INTO public.users VALUES (7, 'user_1789995372178');
INSERT INTO public.users VALUES (8, 'user_1789995759186');
INSERT INTO public.users VALUES (9, 'user_1789995759185');
INSERT INTO public.users VALUES (10, 'user_1789995815165');
INSERT INTO public.users VALUES (11, 'user_1789995815164');
INSERT INTO public.users VALUES (12, 'user_1789996061644');
INSERT INTO public.users VALUES (13, 'user_1789996061643');
INSERT INTO public.users VALUES (14, 'user_1789996073553');
INSERT INTO public.users VALUES (15, 'user_1789996073552');
INSERT INTO public.users VALUES (16, 'user_1789996115263');
INSERT INTO public.users VALUES (17, 'user_1789996115262');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

