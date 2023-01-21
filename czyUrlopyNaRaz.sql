CREATE FUNCTION check_overlap_vacation()
RETURNS BIT
AS
BEGIN
    DECLARE @overlap BIT;
    SET @overlap = 0;

    SELECT @overlap = COUNT(*)
    FROM Urlopy
    WHERE EXISTS (SELECT 1 FROM Urlopy B, Urlopy A, Pracownicy Pa, Pracownicy Pb WHERE A.[ID Pracownika] <> B.[ID Pracownika] AND A.[ID Pracownika] = Pa.ID AND B.[ID Pracownika] = Pb.ID AND Pb.[ID Zespołu]=Pa.[ID Zespołu] AND ((A.[Początek] <= B.[Koniec] AND A.[Początek] >= B.[Początek]) OR (A.[Koniec] <= B.[Koniec] AND A.[Koniec] >= B.[Początek])))

    IF @overlap > 0 
        SET @overlap = 1

    RETURN @overlap;
END
