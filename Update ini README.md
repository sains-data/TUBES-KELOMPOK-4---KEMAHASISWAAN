# 📊 Data Warehouse Kemahasiswaan ITERA  
📌 Proyek Pengembangan Data Mart Kemahasiswaan — Kelompok 4 RA

---

## 👥 Tim Pengembang

| Nama | NIM | Peran |
|------|-----|------|
| Adil Aulia Rahma Nurhidayah | 122450058 | Data Architect & ETL Developer |
| Rosalia Siregar | 123450036 | Business Analyst |
| Muhammad Hanif Dzaky Arifin | 123450064 | Data Modeler |
| Haikal Fransisko Simbolon | 123450106 | Documentation & Testing |

---

## 🎯 Tujuan Proyek

Data Mart Kemahasiswaan ITERA dirancang untuk:

- Integrasi data mahasiswa, kegiatan, prestasi & beasiswa
- Analisis berbasis data untuk mendukung keputusan strategis
- Pelaporan cepat, akurat, dan terstandarisasi
- Monitoring KPI kemahasiswaan secara menyeluruh

---

# 📌 Misi 1 — Desain Konseptual & Logikal  
📍 Status: ✔ Selesai

### Tahapan & Output

#### 1️⃣ Business Requirements & KPI
- Identifikasi proses bisnis kemahasiswaan
- Identifikasi stakeholder & kebutuhan informasi
- Penetapan KPI untuk monitoring kinerja

🎯 **Output:** Dokumen Business Requirements, KPI Metrics

---

#### 2️⃣ Identifikasi & Analisis Sumber Data
- Sumber data: SIAKAD, Sistem Organisasi & Keuangan ITERA
- Analisis struktur, kualitas, dan frekuensi update

🎯 **Output:** Data Source Analysis

---

#### 3️⃣ Desain Konseptual (ERD)
- Penentuan entitas: Mahasiswa, Kegiatan, Prestasi, Dll
- Analisis hubungan antar entitas untuk integrasi data

🎯 **Output:** ERD Konseptual

---

#### 4️⃣ Desain Logikal (Dimensional Model)
- Pengembangan Star Schema
- Definisi Fact & Dimension Tables
- Surrogate Key Strategy & Grain Definition

🎯 **Output:** Star Schema + Data Dictionary (Fact & Dimensions)

---

📌 Semua deliverables Misi 1 disimpan pada folder dokumentasi masing-masing  
(Link folder dapat ditambahkan sesuai struktur repo)

---

# 🛠️ Misi 2 — Desain Fisikal & Development  
📍 Status: ✔ Selesai

### Tahapan & Output

#### 1️⃣ Implementasi Database Fisik
- Pembuatan database DW
- Tabel dimensi & fakta sesuai Star Schema
- Penerapan referential integrity

🎯 Output: Database Schema (SQL DDL Scripts)

---

#### 2️⃣ Indexing & Partitioning
- Clustered & non-clustered index untuk performa join
- Columnstore index untuk query analitik
- Partitioning pada fact table berdasarkan tahun akademik

🎯 Output: Performance-Optimized DW Tables

---

#### 3️⃣ ETL Development
- Pembuatan staging area
- Transformasi & standar format data
- Penanganan SCD Type 2 (Dim Mahasiswa)
- Import data uji **1000 record**

🎯 Output: ETL Mapping + Stored Procedures + Test Load

---

#### 4️⃣ Data Quality Assurance
Validasi data mencakup:

| Data Quality Check | Tujuan |
|-------------------|--------|
| Completeness | Cek nilai NULL pada atribut penting |
| Consistency | Cek referential integrity |
| Uniqueness | Deteksi duplikasi Partisipasi_ID |
| Reconciliation | Kesesuaian jumlah data staging vs DW |

Tambahan:
- **AuditLog Table**
- **Stored Procedure Data Quality Report**
- **Alert jika threshold gagal**

🎯 Output: Data Quality Dashboard & Audit Report

---

#### 5️⃣ Performance Testing & Optimization
- Query analitik diuji menggunakan STATISTICS IO & TIME
- Query test meliputi:
  - Partisipasi per fakultas per jenis kegiatan
  - Efisiensi realisasi dana per tahun & organisasi
- Tuning berdasarkan hasil eksekusi

🎯 Output: Performance Test Report + Optimization Docs

---

## 🚀 Status Proyek

| Tahapan | Status | Keterangan |
|--------|:-----:|------------|
| Misi 1 | ✔ | Selesai lengkap |
| Misi 2 | ✔ | Selesai & terdokumentasi |
| Dashboard BI (Power BI) | ⏳ | Direncanakan Misi berikutnya |

---

## 📌 Penutup

Proyek DW ini menjadi **Single Source of Truth** untuk informasi kemahasiswaan ITERA  
yang akan meningkatkan efisiensi pelaporan dan analisis strategis kampus.

> Data berkualitas → keputusan berkualitas 🚀

---

📩 Jika ada kebutuhan perbaikan dokumentasi atau update repository, silakan hubungi Tim Kelompok 4 RA.
