# epicerie
# Évaluation compétences C2 et C3 - v2

## Compétences concernées :

- **Concevoir une base de données**
- **Mettre en place une base de données**

## Objectifs

Développer une base de données pour la _gestion de stock_ d'une épicerie.

Un utilisateur dédié à l'application sera créé avec un accès uniquement
à la base de données de l'évalutation.

La base de données permet de suivre la quantité actuelle de chaque article.
La quantité est exprimée en une unité de mesure qui peut varier selon
l'article (kg, litre, unité, carton, bouteille, etc).

Chaque article appartient à une catégorie et a un prix d'achat, un prix de
vente et plusieurs fournisseurs. Pour chaque combinaison article/fournisseur
un prix d'achat est spécifié.

Les mouvements de stock et la quantité actuelle de chaque article sont
consultables à tout moment.

Chaque mouvement a un article, un type (achat, vente, perte, vol,...), une
quantité et un timestamp. Un mouvement peut appartenir à une vente ou à un
achat.

Chaque type de mouvement a un sens (entrée ou sortie de stock).

Un achat regroupe des mouvements d'entrée ou de sortie de stock pour plusieurs
articles et un fournisseur (un achat peut comprendre une sortie de stock dans
le cas d'une reprise d'un produit non conforme par le fournisseur).

Une vente regroupe des mouvements de sortie ou d'entrée de stock pour plusieurs
articles (une vente peut comprendre une entrée de stock dans le cas d'une
reprise d'un produit non conforme).

Les valeurs du stock par catégorie et du stock total peuvent être affichées
sur demande.

## Réalisation

- Durée : 2 jours
- Équipe : solo

## Rendu

- Le modèle conceptuel de la base de données
- Le modèle physique
- Un maximum de contraintes doivent être implémentées dans la base de
  données.
- Les requêtes nécessaires
- Le script de création de la base de données et de l'utilisateur
- Un scipt d'insertion d'un jeu de données de test
- Un script de sauvegarde
- Tous les fichiers doivent être disponibles dans un repository (GitLab,
  GitHub) dont le lien doit être envoyé aux formateurs avant la date/heure
  limite

## Liens utiles

- [mocodo](http://www.mocodo.net/)
- [dia diagram editor](http://dia-installer.de/)
- [MySQL Workbench](https://www.mysql.com/products/workbench/)
- [phpMyAdmin](https://www.phpmyadmin.net/)
- [MySQL](https://www.mysql.com)
