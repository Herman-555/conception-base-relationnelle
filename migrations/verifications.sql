SELECT 
    c.id_commande, 
    c.date, 
    SUM(l.quantite * p.prix) AS montant_total 
    FROM commandes c 
    JOIN ligne_commandes l ON c.id_commande = l.id_commande
    JOIN plats p ON l.id_plat = p.id_plat
    GROUP BY c.id_commande, c.date;