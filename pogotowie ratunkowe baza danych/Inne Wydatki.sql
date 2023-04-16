CREATE TABLE [Other expenses]
(
 [ID] INT PRIMARY KEY,
 [Type of expense] VARCHAR(50) NOT NULL,
 [Price] MONEY NOT NULL,
 [Date] DATE NOT NULL
)
 
--SELECT * FROM [Inne Wydatki]
--DROP TABLE [Inne Wydatki]

INSERT INTO [Other expenses] VALUES
(1, 'Paliwo', 700.00, '2022-12-13'),
(2, 'Serwis sprzętu', 300.00, '2022-12-18'),
(3, 'Serwis samochodu', 1500.00, '2022-12-02');