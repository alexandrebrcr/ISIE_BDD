-- Question 1
CREATE TABLE Disponibilite(
    id_disponibilite INT AUTO_INCREMENT,
    id_materiel INT,
    date_debut DATE,
    date_fin DATE,
    PRIMARY KEY(id_disponibilite),
    FOREIGN KEY(id_materiel) REFERENCES Materiel(IdMatériel)
);


-- Question 2
ALTER TABLE
    Reservations
ADD
    COLUMN id_disponibilite INT,
ADD
    CONSTRAINT fk_disponibilite FOREIGN KEY (id_disponibilite) REFERENCES Disponibilite(id_disponibilite);

-- Question 3
