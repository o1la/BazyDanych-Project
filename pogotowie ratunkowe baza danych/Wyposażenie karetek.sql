CREATE TABLE [Wyposażenie karetek]
(
 [ID Karetki] INT NOT NULL,
 [ID Typu Wyposażenia] INT,
 [ID Produktu] INT,
 [Ilość] INT
   CONSTRAINT FK_IDkaretek FOREIGN KEY ([ID karetki])
    REFERENCES Karetki([ID])
)

--SELECT * FROM [Wyposażenie karetek]
--DROP TABLE [Wyposażenie karetek]