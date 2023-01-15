
Create Trigger nastPrzegląd
ON [Karetki]
AFTER UPDATE, INSERT
AS
BEGIN
    UPDATE [Karetki]
    SET [Następny przegląd] = DATEADD(month, 4, i.[Ostatni przegląd])
    FROM [Karetki]
    INNER JOIN inserted i on i.ID = [Karetki].ID
END
GO

--DROP TRIGGER nastPrzegląd
