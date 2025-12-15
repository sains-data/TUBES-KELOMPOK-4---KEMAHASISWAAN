-- 1. Create Partition Function (berdasarkan Tahun Akademik, dimulai Agt)
CREATE PARTITION FUNCTION PF_TahunAkademik_Kemahasiswaan (INT)
AS RANGE RIGHT FOR VALUES
(
    20230801, -- Awal Tahun Akademik 2023/2024
    20240801, -- Awal Tahun Akademik 2024/2025
    20250801, -- Awal Tahun Akademik 2025/2026
    20260801  -- dan seterusnya...
);
GO

-- 2. Create Partition Scheme
CREATE PARTITION SCHEME PS_TahunAkademik_Kemahasiswaan
AS PARTITION PF_TahunAkademik_Kemahasiswaan
ALL TO ([PRIMARY]);
GO

-- 3. Apply Partitioning to Fact Table
-- Fact_Partisipasi_Kegiatan akan dipartisi berdasarkan Tanggal_SK
CREATE TABLE dbo.Fact_Partisipasi_Kegiatan_Partitioned (
    -- *Kolom sama seperti Fact_Partisipasi_Kegiatan*
    Partisipasi_SK BIGINT IDENTITY(1,1) NOT NULL,
    Tanggal_SK INT NOT NULL,
    Mahasiswa_SK INT NOT NULL,
    Kegiatan_SK INT NOT NULL,
    Organisasi_SK INT NULL,
    Jumlah_Partisipan INT NOT NULL DEFAULT 1,
    Partisipasi_ID VARCHAR(50) NOT NULL,
    SourceSystem VARCHAR(50) NOT NULL,
    LoadDate DATETIME DEFAULT GETDATE()
    -- Constraints dan PK/Index harus dibuat ulang setelah tabel dibuat
) ON PS_TahunAkademik_Kemahasiswaan(Tanggal_SK);
GO
