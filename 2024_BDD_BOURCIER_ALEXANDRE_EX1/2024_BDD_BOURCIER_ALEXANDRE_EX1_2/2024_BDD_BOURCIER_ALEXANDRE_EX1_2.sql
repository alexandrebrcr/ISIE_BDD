CREATE TABLE Materiel(
	IdMatériel INT AUTO_INCREMENT,
	NomMateriel VARCHAR(50),
	Desription VARCHAR(50),
	Quantite INT,
	IdReservations INT,
	PRIMARY KEY(IdMatériel),
	FOREIGN KEY(IdReservations) REFERENCES Reservations(IdReservations)
);

INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Ordinateur', 'Ordinateur portable Dell', 5, 1);
INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Projecteur', 'Projecteur Epson', 3, 2);
INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Tableau blanc', 'Tableau blanc magnetique', 2, 3);
INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Imprimante', 'Imprimante laser HP', 4, 4);
INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Scanner', 'Scanner Canon', 2, 5);
INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Souris', 'Souris sans fil Logitech', 10, 6);
INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Clavier', 'Clavier mecanique', 8, 7);
INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Ecran', 'Ecran 24 pouces Samsung', 5, 8);
INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Casque', 'Casque audio Bose', 7, 9);
INSERT INTO Materiel (NomMateriel, Desription, Quantite, IdReservations)
VALUES ('Webcam', 'Webcam HD Logitech', 6, 10);

-- SELECT * FROM Materiel