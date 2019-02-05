CREATE SEQUENCE users_seq START 1 INCREMENT 1;

CREATE TABLE users(
  id int PRIMARY KEY DEFAULT nextval('users_seq'),
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  login VARCHAR(30) NOT NULL,
  password VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  registered_date TIMESTAMP DEFAULT now()
)