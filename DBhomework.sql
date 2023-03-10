CREATE TABLE if not EXISTS genres(
	id SERIAL PRIMARY KEY,
	name VARCHAR (120) NOT null
);

CREATE TABLE if not EXISTS musicians(
	id SERIAL PRIMARY KEY,
	name VARCHAR (120) NOT NULL
);

CREATE TABLE if not EXISTS musicians_genres(
	genre_id INTEGER REFERENCES genres(id),
	musician_id INTEGER REFERENCES musicians(id),
	PRIMARY KEY (genre_id, musician_id)
); 

CREATE TABLE if not EXISTS albums(
	id SERIAL PRIMARY KEY,
	name VARCHAR (120) NOT NULL,
	release_date DATE
);

CREATE TABLE if not EXISTS albums_musicians(
	album_id INTEGER references albums(id),
	musician_id INTEGER references musicians(id),
	PRIMARY KEY (album_id, musician_id)
);

CREATE TABLE if not EXISTS collections(
	id SERIAL PRIMARY KEY,
	name VARCHAR (120) NOT NULL,
	created_at DATE
);

CREATE TABLE if not EXISTS tracks(
	id SERIAL PRIMARY KEY,
	name VARCHAR (120) NOT NULL,
	duration_in_sec INTEGER, 
	album_id INTEGER references albums(id),
	collection_id INTEGER references collections(id)
);

CREATE TABLE if not EXISTS collections_tracks(
	collection_id INTEGER references collections(id),
	track_id INTEGER references tracks(id),
	PRIMARY KEY (collection_id, track_id)
);

	INSERT INTO musicians (name)
	VALUES ('AC/DC');
	
	INSERT INTO musicians (name)
	VALUES ('Led Zeppelin');
	
	INSERT INTO musicians (name)
	VALUES ('No Doubt');
	
	INSERT INTO musicians (name)
	VALUES ('Ella Fitzgerald');
	
	INSERT INTO musicians (name)
	VALUES ('Eminem');
	
	INSERT INTO musicians (name)
	VALUES ('Elton John');
	
	INSERT INTO musicians (name)
	VALUES ('Madness');
	
	INSERT INTO musicians (name)
	VALUES ('The Beatles');
	
	INSERT INTO genres (name)
	VALUES ('Rock');
	
	INSERT INTO genres (name)
	VALUES ('Jazz');
	
	INSERT INTO genres (name)
	VALUES ('Hip Hop/Rap');
	
	INSERT INTO genres (name)
	VALUES ('Pop');
	
	INSERT INTO genres (name)
	VALUES ('Ska');

INSERT INTO albums (name, release_date)
VALUES ('Highway to Hell', '1979-02-02');

INSERT INTO albums (name, release_date)
VALUES ('One Step Beyond…', '1979-02-02');

INSERT INTO albums (name, release_date)
VALUES ('Led Zeppelin', '1969-02-02');

INSERT INTO albums (name, release_date)
VALUES ('Tragic Kingdom', '1995-02-02');

INSERT INTO albums (name, release_date)
VALUES ('All That Jazz', '1989-02-02');

INSERT INTO albums (name, release_date)
VALUES ('The Slim Shady', '1999-02-02');

INSERT INTO albums (name, release_date)
VALUES ('The Diving Board', '2018-02-02');

INSERT INTO albums (name, release_date)
VALUES ('Abbey Road', '1969-02-02');

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Highway to hell', 1, 208 );

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('One Step Beyond', 2, 138);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Good Times, Bad Times', 3, 186);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Black Mountain Side', 3, 125);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Spiderwebs', 4, 248);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Dream a little dream of me', 5, 300);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Soap', 6, 34);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Come Together', 8, 259);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Sixteen', 4, 201);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Just a Girl', 4, 208);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Touch Too Much', 1, 267);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Madness', 2, 51);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Jersey Bounce', 5, 224);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('My name is', 6, 199);

INSERT INTO tracks (name, album_id, duration_in_sec)
VALUES ('Voyeur', 7, 256);

INSERT INTO collections (name, created_at)
VALUES ('collection1', now());

INSERT INTO collections (name, created_at)
VALUES ('collection2', now());

INSERT INTO collections (name, created_at)
VALUES ('collection3', now());

INSERT INTO collections (name, created_at)
VALUES ('collection4', now());

INSERT INTO collections (name, created_at)
VALUES ('collection5', now());

INSERT INTO collections (name, created_at)
VALUES ('collection6', now());

INSERT INTO collections (name, created_at)
VALUES ('collection7', now());

INSERT INTO collections (name, created_at)
VALUES ('collection8', now());

INSERT INTO albums_musicians (album_id, musician_id)
VALUES (1, 1);

INSERT INTO albums_musicians (album_id, musician_id)
VALUES (2, 7);

INSERT INTO albums_musicians (album_id, musician_id)
VALUES (3, 2 );

INSERT INTO albums_musicians (album_id, musician_id)
VALUES (4, 3 );

INSERT INTO albums_musicians (album_id, musician_id)
VALUES (5, 4 );

INSERT INTO albums_musicians (album_id, musician_id)
VALUES (6, 5);

INSERT INTO albums_musicians (album_id, musician_id)
VALUES (7, 6);

INSERT INTO albums_musicians (album_id, musician_id)
VALUES (8, 8);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (1, 8);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (1, 1);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (1, 2);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (2, 4);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (3, 5);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (4, 6);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (4, 8);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (4, 3);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (5, 7);

INSERT INTO musicians_genres (genre_id, musician_id)
VALUES (5, 3);


INSERT INTO collections_tracks (collection_id, track_id)
VALUES (1, 1);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (1, 3);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (2, 2);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (2, 4);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (3, 5);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (3, 7);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (4, 6);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (4, 7);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (5, 5);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (5, 6);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (6, 8);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (6, 10);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (7, 9);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (7, 11);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (8, 12);

INSERT INTO collections_tracks (collection_id, track_id)
VALUES (8, 13);


--Select-запросы:
--название и год выхода альбомов, вышедших в 2018 году;

SELECT name, release_date FROM albums
WHERE  extract (year from release_date) = 2018;
--название и продолжительность самого длительного трека;

SELECT name, duration_in_sec FROM tracks
ORDER BY duration_in_sec DESC
LIMIT 1;
--название треков, продолжительность которых не менее 3,5 минуты;

SELECT name FROM tracks 
WHERE duration_in_sec > 210;

--названия сборников, вышедших в период с 2018 по 2020 год включительно;

SELECT name FROM collections 
WHERE created_at >= 2018-01-01 AND created_at < 2021-01-01;

--исполнители, чье имя состоит из 1 слова;

SELECT name FROM musicians
WHERE name NOT LIKE '%%';


--название треков, которые содержат слово "мой"/"my".

SELECT name FROM tracks 
WHERE name ILIKE '% мой %' OR name ILIKE '% my %';


