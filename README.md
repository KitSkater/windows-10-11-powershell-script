# Windows Server Hardening Scripts

## Overview
This repository contains PowerShell scripts designed to help automate basic security hardening and cleanup tasks for Windows Server systems. The scripts focus on security policy configuration, user account management, service cleanup, Windows updates, and basic forensic actions.

These scripts are designed to be modular. Each script targets a specific area of system security so that you can run only what you need for your environment or competition round. Comments within the scripts are kept minimal to make them easier to read during competition.

All scripts have been tested on Windows Server 2019 and Windows Server 2022. Most will also work with Windows 10 and Windows 11 with little or no modification.

## Script List

| Script | Purpose |
|--------|----------|
| `Security-Policy.ps1` | Configures password and lockout policies, enforces secure logon and anonymous restrictions. |
| `Firewall-ActionCenter.ps1` | Ensures that Windows Firewall and Action Center services are enabled. |
| `User-Check.ps1` | Verifies that only authorized users and administrators exist on the system. |
| `Password-Check.ps1` | Checks for enabled users without passwords. |
| `Service-Disable.ps1` | Disables insecure or unnecessary system services. |
| `System-Scan-Update.ps1` | Enables automatic updates and performs a full Defender scan. |
| `App-Cleanup.ps1` | Removes unauthorized or insecure applications. |
| `Forensic-Tools.ps1` | Generates a file hash (SHA256) for forensic validation. |

## Running the Scripts

1. **Run PowerShell as Administrator.**  
   Most of these scripts require elevated privileges to make system-level changes.

2. **Set Execution Policy if Needed.**  
   If the scripts are blocked from running, open PowerShell as Administrator and enter:
   ```powershell
   Set-ExecutionPolicy RemoteSigned
