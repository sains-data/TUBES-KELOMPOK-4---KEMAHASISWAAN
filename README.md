## 📚 Misi 1: Desain Konseptual dan Logikal - Kasus Kemahasiswaan ITERA

Disusun oleh Kelompok 4 RA: 
1. Adil Aulia Rahma Nurhidayah (122450058)
2. Rosalia Siregar (123450036)
3. Muhammad Hanif Dzaky Arifin (123450064)
4. Haikal Fransisko Simbolon (123450106)

### 1. Pendahuluan
Unit Kemahasiswaan di Institut Teknologi Sumatera (ITERA) bertanggung jawab mengelola dan mengembangkan seluruh aktivitas non-akademik mahasiswa. Kegiatan tersebut meliputi pengelolaan organisasi kemahasiswaan, program beasiswa, layanan konseling, hingga pencatatan prestasi mahasiswa.

Saat ini, pengelolaan data masih terpisah di beberapa pihak (biro kemahasiswaan, fakultas, dan Ormawa), yang menyebabkan duplikasi data, keterlambatan laporan, dan kesulitan analisis komprehensif.

Sebagai solusi, dikembangkanlah Data Mart Kemahasiswaan sebagai bagian dari Data Warehouse ITERA. Sistem ini bertujuan mengintegrasikan seluruh data kemahasiswaan ke dalam satu sumber terpadu untuk analisis dan pengambilan keputusan strategis.

Tujuan Pembangunan Data Mart Kemahasiswaan:
1. Mengintegrasikan seluruh data kemahasiswaan dari berbagai sumber menjadi satu sistem terpusat.
2. Menyediakan akses data yang cepat, akurat, dan konsisten bagi pimpinan dan staf.
3. Menyediakan dasar analisis berbasis data (data-driven decision making) untuk perencanaan, alokasi dana, dan evaluasi prestasi.
4. Menghasilkan laporan dan dashboard untuk monitoring tingkat keaktifan dan efektivitas program.
5. Memudahkan pelacakan tren partisipasi dan prestasi mahasiswa dari waktu ke waktu.

## 2. Step 1: Business Requirements Analysis
Tahapan ini bertujuan memahami kebutuhan bisnis, menganalisis proses utama, menentukan KPI, serta merancang kebutuhan analitik.

### 2.1. Identifikasi Stakeholders
## Identifikasi Stakeholders
| No | Stakeholder | Jabatan/Peran | Kebutuhan Data | Jenis Stakeholder |
|:---:|:---|:---|:---|:---|
| 1 | Wakil Rektor Bidang Kemahasiswaan | Pengambil Keputusan | Analisis tren keaktifan, prestasi, dan efektivitas kegiatan kemahasiswaan | Decision Maker Strategis |
| 2 | Kepala Bagian Kemahasiswaan | Pengelola Operasional | Laporan kegiatan, alokasi dana, dan keaktifan mahasiswa | Decision Maker Operasional |
| 3 | Ketua Organisasi Mahasiswa (Ormawa/UKM) | Pelaksana Lapangan | Data keanggotaan, kegiatan, dan prestasi organisasi | Pengguna Data / Pelaksana |
| 4 | Unit Keuangan | Pendukung Administratif | Data pengajuan dan realisasi dana kegiatan mahasiswa | Pengguna Pendukung |
| 5 | Staff Kemahasiswaan | Pengelola data (User) | Input data keanggotaan, beasiswa, dan kegiatan | Pengelola data (User) |

## Proses Bisnis Utama Unit Kemahasiswaan
| No | Proses Bisnis | Deskripsi |
|:---:|:---|:---|
| 1 | Pengelolaan Data Mahasiswa | Mencatat data mahasiswa aktif serta keterlibatan dalam kegiatan kampus. |
| 2 | Pendataan Kegiatan Mahasiswa (UKM/Ormawa) | Menyimpan data kegiatan yang diselenggarakan oleh UKM atau organisasi mahasiswa. |
| 3 | Pengajuan dan Realisasi Dana Kegiatan | Mencatat pengajuan dana kegiatan serta realisasi penggunaannya. |
| 4 | Pendataan Penerima Beasiswa | Mengelola data mahasiswa penerima beasiswa internal maupun eksternal. |
| 5 | Pencatatan Prestasi Mahasiswa | Mencatat capaian mahasiswa dalam lomba atau penghargaan. |
| 6 | Layanan Konseling dan Bimbingan | Mencatat data mahasiswa yang mengikuti layanan konseling dan bimbingan kampus. |

## Key Performance Indicators (KPI)
| No | KPI | Deskripsi |
|:---:|:---|:---|
| 1 | Jumlah kegiatan kemahasiswaan | Total kegiatan yang dilaksanakan oleh Ormawa dan UKM setiap semester |
| 2 | Jumlah mahasiswa aktif dalam kegiatan | Banyaknya mahasiswa yang ikut minimal satu kegiatan kampus |
| 3 | Jumlah penerima beasiswa | Total mahasiswa yang menerima beasiswa dalam periode tertentu |
| 4 | Jumlah prestasi mahasiswa | Total penghargaan yang diperoleh mahasiswa baik akademik maupun non-akademik |
| 5 | Tingkat efisiensi penggunaan dana | Perbandingan antara realisasi dan pengajuan anggaran kegiatan |

## Metrik Bisnis yang Dapat Dimonitor
| No | Metrik Bisnis | Deskripsi | Sumber Data | Frekuensi |
|:---:|:---|:---|:---|:---|
| 1 | Jumlah kegiatan | Total kegiatan mahasiswa yang terdaftar dalam sistem | Database SIAKAD/Sistem Kemahasiswaan ITERA | Semesteran |
| 2 | Jumlah peserta kegiatan | Jumlah mahasiswa yang berpartisipasi dalam satu kegiatan | Database Sistem Kemahasiswaan, Form registrasi kegiatan | Per kegiatan |
| 3 | Jumlah organisasi aktif | Banyaknya UKM/Ormawa yang aktif dalam satu tahun akademik | Database Kemahasiswaan, Laporan Ormawa | Tahunan |
| 4 | Jumlah penerima beasiswa | Jumlah mahasiswa penerima beasiswa aktif per periode | Database SIAKAD, Sistem Beasiswa ITERA | Semesteran |
| 5 | Total dana kegiatan | Total anggaran kegiatan mahasiswa per periode | Laporan Keuangan Kemahasiswaan, Proposal kegiatan | Semesteran/Tahunan |
| 6 | Jumlah prestasi mahasiswa | Total prestasi yang dicapai mahasiswa tiap tahun | Database Kemahasiswaan, Sertifikat/Piagam prestasi, Laporan UKM/Ormawa | Tahunan |

## Jenis Laporan yang Dibutuhkan
| Jenis Laporan | Isi Laporan | Frekuensi |
|:---|:---|:---|
| Laporan Bulanan | Jumlah kegiatan dan peserta per bulan | Bulanan |
| Laporan Prestasi Mahasiswa | Daftar prestasi mahasiswa (lomba, kompetisi, penghargaan) beserta tingkat dan kategori | Semesteran/Tahunan |
| Laporan Organisasi Kemahasiswaan | Aktivitas dan program kerja UKM/Ormawa, jumlah anggota aktif, evaluasi kegiatan | Semesteran |
| Laporan Beasiswa | Data penerima beasiswa, jenis beasiswa, nominal, dan status penyaluran | Semesteran |
| Laporan Keuangan Kegiatan | Realisasi anggaran kegiatan kemahasiswaan, sumber dana, dan penggunaan | Semesteran/Tahunan |
| Laporan Partisipasi Mahasiswa | Tingkat partisipasi mahasiswa dalam kegiatan kemahasiswaan per program studi | Semesteran |

## Level Agregasi dan Granularitas Data
| Level | Deskripsi | Contoh Analisis |
|:---|:---|:---|
| Universitas | Data keseluruhan mahasiswa | Jumlah kegiatan kampus per tahun |
| Fakultas | Data kegiatan per fakultas | Jumlah penerima beasiswa per fakultas |
| Mahasiswa | Data individu | Jumlah kegiatan yang diikuti tiap mahasiswa |

### 2.2 Data Source
## Identifikasi Sumber Data Potensial
| Proses Bisnis | Sumber Data Potensial | Tipe Sumber Data |
|:---|:---|:---|
| Pengelolaan Data Mahasiswa | Sistem Informasi Akademik (SIAKAD) | Database Operasional (OLTP) |
| Pendataan Kegiatan Mahasiswa | Sistem Kegiatan Mahasiswa atau Laporan UKM/Ormawa | DB Operasional atau File Excel/CSV |
| Pengajuan & Realisasi Dana Kegiatan | Sistem Keuangan ITERA | Database Operasional (OLTP) |
| Pendataan Penerima Beasiswa | Sistem Beasiswa ITERA | Database Operasional (OLTP) |
| Pencatatan Prestasi Mahasiswa | Biro Kemahasiswaan/Fakultas | DB Operasional atau File Excel/CSV |
| Layanan Konseling dan Bimbingan | Sistem Layanan Konseling | Database Operasional (OLTP) |

## Data Source Analysis
| Sumber Data | Tipe | Data yang Dikelola | Volume (Contoh) | Frekuensi Update | Kualitas Data |
|:---|:---|:---|:---|:---|:---|
| SIAKAD | SQL Server | Data Dasar Mahasiswa | Tinggi (100k rows) | Real-time | Tinggi (Source of Truth) |
| Sistem Beasiswa | Oracle DB | Data Penerima dan Nominal Bantuan | Sedang (5K Rows) | Periodik (Per Semester) | Tinggi |
| Sistem Keuangan | MySQL DB | Data Anggaran dan Realisasi Dana | Sedang (20K Rows) | Harian | Tinggi |
| Laporan Kegiatan Mahasiswa | Excel/CSV | Detail Kegiatan dan Daftar Peserta | Sedang (50K Rows) | Bulanan/Semester | Perlu Validasi |

### 2.3 Logical Design
## Penentuan Surrogate Keys
| Dimension Table | Natural Key | Surrogate Key | Keterangan |
|:---|:---|:---|:---|
| Dim Mahasiswa | NIM | SK_Mahasiswa | NIM tetap disimpan sebagai atribut deskriptif untuk analisis |
| Dim_Kegiatan | ID_Kegiatan | SK_Kegiatan | Menjamin konsistensi meskipun kode kegiatan berubah |
| Dim_Organisasi | ID_Organisasi | SK_Organisasi | Berguna saat penggabungan data organisasi dari berbagai format |
| Dim Prestasi | ID Prestasi | SK Prestasi | Memudahkan rekaman multi-versi (SCD) |
| Dim Beasiswa | ID Beasiswa | SK Beasiswa | Mendukung integrasi dari beasiswa internal & eksternal |
| Dim_Tanggal | Tanggal | SK_Tanggal | Key integer (yyyymmdd) untuk performa join |

### 2.4 Data Dictionary
## Fact_Partisipasi_Kegiatan
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rule |
|:---|:---|:---|:---|:---|
| Partisipasi_SK | INT | PK | Surrogate Key unik | Auto-increment, NOT NULL |
| Mahasiswa_SK | INT | FK | Key ke Dim Mahasiswa | NOT NULL |
| Kegiatan_SK | INT | FK | Key ke Dim_Kegiatan | NOT NULL |
| Organisasi_SK | INT | FK | Key ke Dim_Organisasi | Dapat NULL |
| Tanggal_SK | INT | FK | Key ke Dim_Tanggal | NOT NULL |
| Jumlah_Partisipan | INT | Measure | Metrik partisipasi | Nilai selalu 1 (Additif) |

## Fact_Capaian_Prestasi
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rule |
|:---|:---|:---|:---|:---|
| Prestasi_Fact_SK | INT | PK | Surrogate Key unik untuk setiap capaian | Auto-increment, NOT NULL |
| Mahasiswa_SK | INT | FK | Key ke Dim_Mahasiswa | NOT NULL |
| Prestasi_SK | INT | FK | Key ke Dim_Prestasi | NOT NULL |
| Tanggal_SK | INT | FK | Key ke Dim_Tanggal (Tanggal capaian) | NOT NULL |
| Jumlah_Penghargaan | INT | Measure | Total penghargaan yang dicapai | Nilai selalu 1 (Additif) |
| Poin_Prestasi | DECIMAL (5,2) | Measure | Nilai bobot untuk Prestasi | Semi-Additif |

## Fact_Dana_Kegiatan
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rule |
|:---|:---|:---|:---|:---|
| Dana_SK | INT | PK | Surrogate Key untuk transaksi dana | Auto-increment, NOT NULL |
| Kegiatan_SK | INT | FK | Key ke Dim_Kegiatan | NOT NULL |
| Tanggal_SK | INT | FK | Key ke Dim_Tanggal (Tanggal Realisasi) | NOT NULL |
| Jumlah_Pengajuan | INT | Measure | Total anggaran yang diajukan | Additif, Mata uang Rupiah |
| Jumlah_Realisasi | INT | Measure | Total dana yang direalisasikan | Additif, Digunakan untuk efisiensi |

## Fact_Penerima_Beasiswa
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rule |
|:---|:---|:---|:---|:---|
| Beasiswa_Fact_SK | INT | PK | Surrogate Key untuk penerima beasiswa | Auto-increment, NOT NULL |
| Mahasiswa_SK | INT | FK | Key ke Dim Mahasiswa | NOT NULL |
| Beasiswa_SK | INT | FK | Key ke Dim Beasiswa | NOT NULL |
| Tanggal_SK | INT | FK | Key ke Dim_Tanggal (Tanggal Mulai/Penerimaan) | NOT NULL |
| Jumlah_Penerima | INT | Measure | Indikator jumlah penerima beasiswa | Nilai selalu 1 (Additif) |

## Dim_Mahasiswa
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rules |
|:---|:---|:---|:---|:---|
| Mahasiswa_SK | INT | PK | Surrogate Key (Untuk SCD) | Auto-increment, NOT NULL |
| NIM | VARCHAR | Natural Key | Nomor Induk Mahasiswa | Unique, SCD Type 1 |
| Nama_Mahasiswa | VARCHAR | Atribut | Nama Lengkap Mahasiswa | - |
| Fakultas | VARCHAR | Atribut | Fakultas | Untuk drill-down/filtering |
| Program_Studi | VARCHAR | Atribut | Program Studi | untuk drill-down/filtering |
| Tahun_Masuk | INT | Atribut | Tahun Angkatan | Untuk analisis tren |
| Status_Aktif | VARCHAR | Atribut | Status keaktifan (aktif/cuti/lulus) | SCD Type 2 |

## Dim_Kegiatan
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rules |
|:---|:---|:---|:---|:---|
| Kegiatan_SK | INT | PK | Surrogate Key | Auto-increment, NOT NULL |
| Nama_Kegiatan | VARCHAR(255) | Atribut | Nama lengkap kegiatan | NOT NULL |
| Jenis_Kegiatan | VARCHAR(50) | Atribut | Kategori (Seminar, Lomba, Baksos) | Untuk grouping |
| Skala_Kegiatan | VARCHAR(20) | Atribut | (Internal, Regional, Nasional, Internasional) | Untuk analisis kualitas |

## Dim_Organisasi
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rules |
|:---|:---|:---|:---|:---|
| Organisasi_SK | INT | PK | Surrogate Key | Auto-increment, NOT NULL |
| Nama_Organisasi | VARCHAR(100) | Atribut | Nama UKM atau Ormawa | Untuk filtering dan monitoring |
| Jenis_Organisasi | VARCHAR(20) | Atribut | UKM atau Ormawa | Untuk grouping |
| Status_Organisasi | VARCHAR(10) | Atribut | Aktif atau Non-aktif | SCD Type 2 |

## Dim_Prestasi
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rules |
|:---|:---|:---|:---|:---|
| Prestasi_SK | INT | PK | Surrogate Key | Auto-increment, NOT NULL |
| Nama_Penghargaan | VARCHAR(255) | Atribut | Nama Penghargaan/Lomba | NOT NULL |
| Level_Prestasi | VARCHAR(50) | Atribut | Tingkat capaian (Regional, Nasional, Internasional) | Untuk analisis komprehensif |
| Kategori_Prestasi | VARCHAR(50) | Atribut | Akademik atau Non-akademik | Untuk filtering |

## Dim_Beasiswa
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rules |
|:---|:---|:---|:---|:---|
| Beasiswa_SK | INT | PK | Surrogate Key | Auto-increment, NOT NULL |
| Nama_Beasiswa | VARCHAR | Atribut | Nama resmi beasiswa | Untuk identifikasi |
| Sumber_dana | VARCHAR | Atribut | Internal atau eksternal ITERA | Untuk anlisis alokasi dana |

## Dim_Tanggal
| Kolom | Tipe Data | PK/FK | Deskripsi | Business Rules |
|:---|:---|:---|:---|:---|
| Tanggal_SK | INT | PK | Surrogate Key (Format YYYYMMDD) | NOT NULL |
| Tahun | INT | Atribut | Tahun Kalender | Untuk tren tahunan |
| Semester | VARCHAR(10) | Atribut | Ganjil/Genap | Untuk analisis periodik |
| Bulan | INT | Atribut | Nomor Bulan (1-12) | Untuk Laporan Bulanan |

