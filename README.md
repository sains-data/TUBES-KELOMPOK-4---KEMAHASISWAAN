# 📚 Data Warehouse Kemahasiswaan ITERA

### Kelompok 4 RA – Sistem Informasi Kemahasiswaan

**Anggota Kelompok:**

1. Adil Aulia Rahma Nurhidayah (122450058)
2. Rosalia Siregar (123450036)
3. Muhammad Hanif Dzaky Arifin (123450064)
4. Haikal Fransisko Simbolon (123450106)

---

## 🎯 Tujuan Proyek

Membangun **Data Mart Kemahasiswaan ITERA** untuk mendukung:

* Integrasi data mahasiswa, kegiatan, prestasi & beasiswa
* Analisis berbasis data oleh Unit Kemahasiswaan
* Pengambilan keputusan strategis
* Pelaporan yang cepat & akurat

---

## 🚀 Progress Pengerjaan

## 📚 Misi 1: Desain Konseptual dan Logikal - Kasus Kemahasiswaan ITERA

**Deliverables:**

* Analisis proses bisnis & stakeholder
* KPI & kebutuhan analitik
* ERD (Konseptual)
* Star Schema (Dimensional Model)
* Kamus Data (Fact & Dimension Tables)

Status: **Selesai ✓**

---

### 📁 Struktur dan Konten Repository GitHub
Berikut adalah daftar file dan ringkasan konten dari setiap file dalam struktur repository Anda:

#### 1. File Utama
README.md (Ringkasan Proyek)
Isi: Pendahuluan mengenai masalah pengelolaan data kemahasiswaan ITERA yang terpisah , solusi Data Mart , tujuan utama proyek (integrasi data, analisis berbasis data, dan pelaporan) , serta daftar anggota tim .

#### 2. Folder business_requirements/ (Step 1)
- 01_business_requirements.md (Analisis Proses Bisnis)
Isi: Tabel yang mendefinisikan 6 proses bisnis utama Unit Kemahasiswaan (misalnya: Pengelolaan Data Mahasiswa, Pendataan Kegiatan, Pencatatan Prestasi).

- 02_stakeholders_kpi.md (Stakeholders dan KPI)
Isi: Tabel data mengenai Identifikasi Stakeholders (Jabatan, Kebutuhan Data, Jenis Stakeholder) dan Key Performance Indicators (KPI) (misalnya: Jumlah kegiatan kemahasiswaan, Tingkat efisiensi penggunaan dana).

- 03_analytic_needs.md (Kebutuhan Analitik)
Isi: Tabel data mengenai Metrik Bisnis yang Dapat Dimonitor (Sumber Data, Frekuensi) , Jenis Laporan yang Dibutuhkan (misalnya: Laporan Prestasi Mahasiswa, Laporan Keuangan Kegiatan) , dan Level Agregasi (Universitas, Fakultas, Mahasiswa).

#### 3. Folder data_sources/ (Step 2)
- 01_data_source_identification.md (Identifikasi Sumber Data)
Isi: Tabel yang memetakan setiap Proses Bisnis ke Sumber Data Potensial (misalnya: SIAKAD, Sistem Keuangan ITERA) dan Tipe Sumber Data (OLTP, File Excel/CSV).

- 02_data_source_analysis.md (Analisis Sumber Data)
Isi: Tabel analisis kualitas dan volume data (misalnya: SIAKAD memiliki Volume Tinggi, Frekuensi Update Real-time, Kualitas Tinggi/Source of Truth).

#### 4. Folder conceptual_design/ (Step 3)
- 01_erd_entities_relationships.md (Entitas dan Relationship)
Isi: Definisi 7 Entitas utama (MAHASISWA, KEGIATAN, PRESTASI, BEASISWA, DANA, dll.) beserta Atribut Utama (PK) dan definisi Relationship antar entitas (misalnya: Many-to-Many yang dimediasi oleh entitas ).

- conceptual_erd.png
Isi: File gambar dari Entity Relationship Diagram (ERD) yang visual.

#### 5. Folder logical_design/ (Step 4)
- 01_fact_dimension_definition.md (Definisi Fact dan Dimensi)
Isi: Definisi 4 Fact Tables (Fact_Partisipasi_Kegiatan, Fact_Capaian_Prestasi, dll.) lengkap dengan Grain, Measures, Additivity, dan KPI yang Diukur. Juga terdapat definisi 6 Dimension Tables beserta Peran Analisis (Who, What, When, Why).

- 02_surrogate_key_strategy.md (Strategi Surrogate Key)
Isi: Tabel data yang menjelaskan strategi penentuan Surrogate Keys untuk setiap dimensi, pemetaan dari Natural Key (NIM, ID_Kegiatan) dan Keterangan (misalnya: SCD Type 1/2, performa join).

- dimensional_model.png
Isi: File gambar dari Desain Dimensional Model (Star Schema).

#### 6. Folder data_dictionary/ (Step 5 - Kamus Data)
- fact_tables/
Isi: Kamus data detail untuk setiap Fact Table (Kolom, Tipe Data, PK/FK/Measure, Deskripsi, Business Rule).

  - fact_partisipasi_kegiatan.csv
  - fact_capaian_prestasi.csv
  - fact_dana_kegiatan.csv
  - fact_penerima_beasiswa.csv
    
- dimension_tables/
Isi: Kamus data detail untuk setiap Dimension Table (Kolom, Tipe Data, PK/FK/Atribut, Deskripsi, Business Rule termasuk aturan SCD dan format data).

  - dim_mahasiswa.csv
  - dim_kegiatan.csv
  - dim_organisasi.csv
  - dim_prestasi.csv
  - dim_beasiswa.csv
  - dim_tanggal.csv

### 🛠️ Misi 2 — Desain Fisikal & Development

**Deliverables:**

* SQL DDL (Create Fact & Dimension)
* Indexing strategy (Clustered / Non-clustered)
* Partitioning pada Fact tables
* Implementasi ETL (contoh insert data)
* Data Quality (Audit Table + SP + Alerts)
* Performance Optimization & Testing
* Dokumentasi kinerja & rekomendasi

Status: **Selesai ✓**

**Teknologi yang digunakan:**

* Microsoft SQL Server
* SQL Server Management Studio
* (Opsional) SSIS untuk paket ETL

---

## 📁 Struktur Folder Repository (rekomendasi)

```
📦 data-warehouse-kemahasiswaan-itera
│
├─ 📁 business_requirements/
├─ 📁 data_sources/
├─ 📁 conceptual_design/
├─ 📁 logical_design/
├─ 📁 data_dictionary/
│
├─ 📁 physical_design/
├─ 📁 etl/
├─ 📁 data_quality/
├─ 📁 performance_test/
│
└─ README.md
```

---

## 📄 Contoh Kode — SQL utama (singkat)

> Catatan: sesuaikan nama file dan tipe kolom di environment kalian.

### 01_Create_Database.sql

```sql
CREATE DATABASE DM_Kemahasiswaan_DW
ON PRIMARY
(
    NAME = N'DM_Kemahasiswaan_DW_Data',
    FILENAME = N'D:\\Data\\DM_Kemahasiswaan_DW_Data.mdf',
    SIZE = 1GB,
    MAXSIZE = UNLIMITED ,
    FILEGROWTH = 256MB
)
LOG ON
(
    NAME = N'DM_Kemahasiswaan_DW_Log',
    FILENAME = N'E:\\Logs\\DM_Kemahasiswaan_DW_Log.ldf',
    SIZE = 256MB,
    MAXSIZE = 2GB,
    FILEGROWTH = 64MB
);
GO
USE DM_Kemahasiswaan_DW;
GO
```

### 02_Create_Dimensions.sql (potongan)

```sql
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
    Semester VARCHAR(10) NULL
);
GO

CREATE TABLE dbo.Dim_Mahasiswa (
    Mahasiswa_SK INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    NIM VARCHAR(20) UNIQUE NOT NULL,
    Nama_Mahasiswa VARCHAR(100) NOT NULL,
    Fakultas VARCHAR(100) NOT NULL,
    Program_Studi VARCHAR(100) NOT NULL,
    Tahun_Masuk SMALLINT NOT NULL,
    Status_Mahasiswa VARCHAR(20) NOT NULL,
    EffectiveDate DATE NOT NULL DEFAULT GETDATE(),
    ExpiryDate DATE NULL,
    IsCurrent BIT NOT NULL DEFAULT 1,
    CreatedDate DATETIME DEFAULT GETDATE()
);
GO
```

### 03_Create_Facts.sql (potongan)

```sql
CREATE TABLE dbo.Fact_Partisipasi_Kegiatan (
    Partisipasi_SK BIGINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Tanggal_SK INT NOT NULL,
    Mahasiswa_SK INT NOT NULL,
    Kegiatan_SK INT NOT NULL,
    Organisasi_SK INT NULL,
    Jumlah_Partisipan INT NOT NULL DEFAULT 1,
    Partisipasi_ID VARCHAR(50) NOT NULL,
    SourceSystem VARCHAR(50) NOT NULL,
    LoadDate DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_Fact_Partisipasi_Tanggal FOREIGN KEY (Tanggal_SK) REFERENCES dbo.Dim_Tanggal(Tanggal_SK)
);
GO

CREATE TABLE dbo.Fact_Dana_Kegiatan (
    Dana_SK BIGINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    Tanggal_SK INT NOT NULL,
    Kegiatan_SK INT NOT NULL,
    Organisasi_SK INT NULL,
    Jumlah_Pengajuan DECIMAL(12,2) NOT NULL,
    Jumlah_Realisasi DECIMAL(12,2) NOT NULL,
    Transaksi_ID VARCHAR(50) NOT NULL,
    SourceSystem VARCHAR(50) NOT NULL,
    LoadDate DATETIME DEFAULT GETDATE()
);
GO
```

### Indexing & Columnstore (contoh)

```sql
CREATE CLUSTERED INDEX CIX_Fact_Partisipasi_TanggalSK
ON dbo.Fact_Partisipasi_Kegiatan(Tanggal_SK, Partisipasi_SK);
GO

CREATE NONCLUSTERED INDEX IX_Fact_Partisipasi_Mahasiswa
ON dbo.Fact_Partisipasi_Kegiatan(Mahasiswa_SK)
INCLUDE (Kegiatan_SK);
GO

CREATE NONCLUSTERED COLUMNSTORE INDEX NCCIX_Fact_Partisipasi
ON dbo.Fact_Partisipasi_Kegiatan (Tanggal_SK, Mahasiswa_SK, Kegiatan_SK, Organisasi_SK, Jumlah_Partisipan);
GO
```

### ETL Stored Procedure (contoh sederhana)

```sql
CREATE PROCEDURE dbo.usp_Load_Dim_Mahasiswa
AS
BEGIN
    SET NOCOUNT ON;
    -- expire older records
    UPDATE d
    SET ExpiryDate = GETDATE(), IsCurrent = 0
    FROM dbo.Dim_Mahasiswa d
    INNER JOIN stg.Mahasiswa s ON d.NIM = s.NIM
    WHERE d.IsCurrent = 1
    AND (d.Status_Mahasiswa <> s.Status_Mahasiswa OR d.Program_Studi <> s.Program_Studi);

    INSERT INTO dbo.Dim_Mahasiswa (NIM, Nama_Mahasiswa, Fakultas, Program_Studi, Tahun_Masuk, Status_Mahasiswa, EffectiveDate, IsCurrent)
    SELECT s.NIM, UPPER(TRIM(s.Nama_Mahasiswa)), s.Fakultas, s.Program_Studi, s.Tahun_Masuk, s.Status_Mahasiswa, GETDATE(), 1
    FROM stg.Mahasiswa s
    WHERE NOT EXISTS (SELECT 1 FROM dbo.Dim_Mahasiswa d WHERE d.NIM = s.NIM AND d.IsCurrent = 1);
END;
GO
```

### Data Quality Stored Procedures (singkat)

```sql
-- AuditLog table
IF OBJECT_ID('dbo.AuditLog','U') IS NULL
CREATE TABLE dbo.AuditLog(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    EventDate DATETIME DEFAULT GETDATE(),
    Component NVARCHAR(50),
    EventType NVARCHAR(50),
    ObjectName NVARCHAR(100),
    Message NVARCHAR(MAX),
    RowsAffected INT,
    Status NVARCHAR(20)
);
GO
```

### Test Queries (contoh)

```sql
-- Query 1: Total mahasiswa aktif dan kegiatan per Fakultas
SELECT dm.Fakultas, dk.Jenis_Kegiatan,
       COUNT(DISTINCT f.Mahasiswa_SK) AS TotalMahasiswaAktif,
       COUNT(f.Partisipasi_SK) AS TotalPartisipasi
FROM dbo.Fact_Partisipasi_Kegiatan f
JOIN dbo.Dim_Mahasiswa dm ON f.Mahasiswa_SK = dm.Mahasiswa_SK AND dm.IsCurrent = 1
JOIN dbo.Dim_Kegiatan dk ON f.Kegiatan_SK = dk.Kegiatan_SK
JOIN dbo.Dim_Tanggal dt ON f.Tanggal_SK = dt.Tanggal_SK
WHERE dt.Tahun = 2024
GROUP BY dm.Fakultas, dk.Jenis_Kegiatan
ORDER BY dm.Fakultas, TotalPartisipasi DESC;
```

---
