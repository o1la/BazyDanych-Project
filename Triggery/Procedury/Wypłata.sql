ALTER PROCEDURE [Wypłata] 
    @From DATE,
    @To DATE,
    @EmployeeID INT
AS
begin 
    DECLARE @temp_table TABLE (   
        ID int,  
        Imię varchar(50)   , 
        Nazwisko VARCHAR(50), 
        [Przepracowane Godziny] INT
    ); 
    INSERT INTO @temp_table
    EXEC [Liczba Przepracowanych Godzin] @From, @To, @EmployeeID

    SELECT TT.ID, TT.Imię, TT.Nazwisko, TT.[Przepracowane Godziny], S.[Stawka Godzinowa], TT.[Przepracowane godziny]*S.[Stawka Godzinowa] AS [Wypłata] FROM @temp_table TT
        JOIN 
    Pracownicy P ON (P.ID = TT.ID)
        JOIN 
    Stanowiska S ON (S.[ID Stanowiska] = P.[ID Stanowiska])

    WHERE @EmployeeID = P.ID
end

--exec Wypłata '2022-12-01', '2022-12-04', 3