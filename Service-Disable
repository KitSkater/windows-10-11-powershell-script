# === Service Disable Script ===
# Disables insecure or unnecessary services.

# --- Define services to disable ---
# >>> CHANGE THIS SECTION BEFORE RUNNING <<<
$servicesToDisable = @("smtpsvc", "ftpsvc")

foreach ($svc in $servicesToDisable) {
    Get-Service -Name $svc -ErrorAction SilentlyContinue | ForEach-Object {
        Set-Service -Name $_.Name -StartupType Disabled
        Stop-Service -Name $_.Name -ErrorAction SilentlyContinue
        Write-Output "Disabled service: $($_.Name)"
    }
}

Write-Output "Service hardening complete."
