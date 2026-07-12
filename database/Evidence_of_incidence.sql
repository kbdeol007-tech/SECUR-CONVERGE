SELECT 
    p.Timestamp AS Access_Time, 
    p.Employee_ID, 
    p.Building,
    p.Door AS Access_Point,
    s.Command AS Executed_Command, 
    s.Hostname AS Target_Server,
    s.Status AS Command_Status
FROM physical_access p
JOIN system_logs s ON p.Employee_ID = s.User
WHERE p.Employee_ID = 'ATTACKER_9999'
ORDER BY p.Timestamp ASC;
