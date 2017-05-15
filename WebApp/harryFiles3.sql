--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: books; Type: TABLE; Schema: public; Owner: annameyer
--

CREATE TABLE books (
    id integer NOT NULL,
    name text
);


ALTER TABLE books OWNER TO annameyer;

--
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: annameyer
--

CREATE SEQUENCE books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE books_id_seq OWNER TO annameyer;

--
-- Name: books_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annameyer
--

ALTER SEQUENCE books_id_seq OWNED BY books.id;


--
-- Name: characters; Type: TABLE; Schema: public; Owner: annameyer
--

CREATE TABLE characters (
    id integer NOT NULL,
    first_name text,
    last_name text
);


ALTER TABLE characters OWNER TO annameyer;

--
-- Name: characters_id_seq; Type: SEQUENCE; Schema: public; Owner: annameyer
--

CREATE SEQUENCE characters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE characters_id_seq OWNER TO annameyer;

--
-- Name: characters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annameyer
--

ALTER SEQUENCE characters_id_seq OWNED BY characters.id;


--
-- Name: instances; Type: TABLE; Schema: public; Owner: annameyer
--

CREATE TABLE instances (
    id integer NOT NULL,
    book_id integer,
    spell_id integer,
    character_id integer,
    excerpt text
);


ALTER TABLE instances OWNER TO annameyer;

--
-- Name: instances_id_seq; Type: SEQUENCE; Schema: public; Owner: annameyer
--

CREATE SEQUENCE instances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE instances_id_seq OWNER TO annameyer;

--
-- Name: instances_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annameyer
--

ALTER SEQUENCE instances_id_seq OWNED BY instances.id;


--
-- Name: spells; Type: TABLE; Schema: public; Owner: annameyer
--

CREATE TABLE spells (
    id integer NOT NULL,
    incantantation text,
    type_id integer,
    purpose text
);


ALTER TABLE spells OWNER TO annameyer;

--
-- Name: spells_id_seq; Type: SEQUENCE; Schema: public; Owner: annameyer
--

CREATE SEQUENCE spells_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE spells_id_seq OWNER TO annameyer;

--
-- Name: spells_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annameyer
--

ALTER SEQUENCE spells_id_seq OWNED BY spells.id;


--
-- Name: types_of_spells; Type: TABLE; Schema: public; Owner: annameyer
--

CREATE TABLE types_of_spells (
    id integer NOT NULL,
    type text
);


ALTER TABLE types_of_spells OWNER TO annameyer;

--
-- Name: types_of_spells_id_seq; Type: SEQUENCE; Schema: public; Owner: annameyer
--

CREATE SEQUENCE types_of_spells_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE types_of_spells_id_seq OWNER TO annameyer;

--
-- Name: types_of_spells_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: annameyer
--

ALTER SEQUENCE types_of_spells_id_seq OWNED BY types_of_spells.id;


--
-- Name: books id; Type: DEFAULT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY books ALTER COLUMN id SET DEFAULT nextval('books_id_seq'::regclass);


--
-- Name: characters id; Type: DEFAULT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY characters ALTER COLUMN id SET DEFAULT nextval('characters_id_seq'::regclass);


--
-- Name: instances id; Type: DEFAULT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY instances ALTER COLUMN id SET DEFAULT nextval('instances_id_seq'::regclass);


--
-- Name: spells id; Type: DEFAULT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY spells ALTER COLUMN id SET DEFAULT nextval('spells_id_seq'::regclass);


--
-- Name: types_of_spells id; Type: DEFAULT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY types_of_spells ALTER COLUMN id SET DEFAULT nextval('types_of_spells_id_seq'::regclass);


--
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: annameyer
--

COPY books (id, name) FROM stdin;
2	Harry Potter and the Chamber of Secrets
3	Harry Potter and the Prisoner of Azkaban
4	Harry Potter and the Goblet of Fire
5	Harry Potter and the Order of the Phoenix
6	Harry Potter and the Half-Blood Prince
7	Harry Potter and the Deathly Hallows
1	Harry Potter and the Sorcerers Stone
\.


--
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annameyer
--

SELECT pg_catalog.setval('books_id_seq', 1, false);


--
-- Data for Name: characters; Type: TABLE DATA; Schema: public; Owner: annameyer
--

COPY characters (id, first_name, last_name) FROM stdin;
1	Harry 	Potter
2	Hermione	Granger
3	Ron 	Weasley
4	Sirius	Black
5	Bellatrix	Lestrange
6	Filius	Flitwick
7	Fred	Weasley
8	Lord	Voldemort
9	Rubeus	Hagrid
10	Horace	Slughorn
11	Mad-Eye	Moody
12	Viktor	Krum
13	Amycus	Carrow
14	Amos 	Diggory
15	Cedric 	Diggory
16	Draco	Malfoy
17	Neville	Longbottom
18	Vincent	Crabbe
19	Nymphadora	Tonks
20	Remus	Lupin
21	James	Potter
22	Aberforth	Dumbledore
23	Severus	Snape
24	Madam	Hooch
25	Dolores	Umbridge
26	Arthur	Weasley
27	Ginny	Weasley
28	Albus	Dumbledore
29	Barty Jr.	Crouch
30	Gilderoy	Lockhart
31	Mr. 	Ollivander
32	Minerva	McGonagall
33	Ludo	Bagman
34	Dean	Thomas
35	Seamus	Finnegan
36	Parvati	Patil
37	Ernie	Macmillan
38	Antonin	Dolohov
39	Molly	Weasley
\.


--
-- Name: characters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annameyer
--

SELECT pg_catalog.setval('characters_id_seq', 1, false);


--
-- Data for Name: instances; Type: TABLE DATA; Schema: public; Owner: annameyer
--

COPY instances (id, book_id, spell_id, character_id, excerpt) FROM stdin;
1	4	1	1	, entirely and absolutely, upon the thing that was his only chance, as he raised his wand, accio firebolt! he shouted, Harry waited, every fiber of him hoping, praying,  if it
2	4	1	1	! mine! snape had reached out for it, a horrible expression of dawning comprehension on his face "accio parchment"! the map flew up into the air, slipped through snape's out-stretched fingers, and soared down
3	4	1	39	? nothing! don't you lie to me! mrs. weasley pointed her wand at george's pocket and said, accio! several small, brightly colored objects zoomed out of george's pocket; he made a grab for them
4	4	1	39	and it was only by using her summoning charm that mrs. weasley managed to find them all, accio! accio! accio! she shouted, and toffees zoomed from all sorts of unlikely places, including the lining
5	4	1	1	flamed in the darkness, Harry saw his mouth curl into a smile, saw him raise his wand, accio! Harry yelled, pointing his wand at the triwizard cup, it flew into the air and soared
6	4	1	1	he could try again, threaten me with a dragon, right he raised his wand once more, accio dictionary! the heavy book soared out of hermione's hand, flew across the room, and Harry caught
7	4	1	39	possible, and it was only by using her summoning charm that mrs. weasley managed to find them all, accio! accio! accio! she shouted, and toffees zoomed from all sorts of unlikely places, including
8	4	1	39	was only by using her summoning charm that mrs. weasley managed to find them all, accio! accio! accio! she shouted, and toffees zoomed from all sorts of unlikely places, including the lining of george's
9	5	1	7	, said george, and before umbridge could say a word, they raised their wands and said together, accio brooms! Harry heard a loud crash somewhere in the distance, looking to his left he ducked just
10	5	1	4	, said sirius encouragingly, come on, let's all let's all have a drink while we're waiting, accio butterbeer! he raised his wand as he spoke and half a dozen bottles came flying toward them out
11	5	1	5	anger now, you've got it, potter, and you will give it to me  accio prophecy! accio prophecy! Harry laughed again because he knew it would incense her, the pain building in his head
12	5	1	3	but ron had already pointed his wand at the tank, honest, Harry, they're brains  look  accio brain! the scene seemed momentarily frozen, Harry, ginny, and neville and each of the death
13	5	1	1	Harry pointed his wand at the bullfrog that had been hopping hopefully toward the other side of the table  accio!  and it zoomed gloomily back into his hand, charms was always one of the best lessons
14	5	1	\N	home, will you? the words were hardly out of his mouth when the female death eater shrieked, accio proph  Harry was just ready for her, he shouted protego! before she had finished her spell
15	5	1	4	legs, but the shield charm had stopped the worst of the spell, dolohov raised his wand again, accio proph  sirius hurtled out of nowhere, rammed dolohov with his shoulder, and sent him flying out
16	5	1	2	sprawled on his back on the table, with his head lying inside the jar full of glittering wind, accio wand! cried hermione, Harry's wand flew from a dark cor-ner into her hand and she threw it
17	5	1	6	squeaked professor flitwick, that means you too, stebbins! please remain seated while i collect your parch-ment! accio! more than a hundred rolls of parchment zoomed into the air and into professor flitwick's outstretched arms,
18	5	1	5	terror behind the anger now, you've got it, potter, and you will give it to me  accio prophecy! accio prophecy! Harry laughed again because he knew it would incense her, the pain building
19	6	1	1	 okay Harry had not expected this, but cleared his throat and said loudly, wand aloft, accio horcrux! with a noise like an explosion, something very large and pale erupted out of the dark
20	6	1	1	i run and fetch ? no, Harry can do it, Harry raised his wand at once, accio rosmerta's brooms! a second later they heard a loud bang as the front door of the pub burst
21	6	1	1	so he tried to summon his wand, which had fallen out of his hand, by saying the words accio wand! over and over again in his head, but nothing happened, he thought he could hear
22	7	1	1	, pinned to the floor, yes, whispered the voice, yesss hold you hold you accio accio wand but nothing happened and he needed his hands to try to force the snake from
23	7	1	2	hesitated, looking up and down aisles of junk; he could not remember where to go next, accio diadem! cried hermione in desperation, but nothing flew through the air toward them, it seemed that
24	7	1	1	his camp bed, pointed it at the cluttered desk where he had left his glasses, and said, accio glasses! although they were only around a foot away, there was something immensely satisfying about seeing them
25	7	1	1	in his pocket, then he turned to face the room again, raised his wand, and murmured, accio locket, nothing happened, but he had not expected it to; no doubt umbridge knew all about
26	7	1	\N	one of the death eaters waved his wand and the scream stopped, still echoing around the distant mountains, accio cloak! roared one of the death eaters, Harry seized its folds, but it made no attempt
27	7	1	1	quickly! he grabbed his wand from the ground and pointed it into the depths of the magical bag, accio dittany! a small brown bottle zoomed out of the bag; he caught it and hastened back to
28	7	1	1	reposing upon the bottom of the frozen pool, he pointed the wand at the silvery shape and murmured, accio sword, it did not stir, he had not expected it to, if it had been that
29	7	1	2	riddle, and how the hell are we going to get up there without touching anything? asked ron, accio cup! cried hermione, who had evidently forgotten in her desperation what griphook had told them during their
30	7	1	2	said hermione, as Harry wiped his inky fingers on his jeans, she raised her wand and said, accio locket! nothing happened, ron, who had been searching the folds of the faded curtains, looked
31	7	1	\N	there ought to be a few salmon in here, or d'you reckon it's too early in the season? accio salmon! there were several distinct splashes and then the slapping sounds of fish against flesh, somebody grunted
32	7	1	1	to the floor, yes, whispered the voice, yesss hold you hold you accio accio wand but nothing happened and he needed his hands to try to force the snake from him as
33	7	1	1	toward the ground, hagrid! Harry called, holding on to the bike for dear life, hagrid  accio hagrid! the motorbike sped up, sucked toward the earth, face level with the handlebars, Harry
100	7	14	8	. Harry potter is dead by my hand, and no man alive can threaten me now! watch! crucio! Harry had been expecting it, knew his body would not be allowed to remain unsullied upon the
34	7	1	2	was easy, said hermione in a small voice, i just did a summoning charm, you know  accio, and  they zoomed out of dumbledore's study window right into the girls' dormitory, but when did
35	6	2	1	 but it was empty, dumbledore groaned and began to pant, but i had some  wait  aguamenti! said Harry again, pointing his wand at the goblet, once more, for a second,
36	6	2	1	; he had rolled onto his side and was drawing great, rattling breaths that sounded agoniz-ing, aguamenti  aguamenti  aguamenti! the goblet filled and emptied once more, and now dumble-dore's breathing was fading, his
37	6	2	\N	at breakfast, we've got quidditch tryouts this morning! said ron, and we're supposed to be practicing that aguamenti charm from flitwick! anyway, explain what? how are we going to tell him we hated his
38	6	2	1	flew out of the umbrella tip, Harry raised his wand arm, which felt like lead, and murmured aguamenti too : to-gether, he and hagrid poured water on the house until the last flame was extinguished,
39	6	2	1	had rolled onto his side and was drawing great, rattling breaths that sounded agoniz-ing, aguamenti  aguamenti  aguamenti! the goblet filled and emptied once more, and now dumble-dore's breathing was fading, his brain whirling
40	6	2	1	hear him; he had rolled onto his side and was drawing great, rattling breaths that sounded agoniz-ing, aguamenti  aguamenti  aguamenti! the goblet filled and emptied once more, and now dumble-dore's breathing was fading
41	6	2	1	the goblet he had dropped in the basin; he barely registered the golden locket lying curled beneath it, aguamenti! he shouted, jabbing the goblet with his wand, the goblet filled with clear water; Harry
42	6	2	9	was summat like that, mumbled hagrid, and he raised a smoldering pink, flowery umbrella and said, aguamenti! a jet of water flew out of the umbrella tip, Harry raised his wand arm, which
43	7	2	2	his wand : it hit mundungus on the nose and shot red sparks into his eyebrows, which ignited, aguamenti! screamed hermione, and a jet of water streamed from her wand, engulfing a spluttering and choking
44	7	2	1	them, licking up the sides of the junk bulwarks, which were crumbling to soot at their touch, aguamenti! Harry bawled, but the jet of water that soared from the tip of his wand evaporated in
45	1	3	\N	. they tugged and heaved at the door, but it wouldn't budge, not even when hermione tried her alohomora charm, now what? said ron, these birds they can't be here just for decoration,
46	1	3	2	oh, move over, hermione snarled, she grabbed Harry's wand, tapped the lock, and whispered, alohomora! the lock clicked and the door swung open  they piled through it, shut it quickly,
47	3	3	2	, and she took out her wand, still gripping the back of Harry's robes with her left hand, alohomora! the window sprang open, how  how ? said black weakly, staring at the hippogriff
48	5	3	\N	, ron said quietly, the healer pointed her wand at the door of the janus thickey ward and muttered alohomora, the door swung open and she led the way inside, keeping a firm grasp on gilderoy's arm
49	5	3	\N	gave me a knife that'll open any lock, said Harry, so even if she's bewitched the door so alohomora won't work, which i bet she has  what do you think about this? hermione demanded of
50	5	3	\N	large and heavy collide with the door hermione had charmed shut, stand aside! said a rough voice, alohomora! as the door flew open, Harry, hermione, and neville dived under desks, they could
51	5	3	2	she pointed her wand at the place where a lock would have been on an ordinary door and said, alohomora! nothing happened, sirius's knife! said Harry, and he pulled it out from inside his robes
52	6	3	1	. but when he put out a hand to push open the gates, he found them chained shut, alohomora! he said confidently, pointing his wand at the pad-lock, but nothing happened, that won't work
53	7	3	2	. he pushed the door : it was locked, hermione pointed her wand at the handle and said, alohomora, there was a click, and the door swung open, they moved over the threshold together,
54	6	4	10	; in his haste to answer slughorn he swallowed too fast, turned purple, and began to choke, anapneo, said slughorn calmly, pointing his wand at belby, whose airway seemed to clear at once,
55	2	5	2	bag, it might be invisible ink! she whispered, she tapped the diary three times and said, aparecium! nothing happened, undaunted, hermione shoved her hand back into her bag and pulled out what appeared
56	4	6	11	. constant vigilance! he roared, and the whole class jumped again, now those three curses  avadakedavra, imperius, and cruciatus  are known as the unforgivable curses, the use of any one of
57	4	6	11	ah, said moody, another slight smile twisting his lopsided mouth, yes, the last and worst, avadakedavra the killing curse, he put his hand into the glass jar, and almost as though it
58	4	6	8	around the headstone, facing voldemort, voldemort was ready, as Harry shouted, expelliarmus! volde-mort cried, avadakedavra! a jet of green light issued from voldemort's wand just as a jet of red light blasted from
59	4	6	11	frantically across the wooden surface, moody raised his wand, and Harry felt a sudden thrill of foreboding, avadakedavra! moody roared, there was a flash of blinding green light and a rushing sound, as though
60	4	6	\N	him for this, he knew he was facing the thing against which moody had always warned the un-blockable avadakedavra curse and voldemort was right  his mother was not here to die for him this time,
61	4	6	8	kill the spare, a swishing noise and a second voice, which screeched the words to the night : avadakedavra! a blast of green light blazed through Harry's eyelids, and he heard something heavy fall to the
62	4	6	\N	the third time, she raised it into the air, yes? said moody, looking at her, avadakedavra, hermione whispered, several people looked uneasily around at her, including ron, ah, said moody
63	4	6	\N	were right, weren't they? he really knows his stuff, moody, doesn't he? when he did avadakedavra, the way that spider just died, just snuffed it right  but ron fell suddenly silent at
64	5	6	\N	he was powerful before? yes, like what kind of weapon? said Harry, something worse than the avadakedavra ? that's enough, mrs. weasley spoke from the shadows beside the door, Harry had not noticed
65	5	6	\N	is? said Harry, could be anything, said fred, but there can't be anything worse than the avadakedavra curse, can there? said ron, what's worse than death? maybe it's something that can kill
66	5	6	8	to you, potter, he said quietly, you have irked me too often, for too long, avadakedavra! Harry had not even opened his mouth to resist, his mind was blank, his wand pointing
67	6	6	\N	far as i am aware, they do not know to this day how the riddles died, for the avadakedavra curse does not usually leave any sign of damage, the exception sits before me, dumbledore added
68	6	6	23	lines of his face, severus please snape raised his wand and pointed it directly at dumbledore, avadakedavra! a jet of green light shot from the end of snape's wand and hit dumbledore squarely in the
69	6	6	\N	luna's mouth trembled,  more death eaters arrived  and then snape  and snape did it, the avadakedavra, Harry couldn't go on, madam pomfrey burst into tears, nobody paid her any atten-tion except ginny
70	7	6	18	aisle, shot a full body-bind curse at crabbe, which narrowly missed, crabbe wheeled around and screamed, avadakedavra! again, ron leapt out of sight to avoid the jet of green light, the wandless malfoy
71	7	6	18	at crabbe's head, it only missed because malfoy pulled him out of the way, it's that mudblood! avadakedavra! Harry saw hermione dive aside, and his fury that crabbe had aimed to kill wiped all else
72	7	6	23	hair, snape looked back at her, quite impassive, as she turned slowly away from him again, avadakedavra, the flash of green light illuminated every corner of the room, charity fell, with a resounding
73	7	6	8	heard the high voice shriek as he too yelled his best hope to the heavens, pointing draco's wand : avadakedavra! expelliarmus! the bang was like a cannon blast, and the golden flames that erupted between them
74	7	6	\N	himself, and if i stunned him and he'd fallen, he'd have died the same as if i'd used avadakedavra! expelliarmus saved me from voldemort two years ago, Harry added defiantly, lupin was reminding him of
75	7	6	8	hold him off, without a wand in his hand! he laughed before casting the curse, avadakedavra! the green light filled the cramped hallway, it lit the pram pushed against the wall, it
76	7	6	8	not like it crying, he had never been able to stomach the small ones whining in the orphanage  avadakedavra! and then he broke : he was nothing, nothing but pain and terror, and he must
77	4	8	2	, who nodded, rather thicker than one usually sees quite rigid ten and a quarter inches avis! the hornbeam wand let off a blast like a gun, and a number of small, twittering
78	7	9	3	. hermione, you're a genius, a total genius, i can't believe we got out of that! caveinimicum didn't i say it was an erumpent horn, didn't i tell him? and now his house
79	7	9	2	hands a tent peg soared, to land with a final thud at the end of a guy rope, caveinimicum, hermione finished with a skyward flourish, that's as much as i can do, at the very
80	5	10	1	crashed into a table and rolled over the top of it in his haste to reach the next door, colloportus! there were footsteps running along behind the doors; every now and then another heavy body would launch
81	5	10	2	in his hand, waited for the others to hurtle over the threshold before slamming the door behind them  colloportus! gasped hermione and the door sealed itself with an odd squelching noise, where  where are the
82	5	10	1	in with hermione, they were all over the threshold just in time to slam the door against bellatrix, colloportus! shouted Harry, and he heard three bodies slam into the door on the other side, it
83	7	11	1	, Harry spat blood out of his mouth, pointed his wand at the falling sidecar, and yelled, confringo! he knew a dreadful, gut-wrenching pang for hedwig as it exploded; the death eater nearest it
84	7	11	2	lunged as he took a running leap, dragging hermione with him; as it struck, hermione screamed, confringo! and her spell flew around the room, exploding the wardrobe mirror and ricocheting back at them,
85	3	12	\N	, and granger, minis-ter, no! black had bewitched them, i saw it immediately, a confundus charm, to judge by their behavior, they seemed to think there was a possibility he was innocent
86	4	12	\N	. because they hoodwinked a very powerful magical object! said moody, it would have needed an exceptionally strong confundus charm to bamboozle that goblet into forgetting that only three schools compete in the tournament, i'm guessing
87	7	12	\N	told me that there are plans to lay a false trail; this must be it, no doubt a confundus charm has been placed upon dawlish, it would not be the first time; he is known to
88	4	13	\N	put your name in that goblet shouldn't be feeling too happy right now! i was going to suggest a conjunctivitis curse, as a dragon's eyes are its weakest point  that's what krum did! hermione whispered 
89	4	14	8	, master, forgive me! forgive us all! voldemort began to laugh, he raised his wand, crucio! the death eater on the ground writhed and shrieked; Harry was sure the sound must carry to
90	4	14	12	? yelled cedric's voice, what the hell d'you think you're doing? and then Harry heard krum's voice, crucio! the air was suddenly full of cedric's yells, horrified, Harry be-gan sprinting up his path,
91	4	14	8	been my downfall, voldemort moved slowly forward and turned to face Harry, he raised his wand, crucio! it was pain beyond anything Harry had ever experienced; his very bones were on fire; his
92	4	14	11	moody's desk as possible, moody raised his wand again, pointed it at the spider, and mut-tered, crucio! at once, the spider's legs bent in upon its body; it rolled over and began to
93	4	14	8	the tip of a wand emerged from around the back of the chair, it was pointing at wormtail, crucio! said the cold voice, wormtail screamed, screamed as though every nerve in his body were on
94	5	14	8	clutching a wand rise on the end of his own arm heard the high, cold voice say, crucio! the man on the floor let out a scream of pain, attempted to stand but fell back
95	5	14	5	give you a lesson  Harry had been edging around the fountain on the other side, she screamed, crucio! and he was forced to duck down again as the cen-taur's arm, holding its bow, spun
96	5	14	5	his captor, her wand raised, don'd gib id do dem, Harry! bellatrix raised her wand, crucio! neville screamed, his legs drawn up to his chest so that the death eater holding him was
97	5	14	1	in Harry such as he had never known before, he flung himself out from behind the fountain and bellowed crucio! bellatrix screamed, the spell had knocked her off her feet, but she did not writhe and
98	6	14	13	hex after hex at her while she dodged them : amycus was giggling, enjoying the sport : crucio  crucio  you can't dance forever, pretty  impedimenta! yelled Harry, his jinx hit amycus in the
99	6	14	13	was throwing hex after hex at her while she dodged them : amycus was giggling, enjoying the sport : crucio  crucio  you can't dance forever, pretty  impedimenta! yelled Harry, his jinx hit amycus
101	7	14	1	his wand, and said, you shouldn't have done that, as amycus spun around, Harry shouted, crucio! the death eater was lifted off his feet, he writhed through the air like a drowning man
102	7	14	5	in his heart that it was useless, what else did you take, what else? answer me! crucio! hermione's screams echoed off the walls upstairs, ron was half sobbing as he pounded the walls with
103	7	14	18	the junk wall, what's going on? Harry? mimicked crabbe, what's going  no, potter! crucio! Harry had lunged for the tiara; crabbe's curse missed him but hit the stone bust, which
104	7	15	2	cling to its back, expecting to be shaken off at any moment; then he heard hermione yelling, defodio! she was helping the dragon enlarge the passageway, carving out the ceiling as it struggled upward toward
105	4	16	14	them; it looked as though it were made of thick gray smoke : the ghost of a spell, deletrius! mr. diggory shouted, and the smoky skull vanished in a wisp of smoke, so, said
106	4	17	16	each other's eyes, then, at ex-actly the same time, both acted, furnunculus! Harry yelled, densaugeo! screamed malfoy, jets of light shot from both wands, hit each other in midair, and
107	7	18	2	obliviate! cried hermione, pointing her wand first into his face, then at the floor beneath them, deprimo! she had blasted a hole in the sitting room floor, they fell like boulders, Harry still
108	4	19	1	idea, pausing at a distance from them, he pulled out his wand, and took careful aim, diffindo! cedric's bag split, parchment, quills, and books spilled out of it onto the floor,
109	5	19	1	. he tugged and tore at them as the brain was pulled tight against him like an octopus's body, diffindo! yelled Harry, trying to sever the feelers wrapping them-selves tightly around ron before his eyes, but
110	6	19	1	the old copy of advanced potion-making out of his bag and tapped the cover with his wand, muttering, diffindo! the cover fell off, he did the same thing with the brand-new book ( hermione looked scandalized
111	7	19	1	, and the old snitch on top of his clothes, then he pointed hermione's wand at the ice, diffindo, it cracked with a sound like a bullet in the silence : the surface of the pool broke
112	7	19	2	his jeans, leaving a deep cut, oh, i'm so sorry, ron, my hand's shaking! diffindo! the severed ropes fell away, ron got to his feet, shaking his arms to regain feeling
113	7	19	1	muttered Harry, tugging at the chains binding her arms, well, i've had a change of heart, diffindo! nothing happened, hermione, how do i get rid of these chains? wait, i'm trying
114	3	20	1	. the minuscule writing next to it read neville longbottom, Harry quickly pulled out his wand, muttered, dissendium! and shoved his bag into the statue, but before he could climb in himself, neville came
115	3	20	1	at the map, the tiniest speech bubble had appeared next to his figure, the word inside said, dissendium, dissendium! Harry whispered, tapping the stone witch again, at once, the statue's hump opened
116	3	20	1	map, the tiniest speech bubble had appeared next to his figure, the word inside said, dissendium, dissendium! Harry whispered, tapping the stone witch again, at once, the statue's hump opened wide enough
117	7	21	2	they shot through the concealing tapestry at the bottom and spun onto the floor, hitting the opposite wall, duro! cried hermione, pointing her wand at the tapestry, and there were two loud, sickening crunches
118	2	92	16	think getting your head cut open makes you that special, myself, crabbe and goyle were sniggering stupidly, eatslugs, malfoy, said ron angrily, crabbe stopped laughing and started rubbing his knuckles in a menacing way
119	4	22	11	a bit bigger for you to get the idea, he said, pointing his wand at the spider, engorgio! the spider swelled, it was now larger than a tarantula, aban-doning all pretense, ron pushed
120	7	22	1	the previous night, which hermione had since condescended to examine, and had decided was made of blackthorn, engorgio, the spider gave a little shiver, bouncing slightly in the web, Harry tried again, this
121	6	24	19	healing spells, but it seemed rude to say this, so he stayed stock-still and closed his eyes, episkey, said tonks, Harry's nose felt very hot, and then very cold, he raised a hand
122	6	24	1	that, said Harry, landing beside the two girls, pointing his wand at demelza's mouth, and saying episkey, and ginny, don't call ron a prat, you're not the captain of this team  well
123	7	25	2	hermione, now performing complicated figure-of-eight movements with her wand, so ron's dad said i could borrow it, erecto! she added, pointing her wand at the misshapen canvas, which in one fluid motion rose into
124	3	26	1	 he had seen himself  Harry flung himself out from behind the bush and pulled out his wand, expectopatronum! he yelled, and out of the end of his wand burst, not a shapeless cloud of
125	3	26	\N	. he forced himself to think of black, and only black, and began to chant : expectopatronum! expectopatronum! black gave a shudder, rolled over, and lay motionless on the ground, pale as death
126	3	26	1	a deep, rattling breath, a wave of piercing cold broke over him  expectopatronum! Harry yelled, expectopatronum! ex-pecto  but the classroom and the dementor were dissolving, Harry was falling again through thick
127	3	26	1	and were getting closer, expectopatronum! Harry yelled, trying to blot the screaming from his ears, expectopatronum! a thin wisp of silver escaped his wand and hovered like mist be-fore him, at the same
128	3	26	1	as though to sweep the patronus aside, no  no  Harry gasped, he's innocent expecto  expectopatronum  he could feel them watching him, hear their rattling breath like an evil wind around him,
129	3	26	1	be all right, i'm going to go and live with him, expectopatronum! hermione, help me! expectopatronum! expecto  hermione whispered, expecto  expecto  but she couldn't do it, the dementors were
130	3	26	1	feet from them, they formed a solid wall around Harry and hermione, and were getting closer, expectopatronum! Harry yelled, trying to blot the screaming from his ears, expectopatronum! a thin wisp of
131	3	26	1	fight expecto pa-tronum he couldn't see and in the distance, he heard the fa-miliar screaming expectopatronum he groped in the mist for sirius, and found his arm they weren't going to take
132	3	26	1	for the third time, and the de-mentor rose out of it; the room fell cold and dark  expectopatronum! Harry bellowed, expecto pa-tronum! expectopatronum! the screaming inside Harry's head had started again  except
133	3	26	1	glided forward, drawing its breath; one rotting hand was extending toward Harry  expectopatronum! Harry yelled, expectopatronum! expecto pat  white fog obscured his senses big, blurred shapes were mov-ing around him
134	3	26	1	ground, pale as death, he'll be all right, i'm going to go and live with him, expectopatronum! hermione, help me! expectopatronum! expecto  hermione whispered, expecto  expecto  but she
135	3	26	1	his thoughts back to that first broom ride, expecto patrono  no, patronum  sorry  expectopatronum, expectopatronum  something whooshed suddenly out of the end of his wand; it looked like a wisp of silvery
136	3	26	1	moment, Harry felt hermione collapse next to him, he was alone completely alone, expecto  expectopatronum  Harry felt his knees hit the cold grass, fog was clouding his eyes, with a huge
137	3	26	1	once more, the dementor glided forward, drawing its breath; one rotting hand was extending toward Harry  expectopatronum! Harry yelled, expectopatronum! expecto pat  white fog obscured his senses big, blurred shapes
138	3	26	20	possible the won-derful, soaring sensation of his stomach, the incantation is this  lupin cleared his throat, expectopatronum! expectopatronum, Harry repeated under his breath, expectopatronum, concentrating hard on your happy memory? oh
139	3	26	1	quickly forcing his thoughts back to that first broom ride, expecto patrono  no, patronum  sorry  expectopatronum, expectopatronum  something whooshed suddenly out of the end of his wand; it looked like a wisp
140	3	26	1	rose out of it; the room fell cold and dark  expectopatronum! Harry bellowed, expecto pa-tronum! expectopatronum! the screaming inside Harry's head had started again  except this time, it sounded as though it
141	3	26	1	silently toward Harry, drawing a deep, rattling breath, a wave of piercing cold broke over him  expectopatronum! Harry yelled, expectopatronum! ex-pecto  but the classroom and the dementor were dissolving, Harry
142	3	26	1	the dursleys, he forced himself to think of black, and only black, and began to chant : expectopatronum! expectopatronum! black gave a shudder, rolled over, and lay motionless on the ground, pale
143	3	26	1	the incantation is this  lupin cleared his throat, expectopatronum! expectopatronum, Harry repeated under his breath, expectopatronum, concentrating hard on your happy memory? oh  yeah  said Harry, quickly forcing his thoughts
144	3	26	1	think, plunging a hand down the neck of his robes, he whipped out his wand and roared, expectopatronum! something silver-white, something enormous, erupted from the end of his wand, he knew it had
145	3	26	1	to remember  sirius was inno-cent  innocent  we'll be okay  i'm going to live with him  expectopatronum! he gasped, by the feeble light of his formless patronus, he saw a dementor halt,
146	3	26	1	won-derful, soaring sensation of his stomach, the incantation is this  lupin cleared his throat, expectopatronum! expectopatronum, Harry repeated under his breath, expectopatronum, concentrating hard on your happy memory? oh  yeah
147	4	26	1	of getting out of the maze and celebrating with ron and hermione, raised his wand, and cried, expectopatronum! a silver stag erupted from the end of Harry's wand and galloped toward the dementor, which fell
148	5	26	1	beneath its robes, sucking on the night as it came, stumbling backward, Harry raised his wand, expectopatronum! a silvery wisp of vapor shot from the tip of the wand and the de-mentor slowed, but
149	5	26	1	bonus point? Harry raised his wand, looked directly at umbridge, and imagined her being sacked, expectopatronum! the silver stag erupted from the end of his wand and cantered the length of the hall,
150	5	26	1	scabbed hands slid from inside the dementor's robes, reaching for him, a rushing noise filled Harry's ears, expectopatronum! his voice sounded dim and distant, another wisp of silver smoke, feebler than the last
151	5	26	1	see ron and hermione again  and their faces burst clearly into his mind as he fought for breath  expectopatronum! an enormous silver stag erupted from the tip of Harry's wand; its antlers caught the dementor in
152	7	26	2	, Harry told a completely bemused mrs. cattermole, bit unfortunate, really come on, hermione, expectopatronum! a silver otter burst from the end of hermione's wand and swam gracefully through the air to join
153	7	26	1	a terrible scream of fear as a slimy, scabbed hand grasped her chin and forced her face back, expectopatronum! the silver stag soared from the tip of Harry's wand and leaped toward the dementors, which fell
154	7	26	2	brightly, toward the door, as many as we can muster; do yours, hermione, expec  expectopatronum, said hermione, nothing happened, it's the only spell she ever has trouble with, Harry told
155	7	26	1	dementor's kiss, whatever happened afterward, it was of ron and hermione that he thought as he whispered, expectopatronum! the silver stag burst from his wand and charged : the dementors scattered and there was a triumphant
156	7	26	22	potter's! stag! roared the barman, and he pulled out a wand, stag! you idiot  expectopatronum! something huge and horned erupted from the wand : head down, it charged toward the high street
157	7	26	23	seriously, have you grown to care for the boy, after all? for him? shouted snape, expectopatronum! from the tip of his wand burst the silver doe : she landed on the office floor,
158	2	27	23	 both of them swung their wands above their heads and pointed them at their opponent; snape cried : expelliarmus! there was a dazzling flash of scarlet light and lockhart was blasted off his feet : he flew
159	2	27	1	as a school prefect  but Harry had lost his tem-per, he pulled out his wand and shouted, expelliarmus! and just as snape had disarmed lockhart, so malfoy found the diary shoot-ing out of his hand
160	2	27	1	book  Harry reached his wand just in time, lockhart had barely raised his, when Harry bellowed, expelliarmus! lockhart was blasted backward, falling over his trunk; his wand flew high into the air;
161	3	27	1	a split second, before snape could take even one step toward him, he had raised his wand, expelliarmus! he yelled  except that his wasn't the only voice that shouted, there was a blast that
162	3	27	4	it looked like a skull, his yellow teeth were bared in a grin, it was sirius black, expelliarmus! he croaked, pointing ron's wand at them, Harry's and hermione's wands shot out of their hands
163	3	27	1	the ground, another bang  crookshanks flew into the air and back to the earth in a heap, expelliarmus! Harry yelled, pointing his own wand at petti-grew; lupin's wand flew high into the air and
164	3	27	20	there with his wand covering black, and then to black himself, crumpled and bleeding at Harry's feet, expelliarmus! lupin shouted, Harry's wand flew once more out of his hand; so did the two hermione
165	4	27	1	him, and threw himself around the headstone, facing voldemort, voldemort was ready, as Harry shouted, expelliarmus! volde-mort cried, avadakedavra! a jet of green light issued from voldemort's wand just as a jet
166	4	27	1	no more effect than Harry's  Harry raised his wand as the spider opened its pincers once more and shouted expelliarmus! it worked  the disarming spell made the spider drop him, but that meant that Harry fell
167	5	27	17	but merely causing them to jump backward a few paces or wince as the feeble spell whooshed over them, expelliarmus! said neville, and Harry, caught unawares, felt his wand fly out of his hand,
168	5	27	\N	count of three, then  one, two, three  the room was suddenly full of shouts of expelliarmus! : wands flew in all directions, missed spells hit books on shelves and sent them flying into
169	5	27	21	he plunged his hand inside his robes, and his wand was halfway into the air when james shouted, expelliarmus! snape's wand flew twelve feet into the air and fell with a little thud in the grass behind
170	5	27	17	overturned his desk in his anxiety to help; pointing his wand wildly at the struggling pair he cried, expelliarmus! both Harry's and the death eater's wands flew out of their hands and soared back toward the entrance
171	5	27	\N	risk being caught and punished by filch for being out-of-bounds, he blew his whistle; everybody stopped shouting, expelliarmus! and the last couple of wands clat-tered to the floor, well, that was pretty good,
172	5	27	\N	useful  oh please, said zacharias smith, rolling his eyes and folding his arms, i don't think expelliarmus is exactly going to help us against you-know-who, do you? i've used it against him, said
173	6	27	\N	drawing his wand as he did so, the door burst open and somebody erupted through it and shouted, expelliarmus! Harry's body became instantly rigid and immobile, and he felt himself fall back against the tower wall
174	6	27	\N	like an unsteady statue, unable to move or speak, he could not understand how it had happened  expelliarmus was not a freezing charm  then, by the light of the mark, he saw dumbledore's wand
175	7	27	\N	, but the death eaters  frankly, most people!  would have expected you to attack back! expelliarmus is a useful spell, Harry, but the death eaters seem to think it is your signature move
176	7	27	2	. mundungus scrambled up and pulled out his wand; hermione, however, was too quick for him, expelliarmus! mundungus's wand soared into the air, and hermione caught it, wild-eyed, mundungus dived for the
177	7	27	\N	and if i stunned him and he'd fallen, he'd have died the same as if i'd used avadakedavra! expelliarmus saved me from voldemort two years ago, Harry added defiantly, lupin was reminding him of the sneering
178	7	27	1	crabbe and goyle, who were both aiming at Harry : their split second's hesitation was all Harry needed, expelliarmus! goyle's wand flew out of his hand and disappeared into the bulwark of objects beside him; goyle
179	7	27	1	high voice shriek as he too yelled his best hope to the heavens, pointing draco's wand : avadakedavra! expelliarmus! the bang was like a cannon blast, and the golden flames that erupted between them, at
180	7	27	3	into the drawing room; bellatrix looked around, shocked; she turned her wand to face ron instead  expelliarmus! he roared, pointing wormtail's wand at bellatrix, and hers flew into the air and was caught
181	7	27	1	it up, lumos! the wand sparked feebly, then went out, Harry pointed it at hermione, expelliarmus! hermione's wand gave a little jerk, but did not leave her hand, the feeble attempt at
182	7	27	1	red light of his next stunning spell, Harry saw the strangely blank face of stanley shunpike  stan  expelliarmus! Harry yelled, that's him, it's him, it's the real one! the hooded death eater's
183	7	28	\N	missed, rebounded on the window, and hit the waitress, who collapsed in front of the door, expulso! bellowed the death eater, and the table behind which Harry was standing blew up : the force
184	3	29	20	. he hurried over to ron, bent down, tapped ron's leg with his wand, and muttered, ferula, bandages spun up ron's leg, strapping it tightly to a splint, lupin helped him to his
185	3	30	\N	course, you-know-who wasn't an easy person to hide from, dumble-dore told them that their best chance was the fidelius charm, how does that work? said madam rosmerta, breathless with interest, professor flitwick cleared his
186	3	30	\N	insisted on using black? he did, said fudge heavily, and then, barely a week after the fidelius charm had been performed  black betrayed them? breathed madam rosmerta, he did indeed, black was
187	7	30	\N	. look at it, hermione, i don't oh! he could see it; the fidelius charm must have died with james and lily, the hedge had grown wild in the sixteen years since
188	7	30	\N	along a new and darker street he moved, and now his destination was in sight at last, the fidelius charm broken, though they did not know it yet, and he made less noise than the
189	7	30	\N	be able to see the cottage at all; he did not know what happened when the subjects of a fidelius charm died, then the little lane along which they were walking curved to the left and the heart
190	7	30	\N	i  i forced him to let go with a revulsion jinx, but i'd already taken him inside the fidelius charm's protection, since dumbledore died, we're secret-keepers, so i've given him the secret, haven't i
191	7	30	\N	secret-keeper in turn, and as there are around twenty of us, that greatly dilutes the power of the fidelius charm, twenty times as many opportunities for the death eaters to get the secret out of somebody,
192	7	30	\N	so for months, we're the biggest blood-traitor family there is, how are they protected? asked Harry, fidelius charm, dad's secret-keeper, and we've done it on this cottage too; i'm secret-keeper here, none
193	7	30	\N	stars, then turned and began to walk toward the point, just beyond the boundary wall, where the fidelius charm stopped working and they would be able to disapparate, once past the gate, griphook spoke,
194	5	32	2	wait! said hermione sharply, as luna made to close the door of the brain room behind them, flagrate! she drew with her wand in midair and a fiery x appeared on the door, no sooner
195	4	34	\N	as he followed fred inside, interesting effect, said george, looking down at crabbe, who used the furnunculus curse? me, said Harry, odd, said george lightly, i used jelly-legs, looks as
196	4	34	1	second, they looked into each other's eyes, then, at ex-actly the same time, both acted, furnunculus! Harry yelled, densaugeo! screamed malfoy, jets of light shot from both wands, hit each
197	7	35	2	that, Harry, but if she wakes up and the locket's gone  i need to duplicate it  geminio! there that should fool her, hermione came running downstairs, let's see, relashio
198	7	36	2	! two masked death eaters stood there, but even before their wands were fully raised, hermione shouted, glisseo! the stairs beneath their feet flattened into a chute and she, Harry, and ron hurtled down
199	7	37	\N	and you think you'll get your girl back like this? i swear i swear potter's upstairs! homenumrevelio, said the voice at the foot of the stairs, Harry heard hermione gasp, and he had
200	7	37	2	any farther, i think we'd better check, whispered hermione, and she raised her wand and said, homenumrevelio, nothing happened, well, you've just had a big shock, said ron kindly, what was
201	2	38	\N	i put my wand to his throat  i then screwed up my remain-ing strength and performed the immensely complex homorphus charm  he let out a piteous moan  go on, Harry  higher than that  good
202	4	40	1	a stone at it; the spider jerked, scuttled around, and ran at Harry instead, stupefy! impedimenta! stupefy! but it was no use  the spider was either so large, or so magical
203	4	40	1	as the spells hit it, gripping his wand more tightly, he dashed out from behind the angel  impedimenta! he bellowed, pointing his wand wildly over his shoulder at the death eaters running at him,
204	4	40	1	of his head, the skrewt issued a blast of fire from its end and flew for-ward toward him, impedimenta! Harry yelled, the spell hit the skrewt's armor again and ricocheted off; Harry staggered back a
205	4	40	1	spell hit the skrewt's armor again and ricocheted off; Harry staggered back a few paces and fell over, impedimenta! the skrewt was inches from him when it froze  he had man-aged to hit it on its
206	5	40	\N	again and the two death eaters had come hurtling inside, with a cry of triumph, both yelled, impedimenta! Harry, hermione, and neville were all knocked backward off their feet, neville was thrown over
207	5	40	\N	all divided up obediently; Harry partnered neville as usual, the room was soon full of intermittent cries of impedimenta! people froze for a minute or so, during which their partners would stare aimlessly around the room
208	5	40	4	and fell with a little thud in the grass behind him, sirius let out a bark of laughter, impedimenta! he said, pointing his wand at snape, who was knocked off his feet, halfway through
209	5	40	24	bellowing of the crowd around him, but he did not care, not until somebody in the vicinity yelled impedimenta! and only when he was knocked over backward by the force of the spell did he abandon the
210	5	40	1	pointed the wand instead at neville, but Harry jabbed his own wand back over his shoulder and yelled, impedimenta! malfoy was blasted off his back, as Harry scrambled up again he looked around and saw malfoy
211	6	40	1	: amycus was giggling, enjoying the sport : crucio  crucio  you can't dance forever, pretty  impedimenta! yelled Harry, his jinx hit amycus in the chest : he gave a piglike squeal of pain
212	6	40	1	his wand through the air; six or seven of them crumpled, but more were coming toward him, impedimenta! incarcerous! a few of them stumbled, one or two of them bound in ropes, but
213	6	40	1	ready, that the brother and sister he had overtaken using his shortcut were closing in behind him, impedimenta! he yelled as he rolled over again, crouching close to the dark ground, and miraculously his
214	7	40	1	: crouching as low as he could, he pointed at the middle of the oncoming figures and yelled, impedimenta! the jinx hit the middle death eater in the chest : for a moment the man was absurdly
215	4	41	8	 i asked you whether you want me to do that again, said volde-mort softly, answer me! imperio! and Harry felt, for the third time in his life, the sensation that his mind had
216	4	41	11	his hand so that they could all see it, he then pointed his wand at it and muttered, imperio! the spider leapt from moody's hand on a fine thread of silk and began to swing backward and
217	4	41	11	that moody had cleared of desks, moody raised his wand, pointed it at Harry, and said, imperio! it was the most wonderful feeling, Harry felt a floating sensation as every thought and worry in
218	7	41	32	, professor mcgonagall rose to her feet, pointed her wand at the groggy death eater, and said, imperio, amycus got up, walked over to his sister, picked up her wand, then shuffled obediently
219	7	41	1	cloak, pointed it at the old goblin, and whispered, for the first time in his life, imperio! a curious sensation shot down Harry's arm, a feeling of tingling warmth that seemed to flow from
220	7	41	1	said griphook, we can not enter the vault without a gringotts goblin, and we need the clankers! imperio! Harry said again; his voice echoed through the stone passage as he felt again the sense of
221	7	41	1	the authority, but there will not be room for the wizard, Harry pointed his wand at travers, imperio! the wizard turned and set off along the dark track at a smart pace, what are you
222	7	41	1	which wandmaker did you use? Harry acted without thinking : pointing his wand at travers, he muttered, imperio! once more, oh yes, i see, said travers, looking down at bellatrix's wand,
223	3	42	2	to her, and as the team watched in amazement, hermione tapped them with her wand and said, impervius! there! she said, handing them back to Harry, they'll repel water! wood looked as
224	5	42	1	? hermione did it, said Harry, he pulled out his wand, tapped his glasses and said, impervius! i think we all ought to try that, said angelina, if we could just keep the
225	5	42	\N	could just keep the rain off our faces it would really help visibility  all to-gether, come on  impervius! okay, let's go, they all stowed their wands back in the inside pockets of their robes
226	5	42	\N	squelched through the deepening mud to the middle of the pitch; visibility was still very poor even with the impervius charm; light was fading fast and curtains of rain were sweeping the grounds, all right, on
227	7	42	2	and yelled as Harry thrust the sword through the handle of hufflepuff's cup, hooking it onto the blade, impervius! screeched hermione in an attempt to protect herself, ron, and the goblins from the burning metal
228	7	42	\N	wrong with an atmospheric charm, which will be more difficult to fix, so as an interim measure try impervius to protect his belongings  say it again, slowly  said ron, searching his pockets desperately for
229	5	43	26	quiet! shouted hermione, but it was too late  umbridge pointed her wand at magorian and screamed, incarcerous! ropes flew out of midair like thick snakes, wrapping themselves tightly around the centaur's torso and trapping
230	6	43	1	through the air; six or seven of them crumpled, but more were coming toward him, impedimenta! incarcerous! a few of them stumbled, one or two of them bound in ropes, but those climbing
231	4	44	25	his robes and took out his wand, Harry saw the dursleys draw back against the wall as one, incendio! said mr. weasley, pointing his wand at the hole in the wall behind him, flames rose
232	6	44	27	be having a word with them about who they let buy their products, we tried everything, lumos, incendio, said ginny, nothing would penetrate the darkness; all we could do was grope our way out
233	6	45	1	his nosey, draw his cork and pull his earsies  Harry aimed his wand at peeves and said, langlock! peeves clutched at his throat, gulped, then swooped from the room mak-ing obscene gestures but unable
234	5	46	23	. you will find that similar powers are needed for this, brace yourself, now, legilimens! snape had struck before Harry was ready, before Harry had even begun to summon any force of
235	5	46	23	are ready, we will start again, he raised his wand, one  two  three  legilimens! a hundred dementors were swooping toward Harry across the lake in the grounds, he screwed up
236	5	46	23	did not have time to gather himself together and attempt to clear his mind, for snape had already cried legilimens! he was hurtling along the corridor toward the department of mys-teries, past the blank stone walls,
237	5	46	\N	he croaked, he did not wish to tell me, said dumbledore, but i am a suffi-ciently accomplished legilimens myself to know when i am being lied to and i  persuaded him  to tell me the
238	5	46	23	or feel, let's go again on the count of three one  two  three  legilimens! a great black dragon was rearing in front of him, his father and mother were waving
239	5	46	23	snape, control your anger, discipline your mind! we shall try again! get ready, now! legilimens! he was watching uncle vernon hammering the letter box shut, a hundred dementors were drifting across
240	6	46	\N	or that i have somehow hoodwinked him? fooled the dark lord, the greatest wizard, the most accom-plished legilimens the world has ever seen? bellatrix said nothing, but looked, for the first time, a
241	6	47	\N	his old potions book, he wrote spells all over it, spells he invented, one of them was levicorpus  oh, that one had a great vogue during my time at hogwarts, said lupin reminiscently,
242	6	47	1	missed Harry by inches, shatter-ing the lamp on the wall beside him; Harry threw himself sideways, thought levicorpus! and flicked his wand, but malfoy blocked the jinx and raised his wand for another  no
243	6	47	1	snape so far, pointing his wand at nothing in particular, he gave it an upward flick and said levicorpus! inside his head, aaaaaaaargh! there was a flash of light and the room was full of
244	6	47	\N	were many crossings-out and alterations, but finally, crammed into a corner of the page, the scribble : levicorpus ( nvbl ) while the wind and sleet pounded relentlessly on the windows, and neville snored loudly,
245	7	47	2	got to get rid of it  she raised her wand, pointed it at Harry, and whispered, levicorpus, hoisted into the air by his ankle, Harry hit a suit of armor and replicas burst out
246	6	48	1	located it and deciphered one cramped word underneath the spell : praying that this was the counter-jinx, Harry thought liberacorpus! with all his might, there was another flash of light, and ron fell in a heap
247	7	48	1	left in view, Harry seized griphook's fingers and pulled, the blistered goblin emerged by degrees, howling, liberacorpus! yelled Harry, and with a crash he and griphook landed on the surface of the swelling treasure
248	1	49	2	it on snape if he showed any sign of wanting to hurt Harry, now, don't forget, it's locomotormortis, hermione muttered as ron slipped his wand up his sleeve, i know, ron snapped, don't
249	2	50	1	around at the dark, slimy walls, all three of them turned to stare into the darkness ahead, lumos! Harry muttered to his wand and it lit again, c'mon, he said to ron and lockhart
250	2	50	1	forest, and lifted his leg against a large sycamore tree, Harry took out his wand, murmured, lumos! and a tiny light appeared at the end of it, just enough to let them watch the
251	3	50	1	he stood up, looking around, it was pitch dark, he held up his wand, muttered, lumos! and saw that he was in a very narrow, low, earthy passageway, he raised the
252	3	50	1	only it would move, then he'd know whether it was just a stray cat or  something else, lumos, Harry muttered, and a light appeared at the end of his wand, almost dazzling him,
253	3	50	1	ribs, what's the matter? said ron, Harry pointed, ron pulled out his wand and muttered, lumos! a beam of light fell across the grass, hit the bottom of a tree, and illuminated
254	3	50	1	shriek with pain and fall too, Harry groped for his wand, blinking blood out of his eyes  lumos! he whispered, the wandlight showed him the trunk of a thick tree; they had chased scabbers
255	4	50	1	invisibility cloak and go back to the library, he'd stay there all night if he had to, lumos, Harry whispered fifteen minutes later as he opened the library door, wand tip alight, he crept
256	4	50	1	maze, Harry felt almost as though he were underwater again, he pulled out his wand, muttered, lumos, and heard cedric do the same just behind him, after about fifty yards, they reached a
257	4	50	28	one answered, they were here, Harry said to dumbledore, they were defi-nitely somewhere around here, lumos, dumbledore said, lighting his wand and holding it up, its narrow beam traveled from black trunk
258	4	50	2	stopping so abruptly that Harry walked into her, ron, where are you? oh this is stupid  lumos! she illuminated her wand and directed its narrow beam across the path, ron was lying sprawled on
259	5	50	2	, like, good! said hermione, as Harry set her back on her feet, they both murmured lumos! and their wand tips ignited, hagrid's face swam through the gloom by the light of the two
260	5	50	1	Harry muttered franti-cally, his hands flying over the ground like spiders, where's  wand  come on  lumos! he said the spell automatically, desperate for light to help him in his search  and to
261	5	50	19	we all standing in the dark? said a third voice, this one completely unfamiliar, a woman's, lumos, a wand tip flared, illuminating the hall with magical light, Harry blinked, the people below
262	6	50	28	at his heels, then pushed the front door very slowly, his wand raised and at the ready, lumos, dumbledore's wand tip ignited, casting its light up a narrow hallway, to the left, another
263	6	50	\N	going to be having a word with them about who they let buy their products, we tried everything, lumos, incendio, said ginny, nothing would penetrate the darkness; all we could do was grope our
264	6	50	28	the lower rocks were slippery with seawater, Harry could feel flecks of cold salt spray hitting his face, lumos, said dumbledore, as he reached the boulder closest to the cliff face, a thousand flecks of
265	7	50	1	bag, picked up his wand, and crept out of the room, on the landing he whispered, lumos, and started to climb the stairs by wandlight, on the second landing was the bedroom in which
266	7	50	1	brightening when he lowered his eyelids, disorienting him, now fear came : her presence had meant safety, lumos! he whispered, and the wand-tip ignited, the imprint of the doe faded away with every blink
267	7	50	1	hermione, try! r-reparo, the dangling half of the wand resealed itself, Harry held it up, lumos! the wand sparked feebly, then went out, Harry pointed it at hermione, expelliarmus! hermione's
268	7	50	1	pot protruding from under the bed before bathilda closed the door and even that was swallowed by the darkness, lumos, said Harry, and his wand ignited, he gave a start : bathilda had moved close to
269	7	50	\N	shell broke open, he lowered his shaking hand, raised draco's wand beneath the cloak, and murmured, lumos, the black stone with its jagged crack running down the center sat in the two halves of the
270	7	50	1	shout of surprise, light your wands, can't you? and hurry, we have very little time! lumos! Harry shone his lit wand around the vault : its beam fell upon glittering jewels; he saw
271	7	51	\N	offices have been raining lately, said mr. weasley, did you try meteolojinxrecanto? it worked for bletchley, meteolojinxrecanto? whispered ron, no, i didn't, thanks, d  i mean, thanks, arthur
272	7	51	\N	said  yes, a lot of offices have been raining lately, said mr. weasley, did you try meteolojinxrecanto? it worked for bletchley, meteolojinxrecanto? whispered ron, no, i didn't, thanks, d
273	3	52	2	the bar, pause, then turn and walk right toward him, somewhere above him, hermione whispered, mobiliarbus! the christmas tree beside their table rose a few inches off the ground, drifted sideways, and
274	3	53	20	him until we're safely back in the castle, we can take him like this, he muttered, mobilicorpus, as though invisible strings were tied to snape's wrists, neck, and knees, he was pulled
275	4	54	29	in the wood; and it uttered, not a panicked shout, but what sounded like a spell, morsmordre! and something vast, green, and glittering erupted from the patch of darkness Harry's eyes had been
276	6	55	1	, Harry told ron and hermione everything that had happened during next morning's charms lesson ( having first cast the muffliato spell upon those nearest them ), they were both satisfyingly impressed by the way he had wheedled the
277	6	55	\N	, to general applause, on an un-suspecting argus filch ); and, perhaps most useful of all, muffliato, a spell that filled the ears of anyone nearby with an unidentifiable buzzing, so that lengthy conversations
278	6	55	\N	, we're starting now! said ron, adding quietly, when she had turned away again, should've used muffliato, Harry, no, we shouldn't! said hermione at once, looking, as she al-ways did
279	6	55	1	. what's going ? Harry pointed his wand hastily at the door of madam pomfrey's office and muttered, muffliato! so that she would not come run-ning, then he scrambled to the end of his bed for
280	6	55	\N	death, yeah, i did, said Harry, glancing toward madam pomfrey's of-fice door to check that the muffliato spell was still working; there was no sign that she had heard any of the commotion, i've
281	6	55	1	hermione, who maintained a rigidly disap-proving expression throughout and refused to talk at all if Harry had used the muffliato spell on anyone in the vicinity, sitting up in bed, Harry turned the book sideways so as
282	7	55	\N	he heard voices again, he looked around at the sneakoscope, it was not moving, you cast the muffliato charm over us, right? he whispered to hermione, i did everything, she whispered back,
283	7	55	2	it was as if hermione had cast a heat haze upon their clearing, salviohexia protegototalum repellomuggletum muffliato you could get out the tent, Harry, tent? in the bag! in the
284	7	55	\N	muffliato charm over us, right? he whispered to hermione, i did everything, she whispered back, muffliato, muggle-repelling and disillusionment charms, all of it, they shouldn't be able to hear or see us
285	7	55	2	snitch and watching its wings flutter feebly, at last, hermione tapped on the door and tiptoed inside, muffliato, she whispered, waving her wand in the direction of the stairs, thought you didn't approve of
286	7	55	\N	taking a seat behind the latter, he was worried about making hermione jump, he thought of casting the muffliato charm upon umbridge and yaxley, but even murmuring the word might cause hermione alarm, then umbridge raised
287	7	55	\N	there was no bustling or talk or swift footsteps here; the purple-carpeted corridors were as hushed as though the muffliato charm had been cast over the place, her office must be up here, Harry thought, it
288	3	56	\N	where a wide shiny stripe had been made by some-thing being dragged upstairs, they reached the dark landing, nox, they whispered together, and the lights at the end of their wands went out, only one
289	7	56	1	the bundle of slippery cloth into his free hand, with difficulty he dragged it over himself, murmured, nox, extinguishing his wandlight, and continued on his hands and knees, as silently as possible, all
290	2	57	30	body  say good-bye to your memories! he raised ron's spellotaped wand high over his head and yelled, obliviate! the wand exploded with the force of a small bomb, Harry flung his arms over his head
291	4	57	\N	at that moment, a wizard in plus-fours appeared out of thin air next to mr. roberts's front door, obliviate! he said sharply, pointing his wand at mr. roberts, instantly, mr. roberts's eyes slid out
292	7	57	2	she whispered, hold tight any second xenophilius's paper-white face appeared over the top of the sideboard, obliviate! cried hermione, pointing her wand first into his face, then at the floor beneath them,
293	7	57	2	theory, she took a deep, calming breath, then pointed her wand at dolohov's forehead and said, obliviate, at once, dolohov's eyes became unfocused and dreamy, brilliant! said Harry, clapping her on
294	7	58	\N	drawing his wand as he did so, the door burst open and somebody erupted through it and shouted, expelliarmus! Harry's body became instantly rigid and immobile, and he felt himself fall back against the tower wall
295	6	59	2	erectly toward the door, Harry glanced at ron, who was looking relieved that nothing worse had happened, oppugno! came a shriek from the doorway, Harry spun around to see hermione pointing her wand at ron
296	4	60	31	mr. ollivander ran his fingers along the wand, apparently check-ing for scratches or bumps; then he muttered, orchideous! and a bunch of flowers burst from the wand tip, very well, very well, it's
297	2	62	30	they're only pixies, lockhart shouted, he rolled up his sleeves, brandished his wand, and bellowed, peskipiksipesternomi! it had absolutely no effect; one of the pixies seized his wand and threw it out of
298	1	63	2	forward, neville, she said, i'm really, really sorry about this, she raised her wand, petrificustotalus! she cried, pointing it at neville, neville's arms snapped to his sides, his legs sprang
299	5	63	4	disentangling himself from his robes, he got quickly to his feet, wand up, but sirius said, petrificustotalus! and snape keeled over again at once, rigid as a board, leave him alone! lily
300	5	63	1	his head bawling, his great fists still flailing uncontrollably at everything around him, Harry seized his chance : petrificustotalus! the spell hit dolohov before he could block it, and he toppled for-ward across his comrade,
301	5	63	1	the hole in his mask, but no sound came out; he was thrust aside by his fellow, petrificustotalus! shouted Harry, as the second death eater raised his wand, his arms and legs snapped together
302	5	63	1	to make the same slashing movement he had used on Harry and hermione, springing up, Harry yelled, petrificustotalus! once again, dolohov's arms and legs snapped to-gether and he keeled over backward, landing with a
303	6	63	1	, sightless eyes were moving toward the rock : an army of the dead rising from the black water, petrificustotalus! yelled Harry, struggling to cling to the smooth, soaked surface of the island as he pointed
304	6	63	1	, the stench of sweat and blood filling his nose and mouth, hot greedy breath at his throat  petrificustotalus! Harry felt fenrir collapse against him; with a stupendous effort he pushed the werewolf off and onto
305	6	63	1	aside as the bru-tal-faced death eater, last to leave the tower top, was disappearing through the door, petrificustotalus! the death eater buckled as though hit in the back with some-thing solid and fell to the ground
306	6	63	16	hide from pansy? was he about to see the mysterious broken object it was so important to mend? petrificustotalus! without warning, malfoy pointed his wand at Harry, who was instantly paralyzed, as though in
307	6	63	1	its slippery surface, their blank, frosted eyes upon him, trailing waterlogged rags, sunken faces leering, petrificustotalus! Harry bellowed again, backing away as he swiped his wand through the air; six or seven
308	7	63	2	slammed him into the wall and he felt his wand leave his hand as the cloak slipped off him, petrificustotalus! screamed hermione from out of sight, and the death eater fell forward like a statue to land
309	7	64	32	taken leave of her senses, but hobbled away, hunch-shouldered, muttering under his breath, and now  piertotumlocomotor! cried professor mcgonagall, and all along the corridor the statues and suits of armor jumped down from
310	4	65	1	growing darker with every passing minute as the sky overhead deepened to navy, he reached a second fork, pointme, he whispered to his wand, holding it flat in his palm, the wand spun around once
311	4	65	1	have a chance, Harry broke into a run, he had a choice of paths up ahead, pointme! he whispered again to his wand, and it spun around and pointed him to the right-hand one
312	4	67	14	ears flap-ping, as mr. diggory raised his own wand again and placed it tip to tip with Harry's, priorincantato! roared mr. diggory, Harry heard hermione gasp, horrified, as a gigantic serpent-tongued skull erupted from
313	5	68	5	as she peered around the fountain for him, she reacted so fast he barely had time to duck, protego! the jet of red light, his own stunning spell, bounced back at him, Harry scrambled
314	5	68	1	he made the same slashing movement with his wand that he had used on hermione just as Harry yelled, protego! Harry felt something streak across his face like a blunt knife but the force of it knocked him
315	5	68	1	mouth when the female death eater shrieked, accio proph  Harry was just ready for her, he shouted protego! before she had finished her spell, and though the glass sphere slipped to the tips of his
316	5	68	1	somehow, snape was growing clearer, and the dementors were grow-ing fainter Harry raised his own wand, protego! snape staggered; his wand flew upward, away from Harry  and suddenly Harry's mind was teeming
317	6	68	1	wand on Harry so fast that Harry reacted instinc-tively; all thought of nonverbal spells forgotten, he yelled, protego! his shield charm was so strong snape was knocked off-balance and hit a desk, the whole class
318	7	68	20	crowd; then he saw lupin and tonks, their wands raised, and heard both of them shout, protego!, a cry that was echoed on all sides  ron! ron! hermione called, half
319	7	68	2	Harry reacted, but before either wand was clear of its owner's pocket, hermione had raised her own, protego! she cried, and an invisible shield expanded between her and Harry on the one side and ron
320	7	68	2	i can hear people coming! said hermione, and she pointed bellatrix's wand at the waterfall and cried, protego! they saw the shield charm break the flow of enchanted water as it flew up the passageway,
321	7	68	1	lieutenant exploded with the force of a bomb, voldemort raised his wand and directed it at molly weasley, protego! roared Harry, and the shield charm expanded in the middle of the hall, and voldemort stared
322	7	68	1	my wand? she looked as though ready to wrestle it out of Harry's hands and he reacted instinctively, protego! the invisible shield erupted between ron and hermione : the force of it knocked her backward onto the
323	7	69	6	interrupt, but this is important, have you got any idea where the diadem of ravenclaw is?  protegohorribilis  the diadem of ravenclaw? squeaked flitwick, a little extra wisdom never goes amiss, potter,
324	7	70	2	of a field at dusk; hermione was already running in a circle around them, waving her wand, protegototalum salviohexia that treacherous old bleeder! ron panted, emerging from beneath the invisibility cloak and throwing
325	7	70	2	the surrounding air : it was as if hermione had cast a heat haze upon their clearing, salviohexia protegototalum repellomuggletum muffliato you could get out the tent, Harry, tent? in the
326	4	71	33	still grinning in a be-mused sort of way ), bagman pointed his wand at his throat and muttered, quietus, they'll be talking about this one for years, he said hoarsely, a really unexpected twist,
327	4	73	11	wide and horrified, moody raised his wand, the spider's legs relaxed, but it contin-ued to twitch, reducio, moody muttered, and the spider shrank back to its proper size, he put it back into
328	7	73	1	i'm sorry i said dumbledore was young, okay? Harry had forgotten ron's hatred of spiders, sorry  reducio, the spider did not shrink, Harry looked down at the blackthorn wand, every minor spell he
329	4	73	1	some kind of enchantment, he wondered whether he might be able to blast it out of the way, reducto! he said, the spell shot straight through the mist, leaving it intact, he supposed he
330	5	73	\N	the dark lord knows you are not unintell  now! yelled Harry, five different voices behind him bellowed reducto! five curses flew in five different directions and the shelves opposite them exploded as they hit, the
331	6	73	\N	that moment there were renewed sounds of scuffling from below and a voice shouted, they've blocked the stairs  reducto! reducto! Harry's heart leapt : so these four had not eliminated all opposi-tion, but merely broken
332	6	73	\N	there were renewed sounds of scuffling from below and a voice shouted, they've blocked the stairs  reducto! reducto! Harry's heart leapt : so these four had not eliminated all opposi-tion, but merely broken through the
333	4	74	1	out of the weed, had seized handfuls of Harry's robes, and were attempting to drag him down, relashio! Harry shouted, except that no sound came out, a large bubble issued from his mouth
334	6	74	\N	. both Harry and ogden yelled no! at the same time; ogden raised his wand and cried, relashio! gaunt was thrown backward, away from his daughter; he tripped over a chair and fell flat
335	7	74	2	 geminio! there that should fool her, hermione came running downstairs, let's see, relashio! the chains clinked and withdrew into the arms of the chair, mrs. cattermole looked just as frightened
336	7	74	3	the crushing metal fingers from around wormtail's throat, but it was no use, pettigrew was turning blue, relashio! said ron, pointing the wand at the silver hand, but nothing happened; pettigrew dropped to
337	7	74	1	to Harry, pointing his wand at the thick cuffs chaining the beast to the floor, he yelled, relashio! the cuffs broke open with loud bangs, this way! Harry yelled, and still shooting stunning
338	4	75	28	a ghostly bird, then dumble-dore bent over krum again, pointed his wand at him, and mut-tered, rennervate, krum opened his eyes, he looked dazed, when he saw dumb-ledore, he tried to sit
339	4	75	28	open and poured three drops inside it, then he pointed his wand at the man's chest and said, rennervate, crouch's son opened his eyes, his face was slack, his gaze unfo-cused, dumbledore knelt before
340	4	75	28	take his silence for assent, he raised his own wand, pointed it at winky, and said, rennervate! winky stirred feebly, her great brown eyes opened and she blinked several times in a bemused sort
341	6	75	1	cried, his wand pointing at dumbledore's chest; there was a flash of red light but nothing happened, rennervate  sir  please  dumbledore's eyelids flickered; Harry's heart leapt, sir, are you ?
342	6	75	1	dumbledore, no, you're not dead, you said it wasn't poison, wake up, wake up  rennervate! he cried, his wand pointing at dumbledore's chest; there was a flash of red light but
343	4	76	2	them that the glass shattered, ron! said hermione reproachfully, and she pulled out her wand, muttered reparo! and the glass shards flew back into a sin-gle pane and back into the door, well
344	5	76	2	great difficulty, trembled for a few seconds, then folded, causing the cup to crack into two, reparo! said hermione quickly, mending ron's cup with a wave of her wand, that's all very well
345	5	76	23	had broken when he fell against it; the pickled slimy thing within was swirling in its draining potion, reparo! hissed snape, and the jar sealed itself once more, well, potter that was certainly
346	5	76	1	i'll just clear this up, he indicated the smashed bowl on the floor, ron nodded and left, reparo, Harry muttered, pointing his wand at the broken pieces of china, they flew back together,
347	6	76	\N	, but before she had time to raise her wand, ogden had lifted his own and said firmly, reparo, the pot mended itself instantly, gaunt looked for a moment as though he was going to shout
348	6	76	\N	, hurrying forward to help her, here she tapped the broken scales with her wand and said, reparo, the girl did not say thank you, but remained rooted to the spot as they passed and
349	6	76	1	, in a very quiet voice, Harry missed the pod, hit the bowl, and shattered it, reparo, he said hastily, poking the pieces with his wand, and the bowl sprang back together again
350	6	76	1	brand-new book ( hermione looked scandalized ), he then swapped the covers, tapped each, and said, reparo! there sat the prince's copy, disguised as a new book, and there sat the fresh copy
351	7	76	9	and from inside his jacket pocket he pulled his flowery pink umbrella, hagrid! no! let me! reparo! there was a deafening bang and the sidecar broke away from the bike completely : Harry sped forward
352	7	76	1	wand upon the headmaster's desk, touched it with the very tip of the elder wand, and said, reparo, as his wand resealed, red sparks flew out of its end, Harry knew that he had
353	7	77	2	air : it was as if hermione had cast a heat haze upon their clearing, salviohexia protegototalum repellomuggletum muffliato you could get out the tent, Harry, tent? in the bag!
354	2	78	1	to be working, and wasting no more time, Harry pointed his wand straight at malfoy and shouted, rictusempra! a jet of silver light hit malfoy in the stomach and he doubled up, wheezing, i
355	3	79	17	, mouthing wordlessly, snape was bearing down upon him, reaching inside his robes, r  r  riddikulus! squeaked neville, there was a noise like a whip crack, snape stumbled; he was wear-ing
356	3	79	34	eyeball became a severed hand, which flipped over and began to creep along the floor like a crab, riddikulus! yelled dean, there was a snap, and the hand was trapped in a mousetrap, excellent
357	3	79	35	filled the room, a long, wailing shriek that made the hair on Harry's head stand on end  riddikulus! shouted seamus, the banshee made a rasping noise and clutched her throat; her voice was gone
358	3	79	20	like water, he was still on his feet  though for how much longer, he wasn't sure  riddikulus! roared lupin, springing forward, there was a loud crack, and Harry's cloudy patronus vanished along
359	3	79	3	on ron, clicking its pincers menac-ingly, for a moment, Harry thought ron had frozen, then  riddikulus! bellowed ron, and the spider's legs vanished; it rolled over and over; lavender brown squealed
360	3	79	36	parvati and it began to walk toward her very slowly, dragging its feet, its stiff arms rising  riddikulus! cried parvati, a bandage unraveled at the mummy's feet; it became entangled, fell face forward
361	3	79	\N	shape that you find amusing, we will practice the charm without wands first, after me, please riddikulus! riddikulus! said the class together, good, said professor lupin, very good, but that
362	3	79	17	the floor as a cockroach, crack! snape was back, this time neville charged forward looking determined, riddikulus! he shouted, and they had a split second's view of snape in his lacy dress before neville
363	3	79	20	was, then they saw a silvery-white orb hanging in the air in front of lupin, who said, riddikulus! al-most lazily, crack! forward, neville, and finish him off! said lupin as the
364	3	79	\N	you find amusing, we will practice the charm without wands first, after me, please riddikulus! riddikulus! said the class together, good, said professor lupin, very good, but that was the
365	4	79	1	. hang on! he shouted, advancing in the wake of his silver patronus, you're a boggart! riddikulus! there was a loud crack, and the shape-shifter exploded in a wisp of smoke, the silver
366	5	79	39	, a trickle of blood running down his face, no! mrs. weasley moaned, no riddikulus! riddikulus! riddikulus! crack, dead twins, crack, dead percy, crack, dead Harry mrs.
367	5	79	39	glasses askew, a trickle of blood running down his face, no! mrs. weasley moaned, no riddikulus! riddikulus! riddikulus! crack, dead twins, crack, dead percy, crack, dead Harry
368	5	79	1	seemed to understand in an instant, pulling out his own wand he said, very firmly and clearly, riddikulus! Harry's body vanished, a silvery orb hung in the air over the spot where it had lain
369	5	79	39	trickle of blood running down his face, no! mrs. weasley moaned, no riddikulus! riddikulus! riddikulus! crack, dead twins, crack, dead percy, crack, dead Harry mrs. weasley,
370	7	80	2	disturbances in the surrounding air : it was as if hermione had cast a heat haze upon their clearing, salviohexia protegototalum repellomuggletum muffliato you could get out the tent, Harry, tent?
371	7	80	2	field at dusk; hermione was already running in a circle around them, waving her wand, protegototalum salviohexia that treacherous old bleeder! ron panted, emerging from beneath the invisibility cloak and throwing it to
372	6	82	\N	, of course i'm glad Harry wasn't cursed! said hermione, clearly stung, but you can't call that sectumsempra spell good, ginny, look where it's landed him! and i'd have thought, seeing what this
373	6	82	\N	madam pomfrey was dabbing at his wounds with some harsh-smelling green ointment, Harry re-membered how snape had mended malfoy's sectumsempra wounds so easily with his wand, can't you fix them with a charm or something? he asked
374	6	82	1	or on the fallen bodies, still slashing at the air with his wand, Harry yelled, sectumsempra! sectumsempra! but though gashes appeared in their sodden rags and their icy skin, they had no blood to
375	6	82	\N	pride, and so did my parents  that there was all the difference in the world, chapter 24 sectumsempra exhausted but delighted with his night's work, Harry told ron and hermione everything that had happened during next
376	6	82	1	screamed loudly; water poured everywhere and Harry slipped as malfoy, his face contorted, cried, cruci  sectumsempra! bellowed Harry from the floor, waving his wand wildly, blood spurted from malfoy's face and chest
377	6	82	1	stepped over or on the fallen bodies, still slashing at the air with his wand, Harry yelled, sectumsempra! sectumsempra! but though gashes appeared in their sodden rags and their icy skin, they had no
378	7	82	23	 a death eater moved ahead of snape and raised his wand, pointing it directly at lupin's back  sectumsempra! shouted snape, but the spell, intended for the death eater's wand hand, missed and hit
379	7	82	\N	said lupin, snape? shouted Harry, you didn't say  he lost his hood during the chase, sectumsempra was always a speciality of snape's, i wish i could say i'd paid him back in kind,
380	2	83	16	. three  two  one  go! he shouted, malfoy raised his wand quickly and bellowed, serpensortia! the end of his wand exploded, Harry watched, aghast, as a long black snake shot
381	5	84	3	. silencio! the large and ugly raven in front of him let out a derisive caw, silencio! silencio! the raven cawed more loudly, it's the way you're moving your wand, said hermione, watching
382	5	84	2	bewildered to react, we've got him! yelled the death eater nearest Harry, in an office off  silencio! cried hermione, and the man's voice was extinguished, he continued to mouth through the hole in
383	5	84	2	fine, let's swap, said hermione, seizing ron's raven and replacing it with her own fat bullfrog, silencio! the raven continued to open and close its sharp beak, but no sound came out, very
384	5	84	3	got him, silencio! the large and ugly raven in front of him let out a derisive caw, silencio! silencio! the raven cawed more loudly, it's the way you're moving your wand, said hermione
385	5	84	3	mr. weasley! wha ? oh  oh, right, said ron, very flustered, er  silencio! he jabbed at the bullfrog so hard that he poked it in the eye; the frog gave
386	5	84	3	reckon he'll risk it again, said ron, he's not stupid, he knows she nearly got him, silencio! the large and ugly raven in front of him let out a derisive caw, silencio! silencio
387	5	84	2	very close call last night, said hermione, i just wonder if umbridge knows how close it was, silencio! the bullfrog on which she was practicing her silencing charm was struck dumb mid-croak and glared at her
388	5	84	2	waved his wand without really concentrating; his bullfrog swelled like a green balloon and emitted a high-pitched whistle, silencio! said hermione hastily, pointing her wand at Harry's frog, which deflated silently before them, well
389	4	85	33	, said fudge comfortably, ludo whipped out his wand, directed it at his own throat, and said sonorus! and then spoke over the roar of sound that was now filling the packed stadium; his voice
390	4	85	33	directions, to station themselves around the maze, bagman now pointed his wand at his throat, muttered, sonorus, and his magically magnified voice echoed into the stands, ladies and gentlemen, the third and final
391	4	85	33	table; he pointed his wand at his throat as he had done at the world cup, said, sonorus! and his voice boomed out across the dark water toward the stands, well, all our champions
392	6	86	2	Harry indignantly, as she pulled his copy of advanced potion-making out of his bag and raised her wand, specialisrevelio! she said, rapping it smartly on the front cover, nothing whatsoever happened, the book simply
393	6	86	37	incantations that she did not need to say the words aloud, ernie macmillan, however, was muttering, specialisrevelio! over his cauldron, which sounded impressive, so Harry and ron hastened to imitate him, it
394	4	87	28	! moody raised his wand, he opened his mouth; Harry plunged his own hand into his robes  stupefy! there was a blinding flash of red light, and with a great splintering and crashing, the
395	4	87	1	at it; the spider jerked, scuttled around, and ran at Harry instead, stupefy! impedimenta! stupefy! but it was no use  the spider was either so large, or so magical, that
396	4	87	1	have thrown a stone at it; the spider jerked, scuttled around, and ran at Harry instead, stupefy! impedimenta! stupefy! but it was no use  the spider was either so large, or
397	4	87	15	his leg connected with the pincers and next moment he was in excruciating pain, he could hear cedric yelling stupefy! too, but his spell had no more effect than Harry's  Harry raised his wand as the
398	4	87	1	its back, its thick armor glinted in the light from Harry's wand, which he pointed at it, stupefy! the spell hit the skrewt's armor and rebounded; Harry ducked just in time, but could smell
399	4	87	1	out of his hand as a gigantic spider stepped into the path and began to bear down upon cedric, stupefy! Harry yelled; the spell hit the spider's gigantic, hairy black body, but for all the
400	4	87	\N	spells, on the count of three! Harry saw each of the dragon keepers pull out his wand, stupefy! they shouted in unison, and the stunning spells shot into the darkness like fiery rockets, bursting
401	4	87	1	think, he aimed high at the spider's underbelly, as he had done with the skrewt, and shouted stupefy! just as cedric yelled the same thing, the two spells combined did what one alone had not
402	4	87	\N	think, he yelled, duck! he seized the other two and pulled them down onto the ground, stupefy! roared twenty voices  there was a blinding series of flashes and Harry felt the hair on his
403	4	87	1	up and pointed his wand at krum just as krum looked up, krum turned and began to run, stupefy! Harry yelled, the spell hit krum in the back; he stopped dead in his tracks,
404	5	87	17	, clearly determined to repair the damage, Harry flung himself sideways as neville took aim again and shouted, stupefy! the jet of red light flew right over the death eater's shoulder and hit a glass-fronted cabinet on
405	5	87	1	and i know spells of such power that you, pathetic little boy, can never hope to compete  stupefy! yelled Harry, he had edged right around to where the goblin stood beaming up at the now
406	5	87	25	hurry, filch, hurry! shrieked umbridge, they'll be all over the school unless we do something  stupefy! a jet of red light shot out of the end of her wand and hit one of the
407	5	87	1	man relinquished Harry at once with a howl of pain and Harry whirled around to face him and gasped, stupefy! the death eater keeled over backward and his mask slipped off, it was macnair, buckbeak's would-be
408	5	87	2	merely ducked his head and sprinted onward; a hand caught him by the shoulder; he heard her-mione shout stupefy! and the hand released him at once, they were at the end of row ninety-seven; Harry
409	5	87	1	saw the knees of the death eaters bend, poking his wand out from under the desk he shouted, stupefy! a jet of red light hit the nearest death eater; he fell backward into a grandfather clock
410	5	87	2	so that he could not see, he ripped it off with his free hand and shouted, stup  stupefy! screamed hermione, who had just caught up with them, the jet of red light hit the
411	6	87	1	to disapparate  Harry tore past hagrid and his opponent, took aim at snape's back, and yelled, stupefy! he missed; the jet of red light soared past snape's head; snape shouted, run,
412	7	87	5	: scabior drew his wand, what d'you think you're playing at, woman? stupefy! she screamed, stupefy! they were no match for her, even though there were four of them against one of her
413	7	87	1	armchair and wrested the three wands from draco's grip, pointed all of them at greyback, and yelled, stupefy! the werewolf was lifted off his feet by the triple spell, flew up to the ceiling,
414	7	87	1	disembodied hand and wand pointing at him, he tried to draw his own wand, but too late : stupefy! yaxley slid to the ground to lie curled on the floor, Harry! hermione, if you
415	7	87	1	he raised his wand, not even troubling to keep it concealed beneath the invisibility cloak, and said, stupefy! there was a flash of red light; umbridge crumpled and her forehead hit the edge of the
416	7	87	5	of anger from his fellows : scabior drew his wand, what d'you think you're playing at, woman? stupefy! she screamed, stupefy! they were no match for her, even though there were four of
417	7	87	1	on the hot metal, Harry struggled to his feet and knew that the only way out was through, stupefy! he bellowed, and ron and hermione joined in : jets of red light flew into the crowd
418	7	87	1	spells shattered the tiled wall where ron's head had just been, as Harry, still invisible, yelled, stupefy! the great blond death eater was hit in the face by a jet of red light : he
419	7	87	1	them, and Harry had to sink low into the sidecar to avoid them, wriggling around he cried, stupefy! and a red bolt of light shot from his own wand, cleaving a gap between the four
420	7	87	1	who had sprinted after ron, lucius, narcissa, draco, and greyback wheeled about; Harry yelled, stupefy! and lucius malfoy collapsed onto the hearth, jets of light flew from draco's, narcissa's, and
421	2	88	16	but this was a mis-take; gasping for breath, malfoy pointed his wand at Harry's knees, choked, tarantallegra! and the next second Harry's legs began to jerk around out of his control in a kind of
422	5	88	38	at-tacker was now bearing down upon Harry and neville : dolohov, his long pale face twisted with glee, tarantallegra! he shouted, his wand pointing at neville, whose legs went immediately into a kind of frenzied
423	6	89	2	distorted reflection, you're covered in blood! said hermione, come here  she raised her wand, said tergeo! and siphoned off the dried blood, thanks, said Harry, feeling his now clean face,
424	7	89	3	out the oven earlier, hastily pulling out his wand, he pointed it at the rag and said, tergeo, the wand siphoned off most of the grease, looking rather pleased with himself, ron handed the
425	7	89	1	saw a few tiny movements from the pictures, as bathilda fumbled with logs for the fire, he muttered tergeo : the dust vanished from the photographs, and he saw at once that half a dozen were missing
426	3	90	20	the class over his shoulder, please watch closely, he raised the wand to shoulder height, said, waddiwasi! and pointed it at peeves, with the force of a bullet, the wad of chewing gum
427	1	91	2	, ron snarled, hermione rolled up the sleeves of her gown, flicked her wand, and said, wingardiumleviosa! their feather rose off the desk and hovered about four feet above their heads, oh, well
428	1	91	1	knowing what he was going to do he heard him-self cry the first spell that came into his head : wingardiumleviosa! the club flew suddenly out of the troll's hand, rose high, high up into the air
429	1	91	3	put it out with his hat, ron, at the next table, wasn't having much more luck, wingardiumleviosa! he shouted, waving his long arms like a windmill, you're saying it wrong, Harry heard
430	5	91	1	the brains slipped and slid over him and began spinning their long, col-ored tentacles, but he shouted, wingardiumleviosa! and they flew into the air away from him, slipping and sliding he ran on toward the
431	7	91	3	 yeah  ron looked around, then directed his wand at a twig on the ground and said, wingardiumleviosa! the twig flew up from the ground, spun through the air as if caught by a gust
432	7	91	1	then the sidecar began to lose height  in desperation Harry pointed his wand at the sidecar and shouted, wingardiumleviosa! the sidecar rose like a cork, unsteerable but at least still airborne : he had but a
\.


--
-- Name: instances_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annameyer
--

SELECT pg_catalog.setval('instances_id_seq', 1, false);


--
-- Data for Name: spells; Type: TABLE DATA; Schema: public; Owner: annameyer
--

COPY spells (id, incantantation, type_id, purpose) FROM stdin;
1	Accio	1	Summons an object
2	Aguamenti	1	Shoots water from wand.
3	Alohomora	1	Opens locked objects
4	Anapneo	2	Clears the target's airway.
5	Aparecium	2	Reveals invisible ink
6	Avada Kedavra	3	Murders opponent Unforgivable
7	Avifors	1	Turns small objects into birds
8	Avis	2	Launches birds from your wand
9	Cave Inimicum	2	Strengthen an enclosure from enemies
10	Colloportus	2	Magically locks door
11	Confringo	3	Explode Flames on target
12	Confundus	1	Used to confuse opponent
13	Conjunctivitis	3	Damages opponents eyesight
14	Crucio	3	Tortures opponent Unforgivable
15	Defodio	2	Dig out materials
16	Deletrius	2	Counters "Prior Incatato"
17	Densaugeo	2	Enlarges Teeth
18	Deprimo	2	Wind Damaging Spell
19	Diffindo	2	Splits seams
20	Dissendium	2	Opens "One eyed witch" hump
21	Duro	2	Makes Objects Hard
22	Engorgio	1	Enlarges and item
23	Ennervate	2	Counters Stupefy
24	Episkey	2	Heals minor injuries
25	Erecto	2	Erects things
26	Expecto Patronum	1	Creates a Patronus
27	Expelliarmus	1	Disarms your opponent
28	Expulso	2	Makes Objects Explode
29	Ferula	2	Creates bandages
30	Fidelius	1	Hides a secret within someone
31	Finite Incantatum	2	Stops any current spells
32	Flagrate	2	Allows user to write on objects
33	Flipendo	4	Knocks an object backwards
34	Furnunculus	3	Produces boils on opponent
35	Geminio	2	Duplicates an Object
36	Glisseo	2	Turns stairs into ramps
37	Homenum Revelio	2	Reveals humans nearby
38	Homorphus	1	Lockhart's Werewolf "cure"
39	Immobulus	1	Renders target immobile.
40	Impedimenta	1	Slows an advancing object
41	Imperio	3	Controls a person Unforgivable
42	Impervius	1	Makes an object repel water
43	Incarcerous	2	Ties someone up
44	Incendio	2	Starts a fire
45	Langlock	2	Glues opponent's tongue to roof of mouth
46	Legilimens	2	Allows the caster to delve into the mind of the victim
47	Levicorpus	2	Hangs victim upside down by feet
48	Liberacorpus	2	Counterspell
49	Locomotor Mortis	3	Locks opponents legs
50	Lumos	2	Creates light at wand tip
51	Meteolojinx Recanto	2	Causes weather effect spells to stop
52	Mobiliarbus	1	Moves objects with wand
53	Mobilicorpus	2	Moves unconscious bodies
54	Morsmordre	2	Conjures the Dark Mark
55	Muffliato	2	Prevents nearby people from listening to conversations
56	Nox	2	Counter to Lumos
57	Obliviate	1	Erases memories
58	Obscuro	2	Blindfolds the victim
59	Oppugno	2	Makes conjured items attack
60	Orchideous	2	Conjures a bunch of flowers
61	Pack	2	Packs a trunk (suitcase)
62	Peskipiksi Pesternomi	2	Removes Pixies (maybe)
63	Petrificus Totalus	2	Body - Bind
64	Piertotum Locomotor	2	Animates statues and armor suits
65	Point Me	1	Wand acts like a compass
66	Priori Incantatum	2	Result when brother wands duel
67	Prior Incantato	2	Reveals a wands last spell / cast
68	Protego	1	Cause spells to reflect back to the sender. 
69	Protego Horribilis	2	Protects one from Dark Magic
70	Protego Totalum	2	Area Protection Spell
71	Quietus	2	Counter spell for Sonorus
72	Reducio	2	Returns items to original size. Counters Engorgio
73	Reducto	2	Blasts solid objects aside
74	Relashio	2	Releases user from binding
75	Rennervate	2	Cures unconsciousness
76	Reparo	2	Repairs Things
77	Repello Muggletum	2	Keeps Muggles away
78	Rictusempra	1	Tickles opponent
79	Riddikulus	2	Use this spell and laugh to defeat a boggart
80	Salvio Hexia	2	Protection against hexes
81	Scruge	1	Destroys ectoplasm (remains of ghosts)
82	Sectumsempra	2	Causes wounds as if slashed by a sword
83	Serpensortia	2	Produces Snake
84	Silencio	2	Silences victim
85	Sonorus	2	Amplifies voice
86	Specialis Revelio	2	Reveals Hidden secrets or magical properties
87	Stupefy	2	Knocks out opponent
88	Tarantallegra	2	Forces opponent to dance
89	Tergeo	2	Cleans up messes
90	Waddiwasi	2	Unsticks an object
91	Wingardium Leviosa	1	Makes an object fly
92	Eat Slugs	3	Makes the opponent barf slugs
\.


--
-- Name: spells_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annameyer
--

SELECT pg_catalog.setval('spells_id_seq', 1, false);


--
-- Data for Name: types_of_spells; Type: TABLE DATA; Schema: public; Owner: annameyer
--

COPY types_of_spells (id, type) FROM stdin;
1	charm
2	spell
3	curse
4	jinx
\.


--
-- Name: types_of_spells_id_seq; Type: SEQUENCE SET; Schema: public; Owner: annameyer
--

SELECT pg_catalog.setval('types_of_spells_id_seq', 1, false);


--
-- Name: books books_pkey; Type: CONSTRAINT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY books
    ADD CONSTRAINT books_pkey PRIMARY KEY (id);


--
-- Name: characters characters_pkey; Type: CONSTRAINT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY characters
    ADD CONSTRAINT characters_pkey PRIMARY KEY (id);


--
-- Name: instances instances_pkey; Type: CONSTRAINT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY instances
    ADD CONSTRAINT instances_pkey PRIMARY KEY (id);


--
-- Name: spells spells_pkey; Type: CONSTRAINT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY spells
    ADD CONSTRAINT spells_pkey PRIMARY KEY (id);


--
-- Name: types_of_spells types_of_spells_pkey; Type: CONSTRAINT; Schema: public; Owner: annameyer
--

ALTER TABLE ONLY types_of_spells
    ADD CONSTRAINT types_of_spells_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

