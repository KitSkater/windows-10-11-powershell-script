# === Forensic Utility Script ===
# Calculates SHA256 hash of a file for forensic verification.

# --- Define file path ---
# >>> CHANGE THIS SECTION BEFORE RUNNING <<<
$filePath = "C:\Path\To\File.png"

if (Test-Path $filePath) {
    $hash = Get-FileHash -Path $filePath -Algorithm SHA256
    Write-Output "File: $($hash.Path)"
    Write-Output "SHA256: $($hash.Hash)"
} else {
    Write-Output "File not found: $filePath"
}
