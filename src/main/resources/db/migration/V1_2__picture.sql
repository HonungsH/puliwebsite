CREATE TABLE IF NOT EXISTS puli_db.Picture(
id INT AUTO_INCREMENT not null,
created_at datetime not null,
modified_at datetime not null,
description varchar(255) default null,
image_link varchar(100) not null,
dog_id int not null,
FOREIGN KEY (dog_id) REFERENCES dog(id),
PRIMARY KEY (ID));
