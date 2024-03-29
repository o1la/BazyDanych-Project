--CREATE PROCEDURE [Dojazd]
ALTER PROCEDURE [Dojazd]
    @ID INT
AS
begin 
    SELECT WK.[ID zgłoszenia], P.Imię + ' ' + P.Nazwisko AS [Kierowca], Z.Data [Czas zgłoszenia], WK.[Czas wyjazdu], WK.[Czas dojazdu], DATEDIFF(MINUTE,WK.[Czas wyjazdu], WK.[Czas dojazdu]) AS [Długość dojazu minuty], DATEDIFF(SECOND,WK.[Czas wyjazdu], WK.[Czas dojazdu]) AS [Długość dojazu sekundy] ,Z.Adres, Z.Miasto FROM Zgłoszenia Z
        JOIN 
    [Wyjazdy do zgłoszeń] WK ON (WK.[ID Zgłoszenia] = Z.[ID Zgłoszenia])
        JOIN
    [Pracownicy] P ON (P.[ID Zespołu] = WK.[Zespół]) 
   WHERE Z.[ID Zgłoszenia] = @ID AND P.[ID Stanowiska] = 5
   GROUP BY WK.[ID Zgłoszenia], P.Imię, P.Nazwisko, Z.[Data], WK.[Czas wyjazdu], WK.[Czas dojazdu], Z.Adres, Z.Miasto
end

--EXEC Dojazd 14
