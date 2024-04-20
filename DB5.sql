drop database if exists DB5;

CREATE DATABASE DB5;

USE DB5;

CREATE TABLE Livre (
    id_livre INT PRIMARY KEY,
    titre VARCHAR(255),
    auteur VARCHAR(255),
    genre VARCHAR(100),
    nombre_pages INT,
    date_publication DATE,
    disponibilite BOOLEAN
);


CREATE TABLE Achat (
    id_achat INT PRIMARY KEY,
    nom_utilisateur VARCHAR(255),
    id_livre INT,
    date_achat DATETIME,
    montant_total FLOAT,
    FOREIGN KEY (id_livre) REFERENCES Livre(id_livre) 
);

INSERT INTO Livre VALUES
(1, 'Le Petit Prince', 'Antoine de Saint-Exupéry', 'Conte philosophique', 96, '1943-04-06', true),
(2, 'Harry Potter à l\'école des sorciers', 'J.K. Rowling', 'Fantasy', 336, '1997-06-26', true),
(3, '1984', 'Jane Austen', 'Dystopie', 328, '1949-06-08', true),
(4, 'Le Seigneur des Anneaux : La Communauté de l\'Anneau', 'J.R.R. Tolkien', 'Fantasy', 528, '1954-07-29', true),
(5, 'Orgueil et Préjugés', 'Jane Austen', 'Roman d\'amour', 432, '1813-01-28', true),
(6, 'Le Maître et Marguerite', 'Mikhaïl Boulgakov', 'Roman satirique', 384, '1967-11-13', true);

INSERT INTO Achat VALUES
(1, 'Mohammed', 1, '2024-04-20 09:00:00', 15.99),
(2, 'Aisha', 2, '2024-04-20 10:30:00', 20.50),
(3, 'Youssef', 3, '2024-04-20 12:15:00', 12.75),
(4, 'Fatima', 4, '2024-04-20 13:45:00', 24.99),
(5, 'Ali', 5, '2024-04-20 15:00:00', 18.25),
(6, 'Nour', 6, '2024-04-20 16:20:00', 21.90);


SELECT * FROM Livre;

SELECT titre, auteur FROM Livre;

SELECT * FROM Livre WHERE genre = 'Fantasy';

SELECT * FROM Livre WHERE nombre_pages > 300;

SELECT * FROM Livre WHERE date_publication > '2000-01-01';

SELECT * FROM Livre WHERE disponibilite = true;

SELECT titre, auteur FROM Livre LIMIT 5;

SELECT titre FROM Livre ORDER BY titre;

SELECT COUNT(*) AS total_livres FROM Livre;

SELECT DISTINCT auteur FROM Livre;

