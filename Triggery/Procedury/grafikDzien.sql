--CREATE PROCEDURE [Grafik Dzień]
ALTER PROCEDURE [Grafik Dzień]
    @Date DATE
    AS
begin
    SELECT Z.ID, Z.Nazwa FROM Zespoły Z
    JOIN [Grafik Zespołów] GZ ON (GZ.[ID Zespołu] = Z.ID)
    WHERE CAST(GZ.[Clock in] as date) = @Date
end

--EXEC [Grafik Dzień] '2022-12-02'
