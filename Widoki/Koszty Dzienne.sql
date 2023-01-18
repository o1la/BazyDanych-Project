CREATE VIEW [Koszty Dzienne] AS
SELECT IIF(SumaWypos.DATA is NULL, SumaInne.DATA, SumaWypos.DATA) as Data, IIF(SumaWypos.[Suma Dzienna] is NULL, SumaInne.[Suma Dzienna], IIF(SumaInne.[Suma Dzienna] is NULL,SumaWypos.[Suma Dzienna], SumaWypos.[Suma Dzienna]+ SumaInne.[Suma Dzienna])) as [Suma Dzienna] FROM
(
    SELECT Data as Data, SUM([SUMA]) [Suma Dzienna] FROM [Zakupy Wyposażenia]
    Group By (Data)
) as SumaWypos
FULL OUTER JOIN
(
    Select Data, SUM(Koszt) [Suma Dzienna] FROM [Inne Wydatki]
    Group By (Data)
) as SumaInne
On SumaInne.Data = SumaWypos.Data


