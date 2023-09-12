# import all modules in this folder
Get-ChildItem -Filter "*.psm1" -File "~\Github\PsDevScripts" | ForEach-Object {Import-Module $_.FullName}

# activate modules you want always to be active
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module posh-docker
Import-Module z

# configure oh-my-posh
oh-my-posh init pwsh --config "$env:OneDriveConsumer\Dotfiles\oh-my-posh\paradox.omp.json" | Invoke-Expression

# add nice alias for git log formatting
function GitLogBeauty {git log --pretty=format:"%h%x09%an%x09%ad%x09%s"}
Set-Alias -Name glog -Value GitLogBeauty

# add alias for docker utils
Set-Alias -Name rmc -Value Remove-AllDockerContainers
Set-Alias -Name rmai -Value Remove-AllUntagedDockerImages

# add alias for svn utils
Set-Alias -Name sclean -Value Remove-SvnCheckoutDirt

Clear-Host # clear the screen so prompt is clean

# additional functions that are machine specific
