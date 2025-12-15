-- Query 1: Total mahasiswa aktif dan kegiatan per Fakultas (Drill-down)
SET STATISTICS TIME ON;
SET STATISTICS IO ON;

SELECT
    dm.Fakultas,
    dk.Jenis_Kegiatan,
    COUNT(DISTINCT f.Mahasiswa_SK) AS TotalMahasiswaAktif,
    COUNT(f.Partisipasi_SK) AS TotalPartisipasi
FROM dbo.Fact_Partisipasi_Kegiatan f
INNER JOIN dbo.Dim_Mahasiswa dm ON f.Mahasiswa_SK = dm.Mahasiswa_SK AND dm.IsCurrent = 1
INNER JOIN dbo.Dim_Kegiatan dk ON f.Kegiatan_SK = dk.Kegiatan_SK
INNER JOIN dbo.Dim_Tanggal dt ON f.Tanggal_SK = dt.Tanggal_SK
WHERE dt.Tahun = 2024 -- Filter tahun terbaru
GROUP BY dm.Fakultas, dk.Jenis_Kegiatan
ORDER BY dm.Fakultas, TotalPartisipasi DESC;

-- Query 2: Efisiensi Penggunaan Dana per Organisasi (Menggunakan Fact_Dana_Kegiatan)
SELECT
    do.Nama_Organisasi,
    dt.Tahun,
    SUM(f.Jumlah_Pengajuan) AS TotalPengajuan,
    SUM(f.Jumlah_Realisasi) AS TotalRealisasi,
    (SUM(f.Jumlah_Realisasi) * 1.0 / NULLIF(SUM(f.Jumlah_Pengajuan), 0)) AS TingkatEfisiensi
FROM dbo.Fact_Dana_Kegiatan f
INNER JOIN dbo.Dim_Organisasi do ON f.Organisasi_SK = do.Organisasi_SK AND do.IsCurrent = 1
INNER JOIN dbo.Dim_Tanggal dt ON f.Tanggal_SK = dt.Tanggal_SK
WHERE dt.Tahun >= 2023 -- Analisis tren dua tahun terakhir
GROUP BY do.Nama_Organisasi, dt.Tahun
ORDER BY do.Nama_Organisasi, dt.Tahun;
