-- Ne marche pas avec ce format de date, poser la question au prof
SELECT
    COUNT(*) AS TotalReservations
FROM
    Reservations
WHERE
    DateDebut >= '20240101'
    AND DateFin <= '20240201';

SELECT
    COUNT(DISTINCT NumeroEtudiant) AS NombreUtilisateurs
FROM
    Reservations
WHERE
    IdMatériel = 4;