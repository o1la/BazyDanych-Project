ALTER PROCEDURE [Liczba Przepracowanych Godzin] 
    @From DATE,
    @To DATE,
    @EmployeeID INT
AS
--WHILE (@From <= @To)
begin 
    SELECT P.ID, P.Imię, P.Nazwisko, SUM(DATEDIFF(HOUR,GZ.[Clock in],GZ.[Clock out])) AS [Przepracowane godziny]
    FROM [Pracownicy] P
        JOIN 
    Zespoły Z ON (P.[ID Zespołu] = Z.[ID])
        JOIN
    [Grafik Zespołów] GZ ON (GZ.[ID Zespołu] = Z.[ID])
    WHERE @EmployeeID = P.[ID]
    GROUP BY P.ID, P.Imię, P.Nazwisko
end

--exec [Liczba Przepracowanych Godzin] '2022-12-01', '2022-12-03', 3