CREATE FUNCTION check_overlap_vacation()
RETURNS BIT
AS
BEGIN
    DECLARE @overlap BIT;
    SET @overlap = 0;

    SELECT @overlap = COUNT(*)
    FROM Urlopy
    WHERE EXISTS (SELECT 1 FROM Urlopy WHERE [ID Pracownika] <> Urlopy.[ID Pracownika] AND (([Początek] <= Urlopy.[Koniec] AND [Początek] >= Urlopy.[Początek]) OR ([Koniec] <= Urlopy.[Koniec] AND [Koniec] >= Urlopy.[Początek]))

    IF @overlap > 0 
        SET @overlap = 1

    RETURN @overlap;
END
