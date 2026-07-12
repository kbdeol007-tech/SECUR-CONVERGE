from rules import fetch_cyber_physical_anomalies
from utils import format_alert_header, format_log_entry

def run_monitor():
    print("🚀 Running SECUR-CONVERGE Automated Anomaly Engine...")
    anomalies = fetch_cyber_physical_anomalies()

    if anomalies:
        print(format_alert_header("Cyber-Physical Breach Correlation Detected"))
        for row in anomalies:
            p_time, building, door, cmd, host, status = row
            print(format_log_entry(p_time, building, door, host, cmd, status))
    else:
        print("✅ Monitoring Status: Secure. No multi-domain correlation alerts tripped.")

if __name__ == "__main__":
    run_monitor()
