-- 03_Create_Facts.sql

-- Fact Table 1: Fact_Partisipasi_Kegiatan (Grain: 1 Mahasiswa per 1 Kegiatan)
CREATE TABLE dbo.Fact_Partisipasi_Kegiatan (
    Partisipasi_SK BIGINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    -- Foreign Keys to Dimensions
    Tanggal_SK INT NOT NULL,
    Mahasiswa_SK INT NOT NULL,
    Kegiatan_SK INT NOT NULL,
    Organisasi_SK INT NULL, -- NULL jika kegiatan unit
    -- Measures
    Jumlah_Partisipan INT NOT NULL DEFAULT 1,
    -- Degenerate Dimensions
    Partisipasi_ID VARCHAR(50) NOT NULL, -- ID transaksi partisipasi dari OLTP
    -- Metadata
    SourceSystem VARCHAR(50) NOT NULL,
    LoadDate DATETIME DEFAULT GETDATE(),
    -- Foreign Key Constraints
    CONSTRAINT FK_Fact_Partisipasi_Tanggal FOREIGN KEY (Tanggal_SK) REFERENCES dbo.Dim_Tanggal(Tanggal_SK),
    CONSTRAINT FK_Fact_Partisipasi_Mahasiswa FOREIGN KEY (Mahasiswa_SK) REFERENCES dbo.Dim_Mahasiswa(Mahasiswa_SK),
    CONSTRAINT FK_Fact_Partisipasi_Kegiatan FOREIGN KEY (Kegiatan_SK) REFERENCES dbo.Dim_Kegiatan(Kegiatan_SK),
    CONSTRAINT FK_Fact_Partisipasi_Organisasi FOREIGN KEY (Organisasi_SK) REFERENCES dbo.Dim_Organisasi(Organisasi_SK)
);
GO

-- Fact Table 2: Fact_Dana_Kegiatan (Grain: 1 Transaksi Dana)
CREATE TABLE dbo.Fact_Dana_Kegiatan (
    Dana_SK BIGINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Tanggal_SK INT NOT NULL,
    Kegiatan_SK INT NOT NULL,
    Organisasi_SK INT NULL,
    -- Measures
    Jumlah_Pengajuan DECIMAL(12,2) NOT NULL,
    Jumlah_Realisasi DECIMAL(12,2) NOT NULL,
    -- Degenerate Dimensions
    Transaksi_ID VARCHAR(50) NOT NULL, -- ID Transaksi Keuangan dari OLTP
    -- Metadata
    SourceSystem VARCHAR(50) NOT NULL,
    LoadDate DATETIME DEFAULT GETDATE(),
    -- Foreign Key Constraints
    CONSTRAINT FK_Fact_Dana_Tanggal FOREIGN KEY (Tanggal_SK) REFERENCES dbo.Dim_Tanggal(Tanggal_SK),
    CONSTRAINT FK_Fact_Dana_Kegiatan FOREIGN KEY (Kegiatan_SK) REFERENCES dbo.Dim_Kegiatan(Kegiatan_SK),
    CONSTRAINT FK_Fact_Dana_Organisasi FOREIGN KEY (Organisasi_SK) REFERENCES dbo.Dim_Organisasi(Organisasi_SK)
);
GO
