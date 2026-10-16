CREATE TABLE categories (
    id_categorie SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);

INSERT INTO categories (nom) VALUES ('Plat malagasy');
INSERT INTO categories (nom) VALUES ('Plat chinois');
INSERT INTO categories (nom) VALUES ('Soupe');
INSERT INTO categories (nom) VALUES ('Dessert et goûter');
INSERT INTO categories (nom) VALUES ('Boisson');
INSERT INTO categories (nom) VALUES ('Plat congolais');

ALTER TABLE plats ADD COLUMN id_categorie INT REFERENCES categories (id_categorie);

UPDATE plats SET id_categorie = 1 WHERE nom IN ('Romazava', 'Ravitoto sy henakisoa', 'Akoho sy voanio');
UPDATE plats SET id_categorie = 2 WHERE nom = 'Mi sao';
UPDATE plats SET id_categorie = 3 WHERE nom = 'Soupe chinoise';
UPDATE plats SET id_categorie = 4 WHERE nom = 'Mofo gasy (les 4)';
UPDATE plats SET id_categorie = 5 WHERE nom = 'Ranon''ampango';