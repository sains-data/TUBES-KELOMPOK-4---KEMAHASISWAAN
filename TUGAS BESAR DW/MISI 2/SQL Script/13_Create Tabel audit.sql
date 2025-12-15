IF OBJECT_ID('dbo.AuditLog','U') IS NULL
CREATE TABLE dbo.AuditLog(
    AuditID INT IDENTITY(1,1) PRIMARY KEY,
    EventDate DATETIME DEFAULT GETDATE(),
    Component NVARCHAR(50),
    EventType NVARCHAR(50),
    ObjectName NVARCHAR(100),
    Message NVARCHAR(MAX),
    RowsAffected INT,
    Status NVARCHAR(20)
);
