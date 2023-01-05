CREATE TABLE [Sprzęty]
(
 [ID] INT PRIMARY KEY,
 [Nazwa] VARCHAR(50),
 [Funkcja] VARCHAR(50),
 [Co Ile Dni Serwis] INT,
 [Cena Jednostkowa] MONEY
)

--SELECT * FROM [Sprzęty]
--DROP TABLE [Sprzęty]

INSERT INTO Sprzęty VALUES
(1, 'Nosze główne', 'Transportacja', 30, 1000),
(2, 'Nosze podbierakowe', 'Transportacja', 30, 800),
(3, 'Krzesełko kardiologiczne', 'Transportacja', 50, 3700),
(4, 'Deska ortopedyczna', 'Transportacja', 50, 900),
(5, 'Kamizelka KED', 'Transportacja', 50, 500),
(6, 'Materac próżniowy', 'Transportacja', 50, 2100),
