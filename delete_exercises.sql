USE codeup_db;
DELETE FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE UPPER(genre) = 'DISCO';
DELETE FROM albums WHERE artist = 'Santana';
SELECT * FROM albums;