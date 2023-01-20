CREATE TABLE [Inne Wydatki]
(
 [ID] INT PRIMARY KEY,
 [Typ Wydatku] VARCHAR(50) NOT NULL,
 [Koszt] MONEY NOT NULL,
 [Data] DATE NOT NULL
)
 
--SELECT * FROM [Inne Wydatki]
--DROP TABLE [Inne Wydatki]

INSERT INTO [Inne Wydatki] VALUES
(1, 'Paliwo', 700.00, '2022-12-13'),
(2, 'Serwis sprzętu', 300.00, '2022-12-18'),
(3, 'Serwis samochodu', 1500.00, '2022-12-02');