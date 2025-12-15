CREATE CLUSTERED INDEX CIX_Fact_Partisipasi_TanggalSK
ON dbo.Fact_Partisipasi_Kegiatan(Tanggal_SK, Partisipasi_SK);
GO
