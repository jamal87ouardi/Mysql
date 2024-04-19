DROP DATABASE if exists DB1; 

CREATE DATABASE DB1 ;

USE DB1;

CREATE TABLE Produit (
    id_produit INT PRIMARY KEY,
    nom VARCHAR(255),
    description TEXT,
    prix FLOAT,
    quantite_en_stock INT,
    categorie VARCHAR(255),
    date_maj DATETIME
);

INSERT INTO Produit VALUES 
(1, 'Téléviseur LED Samsung 55 pouces', 'Téléviseur LED de 55 pouces de la marque Samsung', 799.99, 10, 'Electronique', '2024-04-09 08:00:00'),
(2, 'Smartphone Apple iPhone 12', 'Smartphone Apple iPhone 12 avec écran OLED de 6,1 pouces', 999.99, 20, 'Téléphonie', '2024-04-09 08:30:00'),
(3, 'Ordinateur portable Dell XPS 15', 'Ordinateur portable Dell XPS 15 avec processeur Intel Core i7 et écran tactile 4K', 1599.99, 15, 'Informatique', '2024-04-09 09:00:00'),
(4, 'Montre connectée Fitbit Versa 3', 'Montre connectée Fitbit Versa 3 avec suivi de la fréquence cardiaque et GPS intégré', 229.99, 30, 'Accessoires', '2024-04-09 09:30:00'),
(5, 'Livre "Le Petit Prince"', 'Livre "Le Petit Prince" de Antoine de Saint-Exupéry', 12.99, 50, 'Livres', '2024-04-09 10:00:00'),
(6, 'Casque audio Sony WH-1000XM4', 'Casque audio Sony WH-1000XM4 avec suppression du bruit et technologie Bluetooth', 349.99, 25, 'Audio', '2024-04-09 10:30:00'),
(7, 'Console de jeu PlayStation 5', 'Console de jeu PlayStation 5 avec lecteur Blu-ray Ultra HD', 499.99, 10, 'Jeux vidéo', '2024-04-09 11:00:00'),
(8, 'Cafetière Nespresso Vertuo Next', 'Cafetière Nespresso Vertuo Next avec technologie d\'extraction de café par centrifugation', 149.99, 20, 'Electroménager', '2024-04-09 11:30:00');

select * from Produit;