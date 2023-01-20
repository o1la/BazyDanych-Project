CREATE TABLE [Zespoły] (
 [ID] INT PRIMARY KEY,
 [Nazwa] VARCHAR(50) NOT NULL,
 [ID Lidera] INT NOT NULL
 CONSTRAINT FK_IDLidera FOREIGN KEY ([ID Lidera])
 REFERENCES [Pracownicy] ([ID])
);

--DROP TABLE Zespoły
--SELECT * FROM Zespoły

INSERT INTO Zespoły VALUES 
(1, 'Niedzwiedzie', 3),
(2, 'Tygrysy', 4),
(3, 'Małpy', 5),
(4, 'Koguty', 6),
(5, 'Koty', 7),
(6, 'Króliki', 8),
(7, 'Jaszczurki', 9),
(8, 'Węże', 10);