DROP TABLE [Budynki Pogotowia]
DROP TABLE [Grafik Zespołów]
DROP TABLE [Inne Wydatki]
DROP TABLE[Karetki]
DROP TABLE [Leki]
DROP TABLE Pacjenci
DROP TABLE Pracownicy
DROP TABLE Stanowiska
DROP TABLE [Typ Wyposażenia]
DROP TABLE [Typy Budynków]
DROP TABLE Urlopy
DROP TABLE Wyjazdy
DROP TABLE [Wyposażenie karetki P]
DROP TABLE Wyposażenie
DROP TABLE [Zakupy Wyposażenia]
DROP TABLE Zespoły
DROP TABLE Zgłoszenia


CREATE TABLE [Stanowiska] (
  [ID Stanowiska] INT PRIMARY KEY,
  [Nazwa] VARCHAR(60),
  [Stawka Godzinowa] money NOT NULL
);

INSERT INTO Stanowiska VALUES 
(1, 'Dyrektor', 75.00),
(2, 'Menadzer', 45.00),
(3, 'Starszy Ratownik Medyczny', 35.00),
(4,'Młodszy Ratownik Medyczny', 30.00),
(5, 'Kierowca karetki', 30.00),
(6, 'Operator numeru alarmowego', 25.00),
(7, 'Księgowy', 40.00);

SELECT * FROM Stanowiska
DROP TABLE Stanowiska


CREATE TABLE [Pracownicy]
(
 [ID] INT PRIMARY KEY,
 [Imię] VARCHAR(50),
 [Nazwisko] VARCHAR(50),
 [ID Stanowiska] INT NOT NULL,
 [ID Zespołu] INT,
 [Miasto] VARCHAR(50),
 [Ulica] VARCHAR(50),
    CONSTRAINT FK_IDstanowiska FOREIGN KEY ([ID Stanowiska])
    REFERENCES Stanowiska([ID Stanowiska]),
     CONSTRAINT FK_IDzespołu FOREIGN KEY ([ID Zespołu])
    REFERENCES Zespoly(ID) 
);

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

SELECT * FROM Pracownicy
DROP TABLE Pracownicy


CREATE TABLE [Zespoły] (
 [ID] INT PRIMARY KEY,
 [Nazwa] VARCHAR(50),
 [ID Lidera] INT
);

INSERT INTO Zespoły VALUES 
(1, 'Niedziedzie', 3),
(2, 'Tygrysy', 4),
(3, 'Małpy', 5),
(4, 'Koguty', 6),
(5, 'Koty', 7),
(6, 'Koguty', 8),
(7, 'Koguty', 9),
(8, 'Koguty', 10);

DROP TABLE Zespoły
SELECT * FROM Zespoły


CREATE TABLE [Urlopy] (
[ID Pracownika] INT NOT NULL,
[Początek] date,
[Koniec] date,
[Płatny] BIT
);

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

SELECT * FROM Urlopy
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

INSERT INTO Pacjenci VALUES
(1, '99041635492', 'Lucjan', 'Michalak', 'Kraków', 'ul. Mleczowa 41', '1999-04-16'),
(2, '54020935699', 'Oktawian', 'Zieliński', 'Kraków', 'ul. Długa 51', '1954-02-09'),
(3, '88012461875', 'Fabian', 'Jaworski', 'Kraków', 'ul. Ryska 62/85', '1988-01-24'),
(4, '79081177916', 'Oskar', 'Sobczak', 'Kraków', 'ul. Bracka 24/74', '1979-08-11'),
(5, '82030111963', 'Jowita', 'Urbańska', 'Kraków', 'ul. Wiosłowa 14', '1982-03-01'),
(6, '76081273123', 'Klementyna', 'Kucharska', 'Kraków', 'ul. Odrzańska 5', '1976-08-12'),
(7, '67110759826', 'Jola', 'Woźniak', 'Kraków', 'ul. Ptasia 52', '1967-11-01'),
(8, '77050614723', 'Alana', 'Baran', 'Kraków', 'ul. Akacjowa 28', '1977-05-06');

SELECT * FROM Pacjenci
DROP TABLE Pacjenci

--------- 
 
CREATE TABLE [Karetki]
(
 [ID] INT PRIMARY KEY,
 [Model] VARCHAR(50),
 [Rok Produkcji] date,
 [Ostatni przegląd] date
)
SELECT * FROM Karetki
Drop TABLE Karetki
 

CREATE TABLE [Wyposażenie karetek]
(
 [ID Karetki] INT,
 [ID Typu Wyposażenia] INT,
 [ID Produktu] INT,
 [Ilość] INT
)

Select * FROM [Wyposażenie karetek]
DROP TABLE [Wyposażenie karetek]
 

CREATE TABLE [Zgloszenia] 
(
 [ID Zgloszenia] INT NOT NULL,
 [Data] date NOT NULL,
 [Zgłaszający] VARCHAR(50),
 [Adres] VARCHAR(50),
 [Miasto] VARCHAR(50),
 [Powód] VARCHAR(50),
 CONSTRAINT PK_Zgloszenia PRIMARY KEY([ID Zgloszenia], data)
);
 
SELECT * FROM Zgloszenia
DROP TABLE Zgloszenia


CREATE TABLE [Wyjazdy] 
(
 [ID Zgłoszenia] INT NOT NULL,
 [Czas wyjazdu] date,
 [Czas powrotu] date,
 [karetka] INT NOT NULL,
 [Zespół] INT NOT NULL,
 [ID Pacjenta] int
 
);
 
SELECT * FROM Wyjazdy
DROP TABLE Wyjazdy

 
CREATE TABLE [Ośrodki]
(
 [ID] INT PRIMARY Key,
 [Miasto] VARCHAR(50),
 [Ulica] VARCHAR(50),
)
 
Select * FROM [Ośrodki]
DROP TABLE [Ośrodki]
 

CREATE TABLE [Leki] 
(
[ID] INT PRIMARY KEY,
[Nazwa] VARCHAR(50),
[Producent] VARCHAR(50),
[Cena jednostkowa] money
);
 
SELECT * FROM Leki
DROP TABLE Leki
 

CREATE TABLE [Typ Wyposażenia]
(
 [Id] INT PRIMARY Key,
 [Nazwa] VARCHAR(50)
)
SELECT * FROM [Typ Wyposażenia]
DROP TABLE [Typ Wyposażenia]

 
CREATE TABLE [Sprzęty]
(
 [ID] INT PRIMARY KEY,
 [Nazwa] VARCHAR(50),
 [Nazwa Producenta] VARCHAR(50),
 [Funkcja] VARCHAR(50),
 [Co Ile Dni Serwis] INT,
 [Cena Jednostkowa] money
)

SELECT * From [Sprzęty]
DROP TABLE [Sprzęty]
 
 
CREATE TABLE [Koszty]
(
 [ID] INT PRIMARY KEY,
 [Data] date,
 [Suma] money
)
 
SELECT * FROM Koszty
DROP TABLE Koszty
 

CREATE TABLE [Zakupy Wyposażenia]
(
 [ID] INT,
 [ID Typu] int,
 [ID Produktu] int,
 [ilosc] int,
 [cena jednostkowa] money
)

Select * From [Zakupy Wyposażenia]
Drop TABLE [Zakupy Wyposażenia]

 
CREATE TABLE [Inne Wydatki]
(
 [ID] INT,
 [Typ Wydatku] Varchar(50),
 [Koszt] money
)
 
SELECT * From [Inne Wydatki]
DROP TABLE [Inne Wydatki]
 

CREATE TABLE [Magazyn]
(
 [ID Typu Wyposażenia] INT,
 [ID Produktu] INT,
 [Ilość] INT
)
 
Select * FROM Magazyn
DROP TABLE Magazyn
 

CREATE TABLE [Budynki Pogotowia]
(
 [ID] int PRIMARY KEY,
 [ID Typu] INT,
 [Miasto] VARCHAR(50),
 [Ulica] VARCHAR(50)
)

SELECT * FROM [Budynki Pogotowia]
Drop Table [Budynki Pogotowia]
 

CREATE TABLE [Typy Budynków]
(
 [Id] int PRIMARY Key,
 [Typ] VARCHAR(50)
)

SELECT * From [Typy Budynków]
DROP Table [Typy Budynków]
 