CREATE TABLE [Zakupy Wyposażenia]
(
 [ID] INT,
 [ID Typu] INT,
 [ID Produktu] INT,
 [Ilość] INT,
 [Cena jednostkowa] MONEY
    CONSTRAINT FK_IDtypzakupy FOREIGN KEY ([ID Typu])
    REFERENCES [Typ Wyposażenia] ([ID]),
    CONSTRAINT FK_IDprduktuZakup FOREIGN KEY ([ID Produktu])
    REFERENCES [Wyposażenie] ([ID Produktu])
);

--SELECT * FROM [Zakupy Wyposażenia]
--DROP TABLE [Zakupy Wyposażenia]

INSERT INTO [Zakupy Wyposażenia] VALUES
(1, 1, 5, 2, 702.53), 
(2, 2, 7, 35, 10.90),
(3, 2, 8, 5, 16.02),
(4, 4, 11, 2, 119.99),
(5, 6, 20, 20, 50.82);