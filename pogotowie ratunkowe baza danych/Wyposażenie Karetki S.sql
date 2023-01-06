CREATE TABLE [Wyposażenie karetki S]
(
 [ID Produktu] INT NOT NULL,
 [Ilość] INT
    CONSTRAINT FK_IDproduktuS FOREIGN KEY ([ID Produktu])
    REFERENCES [Wyposażenie] ([ID Produktu])
);

INSERT INTO [Wyposażenie karetki S] VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 60),
(8, 30),
(9, 2),
(10, 2),
(11, 6),
(12, 4),
(13, 12),
(14, 6),
(15, 7),
(16, 7),
(17, 7),
(18, 7),
(19, 5),
(20, 4),
(21, 10);

SELECT * FROM [Wyposażenie Karetki S]
DROP TABLE [Wyposażenie Karetki S]