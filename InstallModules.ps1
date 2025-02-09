Install-Module -Scope CurrentUser -Force posh-git, posh-docker, Terminal-Icons, z

winget install JanDeDobbeleer.OhMyPosh -s winget
winget install gh -s winget
gh extension install github/gh-copilot

Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
oh-my-posh font install FiraCode

