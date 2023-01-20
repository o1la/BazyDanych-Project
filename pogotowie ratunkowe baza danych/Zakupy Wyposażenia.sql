CREATE TABLE [Zakupy Wyposażenia]
(
 [ID] INT PRIMARY KEY,
 [ID Typu] INT,
 [ID Produktu] INT,
 [Ilość] INT NOT NULL,
 [Cena jednostkowa] MONEY NOT NULL,
 [Suma] MONEY NOT NULL,
 [Data] DATE NOT NULL
    CONSTRAINT FK_IDtypzakupy FOREIGN KEY ([ID Typu])
    REFERENCES [Typ Wyposażenia] ([ID]),
    CONSTRAINT FK_IDprduktuZakup FOREIGN KEY ([ID Produktu])
    REFERENCES [Wyposażenie] ([ID Produktu])
);

--SELECT * FROM [Zakupy Wyposażenia]
--DROP TABLE [Zakupy Wyposażenia]

INSERT INTO [Zakupy Wyposażenia] VALUES
(1, 1, 5, 2, 702.53,0, '2022-12-05'), 
(2, 2, 7, 35, 10.90,0, '2022-12-13'),
(3, 2, 8, 5, 16.02,0, '2022-12-15'),
(4, 4, 11, 2, 119.99,0, '2022-12-20'),
(5, 6, 20, 20, 50.82,0, '2022-12-23'),
(6, 6, 20, 5, 50.41, 0, '2023-01-03');
