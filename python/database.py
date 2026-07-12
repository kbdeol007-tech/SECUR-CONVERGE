import sqlite3
from config import DB_PATH

def get_db_connection():
    """Establishes and returns a connection to the V3 SQLite database."""
    try:
        conn = sqlite3.connect(DB_PATH)
        return conn
    except sqlite3.Error as e:
        print(f"[-] Database connection error: {e}")
        return None
