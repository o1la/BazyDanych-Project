CREATE TABLE [Employees]
(
 [ID] INT PRIMARY KEY,
 [Name] VARCHAR(50) NOT NULL,
 [Surname] VARCHAR(50) NOT NULL,
 [PESEL] VARCHAR(11) NOT NULL,
 [ID Position] INT NOT NULL,
 [ID Squad] INT,
 [City] VARCHAR(50) NOT NULL,
 [Street] VARCHAR(50) NOT NULL,
    CONSTRAINT FK_IDstanowiska FOREIGN KEY ([ID Position])
    REFERENCES Positions([ID Position]),
    CONSTRAINT FK_IDzespołu FOREIGN KEY ([ID Squad])
    REFERENCES Squads([ID]),
    CONSTRAINT checkPeselPracownicy CHECK (dbo.validPesel(PESEL) = 1)
);

--DROP TABLE Pracownicy
--SELECT * FROM Pracownicy

INSERT INTO Employees VALUES 
(1, 'Albert', 'Bosowski', '01210837334', 1, NULL, 'Kraków', 'ul. Promienna 25'),
(2, 'Mariola', 'Szyszka', '69091465242', 2, NULL, 'Kraków', 'ul. Ametystowa 46'),
--Starsi ratownicy
(3, 'Hubert', 'Łoś', '01321931543', 3, 1, 'Kraków', 'ul. Szafirowa 25'),
(4, 'Mariusz', 'Mocak', '66091297927',3, 2, 'Skawina', 'ul. Wyspiańskiego 13'),
(5, 'Konrad', 'Lumion','74011411416', 3, 3, 'Tomaszowice', 'ul. Krakowska 1/2'),
(6, 'Kamila', 'Ludwiczek', '49101141599', 3, 4, 'Kraków', 'ul. Mickiewicza 20/45'),
(7, 'Włodzimierz', 'Biały','49011396645', 3, 5, 'Kraków', 'ul. Szkolna 53'),
(8, 'Lucyna', 'Biała','51120573136', 3, 6, 'Kraków', 'ul. Gajowa 2/15'),
(9, 'Sylwia', 'Rózana','72101744868', 3, 7, 'Kraków', 'ul. Legionowa 5'),
(10, 'Robert', 'Lipa','78122311939', 3, 8, 'Skawina', 'ul. Długa 70'),
--Zespol 1 [Mlodszy ratownik, kierowca]
(11, 'Alicja', 'Miła','79041456565', 4, 1, 'Kraków', 'ul. Ludwika 66/34'),
(12, 'Marzena', 'Dworek','92062795772', 5, 1, 'Kraków', 'ul. Rubinowa 8/21'),
--Zespol 2 [Mlodszy ratownik, kierowca]
(13, 'Zenon', 'Zbigniewicz','77111264926' ,4, 2, 'Kraków', 'ul. Miłosza 2'),
(14, 'Sławomir', 'Skrzat','48021656372', 5, 2, 'Kraków', 'ul. Ramzesa 64'),
--Zespol 3 [Mlodszy ratownik, kierowca]
(15, 'Grzegorz', 'Gryg', '84071835617',4, 3, 'Skawina', 'ul. Wiklinowa 12'),
(16, 'Elzbieta', 'Wyrwijdąb', '81120869922',5, 3, 'Kraków', 'ul. Rubinowa 8/21'),
--Zespol 4 [Mlodszy ratownik, kierowca]
(17, 'Ignacy', 'Monciwoda','55042485368', 4, 4, 'Kraków', 'ul. Bagienna 9/8'),
(18, 'Nadia', 'Luc','06212186493', 5, 4, 'Kraków', 'ul. Trawiasta 4/43'),
--Zespol 5 [Mlodszy ratownik, kierowca]
(19, 'Aleksander', 'Kaszubski','52021165246', 4, 5, 'Kraków', 'ul. Studencka 5'),
(20, 'Alan', 'Czarnecki','65072481526', 5, 5, 'Kraków', 'ul. Diamentowa 77'),
--Zespol 6 [Mlodszy ratownik, kierowca]
(21, 'Jan', 'Maciejewski', '96110625529',4, 6, 'Kraków', 'ul. Polna 2'),
(22, 'Czesław', 'Wójcik','52121244584', 5, 6, 'Kraków', 'ul. Leśna 64'),
--Zespol 7 [Mlodszy ratownik, kierowca]
(23, 'Emil', 'Zalewski','06231789569',4, 7, 'Kraków', 'ul. Kolejowa 36/25'),
(24, 'Patryk', 'Mazurek','63032362717', 5, 7, 'Kraków', 'ul. Lipowa 7/83'),
--Zespol 8 [Mlodszy ratownik, kierowca]
(25, 'Diego', 'Kwiatkowski', '50032969587',4, 8, 'Kraków', 'ul. Sokołowska 84'),
(26, 'Gustaw', 'Baran','60041454745', 5, 8, 'Kraków', 'ul. Lukrecjowa 83'),
--Operatory numeru
(27, 'Daniela', 'Michalak','76050349477', 6, NULL, 'Libertów', 'ul. Krakowska 25'),
(28, 'Remigiusz', 'Szczepański','96072033222', 6, NULL, 'Kraków', 'ul. Ziołowa 19'),
(29, 'Bruno', 'Makowski','95061088355', 6, NULL, 'Kraków', 'ul. Żyzna 2/75'),
--Ksiegowy
(30, 'Faustyna', 'Adamska', '97101051893',7, NULL, 'Kraków', 'ul. Leba 8');