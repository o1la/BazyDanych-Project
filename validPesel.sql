CREATE FUNCTION validPesel 
(
    @pesel VARCHAR(11)
)
RETURNS BIT
AS
begin
    IF ISNUMERIC(@pesel) = 0
        RETURN 0

    DECLARE @wagi AS TABLE (
        Pozycja TINYINT IDENTITY(1,1) NOT NULL, 
        Waga TINYINT NOT NULL
    )

    INSERT INTO @wagi VALUES 
    (1), (3), (7), (9), (1), (3), (7), (9), (1), (3), (1)

    IF (
        SELECT SUM(CONVERT(TINYINT, SUBSTRING(@pesel, Pozycja, 1)) * Waga) % 10 FROM @wagi
    ) = 0
        RETURN 1;

    RETURN 0;
end



