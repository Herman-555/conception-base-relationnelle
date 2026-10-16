CREATE TABLE plats (
    id_plat SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prix BIGINT DEFAULT 0 NOT NULL
);

INSERT INTO plats (nom, prix) VALUES ('Romazava',7000);
INSERT INTO plats (nom, prix) VALUES ('Ravitoto sy henakisoa',8000);
INSERT INTO plats (nom, prix) VALUES ('Akoho sy voanio',8500);
INSERT INTO plats (nom, prix) VALUES ('Mi sao',6000);
INSERT INTO plats (nom, prix) VALUES ('Soupe chinoise',5000);
INSERT INTO plats (nom, prix) VALUES ('Mofo gasy (les 4)',1000);
INSERT INTO plats (nom, prix) VALUES ('Ranon''ampango',500);
