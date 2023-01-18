CREATE TRIGGER tr_Pracownicy_delete
ON Pracownicy
AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO [Byli Pracownicy] (ID, Imię, Nazwisko, PESEL, [ID Stanowiska], Miasto, Ulica, [Data usunięcia])
    SELECT ID, Imię, Nazwisko, PESEL, [ID Stanowiska], Miasto, Ulica, GETDATE()
    FROM deleted;
END
