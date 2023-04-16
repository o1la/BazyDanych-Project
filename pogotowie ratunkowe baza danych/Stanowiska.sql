CREATE TABLE [Positions] (
  [ID Position] INT PRIMARY KEY,
  [Name] VARCHAR(60) NOT NULL,
  [Hourly Wage] MONEY NOT NULL
);

--SELECT * FROM Stanowiska
--DROP TABLE Stanowiska

INSERT INTO Position VALUES 
(1, 'Dyrektor', 100.00),
(2, 'Menadzer', 70.00),
(3, 'Starszy Ratownik Medyczny', 55.00),
(4, 'Młodszy Ratownik Medyczny', 35.00),
(5, 'Kierowca karetki', 35.00),
(6, 'Operator numeru alarmowego', 30.00),
(7, 'Księgowy', 65.00);

