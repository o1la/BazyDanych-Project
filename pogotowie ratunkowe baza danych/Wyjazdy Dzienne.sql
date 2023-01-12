Create View [Wyjazdy Dzienne] AS
Select LiczbaWyj.Dzień as Data, LiczbaP.LiczbaP as [Karetki typu P], IIF(LiczbaS.LiczbaS is NULL, 0, LiczbaS.LiczbaS) as [Karetki typu S]  FROM
(Select Convert(date, [Czas wyjazdu]) Dzień, Count(*) LiczbaWyjazdow From Wyjazdy
Group By Convert(date, [Czas wyjazdu])) AS LiczbaWyj
Left Join
(Select Convert(date, W.[Czas wyjazdu]) Dzień, Count(*) as LiczbaP From Wyjazdy W, Karetki K
Where (W.Karetka = K.ID AND K.Model = 'P')
Group By Convert(date, W.[Czas wyjazdu])) AS LiczbaP
On LiczbaP.Dzień = LiczbaWyj.Dzień
Left JOIN
(Select Convert(date, W.[Czas wyjazdu]) Dzień, Count(*) as LiczbaS From Wyjazdy W, Karetki K
Where (W.Karetka = K.ID AND K.Model = 'S')
Group By Convert(date, W.[Czas wyjazdu]) ) AS LiczbaS
ON LiczbaP.Dzień = LiczbaS.Dzień
