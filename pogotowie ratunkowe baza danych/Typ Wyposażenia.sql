CREATE TABLE [Types of Equipment]
(
 [ID] INT PRIMARY Key,
 [name] VARCHAR(50) NOT NULL
)

--SELECT * FROM [Typ Wyposażenia]
--DROP TABLE [Typ Wyposażenia]

INSERT INTO [Types of Equipment] VALUES
(1, 'Transportacja'),
(2, 'Opatrywanie ran'),
(3, 'Unieruchomienie'),
(4, 'Pomiar'),
(5, 'Specjalne'),
(6, 'Płyny');
