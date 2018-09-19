/*
* create fake news
*/
INSERT INTO units (
    id, 
    name
) 
VALUES(
    1, 'Litres', 
    2, 'Kg', 
    3, 'Unités',
    4, 'Bouteilles'
);

INSERT INTO categories (
    id, 
    name
)
VALUES(
    1, 'Alimentation',
    2, 'Boissons',
    3, 'Divers'
);

INSERT INTO goods (
    id, 
    name, 
    categorieID, 
    unitID, 
    selling_price
)
VALUES (
    1, 'Eau pate', 2, 1, 0.98,
    2, 'Pattes', 1, 2, 0.30,
    3, 'Lingettes', 3, 3, 1.52,
    4, 'Ice Tea 1.5l', 2, 4, 1.37,
    5, 'Croissant', 1, 3, 1.00,
    6, 'Eponge', 3, 3, 0.20;

INSERT INTO providers (
    id, 
    name
)
VALUES (
    1, 'Al dente',
    2, 'SARL Glouglou',
    3, 'Au bon pain',
    4, 'Bric a broque artisanal'

INSERT INTO article_providers (
    goodID, 
    providerID, 
    purchase_price
)
VALUES(
    1, 1, 0.30,
    2, 2, 0.40,
    3, 3, 0.50,
    4, 4, 0.20;
   
INSERT INTO meanings (
    id, 
    name, 
    multiply
)
VALUES(
    1, 'Entrée', 1,
    2, 'Sortie', -1;

INSERT INTO movement_types (
    id, 
    name, 
    meaningID
)
VALUES(
    1, 'Achat', 1,
    2, 'Vente', 2,
    3, 'Perte', 2,
    4, 'Vol', 2;

INSERT INTO purchases (
    id, 
    date_time, 
    providerID
)
VALUES(
    1, CURRENT_TIMESTAMP, 1,
    2, CURRENT_TIMESTAMP, 2,
    3, CURRENT_TIMESTAMP, 3,
    4, CURRENT_TIMESTAMP, 4;

INSERT INTO movements (
    goodid, 
    movement_typeID, 
    purchaseID, 
    quantity
)
VALUES(
    3, 1, 1, 100,
    6, 1, 1, 1000,
    1, 1, 2, 200,
    4, 1, 2, 400;

