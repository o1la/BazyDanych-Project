CREATE FUNCTION check_overlap_vacation()
RETURNS BIT
AS
BEGIN
    DECLARE @overlap BIT;
    SET @overlap = 0;

    SELECT @overlap = COUNT(*)
    FROM Urlopy
    WHERE EXISTS (SELECT 1 FROM Urlopy B, Urlopy A WHERE A.[ID Pracownika] <> B.[ID Pracownika] AND ((A.[Początek] <= B.[Koniec] AND A.[Początek] >= B.[Początek]) OR (A.[Koniec] <= B.[Koniec] AND A.[Koniec] >= B.[Początek])))

    IF @overlap > 0 
        SET @overlap = 1

    RETURN @overlap;
END

--ALTER TABLE Urlopy
--ADD CONSTRAINT chk_overlap_vacation CHECK (dbo.check_overlap_vacation() = 0)
