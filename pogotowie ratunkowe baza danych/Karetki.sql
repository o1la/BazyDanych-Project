CREATE TABLE [Karetki]
(
 [ID] INT PRIMARY KEY,
 [Model] VARCHAR(3) NOT NULL,
 [Rok Produkcji] date NOT NULL,
 [Ostatni przegląd] date NOT NULL,
 [Następny przegląd] date NOT NULL
);

--SELECT * FROM Karetki
--DROP TABLE Karetki
--

INSERT INTO Karetki VALUES 
(1, 'P', '2019-09-01', '2022-12-10', '2023-02-10'),
(2, 'P', '2022-09-05', '2022-10-04', '2022-12-10'),
(3, 'S', '2020-03-01', '2022-11-16', '2023-01-20');
