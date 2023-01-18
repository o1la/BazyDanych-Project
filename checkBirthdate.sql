CREATE FUNCTION check_birthdate()
RETURNS TRIGGER
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE [Data Urodzenia] > GETDATE())
    BEGIN
        RAISERROR('[Data Urodzenia] nie może być późniejsza niż aktualna data',16,1);
        RETURN NULL;
    END
    RETURN NEW;
END


ALTER TABLE Pacjenci
ADD CONSTRAINT chk_birthdate CHECK (dbo.check_birthdate() = 1)
