def format_alert_header(title):
    """Generates standardized terminal headers for security metrics."""
    border = "=" * 80
    return f"\n{border}\n🚨 {title.upper()} 🚨\n{border}"

def format_log_entry(p_time, building, door, host, cmd, status):
    """Standardizes cross-domain indicators for forensic readability."""
    return (
        f"📍 PHYSICAL ENTRY | Time: {p_time} | Loc: {building} (Door: {door})\n"
        f"💻 DIGITAL ACTION  | Host: {host} | Cmd: {cmd} | Status: {status}\n"
        f"{'-'*80}"
    )
