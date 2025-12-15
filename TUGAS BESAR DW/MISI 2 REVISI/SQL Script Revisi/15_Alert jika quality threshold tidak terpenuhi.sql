CREATE OR ALTER PROCEDURE dbo.usp_DQ_Alert AS
BEGIN
    INSERT INTO dbo.AuditLog(Component,EventType,ObjectName,Message,IssueCount,Status)
    SELECT
        'DQ Monitoring',
        'ALERT',
        ObjectName,
        CONCAT(MetricName,' skor ',QualityScore,' < threshold ',Threshold),
        IssueCount,
        Status
    FROM dbo.DataQualityMetrics
    WHERE QualityScore < Threshold;

    SELECT * FROM dbo.AuditLog WHERE EventType='ALERT';
END;
