--CREATE PROCEDURE [Liczebność Zespołów]
ALTER PROCEDURE [Liczebność Zespołów]
    @TeamID INT
AS
begin 
    SELECT Z.ID, Z.Nazwa, COUNT(DISTINCT P.ID) AS [Ilość członków] FROM Zespoły Z
        JOIN 
    Pracownicy P ON (Z.ID = P.[ID Zespołu])
   WHERE Z.ID = @TeamID
   GROUP BY Z.Nazwa, Z.ID
end

--EXEC [Liczebność Zespołów] 2