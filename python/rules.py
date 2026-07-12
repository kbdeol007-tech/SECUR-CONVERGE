from database import get_db_connection
from config import TARGET_SUSPECT

def fetch_cyber_physical_anomalies():
    """Correlates physical entrance logs with system endpoint commands."""
    conn = get_db_connection()
    if not conn:
        return []

    cursor = conn.cursor()
    query = """
        SELECT 
            p.Timestamp AS Access_Time, 
            p.Building,
            p.Door AS Access_Point,
            s.Command AS Executed_Command, 
            s.Hostname AS Target_Server,
            s.Status AS Command_Status
        FROM physical_access p
        JOIN system_logs s ON p.Employee_ID = s.User
        WHERE p.Employee_ID = ?
        ORDER BY p.Timestamp ASC;
    """

    cursor.execute(query, (TARGET_SUSPECT,))
    results = cursor.fetchall()
    conn.close()
    return results
