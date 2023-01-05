

CREATE TABLE [Stanowiska] (
  [ID Stanowiska] INT PRIMARY KEY,
  [Nazwa] VARCHAR(60),
  [Stawka Godzinowa] money NOT NULL
);

SELECT * FROM Pracownicy
DROP TABLE Stanowiska


CREATE TABLE [Pracownicy]
(
 [ID] INT PRIMARY Key,
 [Imię] VARCHAR(50),
 [Nazwisko] VARCHAR(50),
 [ID Stanowiska] INT,
 [ID Zespołu] INT,
 [Miasto] VARCHAR(50),
 [Ulica] VARCHAR(50),
);

CREATE TABLE [Zespoły] (
 [ID] INT PRIMARY KEY,
 [Nazwa] VARCHAR(50),
 [ID Lidera] INT
);




INSERT INTO Stanowiska VALUES 
(1, 'Dyrektor', 75.00),
(2, 'Menadzer', 45.00),
(3, 'Starszy Ratownik Medyczny', 35.00),
(4,'Młodszy Ratownik Medyczny', 30.00),
(5, 'Kierowca karetki', 30.00),
(6, 'Operator numeru alarmowego', 25.00),
(7, 'Księgowy', 40.00);


INSERT INTO Pracownicy VALUES 
(1, 'Albert', 'Bosowski', 1, NULL, 'Kraków', 'ul. Promienna 25'),
(2, 'Mariola', 'Szyszka', 2, NULL, 'Kraków', 'ul. Ametystowa 46'),
--Starsi ratownicy
(3, 'Hubert', 'Łoś', 3, 1, 'Kraków', 'ul. Szafirowa 25'),
(4, 'Mariusz', 'Mocak', 3, 2, 'Skawina', 'ul. Wyspiańskiego 13'),
(5, 'Konrad', 'Lumion', 3, 3, 'Tomaszowice', 'ul. Krakowska 1/2'),
(6, 'Kamila', 'Ludwiczek', 3, 4, 'Kraków', 'ul. Mickiewicza 20/45'),
(7, 'Włodzimierz', 'Biały', 3, 5, 'Kraków', 'ul. Szkolna 53'),
(8, 'Lucyna', 'Biała', 3, 6, 'Kraków', 'ul. Gajowa 2/15'),
(9, 'Sylwia', 'Rózana', 3, 7, 'Kraków', 'ul. Legionowa 5'),
(10, 'Robert', 'Lipa', 3, 8, 'Skawina', 'ul. Długa 70'),
--Zespol 1 [Mlodszy ratownik, kierowca]
(11, 'Alicja', 'Miła', 4, 1, 'Kraków', 'ul. Ludwika 66/34'),
(12, 'Marzena', 'Dworek', 5, 1, 'Kraków', 'ul. Rubinowa 8/21'),
--Zespol 2 [Mlodszy ratownik, kierowca]
(13, 'Zenon', 'Zbigniewicz', 4, 2, 'Kraków', 'ul. Miłosza 2'),
(14, 'Sławomir', 'Skrzat', 5, 2, 'Kraków', 'ul. Ramzesa 64'),
--Zespol 3 [Mlodszy ratownik, kierowca]
(15, 'Grzegorz', 'Gryg', 4, 3, 'Skawina', 'ul. Wiklinowa 12'),
(16, 'Elzbieta', '', 5, 3, 'Kraków', 'ul. Rubinowa 8/21'),
--Zespol 4 [Mlodszy ratownik, kierowca]
(17, 'Ignacy', 'Monciwoda', 4, 4, 'Kraków', 'ul. Bagienna 9/8'),
(18, 'Nadia', 'Luc', 5, 4, 'Kraków', 'ul. Trawiasta 4/43'),
--Zespol 5 [Mlodszy ratownik, kierowca]
(19, 'Aleksander', 'Kaszubski', 4, 5, 'Kraków', 'ul. Studencka 5'),
(20, 'Alan', 'Czarnecki', 5, 5, 'Kraków', 'ul. Diamentowa 77'),
--Zespol 6 [Mlodszy ratownik, kierowca]
(21, 'Jan', 'Maciejewski', 4, 6, 'Kraków', 'ul. Polna 2'),
(22, 'Czesław', 'Wójcik', 5, 6, 'Kraków', 'ul. Leśna 64'),
--Zespol 7 [Mlodszy ratownik, kierowca]
(23, 'Emil', 'Zalewski', 5, 7, 'Kraków', 'ul. Kolejowa 36/25'),
(24, 'Patryk', 'Mazurek', 5, 7, 'Kraków', 'ul. Lipowa 7/83'),
--Zespol 8 [Mlodszy ratownik, kierowca]
(25, 'Diego', 'Kwiatkowski', 5, 8, 'Kraków', 'ul. Sokołowska 84'),
(26, 'Gustaw', 'Baran', 5, 8, 'Kraków', 'ul. Lukrecjowa 83'),
--Operatory numeru
(27, 'Daniela', 'Michalak', 6, NULL, 'Libertów', 'ul. Krakowska 25'),
(28, 'Remigiusz', 'Szczepański', 6, NULL, 'Kraków', 'ul. Ziołowa 19'),
(29, 'Bruno', 'Makowski', 6, NULL, 'Kraków', 'ul. Żyzna 2/75'),
--Ksiegowy
(30, 'Faustyna', 'Adamska', 7, NULL, 'Kraków', 'ul. Leba 8');



INSERT INTO Zespoły VALUES 
(1, 'Niedziedzie', 3),
(2, 'Tygrysy', 4),
(3, 'Małpy', 5),
(4, 'Koguty', 6),
(5, 'Koty', 7),
(6, 'Koguty', 8),
(7, 'Koguty', 9),
(8, 'Koguty', 10);


CREATE TABLE [Urlopy] (
[ID Pracownika] INT NOT NULL,
[Początek] date,
[Koniec] date,
[Płatny] BIT
);

SELECT * FROM Urlopy

INSERT INTO Urlopy VALUES
(1, '2023-04-28', '2023-05-10', 1),
(2, '2023-01-1', '2023-01-18', 1),
(6, '2023-02-21', '2023-02-27', 1),
(3, '2023-03-1', '2023-03-8', 0),
(23, '2023-05-24', '2023-05-28', 1),
(16, '2023-06-3', '2023-06-11', 1),
(18, '2023-03-26', '2023-03-30', 1),
(4, '2023-04-12', '2023-04-20', 0),
(28, '2023-01-16', '2023-01-24', 1),
(27, '2023-02-09', '2023-02-10', 0);

DROP TABLE Urlopy

CREATE TABLE [Pacjenci](
 [ID] INT PRIMARY Key,
 [Pesel] VARCHAR(11),
 [Imię] VARCHAR(50),
 [Nazwisko] VARCHAR(50),
 [Miasto] VARCHAR(50),
 [Ulica] VARCHAR(50),
 [Data Urodzenia] date
);

SELECT * FROM Pacjenci

INSERT INTO Pacjenci VALUES
(1, 99041635492, 'Lucjan', 'Michalak', 'Kraków', 'ul. Mleczowa 41', '99-04-16'),
(2, 54020935699, 'Oktawian', 'Zieliński', 'Kraków', 'ul. Długa 51', '54-02-09'),
(3, 88012461875, 'Fabian', 'Jaworski', 'Kraków', 'ul. Ryska 62/85', '88-01-24'),
(4, 79081177916, 'Oskar', 'Sobczak', 'Kraków', 'ul. Bracka 24/74', '79-08-11'),



