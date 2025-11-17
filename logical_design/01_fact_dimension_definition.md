## Identifikasi Fact Tables

| Fact Table | Grain (Tingkat Detail) | Measures (Metrik Numerik) | Additivity | KPI yang Diukur |
|:---|:---|:---|:---|:---|
| Fact_Partisipasi_Kegiatan | 1 Mahasiswa ikut 1 Kegiatan, pada 1 Tanggal | Jumlah Partisipan | Additif | Jumlah mahasiswa aktif dalam kegiatan |
| Fact_Capaian_Prestasi | 1 Prestasi dicapai 1 Mahasiswa, pada 1 Tanggal | Jumlah Penghargaan, Poin Prestasi | Additif/Semi-Additif | Jumlah prestasi mahasiswa |
| Fact_Dana_Kegiatan | 1 Transaksi Dana untuk 1 Kegiatan | Jumlah Pengajuan, Jumlah Realisasi | Additif | Tingkat efisiensi penggunaan dana |
| Fact_Penerima_Beasiswa | 1 Mahasiswa penerima 1 Beasiswa, per Periode | Jumlah Penerima, Nominal Bantuan | Additif | Jumlah penerima beasiswa |

## Identifikasi Dimension Tables

| Dimension Table | Peran Analisis (Who, What, When, Why) | Atribut Kunci Deskriptif (Contoh) |
|:---|:---|:---|
| Dim_Mahasiswa | Who (Untuk analisis berdasarkan Fakultas, Prodi) | NIM, Fakultas, Program_Studi |
| Dim_Kegiatan | What (Untuk analisis berdasarkan Jenis Kegiatan) | Nama_Kegiatan, Jenis_Kegiatan |
| Dim_Organisasi | Who (Penyelenggara - UKM/Ormawa) | Nama_Organisasi, Jenis_Organisasi |
| Dim_Prestasi | What (Untuk analisis berdasarkan Level dan Kategori Prestasi) | Level Prestasi, Kategori_Prestasi |
| Dim_Beasiswa | Why (Untuk analisis berdasarkan Sumber Dana) | Nama Beasiswa, Sumber Dana |
| Dim_Tanggal | When (Untuk analisis tren dari waktu ke waktu) | Tahun, Semester, Bulan |
