SELECT
    COUNT(*) AS TotalReservations
FROM
    Reservations
WHERE
    DateDebut >= '2024-01-01'
    AND DateFin <= '2024-02-01';

-- J'utilise DISTINCT pour compter seulement le nombre d'utilisateurs ayant commandéun matériel
-- et ne pas les compter 2 fois si ils ont commandé plusieurs fois du matériel
SELECT
    COUNT(DISTINCT NumeroEtudiant) AS NombreUtilisateurs
FROM
    Reservations;