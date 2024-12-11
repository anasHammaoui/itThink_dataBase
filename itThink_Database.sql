CREATE DATABASE itThink;
USE itThink;
CREATE TABLE Utilisateurs (
	id_utilisateur INT PRIMARY KEY,
	nom_utilisateur VARCHAR(50),
	mot_de_passe VARCHAR(50),
	email VARCHAR(50)
);
CREATE TABLE categorie(
	id_categorie INT PRIMARY KEY,
	nom_categorie VARCHAR(50)
);
CREATE TABLE sous_categorie(
	id_sous_categorie INT PRIMARY KEY,
	nom_sous_categorie VARCHAR(50),
	id_categorie INT,
	FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie)
);
CREATE TABLE projets(
	id_projet INT PRIMARY KEY,
	titre_projet VARCHAR(50),
	projet_description VARCHAR(500),
	id_categorie INT,
	id_sous_categorie INT,
	id_utilisateur INT,
	FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie),
	FOREIGN KEY (id_sous_categorie) REFERENCES sous_categorie(id_sous_categorie),
	FOREIGN KEY (id_utilisateur) REFERENCES Utilisateurs(id_utilisateur)
);
CREATE TABLE freelances(
	id_freelance INT PRIMARY KEY,
	nom_freelance VARCHAR(50),
	competences VARCHAR(50),
	id_utilisateur INT,
	FOREIGN KEY (id_utilisateur) REFERENCES Utilisateurs(id_utilisateur)
);
CREATE TABLE offres(
	id_offre INT PRIMARY KEY,
	montant INT,
	delai DATE,
	id_freelance INT,
	id_projet INT,
	FOREIGN KEY (id_freelance) REFERENCES freelances(id_freelance),
	FOREIGN KEY (id_projet) REFERENCES projets(id_projet)
);
CREATE TABLE testimonials(
	id_temoignage INT,
	commentaire VARCHAR(500),
	id_utilisateur INT,
	FOREIGN KEY (id_utilisateur) REFERENCES utilisateurs(id_utilisateur)
);
SHOW TABLES;