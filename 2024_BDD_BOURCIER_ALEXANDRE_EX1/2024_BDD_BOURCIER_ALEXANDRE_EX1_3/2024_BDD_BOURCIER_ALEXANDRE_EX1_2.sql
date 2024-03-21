CREATE TABLE Reservations(
	IdReservations INT AUTO_INCREMENT,
	DateDebut DATETIME,
	DateFin DATETIME,
	NombreArticles INT,
	NumeroEtudiant INT NOT NULL,
    IdMatériel INT NOT NULL,
	PRIMARY KEY(IdReservations),
	FOREIGN KEY(NumeroEtudiant) REFERENCES Utilisateurs(NumeroEtudiant),
    FOREIGN KEY(IdMatériel) REFERENCES Materiel(IdMatériel)
);

