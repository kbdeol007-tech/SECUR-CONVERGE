SELECT 
    Timestamp, 
    User, 
    Action,
    Account_Status,
    Privilege,
    MFA,
    Risk
FROM iam_logs 
WHERE User = 'ATTACKER_9999'
ORDER BY Timestamp ASC;
