# 1. Run `InstallModules.ps1`.
./InstallModules.ps1

# 2. Add default Profile config
New-Item -Force $PROFILE
Copy-Item -Force ./Profile.ps1 $PROFILE

# 3. Restart Shell
Write-Information "Now restart you 'pwsh'."
Write-Information "If you are on linux and want to run pwsh as default, run 'chsh -s <path>' where path is the result of 'Get-Command pwsh'."

# 4. From now on every Powershell-Module(*.psm1) in `~/Github/PsDevScripts` gets imported at the shell startup.
