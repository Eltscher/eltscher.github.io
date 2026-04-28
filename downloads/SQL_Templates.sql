-- Vorlagen

-- Tabelle erstellen
CREATE TABLE tabellenname (
    spaltenname1 DATENTYP,
    spaltenname2 DATENTYP,
    ...
);

-- Datentypen
INT DECIMAL(X,Y) FLOAT
VARCHAR(255) TEXT
DATETIME
BLOB
BOOLEAN
UUID
IS NOT NULL

-- Index erstellen
CREATE INDEX indexname
ON tabellenname (spaltenname);

--Abfrage Zeilenlimit erstellen
 SELECT * FROM tabellenname
LIMIT 10;

-- Abrufen
SELECT * FROM tabellenname;

-- Filtern
SELECT * FROM tabellenname
WHERE spaltenname = 'Wert';

SELECT * FROM tabellenname
WHERE spaltenname1 = 'Wert1' AND spaltenname2 = 'Wert2';

-- Sortieren
SELECT * FROM tabellenname
ORDER BY spaltenname ASC;

SELECT * FROM tabellenname
ORDER BY spaltenname DESC;

-- Gruppieren & Sortieren
SELECT spaltenname, COUNT(*) AS anzahl
FROM tabellenname
GROUP BY spaltenname;

-- Mathe
SELECT SUM(spaltenname) AS gesamt
FROM tabellenname;

SELECT AVG(spaltenname) AS durchschnitt
FROM tabellenname;

-- Aktualisieren
UPDATE tabellenname
SET spaltenname = 'neuerWert'
WHERE bedingung;

-- Einfügen
INSERT INTO tabellenname (spaltenname1, spaltenname2)
VALUES ('Wert1', 'Wert2');

-- Löschen
DELETE FROM tabellenname
WHERE bedingung;

-- Duplikate -> manchmal besser wenn man vorher keine Erlaubt
SELECT spaltenname, COUNT(*)
FROM tabellenname
GROUP BY spaltenname
HAVING COUNT(*) > 1;

-- Tabelle ändern
ALTER TABLE tabellenname
ADD spaltenname DATENTYP;

-- Tabelle löschen
DROP TABLE tabellenname;

-- Spalte löschen
ALTER TABLE tabellenname
DROP COLUMN spaltenname;

-- Spalte umbennenn
ALTER TABLE tabellenname
RENAME COLUMN alte_spalte TO neue_spalte;

-- Daten mehrerer Tabellen Abrufen
SELECT t1.spaltenname1, t2.spaltenname2
FROM tabelle1 t1
INNER JOIN tabelle2 t2
ON t1.gemeinsame_spalte = t2.gemeinsame_spalte;

-- Abrufen von Daten aus der linken Tabelle und den übereinstimmenden Daten aus der rechten Tabelle
SELECT t1.spaltenname1, t2.spaltenname2
FROM tabelle1 t1
LEFT JOIN tabelle2 t2
ON t1.gemeinsame_spalte = t2.gemeinsame_spalte;

-- Sub-Abfrage
SELECT spaltenname
FROM tabellenname
WHERE spaltenname IN (
    SELECT spaltenname
    FROM andere_tabelle
    WHERE bedingung
);

-- Null Werte Filtern
SELECT * FROM tabellenname
WHERE spaltenname IS NULL;
SELECT * FROM tabellenname
WHERE spaltenname IS NOT NULL;
