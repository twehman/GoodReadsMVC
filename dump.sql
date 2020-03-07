--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 11.6

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
-- Name: books; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.books (
    book_id integer NOT NULL,
    author_id integer NOT NULL,
    author_name character varying(255) NOT NULL,
    isbn bigint DEFAULT '9999999999999'::bigint NOT NULL,
    title text NOT NULL,
    book_link character varying(255) NOT NULL,
    number_of_ages integer NOT NULL,
    average_rating double precision NOT NULL,
    number_of_ratings integer DEFAULT 0 NOT NULL,
    description text NOT NULL
);


--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;


--
-- Name: books book_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.books (book_id, author_id, author_name, isbn, title, book_link, number_of_ages, average_rating, number_of_ratings, description) FROM stdin;
730	9013543	ruth ware	1501132938	The Woman in Cabin 10	https://www.goodreads.com/book/show/28187230-the-woman-in-cabin-10	341	3.70000000000000018	313198	Lo Blacklock, a journalist who writes for a travel magazine, has just been given the assignment of a lifetime: a week on a luxury cruise with only a handful of cabins. The sky is clear, the waters calm, and the veneered, select guests jovial as the exclusive cruise ship, the Aurora, begins her voyage in the picturesque North Sea. At first, Lo's stay is nothing but pleasant: the cabins are plush, the dinner parties are sparkling, and the guests are elegant. But as the week wears on, frigid winds whip the deck, gray skies fall, and Lo witnesses what she can only describe as a dark and terrifying nightmare: a woman being thrown overboard. The problem? All passengers remain accounted for and so, the ship sails on as if nothing has happened, despite Lo's desperate attempts to convey that something (or someone) has gone terribly, terribly wrong.
731	9013543	ruth ware	1501112333	In a Dark, Dark Wood	https://www.goodreads.com/book/show/27834600-in-a-dark-dark-wood	308	3.68999999999999995	190813	<
732	9013543	ruth ware	1501156217	The Death of Mrs. Westaway	https://www.goodreads.com/book/show/36373481-the-death-of-mrs-westaway	368	3.81000000000000005	85665	On a day that begins like any other, Hal receives a mysterious letter bequeathing her a substantial inheritance. She realizes very quickly that the letter was sent to the wrong person—but also that the cold-reading skills she’s honed as a tarot card reader might help her claim the money.
733	9013543	ruth ware	1501156004	The Lying Game	https://www.goodreads.com/book/show/32895291-the-lying-game	370	3.52000000000000002	85665	From the instant 
734	9013543	ruth ware	1501188771	The Turn of the Key	https://www.goodreads.com/book/show/42080142-the-turn-of-the-key	337	3.95999999999999996	72979	When she stumbles across the ad, she’s looking for something else completely. But it seems like too good an opportunity to miss—a live-in nannying post, with a staggeringly generous salary. And when Rowan Caine arrives at Heatherbrae House, she is smitten—by the luxurious “smart” home fitted out with all modern conveniences, by the beautiful Scottish Highlands, and by this picture-perfect family.
735	9013543	ruth ware	0	The Tale of Mrs Westaway	https://www.goodreads.com/book/show/44244735-the-tale-of-mrs-westaway	27	4.07000000000000028	367	Invalid
736	9013543	ruth ware	0	Huis te koop	https://www.goodreads.com/book/show/37640637-huis-te-koop	17	3.25	168	Invalid
737	9013543	ruth ware	0	Free Ebook Sampler The Death of Mrs Westaway	https://www.goodreads.com/book/show/40242199-free-ebook-sampler-the-death-of-mrs-westaway	0	3.79999999999999982	44	<
738	9013543	ruth ware	0	Merry Christmas, Steve	https://www.goodreads.com/book/show/49209376-merry-christmas-steve	0	3.62000000000000011	13	Invalid
739	9013543	ruth ware	0	Untitled	https://www.goodreads.com/book/show/43541203-untitled	0	3.83000000000000007	12	Invalid
740	9013543	ruth ware	0	I Know What You Wore November 15th	https://www.goodreads.com/book/show/40939609-i-know-what-you-wore-november-15th	0	5	2	Invalid
741	9013543	ruth ware	0	One by One	https://www.goodreads.com/book/show/50892433-one-by-one	352	5	2	<
742	9013543	ruth ware	0	Gangster	https://www.goodreads.com/book/show/40971304-gangster	0	0	0	"I will give you the money for free if you will be my wife." What? What kind of option is that. However I do need the money besides what harm will come from marrying a gangster—total disaster!
743	9013543	ruth ware	0	Turn of the key ; A beach wish ; Layover ; A deadly turn (Reader's Digest Select Editions, vol. 370)	https://www.goodreads.com/book/show/51798550-turn-of-the-key-a-beach-wish-layover-a-deadly-turn	575	0	0	THE TURN OF THE KEY: A remote mansion in the Scottish Highlands. A creepy overgrown garden. Locked doors. Strange noises. What could go wrong fir the new nanny at Heatherbrae House?
744	9013543	ruth ware	0	Kvinden i kahyt nr. 10	https://www.goodreads.com/book/show/51017095-kvinden-i-kahyt-nr-10	0	0	0	Lo Blacklock er journalist på et rejsemagasin i London. Da hun bliver inviteret med på et luksuriøst krydstogt, kommer det som en gave. Ikke alene kan opgaven betyde et karrierehop. Hun trænger også i den grad til forkælelse, glamour og champagne oven på et groft hjemmerøveri.
745	9013543	ruth ware	0	Living with the Devil: a Novel	https://www.goodreads.com/book/show/41015527-living-with-the-devil	0	0	0	Invalid
746	9013543	ruth ware	0	A Wolf's Mate	https://www.goodreads.com/book/show/40939836-a-wolf-s-mate	0	0	0	Invalid
747	9013543	ruth ware	0	Smrt gospođe Westaway	https://www.goodreads.com/book/show/51867919-smrt-gospo-e-westaway	380	0	0	Smrt gospođe Westaway novi je hit autorice romana Žena u kabini 10.
\.


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1021, true);


--
-- Name: books authtitles; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT authtitles UNIQUE (author_id, title);


--
-- Name: books pk_books_book_id; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT pk_books_book_id PRIMARY KEY (book_id);


--
-- PostgreSQL database dump complete
--

