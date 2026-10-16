SELECT 
    COUNT(com.*) AS nombre_commandes,
    SUM( l.quantite * p.prix ) AS chiffre_affaires,
    (serv.nom) AS nom_serveur
    FROM commandes com 
    RIGHT JOIN serveurs serv ON com.id_serveur = serv.id_serveur
    JOIN ligne_commandes l ON com.id_commande = l.id_commande
    JOIN plats p ON l.id_plat = p.id_plat
    GROUP BY serv.nom, serv.id_serveur
    ORDER BY serv.nom, serv.id_serveur
;