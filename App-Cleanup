# === Application Cleanup Script ===
# Removes unauthorized or risky software.

# --- Define list of unauthorized applications ---
# >>> CHANGE THIS SECTION BEFORE RUNNING <<<
$unauthorizedApps = @("BitTorrent", "Wireshark", "Brutus")

foreach ($app in $unauthorizedApps) {
    Get-WmiObject -Class Win32_Product | Where-Object { $_.Name -like "*$app*" } | ForEach-Object {
        $_.Uninstall()
        Write-Output "Removed unauthorized app: $($_.Name)"
    }
}

Write-Output "Application cleanup complete."
