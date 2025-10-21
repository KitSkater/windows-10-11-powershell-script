
---

## **README-CONFIG.md (Configuration Guide)**

```markdown
# Configuration Guide for Windows Server Hardening Scripts

This document explains which parts of the scripts need to be edited before running them.  
Only a few scripts require manual configuration.

---

## 1. User-Check.ps1

**Purpose:**  
Ensures that only authorized local users and administrators exist.

**What to Edit:**  
At the top of the script, locate the following section:
```powershell
# >>> CHANGE THIS SECTION BEFORE RUNNING <<<
$authorizedUsers = @("authorizedUser1", "authorizedUser2")
$authorizedAdmins = @("admin1", "admin2")
Replace these example names with your actual users and administrators.
For example:

$authorizedUsers = @("cyber_user", "student1")
$authorizedAdmins = @("Administrator", "cyber_admin")


Any local user not in $authorizedUsers or $authorizedAdmins will be removed.
Any admin not listed in $authorizedAdmins will have their admin rights removed.

2. Service-Disable.ps1

Purpose:
Disables unwanted or insecure Windows services.

What to Edit:
Near the top of the script, find:

# >>> CHANGE THIS SECTION BEFORE RUNNING <<<
$servicesToDisable = @("smtpsvc", "ftpsvc")


Replace the items in the list with the actual service names you want disabled.
For example:

$servicesToDisable = @("Telnet", "RemoteRegistry", "sshd")


Use the Services application (services.msc) or the command Get-Service to check the exact names before adding them.

3. App-Cleanup.ps1

Purpose:
Removes programs that should not be installed on the system.

What to Edit:
Locate this section:

# >>> CHANGE THIS SECTION BEFORE RUNNING <<<
$unauthorizedApps = @("BitTorrent", "Wireshark", "Brutus")


Replace the names with applications that need to be removed.
Example:

$unauthorizedApps = @("Nmap", "uTorrent", "Hydra")


The script looks for matching display names in the installed programs list.

4. Forensic-Tools.ps1

Purpose:
Generates a file hash for forensic tasks.

What to Edit:
Locate this line:

# >>> CHANGE THIS SECTION BEFORE RUNNING <<<
$filePath = "C:\Path\To\File.png"


Replace the file path with the actual file you need to hash.
Example:

$filePath = "C:\Users\Admin\Desktop\image.jpg"


The script will output the SHA256 hash of that file.

General Tips

Always double-check the lists before running any script that removes users, services, or applications.

If you are unsure about a service or app, leave it out until you verify it is unnecessary.

These scripts are designed to be modular; you can run only the ones that apply to your image or assignment.
