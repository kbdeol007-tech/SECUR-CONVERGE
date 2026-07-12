-- Create the multi-domain unified view
CREATE VIEW Incident_Timeline AS
SELECT 
    Timestamp, 
    'Physical Access' AS Domain, 
    Employee_ID AS Actor, 
    'Location: ' || Building || ' (' || Door || ') | Result: ' || Access_Result AS Details
FROM physical_access

UNION ALL

SELECT 
    Timestamp, 
    'System Logs' AS Domain, 
    User AS Actor, 
    'Host: ' || Hostname || ' | Executed: ' || Command || ' | Status: ' || Status AS Details
FROM system_logs

UNION ALL

SELECT 
    Timestamp, 
    'CCTV Event' AS Domain, 
    Person AS Actor, 
    'Cam: ' || Camera || ' | Zone: ' || Zone || ' | Event: ' || Event || ' (Conf: ' || Confidence || '%)' AS Details
FROM cctv_events

UNION ALL

SELECT 
    Timestamp, 
    'Incident Alert' AS Domain, 
    Assigned_To AS Actor, 
    'ID: ' || Alert_ID || ' | Severity: ' || Severity || ' | Desc: ' || Description AS Details
FROM incident_alerts

ORDER BY Timestamp ASC;
