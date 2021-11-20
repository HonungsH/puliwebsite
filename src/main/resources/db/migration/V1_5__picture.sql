CREATE TABLE IF NOT EXISTS PuliDb.Picture(
id INT AUTO_INCREMENT not null,
created_at datetime not null,
modified_at datetime not null,
title varchar(100) not null,
filepath varchar(250) not null,
album_id int not null,
FOREIGN KEY (album_id) REFERENCES Album(id),
PRIMARY KEY (ID));