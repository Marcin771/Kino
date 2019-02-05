CREATE SEQUENCE seances_seq START 1 INCREMENT 1;

CREATE TABLE seances(
 id int PRIMARY KEY DEFAULT nextval('seances_seq'),
 id_movie integer REFERENCES movies(id),
 data_start VARCHAR(10) NOT NULL,
 data_start_time VARCHAR(5) NOT NULL,
 price double PRECISION NOT NULL
)