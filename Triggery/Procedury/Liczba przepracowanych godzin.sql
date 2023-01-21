--CREATE PROCEDURE [Liczba Przepracowanych Godzin]
ALTER PROCEDURE [Liczba Przepracowanych Godzin] 
    @From DATE,
    @To DATE,
    @EmployeeID INT
AS
begin 
    SELECT P.ID, P.Imię, P.Nazwisko, SUM(DATEDIFF(HOUR,GZ.[Clock in],GZ.[Clock out])) AS [Przepracowane godziny]
    FROM [Pracownicy] P
        LEFT JOIN 
    Zespoły Z ON (P.[ID Zespołu] = Z.[ID])
        JOIN
    [Grafik Zespołów] GZ ON (GZ.[ID Zespołu] = Z.[ID])
    WHERE @EmployeeID = P.[ID] AND @From < GZ.[Clock in] AND @To > GZ.[Clock out] AND NOT EXISTS (
        SELECT * FROM Urlopy U
        WHERE @From <= U.[Początek] AND @To >= U.[Koniec] AND  @EmployeeID = U.[ID Pracownika] AND U.[Płatny] = 0
    )
    GROUP BY P.ID, P.Imię, P.Nazwisko
end


--exec [Liczba Przepracowanych Godzin] '2022-12-01', '2022-12-04', 4