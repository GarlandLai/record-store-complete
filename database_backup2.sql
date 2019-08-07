--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

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

SET default_with_oids = false;

--
-- Name: album_artists; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.album_artists (
    id bigint NOT NULL,
    artist_id bigint,
    album_id bigint,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.album_artists OWNER TO "GLai";

--
-- Name: album_artists_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.album_artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.album_artists_id_seq OWNER TO "GLai";

--
-- Name: album_artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.album_artists_id_seq OWNED BY public.album_artists.id;


--
-- Name: albums; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.albums (
    id bigint NOT NULL,
    name character varying,
    year integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    genre character varying
);


ALTER TABLE public.albums OWNER TO "GLai";

--
-- Name: albums_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.albums_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.albums_id_seq OWNER TO "GLai";

--
-- Name: albums_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.albums_id_seq OWNED BY public.albums.id;


--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO "GLai";

--
-- Name: artists; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.artists (
    id bigint NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.artists OWNER TO "GLai";

--
-- Name: artists_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.artists_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.artists_id_seq OWNER TO "GLai";

--
-- Name: artists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.artists_id_seq OWNED BY public.artists.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO "GLai";

--
-- Name: songs; Type: TABLE; Schema: public; Owner: GLai
--

CREATE TABLE public.songs (
    id bigint NOT NULL,
    name character varying,
    lyrics character varying,
    album_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.songs OWNER TO "GLai";

--
-- Name: songs_id_seq; Type: SEQUENCE; Schema: public; Owner: GLai
--

CREATE SEQUENCE public.songs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.songs_id_seq OWNER TO "GLai";

--
-- Name: songs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: GLai
--

ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;


--
-- Name: album_artists id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.album_artists ALTER COLUMN id SET DEFAULT nextval('public.album_artists_id_seq'::regclass);


--
-- Name: albums id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.albums ALTER COLUMN id SET DEFAULT nextval('public.albums_id_seq'::regclass);


--
-- Name: artists id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.artists ALTER COLUMN id SET DEFAULT nextval('public.artists_id_seq'::regclass);


--
-- Name: songs id; Type: DEFAULT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);


--
-- Data for Name: album_artists; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.album_artists (id, artist_id, album_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: albums; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.albums (id, name, year, created_at, updated_at, genre) FROM stdin;
4		\N	2019-08-05 17:02:30.36077	2019-08-05 17:02:30.36077	
\.


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2019-08-05 16:18:46.999411	2019-08-05 16:18:46.999411
\.


--
-- Data for Name: artists; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.artists (id, name, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.schema_migrations (version) FROM stdin;
20190805152421
20190805152716
20190805153051
20190805153338
20190807032000
\.


--
-- Data for Name: songs; Type: TABLE DATA; Schema: public; Owner: GLai
--

COPY public.songs (id, name, lyrics, album_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: album_artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.album_artists_id_seq', 1, false);


--
-- Name: albums_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.albums_id_seq', 17, true);


--
-- Name: artists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.artists_id_seq', 1, false);


--
-- Name: songs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: GLai
--

SELECT pg_catalog.setval('public.songs_id_seq', 12, true);


--
-- Name: album_artists album_artists_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.album_artists
    ADD CONSTRAINT album_artists_pkey PRIMARY KEY (id);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (id);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: songs songs_pkey; Type: CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);


--
-- Name: index_album_artists_on_album_id; Type: INDEX; Schema: public; Owner: GLai
--

CREATE INDEX index_album_artists_on_album_id ON public.album_artists USING btree (album_id);


--
-- Name: index_album_artists_on_artist_id; Type: INDEX; Schema: public; Owner: GLai
--

CREATE INDEX index_album_artists_on_artist_id ON public.album_artists USING btree (artist_id);


--
-- Name: songs fk_rails_f4e40cd655; Type: FK CONSTRAINT; Schema: public; Owner: GLai
--

ALTER TABLE ONLY public.songs
    ADD CONSTRAINT fk_rails_f4e40cd655 FOREIGN KEY (album_id) REFERENCES public.albums(id);


--
-- PostgreSQL database dump complete
--

