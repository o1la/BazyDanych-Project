CREATE TABLE [Typ Wyposażenia]
(
 [ID] INT PRIMARY Key,
 [Nazwa] VARCHAR(50)
)

--SELECT * FROM [Typ Wyposażenia]
--DROP TABLE [Typ Wyposażenia]

INSERT INTO [Typ Wyposażenia] VALUES
(1, 'Transportacja'),
(2, 'Opatrywanie ran'),
(3, 'Unieruchomienie'),
(4, 'Pomiar'),
(5, 'Specjalne'),
(6, 'Płyny');
