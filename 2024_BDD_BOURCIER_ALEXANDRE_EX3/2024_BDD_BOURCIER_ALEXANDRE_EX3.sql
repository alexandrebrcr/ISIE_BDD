SELECT Materiel.* 
FROM Materiel 
JOIN Reservations ON Materiel.IdMatériel = Reservations.IdMatériel 
WHERE Reservations.NumeroEtudiant = 123456;

SELECT Reservations.* 
FROM Reservations 
JOIN Materiel ON Reservations.IdMatériel = Materiel.IdMatériel 
WHERE Materiel.IdMatériel = 1;