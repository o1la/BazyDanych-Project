CREATE TABLE [Leki] 
(
[ID] INT PRIMARY KEY,
[Nazwa] VARCHAR(50),
[Producent] VARCHAR(50),
[Substancja czynna] VARCHAR(50),
[Ilość Substancji Czynnej w mg] INT,
[Ilość w opakowaniu] INT,
[Postać] VARCHAR(16),
[Cena jednostkowa] MONEY
);
 

INSERT INTO [Leki] VALUES
(1,'Polopiryna MAX', 'POLPHARMA', 'Acidum acetylsalicylicum', 500, 10, 'tabletki', 9.49),
(2,'Adenocor', 'Sanofi-Aventis', 'Adenosinum', 3, 6, 'fiolki 2ml', 279.99),
(3,'Cordarone', 'SANOFI-AVENTIS', 'Amiodaroni hydrochloridum', 200, 30, 'tabletki', 19.99),
(4,'Atropinum Sulfuricum WZF', 'POLFA WARSZAWA', 'Atropini sulfas', 1, 10, 'fiolki 1ml', 51.49),
(5,'Olicard retard', 'DELFARMA', 'Isosorbidi mononitras', 40, 20, 'tabletki', 12.99),
(6,'Cortiment MMX', 'FERRING', 'Budesonidum', 9, 30,'tabletki', 402.78),
(7,'Captopril Jelfa', 'BAUSCH HEALTH', 'Captoprilum', 25, 30,'tabletki', 6.98),
(8,'Clemastinum Hasco', 'HASCO-LEK', 'Clemastinum Hasco', 10, 1,'syrop 100ml', 7.49),
(9,'Clonazepamum TZF', 'POLFA TARCHOMIN', 'Clemastinum Hasco', 2, 30,'tabletki', 17.83),
(10,'Dexamethasone phosphate SF', 'Sun-Farm', 'Dexamethasoni phosphas', 4, 10,'fiolki 1ml', 27.00);

SELECT * FROM Leki
--DROP TABLE Leki
