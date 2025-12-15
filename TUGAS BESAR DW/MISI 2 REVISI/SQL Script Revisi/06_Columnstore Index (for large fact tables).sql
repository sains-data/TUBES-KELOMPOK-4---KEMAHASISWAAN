-- Columnstore index untuk analytical queries
CREATE NONCLUSTERED COLUMNSTORE INDEX NCCIX_Fact_Partisipasi
ON dbo.Fact_Partisipasi_Kegiatan
(
    Tanggal_SK, Mahasiswa_SK, Kegiatan_SK, Organisasi_SK,
    Jumlah_Partisipan
);
GO
