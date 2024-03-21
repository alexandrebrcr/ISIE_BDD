CREATE TABLE Utilisateurs(
   IdUtilisateurs INT AUTO_INCREMENT,
   NumeroEtudiant INT,
   Nom VARCHAR(50),
   Prenom VARCHAR(50),
   Email VARCHAR(50),
   PRIMARY KEY(IdUtilisateurs)
);

CREATE TABLE Reservations(
   IdReservations INT AUTO_INCREMENT,
   DateDebut DATETIME,
   DateFin DATETIME,
   NombreArticles INT,
   IdUtilisateurs INT NOT NULL,
   PRIMARY KEY(IdReservations),
   FOREIGN KEY(IdUtilisateurs) REFERENCES Utilisateurs(IdUtilisateurs)
);

CREATE TABLE Materiel(
   IdMatériel INT AUTO_INCREMENT,
   NomMateriel VARCHAR(50),
   Desription VARCHAR(50),
   Quantite INT,
   IdReservations INT,
   PRIMARY KEY(IdMatériel),
   FOREIGN KEY(IdReservations) REFERENCES Reservations(IdReservations)
);