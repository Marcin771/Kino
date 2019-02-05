CREATE SEQUENCE movies_seq START 1 INCREMENT 1;

CREATE TABLE movies(
  id int PRIMARY KEY DEFAULT nextval('movies_seq'),
  title VARCHAR(100) NOT NULL,
  category VARCHAR(100) NOT NULL,
  date_production int NOT NULL,
  time_duration int NOT NULL,
  description VARCHAR(100) NOT NULL,
  movie_cast VARCHAR(255) NOT NULL
)