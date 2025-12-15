-- Index untuk foreign keys (join optimization)
CREATE NONCLUSTERED INDEX IX_Fact_Partisipasi_Kegiatan
ON dbo.Fact_Partisipasi_Kegiatan(Kegiatan_SK)
INCLUDE (Mahasiswa_SK);
GO

CREATE NONCLUSTERED INDEX IX_Fact_Dana_Kegiatan
ON dbo.Fact_Dana_Kegiatan(Kegiatan_SK)
INCLUDE (Jumlah_Pengajuan, Jumlah_Realisasi);
GO
