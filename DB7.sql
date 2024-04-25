DROP  DATABASE IF EXISTS   DB7;

CREATE DATABASE DB7;

USE DB7;

CREATE TABLE Produit(
      id_Produit INT PRIMARY KEY,
      name_Produit VARCHAR(20),
      description_Produit TEXT,
      price_Produit FLOAT,
      quantity_stock DECIMAL,
      catigory_Produit  VARCHAR(30),
      marque_Produit VARCHAR(20)
);

INSERT INTO Produit(id_Produit,name_Produit,description_Produit,price_Produit,quantity_stock,catigory_Produit,marque_Produit)  VALUES
(1,'Hb ELitEbook','Description',2000,50,'Electronics','Laptop'),
(2,'Iphon 12','Description',2500,20,'Electronics','Smartphone'),
(3,'ZARA','Description',100,50,'Clothing','Shirt'),
(4,'K12G','Description',500,50,'Electronics','Keyboard'),
(5,'S50P','Description',200,50,'Electronics','Mouse'),
(6,'LAMP 20','Description',2000,50,'Home Decor','Lamp');
SELECT *FROM Produit;

CREATE TABLE Client(
      id_client INT PRIMARY KEY,
      name_client VARCHAR(20),
      email_client   VARCHAR(255) NOT NULL,
      adresse_livresion TEXT,
      adresse_facturation TEXT,
      phone_number DECIMAL(15,0),
      date_inscription DATE
);
INSERT INTO Client(id_client,name_client,email_client,adresse_livresion,adresse_facturation,phone_number,date_inscription) VALUES
(1, 'wahiba lotfi','wahiba@gmail.com','adresse adresse adresse','adresse facturation adresse',064596135,'2023-07-10'),
(2, 'Emma Anderson','exempel@gmail.com','adresse adresse adresse','adresse facturation adresse',4961230151,'2023-07-10'),
(3, 'David Martinez','exempel@gmail.com','adresse adresse adresse','adresse facturation adresse',064596135,'2023-07-10'),
(4, 'Olivia Garcia','exempel@microsoft.com','adresse adresse adresse','adresse facturation adresse',064596135,'2023-07-10'),
(5, 'Sophia Wilson','exempel@yahoo.com','adresse adresse adresse','adresse facturation adresse',064596135,'2023-07-10'),
(6, 'Isabella Brown','exempel@gmail.com','adresse adresse adresse','adresse facturation adresse',064596135,'2023-07-10');
SELECT *FROM Client;

CREATE TABLE Commande(
    id_Commande INT PRIMARY KEY,
    date_Commande DATE,
    statue_Commande VARCHAR(30),
    montont_total FLOAT,
    id_client INT,
    foreign key (id_client) references Client(id_client)

);
INSERT INTO  Commande(id_Commande,date_Commande,statue_Commande,montont_total,id_client) VALUES
(1, '2023-07-10','confirmed',2005.0,1),
(2, '2023-07-14','don',2005.0,2),
(3, '2023-07-15','attante',2005.0,3),
(4, '2023-07-16','confirmed',2005.0,4),
(5, '2023-07-17','don',2005.0,5),
(6, '2023-07-18','attante',200.50,6);
SELECT *FROM Commande;

Alter table Client drop column adresse_facturation;
alter table Client add column cin_client varchar(100);
delete  from Produit where id_Produit = 3;
select * from Produit;
select * from Produit where catigory_Produit = 'Electronics';
select * from Client where  email_client like '%gmail.com';
delete from Commande where id_client =6;
select  * from Commande;