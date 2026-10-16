CREATE TABLE serveurs (
    id_serveur SERIAL PRIMARY KEY,
    nom VARCHAR (100)
);

CREATE TABLE tables (
    id_table SERIAL PRIMARY KEY
);

ALTER TABLE commandes ADD COLUMN id_table INT DEFAULT NULL REFERENCES tables (id_table);
ALTER TABLE commandes ADD COLUMN id_serveur INT DEFAULT NULL REFERENCES serveurs (id_serveur);

INSERT INTO tables DEFAULT VALUES;
INSERT INTO tables DEFAULT VALUES;
INSERT INTO tables DEFAULT VALUES;
INSERT INTO tables DEFAULT VALUES;
INSERT INTO tables DEFAULT VALUES;
INSERT INTO tables DEFAULT VALUES;
INSERT INTO tables DEFAULT VALUES;
INSERT INTO tables DEFAULT VALUES;

INSERT INTO serveurs (nom) VALUES ('Njaka Rakoto');
INSERT INTO serveurs (nom) VALUES ('Lalao Rasoa');

UPDATE commandes SET id_serveur = 1, id_table = 3 WHERE id_commande in (1,2);
UPDATE commandes SET id_serveur = 1 WHERE id_commande = 3 ;
