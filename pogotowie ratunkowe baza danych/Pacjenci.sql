CREATE TABLE [Patients](
 [ID] INT PRIMARY Key,
 [PESEL] VARCHAR(11),
 [Name] VARCHAR(50),
 [Surname] VARCHAR(50),
 [City] VARCHAR(50),
 [Street] VARCHAR(50),
 [Date of birth] date,
 CONSTRAINT checkPesel CHECK (dbo.validPesel(PESEL) = 1)
);

INSERT INTO Patients VALUES
(1, '99041635492', 'Lucjan', 'Michalak', 'Kraków', 'ul. Kierunkowa 13', '1999-04-16'),
(2, '54020935699', 'Oktawian', 'Zieliński', 'Kraków', 'ul. Długa 51', '1954-02-09'),
(3, '88012461875', 'Fabian', 'Jaworski', 'Skawina', 'ul. Ryska 62/85', '1988-01-24'),
(4, '79081177916', 'Oskar', 'Sobczak', 'Kraków', 'ul. Bracka 24/74', '1979-08-11'),
(5, '82030111963', 'Jowita', 'Urbańska', 'Kraków', 'ul. Wiosłowa 14', '1982-03-01'),
(6, '76081273123', 'Klementyna', 'Kucharska', 'Kraków', 'ul. Odrzańska 5', '1976-08-12'),
(7, '67110759826', 'Jola', 'Woźniak', 'Kraków', 'ul. Ptasia 52', '1967-11-01');

--SELECT * FROM Pacjenci
--DROP TABLE Pacjenci