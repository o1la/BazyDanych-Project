CREATE TABLE [Wyjazdy] 
(
 [ID Zgłoszenia] INT NOT NULL,
 [Czas wyjazdu] DATETIME NOT NULL,
 [Czas powrotu] DATETIME NOT NULL,
 [Karetka] INT NOT NULL,
 [Zespół] INT NOT NULL,
 [ID Pacjenta] INT,
    CONSTRAINT FK_IDzgłoszenia FOREIGN KEY ([ID Zgłoszenia])
    REFERENCES Zgłoszenia([ID Zgłoszenia]),
    CONSTRAINT FK_karetka FOREIGN KEY ([Karetka])
    REFERENCES Karetki([ID]),
    CONSTRAINT FK_IDzespołu2 FOREIGN KEY ([Zespół])
    REFERENCES Zespoły([ID]),
     CONSTRAINT FK_IDpacjenta FOREIGN KEY ([ID Pacjenta])
    REFERENCES Pacjenci([ID])
);
 
--SELECT * FROM Wyjazdy
--DROP TABLE Wyjazdy

INSERT INTO Wyjazdy VALUES
(1, '2022-12-01 09:13:02', '2022-12-01 09:20:27', 1, 1, 1 ),
(2, '2022-12-01 14:30:42', '2022-12-01 14:43:30', 3, 2, NULL),
(3, '2022-12-01 15:06:12', '2022-12-01 15:20:49', 1, 3, NULL),
(5, '2022-12-02 03:25:41', '2022-12-02 03:31:50', 3, 5, 2),
(6, '2022-12-02 10:23:49', '2022-12-02 10:36:09', 1, 6, 3),
(7, '2022-12-02 13:50:10', '2022-12-02 13:56:12', 3, 7, NULL),
(9, '2022-12-02 21:40:01', '2022-12-02 21:44:49', 2, 1, 4),
(10, '2022-12-03 07:24:58', '2022-12-03 07:29:13', 1, 3, 5),
(11,'2022-12-03 15:17:18', '2022-12-03 15:26:13', 2, 5, 6),
(13, '2022-12-03 20:30:56', '2022-12-03 20:36:43', 1, 2, 7),
(14, '2022-12-03 22:37:23', '2022-12-03 22:48:33', 2, 8, NULL);