CREATE TABLE [Ambulance]
(
 [ID] INT PRIMARY KEY,
 [Model] VARCHAR(3) NOT NULL,
 [Year Production] date NOT NULL,
 [Last Check up] date NOT NULL,
 [Next Check up] date NOT NULL
);

--SELECT * FROM Karetki
--DROP TABLE Karetki
--

INSERT INTO Ambulance VALUES 
(1, 'P', '2019-09-01', '2022-12-10', '2023-02-10'),
(2, 'P', '2022-09-05', '2022-10-04', '2022-12-10'),
(3, 'S', '2020-03-01', '2022-11-16', '2023-01-20');
