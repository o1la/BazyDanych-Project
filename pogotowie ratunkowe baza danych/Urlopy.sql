CREATE TABLE [Urlopy] (
[ID Pracownika] INT NOT NULL,
[Początek] date NOT NULL,
[Koniec] date NOT NULL,
[Płatny] BIT NOT NULL
    CONSTRAINT FK_IDpracownika FOREIGN KEY ([ID Pracownika])
    REFERENCES Pracownicy([ID])
);

--SELECT * FROM Urlopy
--DROP TABLE Urlopy

INSERT INTO Urlopy VALUES
(7, '2022-04-28', '2022-05-10', 1),
(2, '2023-01-1', '2023-01-18', 1),
(6, '2023-02-21', '2023-02-27', 1),
(3, '2023-03-1', '2023-03-8', 0),
(23, '2022-05-24', '2022-05-28', 1),
(16, '2022-06-3', '2022-06-11', 1),
(18, '2023-03-26', '2023-03-30', 1),
(4, '2023-04-12', '2023-04-20', 0),
(28, '2023-01-16', '2023-01-24', 1),
(27, '2023-02-09', '2023-02-10', 0);