CREATE TABLE IF NOT EXISTS PuliDb.News(
ID INT AUTO_INCREMENT not null,
TITLE VARCHAR(120) not null,
TEXT VARCHAR(1500) not null,
CREATED_AT DATETIME(6) NOT NULL,
MODIFIED_AT DATETIME(6) NOT NULL,
PROFILE_PICTURE VARCHAR(255),
PRIMARY KEY (ID))
;
INSERT INTO PuliDb.News (TITLE, TEXT, CREATED_AT, MODIFIED_AT, PROFILE_PICTURE) VALUES ('Valpar till påsk', '8 valpar efter Harry och Zava föddes den 1a
                            april 2021. Tre vita, en tik och två hanar samt fem svarta.', '2021-07-01', '2021-07-01', '/images/dogs/all_puppies.jpg');
                            INSERT INTO PuliDb.News (TITLE, TEXT, CREATED_AT, MODIFIED_AT, PROFILE_PICTURE) VALUES ('Valpar till påsk', '8 valpar efter Harry och Zava föddes den 1a
                            april 2021. Tre vita, en tik och två hanar samt fem svarta.', '2021-05-01', '2021-05-01', '/images/dogs/all_puppies.jpg');