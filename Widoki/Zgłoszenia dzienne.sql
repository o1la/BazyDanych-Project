CREATE VIEW [Zgłoszenia dzienne] AS
    SELECT 
    (SELECT COUNT(*) FROM Zgłoszenia) AS [Ilość Zgłoszeń],
    (SELECT COUNT(*) FROM [Wyjazdy Karetki]) AS [Ilość Wyjazdów],
    (SELECT CAST((
        CAST((SELECT COUNT(*) FROM [Wyjazdy Karetki]) AS FLOAT) / CAST((SELECT COUNT(*) FROM Zgłoszenia) AS FLOAT) 
       *100) AS DECIMAL(10,2) )) AS [Procent]

-- DROP VIEW [Zgłoszenia dzienne]
-- SELECT * FROM [Zgłoszenia dzienne]