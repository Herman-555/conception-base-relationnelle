SELECT 
    com.id_commande, 
    com.date AS date_commande,
    CASE 
        WHEN com.id_client IS NOT NULL THEN cli.nom
        ELSE 'Client de passage'
    END AS nom_client
      FROM commandes com 
      FULL JOIN clients cli ON com.id_client = cli.id_client 
    ORDER BY date_commande ASC ;
    