CREATE TRIGGER CzasZgłoszenia
ON Zgłoszenia
AFTER INSERT, UPDATE
AS
begin
    UPDATE [Zgłoszenia]
    SET [Data] = GETDATE()
    FROM Zgłoszenia Z
        JOIN 
    inserted i ON (i.[ID Zgłoszenia] = Z.[ID Zgłoszenia])
    WHERE Z.[ID Zgłoszenia] = i.[ID Zgłoszenia]
end
GO

--DROP TRIGGER CzasZgłoszenia

INSERT INTO Zgłoszenia VALUES
(18, NULL, 'Anna Pieczątka', 'ul. Kociopały 3', 'Kraków', 'złamanie nadgarstka');