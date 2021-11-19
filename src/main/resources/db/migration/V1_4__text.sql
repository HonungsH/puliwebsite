CREATE TABLE IF NOT EXISTS PuliDb.Text(
ID INT AUTO_INCREMENT not null,
TEXT_GROUP VARCHAR(50) not null,
TEXT_KEY VARCHAR(50) not null,
TEXT TEXT not null,
PRIMARY KEY (ID))
;
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('kontakt', 'name', 'Carina Karlsson');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('kontakt', 'number', '+46(0)708 48 75 02');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('kontakt', 'address', 'Slågarpsvägen 264-0 <br>Trelleborg - Sverige');
INSERT INTO PuliDb.Text (TEXT_GROUP, TEXT_KEY, TEXT) VALUES ('omPuli', 'mainText', 'Det var en gång en puli...');