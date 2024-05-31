-- Question 1
CREATE TABLE Disponibilite(
    IdDisponibilite INT AUTO_INCREMENT,
    IdMateriel INT,
    DateDebut VARCHAR(50),
    DateFin VARCHAR(50),
    PRIMARY KEY(IdDisponibilite),
    FOREIGN KEY(IdMateriel) REFERENCES Materiel(IdMatériel)
);

-- Question 2
ALTER TABLE
    Reservations
ADD
    COLUMN IdDisponibilite INT,
ADD
    CONSTRAINT fk_disponibilite FOREIGN KEY (IdDisponibilite) REFERENCES Disponibilite(IdDisponibilite);

-- Question 3,4
-- Comme cette partie contient du code j'utilise le DELIMITER // pour ne plus être affecté par le ";"
DELIMITER //

CREATE TRIGGER before_reservation_insert
BEFORE INSERT ON Reservations
FOR EACH ROW
BEGIN
    DECLARE is_available INT;
    SELECT COUNT(*) INTO is_available
    FROM Disponibilite
    WHERE IdMateriel = NEW.IdMatériel
    AND NEW.DateDebut BETWEEN DateDebut AND DateFin
    AND NEW.DateFin BETWEEN DateDebut AND DateFin;
    
    IF is_available = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Le matériel n''est pas disponible pour cette période.';
    END IF;
END//

CREATE TRIGGER before_reservation_update
BEFORE UPDATE ON Reservations
FOR EACH ROW
BEGIN
    DECLARE is_available INT;
    SELECT COUNT(*) INTO is_available
    FROM Disponibilite
    WHERE IdMateriel = NEW.IdMatériel
    AND NEW.DateDebut BETWEEN DateDebut AND DateFin
    AND NEW.DateFin BETWEEN DateDebut AND DateFin;
    
    IF is_available = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Le matériel n''est pas disponible pour cette période.';
    END IF;
END//

DELIMITER ;

-- Question 6
INSERT INTO Disponibilite (
    IdMateriel,
    DateDebut,
    DateFin
)
VALUES
  (1, '2023-12-01', '2024-05-10'),
  (2, '2024-01-01', '2024-05-16');

-- Test pour voir si mes triggers marchent
-- Celle-ci doit marcher
INSERT INTO Reservations (
    DateDebut,
    DateFin,
    NombreArticles,
    NumeroEtudiant,
    IdMatériel
)
VALUES
    ('2024-02-04', '2024-02-06', 1, 123456, 1);

-- Celle-ci ne doit pas marcher
INSERT INTO Reservations (
    DateDebut,
    DateFin,
    NombreArticles,
    NumeroEtudiant,
    IdMatériel
)
VALUES
    ('2024-02-04', '2024-02-06', 2, 123456, 6);