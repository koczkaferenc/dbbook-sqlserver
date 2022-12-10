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
  Osztaly_id INTEGER,
  Nev VARCHAR(32),
  Szemeszter varchar(32)
);

CREATE TABLE tanulok (
  Tanulo_id INTEGER,
  Vezeteknev VARCHAR(32),
  Keresztnev VARCHAR(32),
  Email varchar(64)
);

CREATE TABLE jegyek (
  Jegy INTEGER
);

INSERT INTO tanulok (Tanulo_id, Vezeteknev, Keresztnev, Email) VALUES (1, 'Kiss', 'Lajos', 'kiss.lajos@uni-nke.hu');
INSERT INTO tanulok (Tanulo_id, Vezeteknev, Keresztnev, Email) VALUES (2, 'Szabó', 'Aladár', 'szabo.aladar@uni-nke.hu');
INSERT INTO tanulok (Tanulo_id, Vezeteknev, Keresztnev, Email) VALUES (3, 'Nagy', 'Ágnes', 'nagy.agnes@gmail.com');
INSERT INTO tanulok (Tanulo_id, Vezeteknev, Keresztnev, Email) VALUES (4, 'Matolcsi', 'Árpád', 'orto@gmail.com');

INSERT INTO osztalyok (Osztaly_id, Nev, Szemeszter) VALUES (1, '4.a.','2022 ősz');
INSERT INTO osztalyok (Osztaly_id, Nev, Szemeszter) VALUES (2, '5.a.','2022 ősz');
INSERT INTO osztalyok (Osztaly_id, Nev, Szemeszter) VALUES (3, '4.a.','2023 tavasz');
INSERT INTO osztalyok (Osztaly_id, Nev, Szemeszter) VALUES (4, '5.a.','2023 tavasz');

INSERT INTO JEGYEK ( Jegy ) VALUES (4);
INSERT INTO JEGYEK ( Jegy ) VALUES (3);
INSERT INTO JEGYEK ( Jegy ) VALUES (5);
INSERT INTO JEGYEK ( Jegy ) VALUES (4);

