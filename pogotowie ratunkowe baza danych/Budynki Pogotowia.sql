CREATE TABLE [Budynki Pogotowia]
(
 [ID] int PRIMARY KEY,
 [ID Typu] INT,
 [Miasto] VARCHAR(50),
 [Ulica] VARCHAR(50)
    CONSTRAINT FK_IDtypBud FOREIGN KEY ([ID Typu])
    REFERENCES [Typy Budynków] ([ID typu])
)


--DROP TABLE [Budynki Pogotowia]
--SELECT * FROM [Budynki Pogotowia]

INSERT INTO [Budynki Pogotowia] VALUES
(1, 1, 'Kraków', 'ul. Winnicka 2'),
(2, 1, 'Kraków', 'ul. Polna 31'),
(3, 2, 'Kraków', 'ul. Winnicka 2');