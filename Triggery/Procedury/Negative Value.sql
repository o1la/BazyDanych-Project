--CREATE TRIGGER NegativeValue_UPDATE ON Stanowiska
ALTER TRIGGER NegativeValue_UPDATE ON Stanowiska
    AFTER UPDATE, INSERT
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

INSERT INTO Stanowiska VALUES
(8, 'a', -20),
(9, 'b', -25)

DELETE FROM Stanowiska WHERE [ID Stanowiska] = 8 OR [ID Stanowiska] = 9

*/
