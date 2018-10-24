# PsDevScripts

Collection of small cmdlets for daily use.

## Install

### Powershell itself

See  [Mircrosoft Documentation](https://docs.microsoft.com/en-us/powershell/scripting/setup/installing-powershell-core-on-linux?view=powershell-6).

### Either do it manually

```Powershell
# 1. Run `InstallModules.ps1`.
./InstallModules.ps1

# 2. Add default Profile config
New-Item -Force $PROFILE | Out-Null
Copy-Item -Confirm ./Profile.ps1 $PROFILE

# 3. Restart Shell

# 4. From now on every Powershell-Module(*.psm1) in `~/Github/PsDevScripts` gets imported at the shell startup.
```

### Or just run `./InstallDefaultSetup.ps1`
