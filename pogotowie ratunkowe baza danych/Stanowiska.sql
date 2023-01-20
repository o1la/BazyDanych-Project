CREATE TABLE [Stanowiska] (
  [ID Stanowiska] INT PRIMARY KEY,
  [Nazwa] VARCHAR(60) NOT NULL,
  [Stawka Godzinowa] MONEY NOT NULL
);

--SELECT * FROM Stanowiska
--DROP TABLE Stanowiska

INSERT INTO Stanowiska VALUES 
(1, 'Dyrektor', 100.00),
(2, 'Menadzer', 70.00),
(3, 'Starszy Ratownik Medyczny', 55.00),
(4, 'Młodszy Ratownik Medyczny', 35.00),
(5, 'Kierowca karetki', 35.00),
(6, 'Operator numeru alarmowego', 30.00),
(7, 'Księgowy', 65.00);

