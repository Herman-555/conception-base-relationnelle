
-- Habituees
CREATE TABLE clients (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR (200)
);

INSERT INTO clients (nom) VALUES ('Zety'), ('Zanety');

ALTER TABLE commandes ADD COLUMN id_client INT DEFAULT NULL REFERENCES clients (id_client);

INSERT INTO commandes (date) VALUES ('2024-06-03 07:00:00');
INSERT INTO ligne_commandes (id_commande, id_plat, quantite) VALUES (3, 1, 2);

UPDATE commandes SET id_client = 1 WHERE id_commande = 1 ;
UPDATE commandes SET id_client = 2 WHERE id_commande = 2 ;

