-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic

CREATE TABLE passengers
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
);

CREATE TABLE airlines 
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE cities
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE countries
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  passenger INTEGER REFERENCES passengers ON DELETE SET NULL,
  seat TEXT NOT NULL,
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airline INTEGER REFERENCES airlines ON DELETE SET NULL,
  from_city INTEGER REFERENCES cities ON DELETE SET NULL,
  from_country INTEGER REFERENCES countries ON DELETE SET NULL,
  to_city INTEGER REFERENCES cities ON DELETE SET NULL,
  to_country INTEGER REFERENCES countries ON DELETE SET NULL
);

INSERT INTO passengers
  (first_name, last_name)
VALUES
  ('Jennifer', 'Finch'),
  ('Thadeus', 'Gathercoal'),
  ('Sonja', 'Pauley'),
  ('Waneta', 'Skeleton'),
  ('Berkie', 'Wycliff'),
  ('Alvin', 'Leathes'),
  ('Cory', 'Squibbes');

INSERT INTO airlines
  (name)
VALUES
  ('United'),
  ('British Airways'),
  ('Delta'),
  ('TUI Fly Belgium'),
  ('American Airlines'),
  ('Air China'),
  ('Avianca Brasil');


INSERT INTO cities
  (name)
VALUES
  ('Washington D.C.'),
  ('London'),
  ('Seattle'),
  ('Los Angeles'),
  ('New York'),
  ('Paris'),
  ('Charlotte'),
  ('New Orleans'),
  ('Cedar Rapids'),
  ('Las Vegas'),
  ('Chicago'),
  ('Tokyo'),
  ('Mexico City'),
  ('Casablanca'),
  ('Sao Paolo'),
  ('Santiago'),
  ('Dubai'),
  ('Beijing');

INSERT INTO countries
  (name)
VALUES
  ('United States'),
  ('United Kingdom'),
  ('Japan'),
  ('UAE'),
  ('Morocco'),
  ('Brazil'),
  ('Chile'),
  ('France'),
  ('Mexico'),
  ('UAE'),
  ('China');

INSERT INTO tickets
  (passenger, seat, departure, arrival, airline, from_city, from_country, to_city, to_country)
VALUES
  (1, '33B', '2018-04-08 09:00:00', '2018-04-08 12:00:00', 1, 1, 1, 3, 1),
  (2, '8A', '2018-12-19 12:45:00', '2018-12-19 16:15:00', 2, 12, 3, 2, 2),
  (3, '12F', '2018-01-02 07:00:00', '2018-01-02 08:03:00', 3, 4, 1, 10, 1),
  (1, '20A', '2018-04-15 16:50:00', '2018-04-15 21:00:00', 3, 3, 1, 13, 9),
  (4, '23D', '2018-08-01 18:30:00', '2018-08-01 21:50:00', 4, 6, 8, 14, 5),
  (2, '18C', '2018-10-31 01:15:00', '2018-10-31 12:55:00', 6, 17, 10, 18, 11),
  (5, '9E', '2019-02-06 06:00:00', '2019-02-06 07:47:00', 1, 5, 1, 7, 1),
  (6, '1A', '2018-12-22 14:42:00', '2018-12-22 15:56:00', 5, 9, 1, 11, 1),
  (5, '32B', '2019-02-06 16:28:00', '2019-02-06 19:18:00', 5, 7, 1, 8, 1),
  (7, '10D', '2019-01-20 19:30:00', '2019-01-20 22:45:00', 7, 15, 6, 16, 7);