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


