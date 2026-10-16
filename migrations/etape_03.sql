CREATE TABLE commandes (
    id_commande SERIAL PRIMARY KEY,
    date TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE ligne_commandes (
    id_ligne_commande SERIAL PRIMARY KEY,
    id_commande INT REFERENCES commandes (id_commande),
    id_plat INT REFERENCES plats (id_plat),
    quantite INT NOT NULL
);

INSERT INTO commandes (date) VALUES ('2024-06-01 12:00:00');
INSERT INTO commandes (date) VALUES ('2024-06-02 06:00:00');

INSERT INTO ligne_commandes (id_commande, id_plat, quantite) VALUES (1, 1, 2);
INSERT INTO ligne_commandes (id_commande, id_plat, quantite) VALUES (1, 2, 1);

INSERT INTO ligne_commandes (id_commande, id_plat, quantite) VALUES (2, 5, 1);
INSERT INTO ligne_commandes (id_commande, id_plat, quantite) VALUES (2, 6, 2);

