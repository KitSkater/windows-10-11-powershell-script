# === Password Check ===
# Verifies that all users have passwords configured.

$users = Get-LocalUser | Where-Object { $_.Enabled -eq $true }

foreach ($u in $users) {
    if (-not $u.PasswordRequired) {
        Write-Output "User missing password: $($u.Name)"
    }
}

Write-Output "Password check complete."
