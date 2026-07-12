SELECT 
    p.Timestamp AS Time_Real,
    p.Employee_ID,
    p.Building,
    p.Door AS Porte_Acces,
    s.Command AS Command_Systeme,
    s.Hostname AS Target_Server,
    s.Status AS Execution_Status
FROM physical_access p
JOIN system_logs s ON p.Employee_ID = s.User
WHERE p.Employee_ID = 'ATTACKER_9999'
ORDER BY p.Timestamp ASC;