CREATE TABLE [Wyposażenie karetek]
(
 [ID Typu Wyposażenia] INT,
 [ID Produktu] INT PRIMARY KEY,
 [Nazwa Produktu] VARCHAR(50)
    CONSTRAINT FK_IDtypWyp FOREIGN KEY ([ID Typu Wyposażenia])
    REFERENCES [Typu Wyposażenia] ([ID])
);

--SELECT * FROM [Wyposażenie karetek]
--DROP TABLE [Wyposażenie karetek]

INSERT INTO [Wyposażenie karetek] VALUES
(1, 1, 'Nosze główne'),
(1, 2, 'Nosze podbierakowe'),
(1, 3, 'Krzesełko kardiologiczne'),
(1, 4, 'Deska ortopedyczna'),
(3, 5, 'Kamizelka KED'),
(1, 6, 'Materac próżniowy'),
(2, 7, 'Bandaż'),
(2, 8, 'Chusta'),
(5, 9, 'Defibrylator'),
(5, 10, 'Respirator'),
(4, 11, 'Pulsoksymetr'),
(6, 12, 'Pompa infuzyjna'),
(3, 13, 'Szyna'),
(3, 14, 'Kołnierz'),
(4, 15, 'Glukometr'),
(4, 16, 'Stetoskop'),
(4, 17, 'Laryngoskop'),
(4, 18, 'Latarka diagnostyczna'),
(6, 19, 'Staza'),
(6, 20, 'Cewnik'),
(6, 21, 'Zestaw do drenażu');