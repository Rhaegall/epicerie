/*
* create constraint foreign key
*/
ALTER TABLE goods
ADD CONSTRAINT fk_good_categorie
FOREIGN KEY (categorieID) REFERENCES categories(categorieID) ON DELETE RESTRICT,
ADD CONSTRAINT fk_good_unit
FOREIGN KEY (unitID) REFERENCES units(unitID) ON DELETE RESTRICT;

ALTER TABLE article_providers
ADD CONSTRAINT fk_article_provider_good
FOREIGN KEY (goodId) REFERENCES goods(goodID) ON DELETE RESTRICT,
ADD CONSTRAINT fk_article_provider_provider
FOREIGN KEY (providerID) REFERENCES providers(providerID) ON DELETE RESTRICT;

ALTER TABLE movments
ADD CONSTRAINT fk_movment_good
FOREIGN KEY (goodId) REFERENCES goods(goodID) ON DELETE RESTRICT,
ADD CONSTRAINT fk_movment_movment_type
FOREIGN KEY (movment_typeID) REFERENCES movments_type(movment_typeID) ON DELETE RESTRICT,
ADD CONSTRAINT fk_movment_purchase
FOREIGN KEY (purchaseID) REFERENCES purchases(purchaseID) ON DELETE RESTRICT;

ALTER TABLE movments_type
ADD CONSTRAINT fk_movment_type_meaning
FOREIGN KEY (meaningID) REFERENCES meanings(meaningID) ON DELETE RESTRICT;

