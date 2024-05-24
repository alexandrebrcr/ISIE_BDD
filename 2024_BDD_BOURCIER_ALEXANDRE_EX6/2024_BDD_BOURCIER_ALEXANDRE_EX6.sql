-- Afficher la table Reservations avant la suupression
SELECT
    *
FROM
    Reservations;

DELETE FROM
    Reservations
WHERE
    IdReservations = 6;

-- Afficher la table Reservations après la suupression
SELECT
    *
FROM
    Reservations;