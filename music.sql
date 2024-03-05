-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE albums
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  artists INTEGER REFERENCES artists ON DELETE SET NULL,
  album INTEGER REFERENCES albums ON DELETE SET NULL,
  producers INTEGER REFERENCES producers ON DELETE SET NULL
);

INSERT INTO artists
  (name)
VALUES
  ('Hanson'),
  ('{"Queen"}'),
  ('{"Nickelback"}'),
  ('Mariah Cary'),
  ('Boyz II Men'),
  ('Lady Gaga'),
  ('Bradley Cooper'),
  ('Katy Perry'),
  ('Juicy J'),
  ('Maroon 5'),
  ('Christina Aguilera'),
  ('{"Avril Lavigne"}'),
  ('{"Destiny''s Child"}'),
  ('Jay Z'),
  ('Alicia Keys');

INSERT INTO albums
  (name)
VALUES
  ('Middle of Nowhere'),
  ('A Night at the Opera'),
  ('Daydream'),
  ('A Star Is Born'),
  ('The Blueprint 3'),
  ('Prism'),
  ('Hands All Over'),
  ('Let Go'),
  ('The Writing''s on the Wall'),
  ('Silver Side Up');

INSERT INTO producers
  (name)
VALUES
  ('Dust Brothers'),
  ('Stephen Lironi'),
  ('{"Roy Thomas Baker"}'),
  ('{"Walter Afanasieff"}'),
  ('{"Benjamin Rice"}'),
  ('{"Rick Parashar"}'),
  ('{"Al Shux"}'),
  ('Max Martin'),
  ('Cirkut'),
  ('Benny Blanco'),
  ('{"The Matrix"}'),
  ('{"Darkchild"}');

INSERT INTO songs
  (title, duration_in_seconds, release_date, artists, album, producers)
VALUES
  ('MMMBop', 238, '04-15-1997', 1, 1, 1),
  ('Bohemian Rhapsody', 355, '10-31-1975', 2, 2, 3),
  ('One Sweet Day', 282, '11-14-1995', 4, 3, 4),
  ('Shallow', 216, '09-27-2018', 6, 4, 5),
  ('How You Remind Me', 223, '08-21-2001', 3, 10, 6),
  ('New York State of Mind', 276, '10-20-2009', 4, 5, 7),
  ('Dark Horse', 215, '12-17-2013', 7, 6, 9),
  ('Moves Like Jagger', 201, '06-21-2011', 9, 7, 10),
  ('Complicated', 244, '05-14-2002', 11, 8, 11),
  ('Say My Name', 240, '11-07-1999', 12, 9, 12);
