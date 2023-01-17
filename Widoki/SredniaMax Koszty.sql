Create View [ŚrednieMax koszty dzienne] AS
SELECT AVG([Suma Dzienna]) [Średnia Wydatków], MAX([Suma Dzienna]) as [Max Dzienny]  FROM [Koszty Dzienne]

