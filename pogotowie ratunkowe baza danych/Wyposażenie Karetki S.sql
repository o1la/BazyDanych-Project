CREATE TABLE [Minimal Equipment of Ambulance S]
(
 [Product ID] INT NOT NULL,
 [Quantity] INT NOT NULL
    CONSTRAINT FK_IDproduktuS FOREIGN KEY ([Product ID])
    REFERENCES [Equipment] ([Product ID])
);

INSERT INTO [Minimal Equipment of Ambulance S] VALUES
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

--SELECT * FROM [Minimalne wyposażenie Karetki S]
--DROP TABLE [Minimalne wyposażenie Karetki S]