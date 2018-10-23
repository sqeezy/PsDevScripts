# import all modules in this folder
Get-ChildItem -Filter "*.psm1" -File "~\Github\PsDevScripts" | ForEach-Object {Import-Module $_.FullName}

# activate modules you want always to be active
Import-Module -Force posh-git, posh-docker

# configure posh-git
$global:GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
$global:GitPromptSettings.BeforeText = '['
$global:GitPromptSettings.AfterText  = '] '

# additional functions that are machine specific
