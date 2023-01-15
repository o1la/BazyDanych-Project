--CREATE TRIGGER NegativeValue_UPDATE ON Stanowiska
ALTER TRIGGER NegativeValue_UPDATE ON Stanowiska
    AFTER UPDATE
AS
begin
SET NOCOUNT ON;
    UPDATE Stanowiska SET [Stawka Godzinowa] = CASE WHEN([Stawka Godzinowa] < 0) 
        THEN ABS([Stawka Godzinowa]) 
        ELSE [Stawka Godzinowa]
    END
end

/*
update Stanowiska
set [Stawka Godzinowa] = 35
where [ID Stanowiska] = 5

select * from Stanowiska
*/
