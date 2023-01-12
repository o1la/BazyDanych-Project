CREATE VIEW [Skład Zespołów] AS
SELECT Z.Nazwa AS [Nazwa Zespołu], P.Imię AS [Imię], P.Nazwisko [Nazwisko], S.Nazwa [Stanowisko] 
FROM Zespoły Z 
    LEFT JOIN
    Pracownicy P ON (Z.ID = P.[ID Zespołu])
    JOIN 
    Stanowiska S ON (P.[ID Stanowiska] = S.[ID Stanowiska]);

--DROP VIEW [Skład Zespołów]
--SELECT * FROM [Skład Zespołów]
