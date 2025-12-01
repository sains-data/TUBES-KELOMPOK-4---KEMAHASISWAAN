# 📊 Data Warehouse Kemahasiswaan ITERA  
### 📌 Proyek Pengembangan Data Mart Kemahasiswaan — Kelompok 4 RA

---

## 👥 Tim Pengembang

| Nama | NIM | Peran |
|------|------|--------|
| Adil Aulia Rahma Nurhidayah | 122450058 | Data Architect & ETL Developer |
| Rosalia Siregar | 123450036 | Business Analyst |
| Muhammad Hanif Dzaky Arifin | 123450064 | Data Modeler |
| Haikal Fransisko Simbolon | 123450106 | Documentation & Testing |

---

## 🎯 Tujuan Proyek

Data Mart Kemahasiswaan ITERA dirancang untuk:

- Integrasi data mahasiswa, kegiatan, prestasi, dan beasiswa  
- Mendukung pengambilan keputusan strategis berbasis data  
- Mempercepat pelaporan yang akurat dan terstandar  
- Melakukan monitoring KPI kemahasiswaan secara menyeluruh  

---

# 📌 Misi 1 — Desain Konseptual & Logikal  
**Status: ✔ Selesai**

### 1️⃣ Business Requirements & KPI  
- Identifikasi proses bisnis kemahasiswaan  
- Identifikasi stakeholder & kebutuhan informasi  
- Penetapan KPI utama  

**Output:** Dokumen Business Requirements, KPI Metrics  

### 2️⃣ Identifikasi & Analisis Sumber Data  
- Sumber: SIAKAD, Sistem Organisasi, Keuangan ITERA  
- Analisis struktur, kualitas, dan frekuensi update  

**Output:** Data Source Analysis  

### 3️⃣ Desain Konseptual (ERD)  
- Penentuan entitas: Mahasiswa, Kegiatan, Prestasi, Beasiswa, dll  
- Analisis hubungan antar entitas  

**Output:** ERD Konseptual  

### 4️⃣ Desain Logikal (Dimensional Model)  
- Pengembangan Star Schema  
- Definisi Fact & Dimension Tables  
- Surrogate Key Strategy & Grain Definition  

**Output:** Star Schema + Data Dictionary  

📂 *Semua deliverables Misi 1 disimpan pada folder dokumentasi.*

---

# 🛠️ Misi 2 — Desain Fisikal & Development  
**Status: ✔ Selesai**

### 1️⃣ Implementasi Database Fisik  
- Pembuatan database DW  
- Pembuatan tabel dimensi & fakta  
- Penerapan referential integrity  

**Output:** SQL DDL Scripts  

### 2️⃣ Indexing & Partitioning  
- Clustered & non-clustered index  
- Columnstore index untuk query analitik  
- Partitioning fact table berdasarkan tahun akademik  

**Output:** Performance-Optimized Tables  

### 3️⃣ ETL Development  
- Pembuatan staging area  
- Transformasi & standarisasi data  
- SCD Type 2 untuk Dim_Mahasiswa  
- Load data uji 1000 record  

**Output:** ETL Mapping + Stored Procedures  

### 4️⃣ Data Quality Assurance  

| Data Quality Check | Tujuan |
|-------------------|--------|
| Completeness | Cek nilai NULL atribut penting |
| Consistency | Cek referential integrity |
| Uniqueness | Deteksi duplikasi Partisipasi_ID |
| Reconciliation | Bandingkan jumlah data staging vs DW |

Tambahan:  
- AuditLog Table  
- Stored Procedure “Data Quality Report”  
- Alerts jika threshold gagal  

**Output:** Data Quality Dashboard & Audit Report  

### 5️⃣ Performance Testing & Optimization  
Query diuji dengan **STATISTICS IO** & **TIME** untuk:  
- Partisipasi per fakultas per jenis kegiatan  
- Efisiensi realisasi dana per tahun & organisasi  

**Output:** Performance Report & Optimization Docs  

---

# 🔒 Misi 3 — Deployment, Security, & UAT  
**Status: ✔ Selesai**

### 1️⃣ Finalisasi ETL Package & Fact Load  
- Incremental Load untuk seluruh Fact Tables  
- Penjadwalan master job ETL via SQL Server Agent  

**Output:** ETL Master Procedure & Job Schedule  

### 2️⃣ Database Hardening & Security  
- Dynamic Data Masking (DDM) untuk PII  
- SQL Server Audit Trail untuk akses data sensitif  

**Output:** Security Scripts & Audit Configuration  

### 3️⃣ Data Availability & Recovery  
- Recovery Model = FULL  
- Full Backup (mingguan) + Log Backup (1 jam sekali)  

**Output:** Operations Manual & Backup Policy  

### 4️⃣ User Acceptance Testing (UAT)  
Meliputi:  
- Validasi SCD Type 2  
- Cek integritas data & orphan records  
- Tes keamanan: DDM & Audit Trail  

**Output:** UAT Report & Final Sign-off  

---

# 🚀 Status Proyek

| Tahapan | Status | Keterangan |
|--------|--------|------------|
| Misi 1 | ✔ | Selesai |
| Misi 2 | ✔ | Selesai |
| Misi 3 | ✔ | Siap Produksi |

---

# 📌 Penutup

Proyek Data Warehouse ini menjadi **Single Source of Truth** untuk informasi kemahasiswaan ITERA, meningkatkan efisiensi pelaporan dan mendukung keputusan strategis kampus.

**Data berkualitas → keputusan berkualitas 🚀**

📩 Untuk perbaikan dokumentasi atau update repository, silakan hubungi **Tim Kelompok 4 RA**.

