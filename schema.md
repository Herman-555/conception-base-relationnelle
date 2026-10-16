### Conception
<br>

# Niveau 1 : Fondamental
### <u> Étape 1 – La carte </u>

<u>Nouveau</u>: Creation de table `plats`.

PLATS (<b> id_plat </b>, nom, prix)

<br>

<u>Question piege</u>: 

- On choisit le type BIGINT pour le prix car le nombre doit etre entier.
- On choisit l'identifiant id_plat SERIAL pour avoir un numero unique et expliciter l'id avec sa table.


### <u> Étape 2 – Les catégories </u>

<u>Nouveau</u>: Creation de la table `categories`; 
ajout de la cle etrangere id_categorie dans la table `plats`.

CATEGORIES (<b> id_categorie </b>, nom)
PLATS (<b> id_plat </b>, nom, prix, #id_categorie)

<br>

<u>Question piege</u>: 

- On ne peut pas ajouter une colonne `categorie VARCHAR(50)` dans la table des plats
car le nom de la categorie saisie est redontante, sensible, non maintenable.
- Si on modifie le nom d'une categorie, il faut modifier toutes les lignes qui ont cette meme categorie
et une faute de frappe peut changer la categorie de chacun.


### <u> Étape 3 – Les commandes </u>

<u>Nouveau</u>: Creation de la table `commandes` et `ligne_commandes`.
<br><br>

<u>schema relationnel: </u>
<br>
- PLATS (<b> id_plat </b>, nom, prix, #id_categorie)
- CATEGORIES (<b> id_categorie </b>, nom)
- COMMANDES (<b> id_commande </b>, date)
- LIGNE_COMMANDES (<b> id_ligne_commande </b>, #id_commande, #id_plat, quantite)

<br>

<u>Question piege</u>:  <br>

- On place la quantite dans la table `ligne_commandes` car elle relie
 un plat et sa quantite avec une commande.