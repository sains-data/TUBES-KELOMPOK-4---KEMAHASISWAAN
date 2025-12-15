CREATE DATABASE DM_Kemahasiswaan_DW
ON PRIMARY
(
    NAME = N'DM_Kemahasiswaan_DW_Data',
    FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DM_Kemahasiswaan_DW_Data.mdf', -- Ganti dengan jalur default server Anda
    SIZE = 1GB,
    MAXSIZE = UNLIMITED ,
    FILEGROWTH = 256MB
)
LOG ON
(
    NAME = N'DM_Kemahasiswaan_DW_Log',
    FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\DM_Kemahasiswaan_DW_Log.ldf', -- Ganti dengan jalur default server Anda
    SIZE = 256MB,
    MAXSIZE = 2GB,
    FILEGROWTH = 64MB
);
GO
