
Create Trigger sumazakup
ON [Zakupy Wyposażenia]
AFTER INSERT
AS
BEGIN
    UPDATE [Zakupy Wyposażenia]
    SET SUMA = i.[Ilość]*i.[Cena jednostkowa]
    FROM [Zakupy Wyposażenia]
    INNER JOIN inserted i on i.ID = [Zakupy Wyposażenia].ID
END
GO

--DROP TRIGGER sumazakup
