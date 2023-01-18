CREATE VIEW [Statystyki Zespołów] AS 
    SELECT [Zespół], COUNT([Zespół]) AS [Ilość Wyjazdów] FROM [Wyjazdy Karetki]
    GROUP BY [Zespół]

--DROP VIEW [Statystyki Zespołów]
--SELECT * FROM [Statystyki Zespołów]


    

