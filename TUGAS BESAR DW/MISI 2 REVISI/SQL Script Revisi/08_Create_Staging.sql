-- Staging Schema
CREATE SCHEMA stg;
GO

-- Staging Table for Mahasiswa Data (from SIAKAD)
CREATE TABLE stg.Mahasiswa (
    NIM VARCHAR(20),
    Nama_Mahasiswa VARCHAR(100),
    Fakultas VARCHAR(100),
    Program_Studi VARCHAR(100),
    Tahun_Masuk SMALLINT,
    Status_Mahasiswa VARCHAR(20),
    LoadDate DATETIME DEFAULT GETDATE()
);
GO

-- Staging Table for Kegiatan and Partisipasi Data
CREATE TABLE stg.Partisipasi (
    Partisipasi_ID VARCHAR(50), -- Degenerate Dimension
    NIM VARCHAR(20),
    ID_Kegiatan_NK VARCHAR(50),
    ID_Organisasi_NK VARCHAR(50),
    Tanggal_Kegiatan DATE,
    LoadDate DATETIME DEFAULT GETDATE()
);
GO
