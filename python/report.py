import json
from rules import fetch_cyber_physical_anomalies
from config import TARGET_SUSPECT

def generate_json_report():
    """Compiles detected threats into a standard structured JSON forensic brief."""
    anomalies = fetch_cyber_physical_anomalies()
    report_data = {
        "incident_target": TARGET_SUSPECT,
        "total_correlated_events": len(anomalies),
        "events": []
    }

    for row in anomalies:
        p_time, building, door, cmd, host, status = row
        report_data["events"].append({
            "physical_timestamp": p_time,
            "facility": building,
            "door_id": door,
            "host_node": host,
            "command_string": cmd,
            "execution_status": status
        })

    report_filename = "cyber_physical_brief.json"
    with open(report_filename, "w") as f:
        json.dump(report_data, f, indent=4)

    print(f"💾 Forensic report successfully compiled and written to: {report_filename}")

if __name__ == "__main__":
    generate_json_report()
