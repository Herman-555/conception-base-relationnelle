SELECT c.nom as nom_categorie, count(p.*) as nombre_plats 
	from plats p RIGHT JOIN categories c ON p.id_categorie = c.id_categorie
	GROUP BY c.id_categorie 
    ORDER BY nom_categorie ASC;