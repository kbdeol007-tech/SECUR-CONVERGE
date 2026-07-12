# Central configuration settings for the monitoring engine

DB_PATH = "/Users/kbdeol.007/SECUR_CONVERGE_V3.db"
TARGET_SUSPECT = "ATTACKER_9999"

# Thresholds for correlation rules
TIME_WINDOW_MINUTES = 5
HIGH_RISK_COMMANDS = ["rm -rf", "wget", "curl", "chmod", "sudo", "nmap"]
