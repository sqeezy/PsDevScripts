
Get-ChildItem -Filter "*.psm1" -File "~\Github\PsDevScripts" | ForEach-Object {Import-Module $_.FullName}


Import-Module -Force posh-git, posh-docker

$global:GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true
$global:GitPromptSettings.BeforeText = '['
$global:GitPromptSettings.AfterText  = '] '
