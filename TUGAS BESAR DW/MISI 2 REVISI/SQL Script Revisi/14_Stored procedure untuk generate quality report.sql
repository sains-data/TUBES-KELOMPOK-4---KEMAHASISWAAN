CREATE OR ALTER PROCEDURE dbo.usp_Generate_DQ_Report AS
BEGIN
    SET NOCOUNT ON;

    TRUNCATE TABLE dbo.DataQualityMetrics;

    -- Null check nama mahasiswa
    INSERT INTO dbo.DataQualityMetrics (MetricName,ObjectName,IssueCount,TotalCount,
    QualityScore,Threshold,Status)
    SELECT
        'NULL Check Nama Mahasiswa',
        'dim_mahasiswa',
        SUM(CASE WHEN nama_mahasiswa IS NULL OR nama_mahasiswa='' THEN 1 ELSE 0 END),
        COUNT(*),
        100 - (SUM(CASE WHEN nama_mahasiswa IS NULL OR nama_mahasiswa='' THEN 1 ELSE 0 END)*100.0/COUNT(*)),
        95.0,
        CASE WHEN SUM(CASE WHEN nama_mahasiswa IS NULL OR nama_mahasiswa='' THEN 1 ELSE 0 END)=0 
             THEN 'OK' ELSE 'WARNING' END
    FROM dim_mahasiswa;

    -- Duplicate NIM
    INSERT INTO dbo.DataQualityMetrics (MetricName,ObjectName,IssueCount,TotalCount,
    QualityScore,Threshold,Status)
    SELECT
        'Duplicate Check NIM',
        'dim_mahasiswa',
        SUM(cnt-1),
        (SELECT COUNT(*) FROM dim_mahasiswa),
        100 - (SUM(cnt-1)*100.0/(SELECT COUNT(*) FROM dim_mahasiswa)),
        100.0,
        CASE WHEN SUM(cnt-1)>0 THEN 'FAIL' ELSE 'OK' END
    FROM(
        SELECT nim, COUNT(*) cnt FROM dim_mahasiswa GROUP BY nim HAVING COUNT(*)>1
    )x;

END;
