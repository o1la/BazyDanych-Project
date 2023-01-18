--CREATE PROCEDURE [Ostatni zakup]
ALTER PROCEDURE [Ostatni zakup]
    @Name VARCHAR(50)
    AS
begin
    SELECT TOP 1 W.[Nazwa Produktu], ZW.[Data], ZW.[Cena jednostkowa] FROM Wyposażenie W
    JOIN [Zakupy Wyposażenia] ZW ON (ZW.[ID Produktu] = W.[ID Produktu])
    WHERE W.[Nazwa Produktu] = @Name
    ORDER BY ZW.[Data] DESC
end

--EXEC [Ostatni zakup] 'Kamizelka KED'
--EXEC [Ostatni zakup] 'Nosze główne'
--EXEC [Ostatni zakup] 'Pulsoksymetr'
--EXEC [Ostatni zakup] 'Cewnik'
