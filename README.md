# PsDevScripts

Collection of small cmdlets for daily use.

## Install

```Powershell
# 1. Run `InstallModules.ps1`.
./InstallModules.ps1

# 2. Add default Profile config
New-Item -Force $PROFILE
Copy-Item -Force ./Profile.ps1 $PROFILE

# 3. Restart Shell

# 4. From now on every Powershell-Module(*.psm1) in `~/Github/PsDevScripts` gets imported at the shell startup.
```
