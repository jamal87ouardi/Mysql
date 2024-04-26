drop database if exists DB8;

create database DB8;

use DB8;

CREATE TABLE Livre (
    id_livre INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    auteur VARCHAR(255) NOT NULL,
    genre VARCHAR(100),
    annee_publication YEAR,
    quantite_disponible INT DEFAULT 0
);


CREATE TABLE Adherent (
    id_adherent INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255),
    email VARCHAR(255),
    date_inscription DATE
);


CREATE TABLE Emprunt (
    id_emprunt INT AUTO_INCREMENT PRIMARY KEY,
    date_emprunt DATE NOT NULL,
    date_retour_prevue DATE NOT NULL,
    id_livre INT,
    id_adherent INT,
    FOREIGN KEY (id_livre) REFERENCES Livre(id_livre) on update restrict on delete cascade,
    FOREIGN KEY (id_adherent) REFERENCES Adherent(id_adherent)
);


INSERT INTO Livre VALUES
    (null,'Awlad Haratna', 'Naguib Mahfouz', 'Roman', 1959, 3),
    (null,'Al-Ard', 'Aziz Chouaki', 'Roman', 1965, 2),
    (null,'Al-Ayyam', 'Taha Hussein', 'Mémoires', 1929, 4),
    (null,'Al-Sunduq', 'Ghassan Kanafani', 'Nouvelles', 1962, 3),
    (null,'Mawsim al-Hijra ila al-Shamal', 'Ibrahim Nasrallah', 'Roman', 1967, 5),
    (null,'Al-Amiq', 'Sanaallah Ibrahim', 'Roman', 1975, 2),
    (null,'Al-Muhandis Khreiss', 'Ibrahim Nasrallah', 'Roman', 1966, 4);
 
 
    
INSERT INTO Adherent VALUES
    (null,'Ahmed Ben Ali', '10 rue des Livres, Tunis', 'ahmed.benali@email.com',  '2024-01-05'),
    (null,'Fatima Zahra Khadiri', 'Avenue des Lecteurs, Casablanca', 'fz.khadiri@email.com',  '2023-11-15'),
    (null,'Ali Hassan', '25 rue de la Bibliothèque, Alger', 'ali.hassan@email.com',  '2024-03-01'),
    (null,'Lina Mahmoud', '6 place de la Culture, Beyrouth', 'lina.mahmoud@email.com',  '2024-02-20'),
    (null,'Khaled Mansour', '12 rue du Livre, Le Caire', 'khaled.mansour@email.com',  '2024-04-10'),
    (null,'Rania Salim', '5 avenue des Lecteurs, Rabat', 'rania.salim@email.com',  '2024-03-15'),
    (null,'Youssef Amir', '15 rue de la Bibliothèque, Tunis', 'youssef.amir@email.com',  '2024-02-05');


INSERT INTO Emprunt VALUES
    (null,'2024-04-10', '2024-05-10', 1, 1),
    (null,'2024-03-15', '2024-04-15', 5, 1),
    (null,'2024-04-20', '2024-05-20', 5, 1),
    (null,'2024-02-28', '2024-03-28', 2, 2),
    (null,'2024-04-05', '2024-05-05', 6, 3),
    (null,'2024-04-01', '2024-05-01', 4, 3),
    (null,'2024-03-20', '2024-04-20', 7, 4),
    (null,'2024-04-15', '2024-05-15', 1, 5);
 
 

 
update Livre set id_livre = 20 where titre="Al-Ayyam";

select * from Livre;
select * from Emprunt;

Alter table Adherent
Add column telephone varchar(20);


SELECT Livre.titre
FROM Livre
JOIN Emprunt ON Livre.id_livre = Emprunt.id_livre
JOIN Adherent ON Emprunt.id_adherent = Adherent.id_adherent
WHERE Adherent.nom = 'Ali Hassan';

SELECT DISTINCT Adherent.nom
FROM Adherent
JOIN Emprunt ON Adherent.id_adherent = Emprunt.id_adherent
WHERE Emprunt.date_emprunt BETWEEN '2024-03-20' AND '2024-04-10';

SELECT COUNT(*) AS Nombre_de_livres_empruntes
FROM Livre l
JOIN Emprunt e ON l.id_livre = e.id_livre
JOIN Adherent a ON e.id_adherent = a.id_adherent
WHERE l.auteur = 'Ibrahim Nasrallah';


update Livre set id_livre=10 where auteur='Taha Hussein';






