set character_set_client='utf8';
set character_set_connection='utf8';
set character_set_database='utf8';
set character_set_results='utf8';
set character_set_server='utf8';
show variables like 'char%';

CREATE DATABASE IF NOT EXISTS iskola CHARACTER SET utf8;
GRANT ALL PRIVILEGES ON iskola.* TO 'dbuser'@'%';
USE iskola;

CREATE TABLE osztalyok (
  osztaly_id INTEGER,
  nev VARCHAR(32),
  szemeszter varchar(32),
  PRIMARY KEY(osztaly_id)
);

CREATE TABLE tanulok (
  tanulo_id INTEGER,
  vezeteknev VARCHAR(32),
  keresztnev VARCHAR(32),
  email varchar(64),
  osztaly_id INTEGER,
  PRIMARY KEY(tanulo_id),
  FOREIGN KEY (osztaly_id) REFERENCES osztalyok(osztaly_id)
);

CREATE TABLE jegyek (
  jegy INTEGER
);

INSERT INTO tanulok (tanulo_id, vezeteknev, keresztnev, email) VALUES (1, 'Kiss', 'Lajos', 'kiss.lajos@uni-nke.hu');
INSERT INTO tanulok (tanulo_id, vezeteknev, keresztnev, email) VALUES (2, 'Szabó', 'Aladár', 'szabo.aladar@uni-nke.hu');
INSERT INTO tanulok (tanulo_id, vezeteknev, keresztnev, email) VALUES (3, 'Nagy', 'Ágnes', 'nagy.agnes@gmail.com');
INSERT INTO tanulok (tanulo_id, vezeteknev, keresztnev, email) VALUES (4, 'Matolcsi', 'Árpád', 'orto@gmail.com');

INSERT INTO osztalyok (osztaly_id, nev, szemeszter) VALUES (1, '4.a.','2022 ősz');
INSERT INTO osztalyok (osztaly_id, nev, szemeszter) VALUES (2, '5.a.','2022 ősz');
INSERT INTO osztalyok (osztaly_id, nev, szemeszter) VALUES (3, '4.a.','2023 tavasz');
INSERT INTO osztalyok (osztaly_id, nev, szemeszter) VALUES (4, '5.a.','2023 tavasz');


