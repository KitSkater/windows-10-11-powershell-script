# === Firewall and Action Center Configuration ===
# Enables Windows Firewall and ensures Action Center is active.

# --- Enable Windows Firewall for all profiles ---
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

# --- Enable Action Center notifications (Security Center) ---
Set-Service -Name "wscsvc" -StartupType Automatic
Start-Service -Name "wscsvc" -ErrorAction SilentlyContinue

Write-Output "Firewall and Action Center enabled."
