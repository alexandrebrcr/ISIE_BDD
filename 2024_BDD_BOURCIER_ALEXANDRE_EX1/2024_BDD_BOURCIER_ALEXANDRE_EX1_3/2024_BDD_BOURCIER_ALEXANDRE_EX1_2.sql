CREATE TABLE Reservations(
	IdReservations INT AUTO_INCREMENT,
	DateDebut VARCHAR(50),
	DateFin VARCHAR(50),
	NombreArticles INT,
	NumeroEtudiant INT NOT NULL,
    IdMatériel INT NOT NULL,
	PRIMARY KEY(IdReservations),
	FOREIGN KEY(NumeroEtudiant) REFERENCES Utilisateurs(NumeroEtudiant),
    FOREIGN KEY(IdMatériel) REFERENCES Materiel(IdMatériel)
);

INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-03-01', '2024-03-05', 2, 123456, 1);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-03-06', '2024-03-10', 1, 123457, 2);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-03-11', '2024-03-15', 3, 123458, 3);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-03-16', '2024-03-20', 1, 123459, 4);
INSERT INTO Reservations (DateDebut, DateFin, NombreArticles, NumeroEtudiant, IdMatériel)
VALUES ('2024-03-21', '2024-03-25', 2, 123460, 5);

SELECT * FROM Reservations