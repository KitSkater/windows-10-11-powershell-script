# === System Scan and Update Script ===
# Runs Windows Update and initiates antivirus scan if available.

# --- Enable automatic updates ---
Set-Service -Name "wuauserv" -StartupType Automatic
Start-Service -Name "wuauserv" -ErrorAction SilentlyContinue
Write-Output "Windows Update service started."

# --- Trigger update scan ---
(New-Object -ComObject Microsoft.Update.AutoUpdate).DetectNow()
Write-Output "Triggered Windows update scan."

# --- Run Microsoft Defender full scan if present ---
if (Get-Command "Start-MpScan" -ErrorAction SilentlyContinue) {
    Start-MpScan -ScanType FullScan
    Write-Output "Antivirus full scan initiated."
} else {
    Write-Output "Defender not found; skipped AV scan."
}
