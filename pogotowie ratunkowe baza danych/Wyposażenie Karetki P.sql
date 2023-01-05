CREATE TABLE [Wyposażenie karetki P]
(
 [ID Produktu] INT NOT NULL,
 [Ilość] INT
    CONSTRAINT FK_IDproduktu FOREIGN KEY ([ID Produktu])
    REFERENCES [Wyposażenie karetek] ([ID Produktu])
);

INSERT INTO [Wyposażenie karetki P] VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 0),
(5, 1),
(6, 0),
(7, 30),
(8, 15),
(9, 1),
(10, 1),
(11, 3),
(12, 2),
(13, 8),
(14, 3),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 3),
(20, 2),
(21, 5);