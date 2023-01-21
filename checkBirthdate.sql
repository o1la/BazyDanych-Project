CREATE alter FUNCTION check_birthdate
(
   @data DATE
)
RETURNS BIT
AS
BEGIN
   DECLARE @result BIT;
   SET @result = 1;

   IF (@data > GETDATE())
   BEGIN
       SET @result = 0;
   END
   IF (@result = 0)
   BEGIN
       return cast('Została wpisana zła data' as bit); 
   END
   RETURN @result;
END


--ALTER TABLE Pacjenci
--ADD CONSTRAINT chk_birthdate CHECK (dbo.check_birthdate([Data Urodzenia]) = 1)
