CREATE TABLE [Stanowiska] (
  [ID Stanowiska] INT PRIMARY KEY,
  [Nazwa] VARCHAR(60),
  [Stawka Godzinowa] MONEY NOT NULL
);

--SELECT * FROM Stanowiska
--DROP TABLE Stanowiska

INSERT INTO Stanowiska VALUES 
(1, 'Dyrektor', 75.00),
(2, 'Menadzer', 45.00),
(3, 'Starszy Ratownik Medyczny', 35.00),
(4,'Młodszy Ratownik Medyczny', 30.00),
(5, 'Kierowca karetki', 30.00),
(6, 'Operator numeru alarmowego', 25.00),
(7, 'Księgowy', 40.00);