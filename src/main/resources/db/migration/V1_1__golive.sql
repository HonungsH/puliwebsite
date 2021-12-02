-- Create tables
CREATE TABLE IF NOT EXISTS PuliDb.Dog (
  ID INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(50) NOT NULL,
  BREEDING_NAME VARCHAR(100) NOT NULL,
  COLOUR VARCHAR(50) DEFAULT NULL,
  DATE_OF_BIRTH DATE NOT NULL,
  CREATED_AT DATETIME(6) NOT NULL,
  MODIFIED_AT DATETIME(6) NOT NULL,
  DESCRIPTION TEXT DEFAULT NULL,
  PROFILE_PICTURE VARCHAR(255),
  LINK_TO_SKK VARCHAR(255) DEFAULT NULL,
  BREEDING_HISTORY TEXT DEFAULT NULL,
  PRIMARY KEY (ID))
;

CREATE TABLE IF NOT EXISTS PuliDb.Text(
ID INT AUTO_INCREMENT not null,
TEXT_GROUP VARCHAR(50) not null,
TEXT_KEY VARCHAR(50) not null,
TEXT TEXT not null,
PRIMARY KEY (ID))
;

CREATE TABLE IF NOT EXISTS PuliDb.Album(
ID INT AUTO_INCREMENT NOT NULL,
CREATED_AT DATETIME(6) NOT NULL,
MODIFIED_AT DATETIME(6) NOT NULL,
TITLE VARCHAR(50) NOT NULL,
DESCRIPTION TEXT,
PRIMARY KEY (ID))
;

CREATE TABLE IF NOT EXISTS PuliDb.Picture(
id INT AUTO_INCREMENT not null,
created_at datetime not null,
modified_at datetime not null,
title varchar(100) not null,
filepath varchar(250) not null,
album_id int not null,
FOREIGN KEY (album_id) REFERENCES Album(id),
PRIMARY KEY (ID));

CREATE TABLE IF NOT EXISTS PuliDb.News(
ID INT AUTO_INCREMENT not null,
TITLE VARCHAR(120) not null,
TEXT VARCHAR(1500) not null,
CREATED_AT DATETIME(6) NOT NULL,
MODIFIED_AT DATETIME(6) NOT NULL,
PROFILE_PICTURE VARCHAR(255),
PRIMARY KEY (ID));

-- Texts
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('contact', 'name', 'Carina Karlsson');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('contact', 'number', '+46(0)708 48 75 02');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('contact', 'address', 'Slågarpsvägen 264-0 <br>Trelleborg - Sverige');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('aboutPuli', 'mainText', 'Det var en gång en puli...');
-- Contact
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('contact', 'email', 'xaidazpuli@gmail.com');

-- Homepage
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('homepage', 'aboutUs', 'Vår kennel vill ha sunda och friska hundar med bra temperament.<br>De ska vara rastypiska och
                            bör ha
                            kvar sitt arv som vakt- och vallhund.<br>Vi strävar efter att alla hundar som är i avel är
                            HD-röntgade med godkänt resultat och att de ska vara ögonlysta.<br> <br>');

-- AboutPuli
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('aboutPuli', 'general', 'Puli är en vallhund ursprungligen från Ungern. Hunden passar perfekt till träning av lydnad, vallning
eller agility, och precis lika bra som sällskapshund.
<br>
Puli är en lojal vän som gärna följer med dig på äventyr.');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('aboutPuli', 'sizeAndLook', 'Rasen är mellanstor. Mankhöjd för hanar är 39–45 cm och för tikar 36–42 cm. Vikt för hanar är
13–15 kg och för tikar 10–13 kg. Den har en tjock, filtad och vågig snörpäls. Färgerna är svart,
fakó med svart mask, grå och pärlvit.');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('aboutPuli', 'fur', 'Puli fäller inte och man behöver varken borsta eller kamma den. Vid cirka 10 månaders ålder
börjar snören och band bildas av pälsen. Då kan man behöva hjälpa till och dela på pälsen så att
snörena inte blir för stora. Fullpälsad
blir den vid 4 till 6 års ålder.');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('aboutPuli', 'health', 'Puli är en mycket frisk och sund hundras med få sjukdomsfall.');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('aboutPuli', 'mentality', 'Puli är en självständig, snabb, pigg, klok, orädd, glad och lättlärd hund.
<br><br>En
Puli älskar att få göra något, men är ändå ingen hund som &quot;klättrar på
väggarna&quot;.
De anpassar sig bra och är lätta att ha med sig.');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('aboutPuli', 'other', 'Rasen kan passa dig som är pälsallergiker då den inte fäller.');

-- Dogs
insert into PuliDb.Dog (name, breeding_name, colour, date_of_birth, description, created_at, modified_at, profile_picture, link_to_skk, breeding_history)
values ('Harry', 'Midseamanors Hairy Harry','Vit' , '2008-09-28',
'Harry, vår holländare, en vit kille med en rejäl benstomme, riktigt vit och kanonpigment.
Harrys mamma och pappa är trevliga och mycket bra puli.
Bra kroppar, bra päls och vithet, kanonpigment.

Harry är en cool kille med full av bus, glad och postiv, är av kattmodellen,
mycket lek med tassar och pussas tycker man om...

Vi hoppas att denna lille vite kille kan tillföra vår kennel nytt vitt blod, och förhoppningvis även andra i Sverige.
Harry bor nu hos Britt med familj i Vintrie', now(), now(), '/images/dogs/harry.png',
'https://hundar.skk.se/hunddata/Hund.aspx?hundid=2558863',
'Harry har 3 kullar');

insert into PuliDb.Dog (name, breeding_name, colour, date_of_birth, description, created_at, modified_at, profile_picture, link_to_skk)
values ('Teqla', 'Xaida''z Ha Pi Taisza-Tequila', 'Vit', '2021-03-30', 'Teqla är efter Harry och Zava, en busig liten tjej. ', now(), now(),
'/images/dogs/teqla2.jpg', 'https://hundar.skk.se/hunddata/Hund.aspx?hundid=3519388');

insert into PuliDb.Dog (name, breeding_name, colour, date_of_birth, description, created_at, modified_at, profile_picture, link_to_skk, breeding_history)
values ('Zava', 'Xaida''z Hi-Le Piazava-Pisti', 'Svart', '2019-03-03', 'Zava är bäst', now(), now(),
'/images/dogs/zava.jpg',
'https://hundar.skk.se/hunddata/Hund.aspx?hundid=3360248', null);

insert into PuliDb.Dog (name, breeding_name, colour, date_of_birth, description, created_at, modified_at, profile_picture, link_to_skk, breeding_history)
values ('Micko', 'Xaida''z Mackó-Meduza', 'Vit', '2016-06-01', 'Micko', now(), now(),
'/images/dogs/micko_1.jpg', 'https://hundar.skk.se/hunddata/Hund.aspx?hundid=3153077', 'Micko har flera avkommor.');
insert into PuliDb.Dog (name, breeding_name, colour, date_of_birth, description, created_at, modified_at, profile_picture, link_to_skk, breeding_history)
values ('Krizti', 'Xaida''z Kriztall', 'Facó', '2014-10-10', 'Fin', now(), now(),
'/images/dogs/krizti.jpg', null, null);

-- News
INSERT INTO PuliDb.News (TITLE, TEXT, CREATED_AT, MODIFIED_AT, PROFILE_PICTURE) VALUES ('Valpar till påsk', '8 valpar efter Harry och Zava föddes den 1a april 2021. Tre vita, en tik och två hanar samt fem svarta.', '2021-04-01', '2021-04-01', '/images/dogs/all_puppies.jpg');
INSERT INTO PuliDb.News (TITLE, TEXT, CREATED_AT, MODIFIED_AT, PROFILE_PICTURE) VALUES ('Valpar', 'Fyra valpar efter Doriz och Atilla föddes den 30 juli 2021. Alla svarta.', '2021-07-30', '2021-07-30', '/images/dogs/puppy_atilla_doriz.jpg');
INSERT INTO PuliDb.News (TITLE, TEXT, CREATED_AT, MODIFIED_AT, PROFILE_PICTURE) VALUES ('Vi provade på vallning', 'I närheten av Maglarps kyrka provade vi på vallning tillsammans med våra Pulis', '2021-11-05', '2021-11-06', '/images/dogs/vallning.jpg');