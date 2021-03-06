/*
* create user
*/
CREATE SCHEMA epicerie;
GRANT ALL PRIVILEGES ON epicerie.* TO 'formateur'@'localhost' IDENTIFIED BY 'simplon';
USE epicerie;

/*
* create table
*/
CREATE TABLE IF NOT EXISTS goods(
    goodID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT, 
    name VARCHAR(45) NOT NULL UNIQUE,
    purchase_price DECIMAL (6, 2) NOT NULL,
    selling_price DECIMAL (6, 2) NOT NULL,
    categorieID INTEGER UNSIGNED NOT NULL,
    unitID INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (goodID),
    INDEX(categorieID),
    INDEX(unitID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS categories(
    categorieID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL UNIQUE,
     PRIMARY KEY (categorieID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS units(
    unitID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL UNIQUE,
    PRIMARY KEY (unitID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS providers(
    providerID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL UNIQUE,
    PRIMARY KEY (providerID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS article_providers(
    article_providerID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    purchase_price DECIMAL (6, 2) NOT NULL,
    goodID INTEGER UNSIGNED NOT NULL,
    providerID INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (article_providerID),
    INDEX(goodID),
    INDEX(providerID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS movments(
    movmentID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
    quantity DECIMAL (6, 2) NOT NULL,
    date_time TIMESTAMP NOT NULL,
    selling_price INTEGER UNSIGNED NOT NULL,
    goodID INTEGER UNSIGNED NOT NULL,
    movment_typeID INTEGER UNSIGNED NOT NULL,
    purchaseID INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (movmentID),
    INDEX(goodID),
    INDEX(movment_typeID),
    INDEX(purchaseID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS purchases(
    purchaseID INTEGER UNSIGNED AUTO_INCREMENT,
    date_time TIMESTAMP NOT NULL,
    providerID INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (purchaseID),
    FOREIGN KEY (providerID) REFERENCES providers(providerID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS sellings(
    sellingID INTEGER UNSIGNED AUTO_INCREMENT,
    date_time TIMESTAMP NOT NULL,
    PRIMARY KEY (sellingID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS movments_type(
    movmentID INTEGER UNSIGNED AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL UNIQUE,
    meaningID INTEGER UNSIGNED NOT NULL,
    PRIMARY KEY (movmentID),
    INDEX(meaningID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS meanings(
    meaningID INTEGER UNSIGNED AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL UNIQUE,
    multiply SMALLINT NOT NULL,
    PRIMARY KEY (meaningID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

