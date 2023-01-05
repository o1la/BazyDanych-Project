CREATE TABLE [Zgłoszenia] 
(
 [ID Zgłoszenia] INT PRIMARY KEY,
 [Data] DATETIME NOT NULL,
 [Zgłaszający] VARCHAR(50),
 [Adres] VARCHAR(50),
 [Miasto] VARCHAR(50),
 [Powód] VARCHAR(50)
);
 
--SELECT * FROM Zgłoszenia
--DROP TABLE Zgłoszenia
--DELETE Zgłoszenia

INSERT INTO Zgłoszenia VALUES
(1, '2022-12-01 09:10:29', 'Aleksander Pawlak', 'ul. Kierunkowa 13', 'Kraków', 'nagły ostry ból brzucha'),
(2, '2022-12-01 14:27:30', 'Mateusz Makowski', 'ul. Boczna 74', 'Kraków', 'porażenie prądem'),
(3, '2022-12-01 15:02:56', 'Franciszka Jakubowska', 'ul. Ryska 62/85', 'Skawina', 'nasilona duszność'),
(4, '2022-12-01 20:07:11', 'Matylda Wójcik', 'ul. Sterowa 1/1', 'Skawina', 'próba samobójcza'),
(5, '2022-12-02 03:19:45', 'Henryk Zawadzki', 'ul. Długa 51', 'Kraków', 'upadek z dużej wysokości'),
(6, '2022-12-02 10:21:09', 'Alina Szymczak', 'ul. ul. Ryska 62/85', 'Kraków', 'rozległe oparzenia'),
(7, '2022-12-02 13:45:16', 'Juliusz Szymczak', 'ul. Gerberowa 6/1', 'Kraków', 'zatrzymanie akcji serca'),
(8, '2022-12-02 15:57:44', 'Nina Chmielewska', 'ul. Owocowa 16', 'Tomaszowice', 'utrata przytomności'),
(9, '2022-12-02 21:36:41', 'Czesław Kołodziej', 'ul. Bracka 24/74', 'Kraków', 'bardzo wysoka gorączka z drgawkami'),
(10, '2022-12-03 07:22:38', 'Adam Malinowski', 'ul. Wiosłowa 14', 'Kraków', 'ukąszenia przez jadowite zwierze'),
(11, '2022-12-03 15:13:58', 'Zofia Ziółkowska', 'ul. Odrzańska 5', 'Kraków', 'uporczywe wymioty zwłaszcza z domieszką krwi'),
(12, '2022-12-03 16:46:56', 'Gabriel Kubiak', 'ul. Strusia 62/2', 'Skawina', 'nasilona duszność'),
(13, '2022-12-03 20:27:42', 'Iza Błaszczyk', 'ul. Ptasia 52', 'Kraków', 'nagły ostry ból brzucha'),
(14, '2022-12-03 22:33:03', 'Lidia Szewczyk', 'ul. Akacjowa 28', 'Kraków', 'zatrzymanie akcji serca');