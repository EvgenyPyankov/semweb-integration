# db1
CREATE TABLE band(
	id SERIAL PRIMARY KEY NOT NULL,
	name TEXT NOT NULL,
	founded DATE
);

CREATE TABLE album(
	id SERIAL PRIMARY KEY NOT NULL,
	title TEXT NOT NULL,
	band_id INT REFERENCES band(id),
	released DATE
);


# bd2
CREATE TABLE genre(
	id SERIAL PRIMARY KEY NOT NULL,
	title TEXT NOT NULL
);

CREATE TABLE song(
	id SERIAL PRIMARY KEY NOT NULL,
	title TEXT NOT NULL,
	artist TEXT,
	album TEXT
);

CREATE TABLE song_genre (
  song_id    INT REFERENCES song (id) ON UPDATE CASCADE ON DELETE CASCADE,
  genre_id INT REFERENCES genre (id) ON UPDATE CASCADE,
  CONSTRAINT song_genre_pkey PRIMARY KEY (song_id, genre_id)
);