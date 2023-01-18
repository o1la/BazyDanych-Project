CREATE VIEW [Wyjazdy Dzienne] AS
SELECT LiczbaWyj.Dzień AS DATA, LiczbaP.LiczbaP AS [Karetki typu P], IIF(LiczbaS.LiczbaS IS NULL, 0, LiczbaS.LiczbaS) AS [Karetki typu S] FROM
(SELECT CONVERT(DATE, [Czas wyjazdu]) Dzień, COUNT(*) LiczbaWyjazdow FROM [Wyjazdy Karetki]
GROUP BY CONVERT(DATE, [Czas wyjazdu])) AS LiczbaWyj
LEFT JOIN
(SELECT CONVERT(DATE, W.[Czas wyjazdu]) Dzień, COUNT(*) AS LiczbaP FROM [Wyjazdy Karetki] W, Karetki K
WHERE (W.Karetka = K.ID AND K.Model = 'P')
GROUP BY CONVERT(DATE, W.[Czas wyjazdu])) AS LiczbaP
ON LiczbaP.Dzień = LiczbaWyj.Dzień
LEFT JOIN
(SELECT CONVERT(DATE, W.[Czas wyjazdu]) Dzień, COUNT(*) AS LiczbaS FROM [Wyjazdy Karetki] W, Karetki K
WHERE (W.Karetka = K.ID AND K.Model = 'S')
GROUP BY CONVERT(DATE, W.[Czas wyjazdu]) ) AS LiczbaS
ON LiczbaP.Dzień = LiczbaS.Dzień

--SELECT * FROM [Wyjazdy Dzienne]