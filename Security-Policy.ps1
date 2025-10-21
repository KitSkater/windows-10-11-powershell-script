# === Security Policy Configuration ===
# Configures password and lockout policies and enforces key local security settings.

# --- Account and password policy ---
net accounts /maxpwage:90 /minpwlen:8 /lockoutthreshold:10

# --- Limit local use of blank passwords to console only ---
secedit /export /cfg C:\TempSec.cfg
(Get-Content C:\TempSec.cfg).Replace("LimitBlankPasswordUse = 0", "LimitBlankPasswordUse = 1") | Set-Content C:\TempSec.cfg
secedit /configure /db C:\Windows\Security\Database\secedit.sdb /cfg C:\TempSec.cfg /areas SECURITYPOLICY
Remove-Item C:\TempSec.cfg -ErrorAction SilentlyContinue

# --- Disable anonymous enumeration of SAM accounts and shares ---
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name "RestrictAnonymousSAM" -Value 1 -PropertyType DWord -Force

Write-Output "Security policies configured."
