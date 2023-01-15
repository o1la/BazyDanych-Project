CREATE TABLE [Karetki]
(
 [ID] INT PRIMARY KEY,
 [Model] VARCHAR(3),
 [Rok Produkcji] date,
 [Ostatni przegląd] date,
 [Następny przegląd] date
);

--SELECT * FROM Karetki
--DROP TABLE Karetki

INSERT INTO Karetki VALUES 
(1, 'P', '2019-09-01', '2022-12-10', '2022-12-10'),
(2, 'P', '2022-09-05', '2022-10-04', '2022-12-10'),
(3, 'S', '2020-03-01', '2022-12-10', '2022-12-10');
