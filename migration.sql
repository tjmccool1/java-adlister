USE adlister_db;

DROP TABLE IF EXISTS users;
CREATE TABLE users(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(25),
  email VARCHAR(100),
  password VARCHAR(25),
  PRIMARY KEY (id)
);

DROP TABLE IF EXISTS ads;
CREATE TABLE ads(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED,
  title VARCHAR(100),
  desctiption LONGBLOB,

  KEY (id),
#   KEY (user_id),


  FOREIGN KEY (user_id)
    REFERENCES users(id)
    ON DELETE CASCADE,
  PRIMARY KEY (id)

);