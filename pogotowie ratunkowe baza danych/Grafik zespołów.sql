CREATE TABLE [Squad Schedule] (
    [ID Squad] INT NOT NULL,
    [Clock in] DATETIME NOT NULL,
    [Clock out] DATETIME NOT NULL
        CONSTRAINT FK_IDzespołuGrafik FOREIGN KEY ([ID Squad])
        REFERENCES Squads([ID])
);

INSERT INTO [Squad Schedule] VALUES 
(1, '2022-12-01 04:00:00', '2022-12-01 16:00:00'),
(2, '2022-12-01 16:00:00', '2022-12-02 4:00:00'),
(3, '2022-12-02 04:00:00', '2022-12-02 16:00:00'),
(4, '2022-12-02 16:00:00', '2022-12-03 4:00:00'),
(5, '2022-12-03 04:00:00', '2022-12-03 16:00:00'),
(6, '2022-12-03 16:00:00', '2022-12-04 4:00:00'),
(7, '2022-12-04 04:00:00', '2022-12-04 16:00:00'),
(8, '2022-12-04 16:00:00', '2022-12-05 4:00:00'),
(1, '2022-12-05 04:00:00', '2022-12-05 16:00:00'),
(2, '2022-12-05 16:00:00', '2022-12-06 4:00:00'),
(3, '2022-12-06 04:00:00', '2022-12-06 16:00:00'),
(4, '2022-12-06 16:00:00', '2022-12-07 4:00:00'),
(5, '2022-12-07 04:00:00', '2022-12-07 16:00:00'),
(6, '2022-12-07 16:00:00', '2022-12-08 4:00:00'),
(7, '2022-12-08 04:00:00', '2022-12-08 16:00:00'),
(8, '2022-12-08 16:00:00', '2022-12-09 4:00:00');

--SELECT * FROM [Grafik Zespołów]
--DROP TABLE [Grafik Zespołów]
