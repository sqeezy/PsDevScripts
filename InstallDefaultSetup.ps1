# 1. Run `InstallModules.ps1`.
Write-Output "Installing modules..."
./InstallModules.ps1

# 2. Add default Profile config
New-Item -Force $PROFILE
Write-Output "Now we copy the profile template to your own profile..."
Copy-Item -Confirm -Force $PSScriptRoot/Profile.ps1 $PROFILE
Write-Output "You can always find it under `$PROFILE"

# 3. Restart Shell
Write-Output "Now restart you 'pwsh'."
Write-Output "If you are on linux and want to run pwsh as default, run 'chsh -s <path>' where path is the result of 'Get-Command pwsh'."

# 4. From now on every Powershell-Module(*.psm1) in `~/Github/PsDevScripts` gets imported at the shell startup.
Write-Output "From now on every *.psm1 file you place in ~/Github/PsDevScripts will be imported into your session on startup."
