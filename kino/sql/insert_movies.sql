alter table movies  drop column date_production;

alter table movies  add column date_production Varchar(4);

INSERT INTO movies(title, category, date_production, time_duration, description, movie_cast)VALUES('Twilight', 'Horror', '2008', 122,'Grumpy Emo chick ponders whether to shag a corpse or a dog over several years' ,'Robert Patison, Kristen Stewart');
INSERT INTO movies(title, category, date_production, time_duration, description, movie_cast)VALUES('Lord of The Rings', 'Fantasy', '2001', 178,'Group o 9 spends 3 ours returning jewelry' ,'Elijah Wood, Viggo Mortensen');
INSERT INTO movies(title, category, date_production, time_duration, description, movie_cast)VALUES('Titanic', 'Drama', '1997', 194,'Everyone tries ice bucket challenge' ,'Leonardo Di Caprio, Kate Winslet');
INSERT INTO movies(title, category, date_production, time_duration, description, movie_cast)VALUES('Snow White', 'Fantasy', '1937', 83,'A guy that''s alone in the forest kisses while seven other guys watch', '');
INSERT INTO movies(title, category, date_production, time_duration, description, movie_cast)VALUES('Speed', 'Action', '1994', 114,'Public transportation running ahead of schedule for once', 'Keanu Reeves, Sandra Bullock');