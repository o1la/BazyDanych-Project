CREATE TABLE [Equipment Purchase]
(
 [ID] INT PRIMARY KEY,
 [Type ID] INT,
 [Product ID] INT,
 [Quantity] INT NOT NULL,
 [Price] MONEY NOT NULL,
 [Sum] MONEY NOT NULL,
 [Date] DATE NOT NULL
    CONSTRAINT FK_IDtypzakupy FOREIGN KEY ([Type ID])
    REFERENCES [Types of Equipment] ([ID]),
    CONSTRAINT FK_IDprduktuZakup FOREIGN KEY ([Product ID])
    REFERENCES [Equipment] ([Product ID])
);

--SELECT * FROM [Zakupy Wyposażenia]
--DROP TABLE [Zakupy Wyposażenia]

INSERT INTO [Equipment Purchase] VALUES
(1, 1, 5, 2, 702.53,0, '2022-12-05'), 
(2, 2, 7, 35, 10.90,0, '2022-12-13'),
(3, 2, 8, 5, 16.02,0, '2022-12-15'),
(4, 4, 11, 2, 119.99,0, '2022-12-20'),
(5, 6, 20, 20, 50.82,0, '2022-12-23'),
(6, 6, 20, 5, 50.41, 0, '2023-01-03');
