CREATE TABLE [Inne Wydatki]
(
 [ID] INT,
 [Typ Wydatku] VARCHAR(50),
 [Koszt] MONEY
)
 
--SELECT * FROM [Inne Wydatki]
--DROP TABLE [Inne Wydatki]

INSERT INTO [Inne Wydatki] VALUES
(1, 'Paliwo', 700.00),
(2, 'Serwis sprzętu', 300.00),
(3, 'Serwis samochodu', 1500.00);