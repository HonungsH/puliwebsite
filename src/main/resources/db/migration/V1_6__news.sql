CREATE TABLE IF NOT EXISTS PuliDb.News(
ID INT AUTO_INCREMENT not null,
TITLE VARCHAR(120) not null,
TEXT VARCHAR(1500) not null,
CREATED_AT DATETIME(6) NOT NULL,
MODIFIED_AT DATETIME(6) NOT NULL,
PROFILE_PICTURE VARCHAR(255),
PRIMARY KEY (ID));
INSERT INTO PuliDb.News (TITLE, TEXT, CREATED_AT, MODIFIED_AT, PROFILE_PICTURE) VALUES ('Valpar till påsk', '8 valpar efter Harry och Zava föddes den 1a april 2021. Tre vita, en tik och två hanar samt fem svarta.', '2021-04-01', '2021-04-01', '/images/dogs/all_puppies.jpg');
INSERT INTO PuliDb.News (TITLE, TEXT, CREATED_AT, MODIFIED_AT, PROFILE_PICTURE) VALUES ('Alla valpar är nu hemma hos sina nya familjer!', 'Test test test TEXT ?!=!=?!??+ ', '2021-06-20', '2021-06-20', '/images/dogs/3_puppies.jpg');
INSERT INTO PuliDb.News (TITLE, TEXT, CREATED_AT, MODIFIED_AT, PROFILE_PICTURE) VALUES ('Valpar', 'Fyra valpar efter Doriz och Atilla föddes den 30 juli 2021. Alla svarta.', '2021-07-30', '2021-07-30', '/images/dogs/puppy_atilla_doriz.jpg');
INSERT INTO PuliDb.News (TITLE, TEXT, CREATED_AT, MODIFIED_AT, PROFILE_PICTURE) VALUES ('Valpar förväntas till nyåar', 'En Nyhet utan Bild!', '2021-11-05', '2021-11-06', null);