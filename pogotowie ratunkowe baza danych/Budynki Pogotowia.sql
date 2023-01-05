CREATE TABLE [Budynki Pogotowia]
(
 [ID] int PRIMARY KEY,
 [ID Typu] INT,
 [Miasto] VARCHAR(50),
 [Ulica] VARCHAR(50)
    CONSTRAINT FK_IDtypBud FOREIGN KEY ([ID Typu])
    REFERENCES [Typy Budynków] ([ID typu])
)

SELECT * FROM [Budynki Pogotowia]
DROP TABLE [Budynki Pogotowia]

INSERT INTO [Budynki Pogotowia] VALUES
(1, 3, 'Kraków', 'ul. Winnicka 2'),
(2, 1, 'Kraków', 'ul. Winnicka 2'),
(3, 1, 'Kraków', 'ul. Winnicka 2'),
(4, 1, 'Kraków', 'ul. Winnicka 2'),
(5, 2, 'Kraków', 'ul. Winnicka 2');
-- mozna dodac budynki w innej lokaliacji jesli dobrze rozumiem ale idkidk
