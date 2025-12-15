-- 02_Create_Dimensions.sql

-- Dimension Table: Dim_Tanggal (Disesuaikan dari contoh)
CREATE TABLE dbo.Dim_Tanggal (
    Tanggal_SK INT PRIMARY KEY NOT NULL,
    FullDate DATE NOT NULL,
    DayNumberOfWeek TINYINT NOT NULL,
    DayName VARCHAR(10) NOT NULL,
    MonthName VARCHAR(10) NOT NULL,
    MonthNumber TINYINT NOT NULL,
    Quarter TINYINT NOT NULL,
    QuarterName VARCHAR(6) NOT NULL,
    Tahun SMALLINT NOT NULL,
    IsWeekend BIT NOT NULL,
    Semester VARCHAR(10) NULL, -- Ganjil/Genap
    CONSTRAINT CK_Dim_Tanggal_Quarter CHECK (Quarter BETWEEN 1 AND 4),
    CONSTRAINT CK_Dim_Tanggal_Month CHECK (MonthNumber BETWEEN 1 AND 12)
);
GO

-- Dimension Table: Dim_Mahasiswa (Student - SCD Type 2)
CREATE TABLE dbo.Dim_Mahasiswa (
    Mahasiswa_SK INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    NIM VARCHAR(20) UNIQUE NOT NULL, -- Natural Key
    Nama_Mahasiswa VARCHAR(100) NOT NULL,
    Fakultas VARCHAR(100) NOT NULL,
    Program_Studi VARCHAR(100) NOT NULL,
    Tahun_Masuk SMALLINT NOT NULL,
    Status_Mahasiswa VARCHAR(20) NOT NULL, -- Active, Cuti, Drop-out, etc.
    -- SCD Type 2 attributes
    EffectiveDate DATE NOT NULL DEFAULT GETDATE(),
    ExpiryDate DATE NULL,
    IsCurrent BIT NOT NULL DEFAULT 1,
    CreatedDate DATETIME DEFAULT GETDATE()
);
GO

-- Dimension Table: Dim_Kegiatan
CREATE TABLE dbo.Dim_Kegiatan (
    Kegiatan_SK INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ID_Kegiatan_NK VARCHAR(50) UNIQUE NOT NULL, -- Natural Key dari OLTP
    Nama_Kegiatan VARCHAR(255) NOT NULL,
    Jenis_Kegiatan VARCHAR(50) NOT NULL, -- Seminar, Lomba, Baksos
    Skala_Kegiatan VARCHAR(20) NOT NULL, -- Internal, Nasional, Internasional
    Status_Kegiatan VARCHAR(20) NOT NULL -- Terlaksana, Batal
);
GO

-- Dimension Table: Dim_Organisasi
CREATE TABLE dbo.Dim_Organisasi (
    Organisasi_SK INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ID_Organisasi_NK VARCHAR(50) UNIQUE NOT NULL,
    Nama_Organisasi VARCHAR(100) NOT NULL,
    Jenis_Organisasi VARCHAR(20) NOT NULL, -- UKM atau Ormawa
    Status_Organisasi VARCHAR(10) NOT NULL, -- Aktif/Non-aktif
    EffectiveDate DATE NOT NULL DEFAULT GETDATE(),
    IsCurrent BIT NOT NULL DEFAULT 1 -- SCD Type 2 untuk status
);
GO

-- Dimension Table: Dim_Prestasi
CREATE TABLE dbo.Dim_Prestasi (
    Prestasi_SK INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ID_Prestasi_NK VARCHAR(50) UNIQUE NOT NULL,
    Nama_Penghargaan VARCHAR(255) NOT NULL,
    Level_Prestasi VARCHAR(50) NOT NULL, -- Regional, Nasional, Internasional
    Kategori_Prestasi VARCHAR(50) NOT NULL -- Akademik atau Non-akademik
);
GO

-- Dimension Table: Dim_Beasiswa
CREATE TABLE dbo.Dim_Beasiswa (
    Beasiswa_SK INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    ID_Beasiswa_NK VARCHAR(50) UNIQUE NOT NULL,
    Nama_Beasiswa VARCHAR(100) NOT NULL,
    Sumber_Dana VARCHAR(50) NOT NULL, -- Internal/Eksternal
    Periode_Berlaku VARCHAR(20) NOT NULL
);
GO
