CREATE TABLE [Minimal Equipment of Ambulance P]
(
 [Product ID] INT NOT NULL,
 [Quantity] INT NOT NULL
    CONSTRAINT FK_IDproduktu FOREIGN KEY ([Product ID])
    REFERENCES [Equipment] ([Product ID])
);

--SELECT * FROM [Minimalne wyposażenie Karetki P]
--DROP TABLE [Minimalne wyposażenie Karetki P]

INSERT INTO [Minimalne wyposażenie karetki P] VALUES
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