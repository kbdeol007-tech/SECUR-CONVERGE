SELECT 
    COUNT(p.Employee_ID) AS Total_Physical_Records,
    COUNT(s.User) AS Linked_System_Records
FROM physical_access p
LEFT JOIN system_logs s ON p.Employee_ID = s.User;
