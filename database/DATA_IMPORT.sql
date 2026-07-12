-- 1. System Logs Table (9 columns)
CREATE TABLE system_logs (
    Timestamp TEXT,
    Hostname TEXT,
    User TEXT,
    Source_IP TEXT,
    Destination_IP TEXT,
    Command TEXT,
    Status TEXT,
    MITRE_Technique TEXT,
    Process TEXT
);

-- 2. Physical Access Table (8 columns)
CREATE TABLE physical_access (
    Timestamp TEXT,
    Employee_ID TEXT,
    Building TEXT,
    Door TEXT,
    Badge_Type TEXT,
    Access_Result TEXT,
    Camera TEXT,
    Reader_ID TEXT
);

-- 3. Network Logs Table (9 columns)
CREATE TABLE network_logs (
    Timestamp TEXT,
    Source_IP TEXT,
    Destination_IP TEXT,
    Protocol TEXT,
    Port INTEGER,
    Bytes INTEGER,
    Packets INTEGER,
    Action TEXT,
    Event TEXT
);

-- 4. Incident Alerts Table (7 columns)
CREATE TABLE incident_alerts (
    Timestamp TEXT,
    Alert_ID TEXT,
    Severity TEXT,
    MITRE TEXT,
    Description TEXT,
    Status TEXT,
    Assigned_To TEXT
);

-- 5. CCTV Events Table (7 columns)
CREATE TABLE cctv_events (
    Timestamp TEXT,
    Building TEXT,
    Camera TEXT,
    Zone TEXT,
    Event TEXT,
    Confidence INTEGER,
    Person TEXT
);

-- 6. IAM Logs Table (7 columns)
CREATE TABLE iam_logs (
    Timestamp TEXT,
    User TEXT,
    Action TEXT,
    Account_Status TEXT,
    Privilege TEXT,
    MFA TEXT,
    Risk TEXT
);
