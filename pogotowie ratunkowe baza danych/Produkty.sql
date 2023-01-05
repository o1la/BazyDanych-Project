CREATE TABLE [Produkty]
(
 [ID Typu] INT,
 [ID Produktu] INT PRIMARY KEY,
 [Nazwa Produktu] VARCHAR(50),
 [Cena jednostkowa] MONEY,
    CONSTRAINT FK_IDtyp FOREIGN KEY ([ID Typu])
    REFERENCES [Typ Wyposażenia] ([ID])
);

--SELECT * FROM [Wyposażenie karetek]
--DROP TABLE [Wyposażenie karetek]

INSERT INTO [Produkty] VALUES
(1, 1, 'Nosze główne', 350.04),
(1, 2, 'Nosze podbierakowe', 300.11),
(1, 3, 'Krzesełko kardiologiczne', 3500.16),
(1, 4, 'Deska ortopedyczna', 1000.38),
(3, 5, 'Kamizelka KED', 702.14),
(1, 6, 'Materac próżniowy', 2024.32),
(2, 7, 'Bandaż', 10.22),
(2, 8, 'Chusta', 15.75),
(5, 9, 'Defibrylator', 3500.21),
(5, 10, 'Respirator', 15200.54),
(4, 11, 'Pulsoksymetr', 120.27),
(6, 12, 'Pompa infuzyjna', 5234.86),
(3, 13, 'Szyna', 846.90),
(3, 14, 'Kołnierz', 63.97),
(4, 15, 'Glukometr', 343.01),
(4, 16, 'Stetoskop', 400.31),
(4, 17, 'Laryngoskop', 203.64),
(4, 18, 'Latarka diagnostyczna', 50.24),
(6, 19, 'Staza', 10.64),
(6, 20, 'Cewnik', 55.73),
(6, 21, 'Zestaw do drenażu', 235.97);