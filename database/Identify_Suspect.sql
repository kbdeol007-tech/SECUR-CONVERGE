SELECT 
    Timestamp, 
    User, 
    Action,
    Account_Status,
    Risk
FROM iam_logs 
WHERE Account_Status = 'Inactive' AND Action = 'Login'
   OR Risk = 'High';
