CREATE PROCEDURE dbo.usp_Load_Dim_Mahasiswa
AS
BEGIN
    SET NOCOUNT ON;

    -- Expire old records (jika ada perubahan pada atribut SCD Type 2)
    UPDATE d
    SET
        ExpiryDate = GETDATE(),
        IsCurrent = 0
    FROM dbo.Dim_Mahasiswa d
    INNER JOIN stg.Mahasiswa s ON d.NIM = s.NIM
    WHERE d.IsCurrent = 1
    AND (
        d.Status_Mahasiswa <> s.Status_Mahasiswa OR
        d.Program_Studi <> s.Program_Studi
    );

    -- Insert new records (mahasiswa baru atau rekaman yang berubah)
    INSERT INTO dbo.Dim_Mahasiswa (
        NIM, Nama_Mahasiswa, Fakultas, Program_Studi,
        Tahun_Masuk, Status_Mahasiswa,
        EffectiveDate, IsCurrent
    )
    SELECT
        s.NIM,
        UPPER(TRIM(s.Nama_Mahasiswa)),
        s.Fakultas,
        s.Program_Studi,
        s.Tahun_Masuk,
        s.Status_Mahasiswa,
        GETDATE(),
        1
    FROM stg.Mahasiswa s
    WHERE NOT EXISTS (
        SELECT 1
        FROM dbo.Dim_Mahasiswa d
        WHERE d.NIM = s.NIM AND d.IsCurrent = 1
    );
END;
GO
