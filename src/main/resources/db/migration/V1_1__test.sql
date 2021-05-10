CREATE TABLE IF NOT EXISTS PULI_DB.DOG (
  ID INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(50) NOT NULL,
  DATE_OF_BIRTH DATE NOT NULL,
  CREATED_AT DATETIME(6) NOT NULL,
  MODIFIED_AT DATETIME(6) NOT NULL,
  DESCRIPTION TEXT DEFAULT NULL,
  PROFILE_PICTURE VARCHAR(100),
  OWNER VARCHAR(100) DEFAULT NULL,
  PEDIGREE VARCHAR(100) DEFAULT NULL,
  LINKTOSKK VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY (ID))
;