DROP DATABASE if exists DB3;
CREATE DATABASE DB3;
USE DB3;
CREATE TABLE Reservation(
	id_reservation INT PRIMARY KEY,
    type_reservation VARCHAR(10),
    date_reservation DATETIME,
    nom_client VARCHAR(30),
    montant_total FLOAT,
    details_voyage TEXT,
    status VARChar(15)
);
INSERT INTO Reservation VALUES
(1,'voyage','2024-04-09 07:00:00','abdelmonaim malki',1000.00,'un voyage organise gwxieuguiegxugeugeu','confirme'),
(2,'voyage','2024-04-10 11:30:00','zouhair atef',3400.00,'un voyage organise gwxieuguiegxugeugeu','confirme'),
(3,'voyage','2024-04-11 08:50:00','abdo naji',5000.00,'un voyage organise gwxieuguiegxugeugeu','confirme'),
(4,'voyage','2024-04-12 16:20:00','salah moukrem',9000.00,'un voyage organise gwxieuguiegxugeugeu','confirme'),
(5,'voyage','2024-04-13 09:30:00','othman somi',8000.00,'un voyage organise gwxieuguiegxugeugeu','confirme'),
(6,'voyage','2024-04-14 22:30:00','ilas khder',600.00,'un voyage organise gwxieuguiegxugeugeu','confirme'),
(7,'voyage','2024-04-15 10:30:00','amina fater',11000.00,'un voyage organise gwxieuguiegxugeugeu','confirme'),
(8,'voyage','2024-04-16 08:00:00','chahde laft',12050.00,'un voyage organise gwxieuguiegxugeugeu','confirme');

select * from Reservation;

