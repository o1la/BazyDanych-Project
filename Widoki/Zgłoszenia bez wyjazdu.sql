CREATE VIEW [Zgłoszenia bez wyjazdu] AS
SELECT [Zgłoszenia bez wyjazdu].[ID Zgłoszenia], Z.[Powód] FROM
    (SELECT [ID Zgłoszenia] FROM Zgłoszenia WHERE [ID Zgłoszenia] NOT IN 
    ( SELECT [ID Zgłoszenia] FROM [Wyjazdy Karetki] )) AS [Zgłoszenia bez wyjazdu]
    LEFT JOIN 
       Zgłoszenia Z ON (Z.[ID Zgłoszenia]=[Zgłoszenia bez wyjazdu].[ID Zgłoszenia]) 
    
-- SELECT * FROM [Zgłoszenia bez wyjazdu]
-- DROP VIEW [Zgłoszenia bez wyjazdu]