CREATE PROCEDURE dbo.usp_Load_Fact_Partisipasi_Kegiatan
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Fact_Partisipasi_Kegiatan (
        Tanggal_SK, Mahasiswa_SK, Kegiatan_SK, Organisasi_SK,
        Partisipasi_ID, SourceSystem
    )
    SELECT
        CAST(CONVERT(VARCHAR(8), s.Tanggal_Kegiatan, 112) AS INT) AS Tanggal_SK, -- Konversi Date ke DateKey
        dm.Mahasiswa_SK,
        dk.Kegiatan_SK,
        do.Organisasi_SK,
        s.Partisipasi_ID,
        'Laporan_Ormawa' AS SourceSystem
    FROM stg.Partisipasi s
    INNER JOIN dbo.Dim_Mahasiswa dm ON s.NIM = dm.NIM AND dm.IsCurrent = 1 -- Join ke Mahasiswa aktif
    INNER JOIN dbo.Dim_Kegiatan dk ON s.ID_Kegiatan_NK = dk.ID_Kegiatan_NK
    LEFT JOIN dbo.Dim_Organisasi do ON s.ID_Organisasi_NK = do.ID_Organisasi_NK
    WHERE NOT EXISTS (
        SELECT 1
        FROM dbo.Fact_Partisipasi_Kegiatan f
        WHERE f.Partisipasi_ID = s.Partisipasi_ID
    );
END;
GO
