## 📚 Misi 1: Desain Konseptual dan Logikal - Kasus Kemahasiswaan ITERA
Disusun oleh Kelompok 4 RA:
1. Adil Aulia Rahma Nurhidayah (122450058)
2. Rosalia Siregar (123450036)
3. Muhammad Hanif Dzaky Arifin (123450064) 
4. Haikal Fransisko Simbolon (123450106) 

### 📁 Struktur dan Konten Repository GitHub
Berikut adalah daftar file dan ringkasan konten dari setiap file dalam struktur repository Anda:

#### 1. File Utama
README.md (Ringkasan Proyek)
Isi: Pendahuluan mengenai masalah pengelolaan data kemahasiswaan ITERA yang terpisah , solusi Data Mart , tujuan utama proyek (integrasi data, analisis berbasis data, dan pelaporan) , serta daftar anggota tim .
Format: Markdown.

#### 2. Folder business_requirements/ (Step 1)
- 01_business_requirements.md (Analisis Proses Bisnis)
Isi: Tabel yang mendefinisikan 6 proses bisnis utama Unit Kemahasiswaan (misalnya: Pengelolaan Data Mahasiswa, Pendataan Kegiatan, Pencatatan Prestasi).
Format: Markdown.

- 02_stakeholders_kpi.md (Stakeholders dan KPI)
Isi: Tabel data mengenai Identifikasi Stakeholders (Jabatan, Kebutuhan Data, Jenis Stakeholder) dan Key Performance Indicators (KPI) (misalnya: Jumlah kegiatan kemahasiswaan, Tingkat efisiensi penggunaan dana).
Format: Markdown.

- 03_analytic_needs.md (Kebutuhan Analitik)
Isi: Tabel data mengenai Metrik Bisnis yang Dapat Dimonitor (Sumber Data, Frekuensi) , Jenis Laporan yang Dibutuhkan (misalnya: Laporan Prestasi Mahasiswa, Laporan Keuangan Kegiatan) , dan Level Agregasi (Universitas, Fakultas, Mahasiswa).
Format: Markdown.

#### 3. Folder data_sources/ (Step 2)
- 01_data_source_identification.md (Identifikasi Sumber Data)
Isi: Tabel yang memetakan setiap Proses Bisnis ke Sumber Data Potensial (misalnya: SIAKAD, Sistem Keuangan ITERA) dan Tipe Sumber Data (OLTP, File Excel/CSV).
Format: Markdown.

- 02_data_source_analysis.md (Analisis Sumber Data)
Isi: Tabel analisis kualitas dan volume data (misalnya: SIAKAD memiliki Volume Tinggi, Frekuensi Update Real-time, Kualitas Tinggi/Source of Truth).
Format: Markdown.

#### 4. Folder conceptual_design/ (Step 3)
- 01_erd_entities_relationships.md (Entitas dan Relationship)
Isi: Definisi 7 Entitas utama (MAHASISWA, KEGIATAN, PRESTASI, BEASISWA, DANA, dll.) beserta Atribut Utama (PK) dan definisi Relationship antar entitas (misalnya: Many-to-Many yang dimediasi oleh entitas ).
Format: Markdown.

- conceptual_erd.png
Isi: File gambar dari Entity Relationship Diagram (ERD) yang visual.
Format: PNG.

#### 5. Folder logical_design/ (Step 4)
- 01_fact_dimension_definition.md (Definisi Fact dan Dimensi)
Isi: Definisi 4 Fact Tables (Fact_Partisipasi_Kegiatan, Fact_Capaian_Prestasi, dll.) lengkap dengan Grain, Measures, Additivity, dan KPI yang Diukur. Juga terdapat definisi 6 Dimension Tables beserta Peran Analisis (Who, What, When, Why).
Format: Markdown.

- 02_surrogate_key_strategy.md (Strategi Surrogate Key)
Isi: Tabel data yang menjelaskan strategi penentuan Surrogate Keys untuk setiap dimensi, pemetaan dari Natural Key (NIM, ID_Kegiatan) dan Keterangan (misalnya: SCD Type 1/2, performa join).
Format: Markdown.

- dimensional_model.png
Isi: File gambar dari Desain Dimensional Model (Star Schema).
Format: PNG.

#### 6. Folder data_dictionary/ (Step 5 - Kamus Data)
- fact_tables/
Isi: Kamus data detail untuk setiap Fact Table (Kolom, Tipe Data, PK/FK/Measure, Deskripsi, Business Rule).

  - fact_partisipasi_kegiatan.csv
  - fact_capaian_prestasi.csv
  - fact_dana_kegiatan.csv
  - fact_penerima_beasiswa.csv
Format: CSV.

- dimension_tables/
Isi: Kamus data detail untuk setiap Dimension Table (Kolom, Tipe Data, PK/FK/Atribut, Deskripsi, Business Rule termasuk aturan SCD dan format data).

  - dim_mahasiswa.csv
  - dim_kegiatan.csv
  - dim_organisasi.csv
  - dim_prestasi.csv
  - dim_beasiswa.csv
  - dim_tanggal.csv
Format: CSV.
