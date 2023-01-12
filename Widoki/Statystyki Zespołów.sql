CREATE VIEW [Statystyki Zespołów] AS 
    SELECT [Zespół], COUNT([Zespół]) AS [Ilość Wyjazdów] FROM [Wyjazdy]
    GROUP BY [Zespół]

--SELECT * FROM [Statystyki Zespołów]


    

