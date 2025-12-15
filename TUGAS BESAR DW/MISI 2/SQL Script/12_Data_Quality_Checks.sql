-- Check 1: Completeness - NULL values di Dimensi Kritis
SELECT
    'Dim_Mahasiswa' AS TableName,
    COUNT(*) AS TotalRows,
    SUM(CASE WHEN Nama_Mahasiswa IS NULL THEN 1 ELSE 0 END) AS NullName
FROM dbo.Dim_Mahasiswa;

-- Check 2: Consistency - Referential Integrity (Orphan Records di Fact)
SELECT
    COUNT(*) AS OrphanRecords
FROM dbo.Fact_Partisipasi_Kegiatan f
LEFT JOIN dbo.Dim_Mahasiswa s ON f.Mahasiswa_SK = s.Mahasiswa_SK
WHERE s.Mahasiswa_SK IS NULL;

-- Check 3: Duplicates - Cek duplikasi Partisipasi_ID
SELECT
    Partisipasi_ID,
    COUNT(*) AS DuplicateCount
FROM dbo.Fact_Partisipasi_Kegiatan
GROUP BY Partisipasi_ID
HAVING COUNT(*) > 1;

-- Check 4: Record Counts Reconciliation (Fact vs Source)
-- Membandingkan jumlah record di Fact setelah ETL vs jumlah record di Staging
SELECT
    'Warehouse' AS DataSource,
    COUNT(*) AS RecordCount
FROM dbo.Fact_Partisipasi_Kegiatan;
-- (Perlu perbandingan dengan COUNT(*) di stg.Partisipasi)
