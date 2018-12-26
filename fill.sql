# bd1
INSERT INTO band(name, founded)
VALUES ('Linkin Park', '1999-01-01'),
  ('System of a Down', '1994-05-13');


INSERT INTO album(title, band_id, released)
VALUES ('Meteora', 1, '2003-03-25'),
   ('Toxicity', 2, '2001-09-04'),
   ('Hypnotize', 2, '2005-11-24');



# bd2
INSERT INTO genre(title)
VALUES('nu metal'),
	('industrial'),
	('classic'),
	('rock'),
	('metal');

INSERT INTO song(title, artist, album)
VALUES('Faint', 'Linkin Park', 'Meteora'),
	('Numb', 'Linkin Park', 'Meteora'),
	('Hit the Floor', 'Linkin Park', 'Meteora'),
	('Forest', 'System of a Down', 'Toxicity'),
	('Prison Song', 'System of a Down', 'Toxicity'),
	('Attack', 'System of a Down', 'Hypnotize');

INSERT INTO song_genre(song_id, genre_id)
VALUES(1, 4),
	(1, 1),
	(2, 1),
	(3, 4),
	(4, 5),
	(5, 5),
	(6, 5),
	(6, 1),
	(6, 4);